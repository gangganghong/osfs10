
kernel.bin:     file format elf32-i386


Disassembly of section .text:

00001000 <_start>:
    1000:	66 87 db             	xchg   %bx,%bx
    1003:	bc 20 30 01 00       	mov    $0x13020,%esp
    1008:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    100f:	00 00 00 
    1012:	0f 01 05 f4 99 03 00 	sgdtl  0x399f4
    1019:	e8 02 04 00 00       	call   1420 <cstart>
    101e:	0f 01 15 f4 99 03 00 	lgdtl  0x399f4
    1025:	0f 01 1d 00 39 01 00 	lidtl  0x13900
    102c:	ea 33 10 00 00 08 00 	ljmp   $0x8,$0x1033

00001033 <csinit>:
    1033:	31 c0                	xor    %eax,%eax
    1035:	66 b8 20 00          	mov    $0x20,%ax
    1039:	0f 00 d8             	ltr    %ax
    103c:	e9 74 04 00 00       	jmp    14b5 <kernel_main>
    1041:	90                   	nop
    1042:	90                   	nop
    1043:	90                   	nop
    1044:	90                   	nop
    1045:	90                   	nop
    1046:	90                   	nop
    1047:	90                   	nop
    1048:	90                   	nop
    1049:	90                   	nop
    104a:	90                   	nop
    104b:	90                   	nop
    104c:	90                   	nop
    104d:	90                   	nop
    104e:	90                   	nop
    104f:	90                   	nop

00001050 <hwint00>:
    1050:	e8 4c 03 00 00       	call   13a1 <save>
    1055:	e4 21                	in     $0x21,%al
    1057:	0c 01                	or     $0x1,%al
    1059:	e6 21                	out    %al,$0x21
    105b:	b0 20                	mov    $0x20,%al
    105d:	e6 20                	out    %al,$0x20
    105f:	fb                   	sti    
    1060:	6a 00                	push   $0x0
    1062:	ff 15 40 a4 03 00    	call   *0x3a440
    1068:	59                   	pop    %ecx
    1069:	fa                   	cli    
    106a:	e4 21                	in     $0x21,%al
    106c:	24 fe                	and    $0xfe,%al
    106e:	e6 21                	out    %al,$0x21
    1070:	c3                   	ret    
    1071:	90                   	nop
    1072:	90                   	nop
    1073:	90                   	nop
    1074:	90                   	nop
    1075:	90                   	nop
    1076:	90                   	nop
    1077:	90                   	nop
    1078:	90                   	nop
    1079:	90                   	nop
    107a:	90                   	nop
    107b:	90                   	nop
    107c:	90                   	nop
    107d:	90                   	nop
    107e:	90                   	nop
    107f:	90                   	nop

00001080 <hwint01>:
    1080:	e8 1c 03 00 00       	call   13a1 <save>
    1085:	e4 21                	in     $0x21,%al
    1087:	0c 02                	or     $0x2,%al
    1089:	e6 21                	out    %al,$0x21
    108b:	b0 20                	mov    $0x20,%al
    108d:	e6 20                	out    %al,$0x20
    108f:	fb                   	sti    
    1090:	6a 01                	push   $0x1
    1092:	ff 15 44 a4 03 00    	call   *0x3a444
    1098:	59                   	pop    %ecx
    1099:	fa                   	cli    
    109a:	e4 21                	in     $0x21,%al
    109c:	24 fd                	and    $0xfd,%al
    109e:	e6 21                	out    %al,$0x21
    10a0:	c3                   	ret    
    10a1:	90                   	nop
    10a2:	90                   	nop
    10a3:	90                   	nop
    10a4:	90                   	nop
    10a5:	90                   	nop
    10a6:	90                   	nop
    10a7:	90                   	nop
    10a8:	90                   	nop
    10a9:	90                   	nop
    10aa:	90                   	nop
    10ab:	90                   	nop
    10ac:	90                   	nop
    10ad:	90                   	nop
    10ae:	90                   	nop
    10af:	90                   	nop

000010b0 <hwint02>:
    10b0:	e8 ec 02 00 00       	call   13a1 <save>
    10b5:	e4 21                	in     $0x21,%al
    10b7:	0c 04                	or     $0x4,%al
    10b9:	e6 21                	out    %al,$0x21
    10bb:	b0 20                	mov    $0x20,%al
    10bd:	e6 20                	out    %al,$0x20
    10bf:	fb                   	sti    
    10c0:	6a 02                	push   $0x2
    10c2:	ff 15 48 a4 03 00    	call   *0x3a448
    10c8:	59                   	pop    %ecx
    10c9:	fa                   	cli    
    10ca:	e4 21                	in     $0x21,%al
    10cc:	24 fb                	and    $0xfb,%al
    10ce:	e6 21                	out    %al,$0x21
    10d0:	c3                   	ret    
    10d1:	90                   	nop
    10d2:	90                   	nop
    10d3:	90                   	nop
    10d4:	90                   	nop
    10d5:	90                   	nop
    10d6:	90                   	nop
    10d7:	90                   	nop
    10d8:	90                   	nop
    10d9:	90                   	nop
    10da:	90                   	nop
    10db:	90                   	nop
    10dc:	90                   	nop
    10dd:	90                   	nop
    10de:	90                   	nop
    10df:	90                   	nop

000010e0 <hwint03>:
    10e0:	e8 bc 02 00 00       	call   13a1 <save>
    10e5:	e4 21                	in     $0x21,%al
    10e7:	0c 08                	or     $0x8,%al
    10e9:	e6 21                	out    %al,$0x21
    10eb:	b0 20                	mov    $0x20,%al
    10ed:	e6 20                	out    %al,$0x20
    10ef:	fb                   	sti    
    10f0:	6a 03                	push   $0x3
    10f2:	ff 15 4c a4 03 00    	call   *0x3a44c
    10f8:	59                   	pop    %ecx
    10f9:	fa                   	cli    
    10fa:	e4 21                	in     $0x21,%al
    10fc:	24 f7                	and    $0xf7,%al
    10fe:	e6 21                	out    %al,$0x21
    1100:	c3                   	ret    
    1101:	90                   	nop
    1102:	90                   	nop
    1103:	90                   	nop
    1104:	90                   	nop
    1105:	90                   	nop
    1106:	90                   	nop
    1107:	90                   	nop
    1108:	90                   	nop
    1109:	90                   	nop
    110a:	90                   	nop
    110b:	90                   	nop
    110c:	90                   	nop
    110d:	90                   	nop
    110e:	90                   	nop
    110f:	90                   	nop

00001110 <hwint04>:
    1110:	e8 8c 02 00 00       	call   13a1 <save>
    1115:	e4 21                	in     $0x21,%al
    1117:	0c 10                	or     $0x10,%al
    1119:	e6 21                	out    %al,$0x21
    111b:	b0 20                	mov    $0x20,%al
    111d:	e6 20                	out    %al,$0x20
    111f:	fb                   	sti    
    1120:	6a 04                	push   $0x4
    1122:	ff 15 50 a4 03 00    	call   *0x3a450
    1128:	59                   	pop    %ecx
    1129:	fa                   	cli    
    112a:	e4 21                	in     $0x21,%al
    112c:	24 ef                	and    $0xef,%al
    112e:	e6 21                	out    %al,$0x21
    1130:	c3                   	ret    
    1131:	90                   	nop
    1132:	90                   	nop
    1133:	90                   	nop
    1134:	90                   	nop
    1135:	90                   	nop
    1136:	90                   	nop
    1137:	90                   	nop
    1138:	90                   	nop
    1139:	90                   	nop
    113a:	90                   	nop
    113b:	90                   	nop
    113c:	90                   	nop
    113d:	90                   	nop
    113e:	90                   	nop
    113f:	90                   	nop

00001140 <hwint05>:
    1140:	e8 5c 02 00 00       	call   13a1 <save>
    1145:	e4 21                	in     $0x21,%al
    1147:	0c 20                	or     $0x20,%al
    1149:	e6 21                	out    %al,$0x21
    114b:	b0 20                	mov    $0x20,%al
    114d:	e6 20                	out    %al,$0x20
    114f:	fb                   	sti    
    1150:	6a 05                	push   $0x5
    1152:	ff 15 54 a4 03 00    	call   *0x3a454
    1158:	59                   	pop    %ecx
    1159:	fa                   	cli    
    115a:	e4 21                	in     $0x21,%al
    115c:	24 df                	and    $0xdf,%al
    115e:	e6 21                	out    %al,$0x21
    1160:	c3                   	ret    
    1161:	90                   	nop
    1162:	90                   	nop
    1163:	90                   	nop
    1164:	90                   	nop
    1165:	90                   	nop
    1166:	90                   	nop
    1167:	90                   	nop
    1168:	90                   	nop
    1169:	90                   	nop
    116a:	90                   	nop
    116b:	90                   	nop
    116c:	90                   	nop
    116d:	90                   	nop
    116e:	90                   	nop
    116f:	90                   	nop

00001170 <hwint06>:
    1170:	e8 2c 02 00 00       	call   13a1 <save>
    1175:	e4 21                	in     $0x21,%al
    1177:	0c 40                	or     $0x40,%al
    1179:	e6 21                	out    %al,$0x21
    117b:	b0 20                	mov    $0x20,%al
    117d:	e6 20                	out    %al,$0x20
    117f:	fb                   	sti    
    1180:	6a 06                	push   $0x6
    1182:	ff 15 58 a4 03 00    	call   *0x3a458
    1188:	59                   	pop    %ecx
    1189:	fa                   	cli    
    118a:	e4 21                	in     $0x21,%al
    118c:	24 bf                	and    $0xbf,%al
    118e:	e6 21                	out    %al,$0x21
    1190:	c3                   	ret    
    1191:	90                   	nop
    1192:	90                   	nop
    1193:	90                   	nop
    1194:	90                   	nop
    1195:	90                   	nop
    1196:	90                   	nop
    1197:	90                   	nop
    1198:	90                   	nop
    1199:	90                   	nop
    119a:	90                   	nop
    119b:	90                   	nop
    119c:	90                   	nop
    119d:	90                   	nop
    119e:	90                   	nop
    119f:	90                   	nop

000011a0 <hwint07>:
    11a0:	e8 fc 01 00 00       	call   13a1 <save>
    11a5:	e4 21                	in     $0x21,%al
    11a7:	0c 80                	or     $0x80,%al
    11a9:	e6 21                	out    %al,$0x21
    11ab:	b0 20                	mov    $0x20,%al
    11ad:	e6 20                	out    %al,$0x20
    11af:	fb                   	sti    
    11b0:	6a 07                	push   $0x7
    11b2:	ff 15 5c a4 03 00    	call   *0x3a45c
    11b8:	59                   	pop    %ecx
    11b9:	fa                   	cli    
    11ba:	e4 21                	in     $0x21,%al
    11bc:	24 7f                	and    $0x7f,%al
    11be:	e6 21                	out    %al,$0x21
    11c0:	c3                   	ret    
    11c1:	90                   	nop
    11c2:	90                   	nop
    11c3:	90                   	nop
    11c4:	90                   	nop
    11c5:	90                   	nop
    11c6:	90                   	nop
    11c7:	90                   	nop
    11c8:	90                   	nop
    11c9:	90                   	nop
    11ca:	90                   	nop
    11cb:	90                   	nop
    11cc:	90                   	nop
    11cd:	90                   	nop
    11ce:	90                   	nop
    11cf:	90                   	nop

000011d0 <hwint08>:
    11d0:	e8 cc 01 00 00       	call   13a1 <save>
    11d5:	e4 a1                	in     $0xa1,%al
    11d7:	0c 01                	or     $0x1,%al
    11d9:	e6 a1                	out    %al,$0xa1
    11db:	b0 20                	mov    $0x20,%al
    11dd:	e6 20                	out    %al,$0x20
    11df:	90                   	nop
    11e0:	e6 a0                	out    %al,$0xa0
    11e2:	fb                   	sti    
    11e3:	6a 08                	push   $0x8
    11e5:	ff 15 60 a4 03 00    	call   *0x3a460
    11eb:	59                   	pop    %ecx
    11ec:	fa                   	cli    
    11ed:	e4 a1                	in     $0xa1,%al
    11ef:	24 fe                	and    $0xfe,%al
    11f1:	e6 a1                	out    %al,$0xa1
    11f3:	c3                   	ret    
    11f4:	90                   	nop
    11f5:	90                   	nop
    11f6:	90                   	nop
    11f7:	90                   	nop
    11f8:	90                   	nop
    11f9:	90                   	nop
    11fa:	90                   	nop
    11fb:	90                   	nop
    11fc:	90                   	nop
    11fd:	90                   	nop
    11fe:	90                   	nop
    11ff:	90                   	nop

00001200 <hwint09>:
    1200:	e8 9c 01 00 00       	call   13a1 <save>
    1205:	e4 a1                	in     $0xa1,%al
    1207:	0c 02                	or     $0x2,%al
    1209:	e6 a1                	out    %al,$0xa1
    120b:	b0 20                	mov    $0x20,%al
    120d:	e6 20                	out    %al,$0x20
    120f:	90                   	nop
    1210:	e6 a0                	out    %al,$0xa0
    1212:	fb                   	sti    
    1213:	6a 09                	push   $0x9
    1215:	ff 15 64 a4 03 00    	call   *0x3a464
    121b:	59                   	pop    %ecx
    121c:	fa                   	cli    
    121d:	e4 a1                	in     $0xa1,%al
    121f:	24 fd                	and    $0xfd,%al
    1221:	e6 a1                	out    %al,$0xa1
    1223:	c3                   	ret    
    1224:	90                   	nop
    1225:	90                   	nop
    1226:	90                   	nop
    1227:	90                   	nop
    1228:	90                   	nop
    1229:	90                   	nop
    122a:	90                   	nop
    122b:	90                   	nop
    122c:	90                   	nop
    122d:	90                   	nop
    122e:	90                   	nop
    122f:	90                   	nop

00001230 <hwint10>:
    1230:	e8 6c 01 00 00       	call   13a1 <save>
    1235:	e4 a1                	in     $0xa1,%al
    1237:	0c 04                	or     $0x4,%al
    1239:	e6 a1                	out    %al,$0xa1
    123b:	b0 20                	mov    $0x20,%al
    123d:	e6 20                	out    %al,$0x20
    123f:	90                   	nop
    1240:	e6 a0                	out    %al,$0xa0
    1242:	fb                   	sti    
    1243:	6a 0a                	push   $0xa
    1245:	ff 15 68 a4 03 00    	call   *0x3a468
    124b:	59                   	pop    %ecx
    124c:	fa                   	cli    
    124d:	e4 a1                	in     $0xa1,%al
    124f:	24 fb                	and    $0xfb,%al
    1251:	e6 a1                	out    %al,$0xa1
    1253:	c3                   	ret    
    1254:	90                   	nop
    1255:	90                   	nop
    1256:	90                   	nop
    1257:	90                   	nop
    1258:	90                   	nop
    1259:	90                   	nop
    125a:	90                   	nop
    125b:	90                   	nop
    125c:	90                   	nop
    125d:	90                   	nop
    125e:	90                   	nop
    125f:	90                   	nop

00001260 <hwint11>:
    1260:	e8 3c 01 00 00       	call   13a1 <save>
    1265:	e4 a1                	in     $0xa1,%al
    1267:	0c 08                	or     $0x8,%al
    1269:	e6 a1                	out    %al,$0xa1
    126b:	b0 20                	mov    $0x20,%al
    126d:	e6 20                	out    %al,$0x20
    126f:	90                   	nop
    1270:	e6 a0                	out    %al,$0xa0
    1272:	fb                   	sti    
    1273:	6a 0b                	push   $0xb
    1275:	ff 15 6c a4 03 00    	call   *0x3a46c
    127b:	59                   	pop    %ecx
    127c:	fa                   	cli    
    127d:	e4 a1                	in     $0xa1,%al
    127f:	24 f7                	and    $0xf7,%al
    1281:	e6 a1                	out    %al,$0xa1
    1283:	c3                   	ret    
    1284:	90                   	nop
    1285:	90                   	nop
    1286:	90                   	nop
    1287:	90                   	nop
    1288:	90                   	nop
    1289:	90                   	nop
    128a:	90                   	nop
    128b:	90                   	nop
    128c:	90                   	nop
    128d:	90                   	nop
    128e:	90                   	nop
    128f:	90                   	nop

00001290 <hwint12>:
    1290:	e8 0c 01 00 00       	call   13a1 <save>
    1295:	e4 a1                	in     $0xa1,%al
    1297:	0c 10                	or     $0x10,%al
    1299:	e6 a1                	out    %al,$0xa1
    129b:	b0 20                	mov    $0x20,%al
    129d:	e6 20                	out    %al,$0x20
    129f:	90                   	nop
    12a0:	e6 a0                	out    %al,$0xa0
    12a2:	fb                   	sti    
    12a3:	6a 0c                	push   $0xc
    12a5:	ff 15 70 a4 03 00    	call   *0x3a470
    12ab:	59                   	pop    %ecx
    12ac:	fa                   	cli    
    12ad:	e4 a1                	in     $0xa1,%al
    12af:	24 ef                	and    $0xef,%al
    12b1:	e6 a1                	out    %al,$0xa1
    12b3:	c3                   	ret    
    12b4:	90                   	nop
    12b5:	90                   	nop
    12b6:	90                   	nop
    12b7:	90                   	nop
    12b8:	90                   	nop
    12b9:	90                   	nop
    12ba:	90                   	nop
    12bb:	90                   	nop
    12bc:	90                   	nop
    12bd:	90                   	nop
    12be:	90                   	nop
    12bf:	90                   	nop

000012c0 <hwint13>:
    12c0:	e8 dc 00 00 00       	call   13a1 <save>
    12c5:	e4 a1                	in     $0xa1,%al
    12c7:	0c 20                	or     $0x20,%al
    12c9:	e6 a1                	out    %al,$0xa1
    12cb:	b0 20                	mov    $0x20,%al
    12cd:	e6 20                	out    %al,$0x20
    12cf:	90                   	nop
    12d0:	e6 a0                	out    %al,$0xa0
    12d2:	fb                   	sti    
    12d3:	6a 0d                	push   $0xd
    12d5:	ff 15 74 a4 03 00    	call   *0x3a474
    12db:	59                   	pop    %ecx
    12dc:	fa                   	cli    
    12dd:	e4 a1                	in     $0xa1,%al
    12df:	24 df                	and    $0xdf,%al
    12e1:	e6 a1                	out    %al,$0xa1
    12e3:	c3                   	ret    
    12e4:	90                   	nop
    12e5:	90                   	nop
    12e6:	90                   	nop
    12e7:	90                   	nop
    12e8:	90                   	nop
    12e9:	90                   	nop
    12ea:	90                   	nop
    12eb:	90                   	nop
    12ec:	90                   	nop
    12ed:	90                   	nop
    12ee:	90                   	nop
    12ef:	90                   	nop

000012f0 <hwint14>:
    12f0:	e8 ac 00 00 00       	call   13a1 <save>
    12f5:	e4 a1                	in     $0xa1,%al
    12f7:	0c 40                	or     $0x40,%al
    12f9:	e6 a1                	out    %al,$0xa1
    12fb:	b0 20                	mov    $0x20,%al
    12fd:	e6 20                	out    %al,$0x20
    12ff:	90                   	nop
    1300:	e6 a0                	out    %al,$0xa0
    1302:	fb                   	sti    
    1303:	6a 0e                	push   $0xe
    1305:	ff 15 78 a4 03 00    	call   *0x3a478
    130b:	59                   	pop    %ecx
    130c:	fa                   	cli    
    130d:	e4 a1                	in     $0xa1,%al
    130f:	24 bf                	and    $0xbf,%al
    1311:	e6 a1                	out    %al,$0xa1
    1313:	c3                   	ret    
    1314:	90                   	nop
    1315:	90                   	nop
    1316:	90                   	nop
    1317:	90                   	nop
    1318:	90                   	nop
    1319:	90                   	nop
    131a:	90                   	nop
    131b:	90                   	nop
    131c:	90                   	nop
    131d:	90                   	nop
    131e:	90                   	nop
    131f:	90                   	nop

00001320 <hwint15>:
    1320:	e8 7c 00 00 00       	call   13a1 <save>
    1325:	e4 a1                	in     $0xa1,%al
    1327:	0c 80                	or     $0x80,%al
    1329:	e6 a1                	out    %al,$0xa1
    132b:	b0 20                	mov    $0x20,%al
    132d:	e6 20                	out    %al,$0x20
    132f:	90                   	nop
    1330:	e6 a0                	out    %al,$0xa0
    1332:	fb                   	sti    
    1333:	6a 0f                	push   $0xf
    1335:	ff 15 7c a4 03 00    	call   *0x3a47c
    133b:	59                   	pop    %ecx
    133c:	fa                   	cli    
    133d:	e4 a1                	in     $0xa1,%al
    133f:	24 7f                	and    $0x7f,%al
    1341:	e6 a1                	out    %al,$0xa1
    1343:	c3                   	ret    

00001344 <divide_error>:
    1344:	6a ff                	push   $0xffffffff
    1346:	6a 00                	push   $0x0
    1348:	eb 4e                	jmp    1398 <exception>

0000134a <single_step_exception>:
    134a:	6a ff                	push   $0xffffffff
    134c:	6a 01                	push   $0x1
    134e:	eb 48                	jmp    1398 <exception>

00001350 <nmi>:
    1350:	6a ff                	push   $0xffffffff
    1352:	6a 02                	push   $0x2
    1354:	eb 42                	jmp    1398 <exception>

00001356 <breakpoint_exception>:
    1356:	6a ff                	push   $0xffffffff
    1358:	6a 03                	push   $0x3
    135a:	eb 3c                	jmp    1398 <exception>

0000135c <overflow>:
    135c:	6a ff                	push   $0xffffffff
    135e:	6a 04                	push   $0x4
    1360:	eb 36                	jmp    1398 <exception>

00001362 <bounds_check>:
    1362:	6a ff                	push   $0xffffffff
    1364:	6a 05                	push   $0x5
    1366:	eb 30                	jmp    1398 <exception>

00001368 <inval_opcode>:
    1368:	6a ff                	push   $0xffffffff
    136a:	6a 06                	push   $0x6
    136c:	eb 2a                	jmp    1398 <exception>

0000136e <copr_not_available>:
    136e:	6a ff                	push   $0xffffffff
    1370:	6a 07                	push   $0x7
    1372:	eb 24                	jmp    1398 <exception>

00001374 <double_fault>:
    1374:	6a 08                	push   $0x8
    1376:	eb 20                	jmp    1398 <exception>

00001378 <copr_seg_overrun>:
    1378:	6a ff                	push   $0xffffffff
    137a:	6a 09                	push   $0x9
    137c:	eb 1a                	jmp    1398 <exception>

0000137e <inval_tss>:
    137e:	6a 0a                	push   $0xa
    1380:	eb 16                	jmp    1398 <exception>

00001382 <segment_not_present>:
    1382:	6a 0b                	push   $0xb
    1384:	eb 12                	jmp    1398 <exception>

00001386 <stack_exception>:
    1386:	6a 0c                	push   $0xc
    1388:	eb 0e                	jmp    1398 <exception>

0000138a <general_protection>:
    138a:	6a 0d                	push   $0xd
    138c:	eb 0a                	jmp    1398 <exception>

0000138e <page_fault>:
    138e:	6a 0e                	push   $0xe
    1390:	eb 06                	jmp    1398 <exception>

00001392 <copr_error>:
    1392:	6a ff                	push   $0xffffffff
    1394:	6a 10                	push   $0x10
    1396:	eb 00                	jmp    1398 <exception>

00001398 <exception>:
    1398:	e8 3b 2a 00 00       	call   3dd8 <exception_handler>
    139d:	83 c4 08             	add    $0x8,%esp
    13a0:	f4                   	hlt    

000013a1 <save>:
    13a1:	60                   	pusha  
    13a2:	1e                   	push   %ds
    13a3:	06                   	push   %es
    13a4:	0f a0                	push   %fs
    13a6:	0f a8                	push   %gs
    13a8:	89 d6                	mov    %edx,%esi
    13aa:	66 8c d2             	mov    %ss,%dx
    13ad:	8e da                	mov    %edx,%ds
    13af:	8e c2                	mov    %edx,%es
    13b1:	8e e2                	mov    %edx,%fs
    13b3:	89 f2                	mov    %esi,%edx
    13b5:	89 e6                	mov    %esp,%esi
    13b7:	ff 05 20 84 03 00    	incl   0x38420
    13bd:	83 3d 20 84 03 00 00 	cmpl   $0x0,0x38420
    13c4:	75 0d                	jne    13d3 <save.1>
    13c6:	bc 20 30 01 00       	mov    $0x13020,%esp
    13cb:	68 fb 13 00 00       	push   $0x13fb
    13d0:	ff 66 30             	jmp    *0x30(%esi)

000013d3 <save.1>:
    13d3:	68 0f 14 00 00       	push   $0x140f
    13d8:	ff 66 30             	jmp    *0x30(%esi)

000013db <sys_call>:
    13db:	e8 c1 ff ff ff       	call   13a1 <save>
    13e0:	fb                   	sti    
    13e1:	56                   	push   %esi
    13e2:	ff 35 80 a4 03 00    	pushl  0x3a480
    13e8:	52                   	push   %edx
    13e9:	51                   	push   %ecx
    13ea:	53                   	push   %ebx
    13eb:	ff 14 85 e0 27 01 00 	call   *0x127e0(,%eax,4)
    13f2:	83 c4 10             	add    $0x10,%esp
    13f5:	5e                   	pop    %esi
    13f6:	89 46 2c             	mov    %eax,0x2c(%esi)
    13f9:	fa                   	cli    
    13fa:	c3                   	ret    

000013fb <restart>:
    13fb:	8b 25 80 a4 03 00    	mov    0x3a480,%esp
    1401:	0f 00 54 24 48       	lldt   0x48(%esp)
    1406:	8d 44 24 48          	lea    0x48(%esp),%eax
    140a:	a3 e4 94 03 00       	mov    %eax,0x394e4

0000140f <restart_reenter>:
    140f:	ff 0d 20 84 03 00    	decl   0x38420
    1415:	0f a9                	pop    %gs
    1417:	0f a1                	pop    %fs
    1419:	07                   	pop    %es
    141a:	1f                   	pop    %ds
    141b:	61                   	popa   
    141c:	83 c4 04             	add    $0x4,%esp
    141f:	cf                   	iret   

00001420 <cstart>:
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	83 ec 18             	sub    $0x18,%esp
    1426:	83 ec 0c             	sub    $0xc,%esp
    1429:	68 00 cc 00 00       	push   $0xcc00
    142e:	e8 9d 51 00 00       	call   65d0 <disp_str>
    1433:	83 c4 10             	add    $0x10,%esp
    1436:	b8 f4 99 03 00       	mov    $0x399f4,%eax
    143b:	0f b7 00             	movzwl (%eax),%eax
    143e:	0f b7 c0             	movzwl %ax,%eax
    1441:	83 c0 01             	add    $0x1,%eax
    1444:	ba f6 99 03 00       	mov    $0x399f6,%edx
    1449:	8b 12                	mov    (%edx),%edx
    144b:	83 ec 04             	sub    $0x4,%esp
    144e:	50                   	push   %eax
    144f:	52                   	push   %edx
    1450:	68 40 84 03 00       	push   $0x38440
    1455:	e8 16 b0 00 00       	call   c470 <memcpy>
    145a:	83 c4 10             	add    $0x10,%esp
    145d:	c7 45 f4 f4 99 03 00 	movl   $0x399f4,-0xc(%ebp)
    1464:	c7 45 f0 f6 99 03 00 	movl   $0x399f6,-0x10(%ebp)
    146b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    146e:	66 c7 00 ff 03       	movw   $0x3ff,(%eax)
    1473:	ba 40 84 03 00       	mov    $0x38440,%edx
    1478:	8b 45 f0             	mov    -0x10(%ebp),%eax
    147b:	89 10                	mov    %edx,(%eax)
    147d:	c7 45 ec 00 39 01 00 	movl   $0x13900,-0x14(%ebp)
    1484:	c7 45 e8 02 39 01 00 	movl   $0x13902,-0x18(%ebp)
    148b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    148e:	66 c7 00 ff 07       	movw   $0x7ff,(%eax)
    1493:	ba 00 9a 03 00       	mov    $0x39a00,%edx
    1498:	8b 45 e8             	mov    -0x18(%ebp),%eax
    149b:	89 10                	mov    %edx,(%eax)
    149d:	e8 17 24 00 00       	call   38b9 <init_prot>
    14a2:	83 ec 0c             	sub    $0xc,%esp
    14a5:	68 2a cc 00 00       	push   $0xcc2a
    14aa:	e8 21 51 00 00       	call   65d0 <disp_str>
    14af:	83 c4 10             	add    $0x10,%esp
    14b2:	90                   	nop
    14b3:	c9                   	leave  
    14b4:	c3                   	ret    

000014b5 <kernel_main>:
    14b5:	55                   	push   %ebp
    14b6:	89 e5                	mov    %esp,%ebp
    14b8:	83 ec 38             	sub    $0x38,%esp
    14bb:	83 ec 0c             	sub    $0xc,%esp
    14be:	68 48 cc 00 00       	push   $0xcc48
    14c3:	e8 08 51 00 00       	call   65d0 <disp_str>
    14c8:	83 c4 10             	add    $0x10,%esp
    14cb:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    14d2:	c7 45 d8 20 84 03 00 	movl   $0x38420,-0x28(%ebp)
    14d9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    14e0:	e9 b2 02 00 00       	jmp    1797 <kernel_main+0x2e2>
    14e5:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    14e9:	7e 0f                	jle    14fa <kernel_main+0x45>
    14eb:	8b 45 dc             	mov    -0x24(%ebp),%eax
    14ee:	c7 40 74 20 00 00 00 	movl   $0x20,0x74(%eax)
    14f5:	e9 8e 02 00 00       	jmp    1788 <kernel_main+0x2d3>
    14fa:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    14fe:	7f 2d                	jg     152d <kernel_main+0x78>
    1500:	8b 55 f4             	mov    -0xc(%ebp),%edx
    1503:	89 d0                	mov    %edx,%eax
    1505:	c1 e0 02             	shl    $0x2,%eax
    1508:	01 d0                	add    %edx,%eax
    150a:	c1 e0 03             	shl    $0x3,%eax
    150d:	05 60 26 01 00       	add    $0x12660,%eax
    1512:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1515:	c6 45 e6 01          	movb   $0x1,-0x1a(%ebp)
    1519:	c6 45 e7 01          	movb   $0x1,-0x19(%ebp)
    151d:	c7 45 ec 02 12 00 00 	movl   $0x1202,-0x14(%ebp)
    1524:	c7 45 e8 0f 00 00 00 	movl   $0xf,-0x18(%ebp)
    152b:	eb 30                	jmp    155d <kernel_main+0xa8>
    152d:	8b 55 f4             	mov    -0xc(%ebp),%edx
    1530:	89 d0                	mov    %edx,%eax
    1532:	c1 e0 02             	shl    $0x2,%eax
    1535:	01 d0                	add    %edx,%eax
    1537:	c1 e0 03             	shl    $0x3,%eax
    153a:	2d c8 00 00 00       	sub    $0xc8,%eax
    153f:	05 40 27 01 00       	add    $0x12740,%eax
    1544:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1547:	c6 45 e6 03          	movb   $0x3,-0x1a(%ebp)
    154b:	c6 45 e7 03          	movb   $0x3,-0x19(%ebp)
    154f:	c7 45 ec 02 02 00 00 	movl   $0x202,-0x14(%ebp)
    1556:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
    155d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1560:	8d 50 08             	lea    0x8(%eax),%edx
    1563:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1566:	83 c0 64             	add    $0x64,%eax
    1569:	83 ec 08             	sub    $0x8,%esp
    156c:	52                   	push   %edx
    156d:	50                   	push   %eax
    156e:	e8 47 af 00 00       	call   c4ba <strcpy>
    1573:	83 c4 10             	add    $0x10,%esp
    1576:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1579:	c7 80 90 00 00 00 39 	movl   $0x39,0x90(%eax)
    1580:	00 00 00 
    1583:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1586:	83 c0 08             	add    $0x8,%eax
    1589:	83 ec 08             	sub    $0x8,%esp
    158c:	68 8c cc 00 00       	push   $0xcc8c
    1591:	50                   	push   %eax
    1592:	e8 7d b0 00 00       	call   c614 <strcmp>
    1597:	83 c4 10             	add    $0x10,%esp
    159a:	85 c0                	test   %eax,%eax
    159c:	74 51                	je     15ef <kernel_main+0x13a>
    159e:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    15a1:	a1 48 84 03 00       	mov    0x38448,%eax
    15a6:	8b 15 4c 84 03 00    	mov    0x3844c,%edx
    15ac:	89 41 4a             	mov    %eax,0x4a(%ecx)
    15af:	89 51 4e             	mov    %edx,0x4e(%ecx)
    15b2:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    15b5:	a1 50 84 03 00       	mov    0x38450,%eax
    15ba:	8b 15 54 84 03 00    	mov    0x38454,%edx
    15c0:	89 41 52             	mov    %eax,0x52(%ecx)
    15c3:	89 51 56             	mov    %edx,0x56(%ecx)
    15c6:	0f b6 45 e6          	movzbl -0x1a(%ebp),%eax
    15ca:	c1 e0 05             	shl    $0x5,%eax
    15cd:	83 c8 98             	or     $0xffffff98,%eax
    15d0:	89 c2                	mov    %eax,%edx
    15d2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    15d5:	88 50 4f             	mov    %dl,0x4f(%eax)
    15d8:	0f b6 45 e6          	movzbl -0x1a(%ebp),%eax
    15dc:	c1 e0 05             	shl    $0x5,%eax
    15df:	83 c8 92             	or     $0xffffff92,%eax
    15e2:	89 c2                	mov    %eax,%edx
    15e4:	8b 45 dc             	mov    -0x24(%ebp),%eax
    15e7:	88 50 57             	mov    %dl,0x57(%eax)
    15ea:	e9 91 00 00 00       	jmp    1680 <kernel_main+0x1cb>
    15ef:	83 ec 08             	sub    $0x8,%esp
    15f2:	8d 45 cc             	lea    -0x34(%ebp),%eax
    15f5:	50                   	push   %eax
    15f6:	8d 45 d0             	lea    -0x30(%ebp),%eax
    15f9:	50                   	push   %eax
    15fa:	e8 f1 51 00 00       	call   67f0 <get_kernel_map>
    15ff:	83 c4 10             	add    $0x10,%esp
    1602:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1605:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    1609:	74 19                	je     1624 <kernel_main+0x16f>
    160b:	6a 4e                	push   $0x4e
    160d:	68 91 cc 00 00       	push   $0xcc91
    1612:	68 91 cc 00 00       	push   $0xcc91
    1617:	68 9f cc 00 00       	push   $0xcc9f
    161c:	e8 dc b0 00 00       	call   c6fd <assertion_failure>
    1621:	83 c4 10             	add    $0x10,%esp
    1624:	0f b6 45 e6          	movzbl -0x1a(%ebp),%eax
    1628:	c1 e0 05             	shl    $0x5,%eax
    162b:	66 0d 98 c0          	or     $0xc098,%ax
    162f:	0f b7 c0             	movzwl %ax,%eax
    1632:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    1635:	8b 55 cc             	mov    -0x34(%ebp),%edx
    1638:	01 ca                	add    %ecx,%edx
    163a:	89 d1                	mov    %edx,%ecx
    163c:	c1 e9 0c             	shr    $0xc,%ecx
    163f:	8b 55 dc             	mov    -0x24(%ebp),%edx
    1642:	83 c2 4a             	add    $0x4a,%edx
    1645:	50                   	push   %eax
    1646:	51                   	push   %ecx
    1647:	6a 00                	push   $0x0
    1649:	52                   	push   %edx
    164a:	e8 1c 27 00 00       	call   3d6b <init_desc>
    164f:	83 c4 10             	add    $0x10,%esp
    1652:	0f b6 45 e6          	movzbl -0x1a(%ebp),%eax
    1656:	c1 e0 05             	shl    $0x5,%eax
    1659:	66 0d 92 c0          	or     $0xc092,%ax
    165d:	0f b7 c0             	movzwl %ax,%eax
    1660:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    1663:	8b 55 cc             	mov    -0x34(%ebp),%edx
    1666:	01 ca                	add    %ecx,%edx
    1668:	89 d1                	mov    %edx,%ecx
    166a:	c1 e9 0c             	shr    $0xc,%ecx
    166d:	8b 55 dc             	mov    -0x24(%ebp),%edx
    1670:	83 c2 52             	add    $0x52,%edx
    1673:	50                   	push   %eax
    1674:	51                   	push   %ecx
    1675:	6a 00                	push   $0x0
    1677:	52                   	push   %edx
    1678:	e8 ee 26 00 00       	call   3d6b <init_desc>
    167d:	83 c4 10             	add    $0x10,%esp
    1680:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1684:	83 c8 04             	or     $0x4,%eax
    1687:	0f b6 d0             	movzbl %al,%edx
    168a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    168d:	89 50 38             	mov    %edx,0x38(%eax)
    1690:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1694:	83 c8 0c             	or     $0xc,%eax
    1697:	0f b6 d0             	movzbl %al,%edx
    169a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    169d:	89 50 44             	mov    %edx,0x44(%eax)
    16a0:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16a3:	8b 50 44             	mov    0x44(%eax),%edx
    16a6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16a9:	89 50 04             	mov    %edx,0x4(%eax)
    16ac:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16af:	8b 50 04             	mov    0x4(%eax),%edx
    16b2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16b5:	89 50 08             	mov    %edx,0x8(%eax)
    16b8:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16bb:	8b 50 08             	mov    0x8(%eax),%edx
    16be:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16c1:	89 50 0c             	mov    %edx,0xc(%eax)
    16c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    16c8:	83 c8 18             	or     $0x18,%eax
    16cb:	0f b6 d0             	movzbl %al,%edx
    16ce:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16d1:	89 10                	mov    %edx,(%eax)
    16d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    16d6:	8b 00                	mov    (%eax),%eax
    16d8:	89 c2                	mov    %eax,%edx
    16da:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16dd:	89 50 34             	mov    %edx,0x34(%eax)
    16e0:	8b 55 d8             	mov    -0x28(%ebp),%edx
    16e3:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16e6:	89 50 40             	mov    %edx,0x40(%eax)
    16e9:	8b 55 ec             	mov    -0x14(%ebp),%edx
    16ec:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16ef:	89 50 3c             	mov    %edx,0x3c(%eax)
    16f2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16f5:	8b 55 e8             	mov    -0x18(%ebp),%edx
    16f8:	89 50 60             	mov    %edx,0x60(%eax)
    16fb:	8b 45 dc             	mov    -0x24(%ebp),%eax
    16fe:	8b 50 60             	mov    0x60(%eax),%edx
    1701:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1704:	89 50 5c             	mov    %edx,0x5c(%eax)
    1707:	8b 45 dc             	mov    -0x24(%ebp),%eax
    170a:	c7 40 74 00 00 00 00 	movl   $0x0,0x74(%eax)
    1711:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1714:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    171b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    171e:	c7 40 7c 39 00 00 00 	movl   $0x39,0x7c(%eax)
    1725:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1728:	c7 80 80 00 00 00 39 	movl   $0x39,0x80(%eax)
    172f:	00 00 00 
    1732:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1735:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    173c:	00 00 00 
    173f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1742:	c7 80 88 00 00 00 00 	movl   $0x0,0x88(%eax)
    1749:	00 00 00 
    174c:	8b 45 dc             	mov    -0x24(%ebp),%eax
    174f:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    1756:	00 00 00 
    1759:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1760:	eb 15                	jmp    1777 <kernel_main+0x2c2>
    1762:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1765:	8b 55 f0             	mov    -0x10(%ebp),%edx
    1768:	83 c2 24             	add    $0x24,%edx
    176b:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    1772:	00 
    1773:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1777:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    177b:	7e e5                	jle    1762 <kernel_main+0x2ad>
    177d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1780:	8b 40 04             	mov    0x4(%eax),%eax
    1783:	f7 d8                	neg    %eax
    1785:	01 45 d8             	add    %eax,-0x28(%ebp)
    1788:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    178c:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    1793:	83 45 e0 28          	addl   $0x28,-0x20(%ebp)
    1797:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    179b:	0f 8e 44 fd ff ff    	jle    14e5 <kernel_main+0x30>
    17a1:	c7 05 20 84 03 00 00 	movl   $0x0,0x38420
    17a8:	00 00 00 
    17ab:	c7 05 e0 a3 03 00 00 	movl   $0x0,0x3a3e0
    17b2:	00 00 00 
    17b5:	c7 05 80 a4 03 00 a0 	movl   $0x3a4a0,0x3a480
    17bc:	a4 03 00 
    17bf:	e8 70 06 00 00       	call   1e34 <init_clock>
    17c4:	e8 2d 07 00 00       	call   1ef6 <init_keyboard>
    17c9:	e8 2d fc ff ff       	call   13fb <restart>
    17ce:	eb fe                	jmp    17ce <kernel_main+0x319>

000017d0 <get_ticks>:
    17d0:	55                   	push   %ebp
    17d1:	89 e5                	mov    %esp,%ebp
    17d3:	83 ec 38             	sub    $0x38,%esp
    17d6:	83 ec 0c             	sub    $0xc,%esp
    17d9:	8d 45 c8             	lea    -0x38(%ebp),%eax
    17dc:	50                   	push   %eax
    17dd:	e8 86 29 00 00       	call   4168 <reset_msg>
    17e2:	83 c4 10             	add    $0x10,%esp
    17e5:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
    17ec:	83 ec 04             	sub    $0x4,%esp
    17ef:	8d 45 c8             	lea    -0x38(%ebp),%eax
    17f2:	50                   	push   %eax
    17f3:	6a 01                	push   $0x1
    17f5:	6a 03                	push   $0x3
    17f7:	e8 ec ac 00 00       	call   c4e8 <send_recv>
    17fc:	83 c4 10             	add    $0x10,%esp
    17ff:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1802:	c9                   	leave  
    1803:	c3                   	ret    

00001804 <untar>:
    1804:	55                   	push   %ebp
    1805:	89 e5                	mov    %esp,%ebp
    1807:	81 ec 28 20 00 00    	sub    $0x2028,%esp
    180d:	83 ec 08             	sub    $0x8,%esp
    1810:	ff 75 08             	pushl  0x8(%ebp)
    1813:	68 a8 cc 00 00       	push   $0xcca8
    1818:	e8 94 a8 00 00       	call   c0b1 <printf>
    181d:	83 c4 10             	add    $0x10,%esp
    1820:	83 ec 08             	sub    $0x8,%esp
    1823:	6a 02                	push   $0x2
    1825:	ff 75 08             	pushl  0x8(%ebp)
    1828:	e8 09 af 00 00       	call   c736 <open>
    182d:	83 c4 10             	add    $0x10,%esp
    1830:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1833:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
    1837:	75 1c                	jne    1855 <untar+0x51>
    1839:	68 ba 00 00 00       	push   $0xba
    183e:	68 91 cc 00 00       	push   $0xcc91
    1843:	68 91 cc 00 00       	push   $0xcc91
    1848:	68 b7 cc 00 00       	push   $0xccb7
    184d:	e8 ab ae 00 00       	call   c6fd <assertion_failure>
    1852:	83 c4 10             	add    $0x10,%esp
    1855:	c7 45 e4 00 20 00 00 	movl   $0x2000,-0x1c(%ebp)
    185c:	83 ec 04             	sub    $0x4,%esp
    185f:	68 00 02 00 00       	push   $0x200
    1864:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    186a:	50                   	push   %eax
    186b:	ff 75 e8             	pushl  -0x18(%ebp)
    186e:	e8 26 af 00 00       	call   c799 <read>
    1873:	83 c4 10             	add    $0x10,%esp
    1876:	0f b6 85 d8 df ff ff 	movzbl -0x2028(%ebp),%eax
    187d:	84 c0                	test   %al,%al
    187f:	0f 84 1c 01 00 00    	je     19a1 <untar+0x19d>
    1885:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    188b:	89 45 e0             	mov    %eax,-0x20(%ebp)
    188e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1891:	83 c0 7c             	add    $0x7c,%eax
    1894:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1897:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    189e:	eb 21                	jmp    18c1 <untar+0xbd>
    18a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    18a3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
    18aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    18ad:	8d 50 01             	lea    0x1(%eax),%edx
    18b0:	89 55 f4             	mov    %edx,-0xc(%ebp)
    18b3:	0f b6 00             	movzbl (%eax),%eax
    18b6:	0f be c0             	movsbl %al,%eax
    18b9:	83 e8 30             	sub    $0x30,%eax
    18bc:	01 c8                	add    %ecx,%eax
    18be:	89 45 f0             	mov    %eax,-0x10(%ebp)
    18c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    18c4:	0f b6 00             	movzbl (%eax),%eax
    18c7:	84 c0                	test   %al,%al
    18c9:	75 d5                	jne    18a0 <untar+0x9c>
    18cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    18ce:	89 45 ec             	mov    %eax,-0x14(%ebp)
    18d1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    18d4:	83 ec 08             	sub    $0x8,%esp
    18d7:	6a 03                	push   $0x3
    18d9:	50                   	push   %eax
    18da:	e8 57 ae 00 00       	call   c736 <open>
    18df:	83 c4 10             	add    $0x10,%esp
    18e2:	89 45 dc             	mov    %eax,-0x24(%ebp)
    18e5:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    18e9:	75 29                	jne    1914 <untar+0x110>
    18eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    18ee:	83 ec 08             	sub    $0x8,%esp
    18f1:	50                   	push   %eax
    18f2:	68 c0 cc 00 00       	push   $0xccc0
    18f7:	e8 b5 a7 00 00       	call   c0b1 <printf>
    18fc:	83 c4 10             	add    $0x10,%esp
    18ff:	83 ec 0c             	sub    $0xc,%esp
    1902:	68 e0 cc 00 00       	push   $0xcce0
    1907:	e8 a5 a7 00 00       	call   c0b1 <printf>
    190c:	83 c4 10             	add    $0x10,%esp
    190f:	e9 ac 00 00 00       	jmp    19c0 <untar+0x1bc>
    1914:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1917:	83 ec 04             	sub    $0x4,%esp
    191a:	ff 75 f0             	pushl  -0x10(%ebp)
    191d:	50                   	push   %eax
    191e:	68 ea cc 00 00       	push   $0xccea
    1923:	e8 89 a7 00 00       	call   c0b1 <printf>
    1928:	83 c4 10             	add    $0x10,%esp
    192b:	eb 5b                	jmp    1988 <untar+0x184>
    192d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1930:	39 45 ec             	cmp    %eax,-0x14(%ebp)
    1933:	0f 4e 45 ec          	cmovle -0x14(%ebp),%eax
    1937:	89 45 d8             	mov    %eax,-0x28(%ebp)
    193a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    193d:	83 e8 01             	sub    $0x1,%eax
    1940:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
    1946:	85 c0                	test   %eax,%eax
    1948:	0f 48 c2             	cmovs  %edx,%eax
    194b:	c1 f8 09             	sar    $0x9,%eax
    194e:	83 c0 01             	add    $0x1,%eax
    1951:	c1 e0 09             	shl    $0x9,%eax
    1954:	83 ec 04             	sub    $0x4,%esp
    1957:	50                   	push   %eax
    1958:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    195e:	50                   	push   %eax
    195f:	ff 75 e8             	pushl  -0x18(%ebp)
    1962:	e8 32 ae 00 00       	call   c799 <read>
    1967:	83 c4 10             	add    $0x10,%esp
    196a:	83 ec 04             	sub    $0x4,%esp
    196d:	ff 75 d8             	pushl  -0x28(%ebp)
    1970:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    1976:	50                   	push   %eax
    1977:	ff 75 dc             	pushl  -0x24(%ebp)
    197a:	e8 51 ae 00 00       	call   c7d0 <write>
    197f:	83 c4 10             	add    $0x10,%esp
    1982:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1985:	29 45 ec             	sub    %eax,-0x14(%ebp)
    1988:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    198c:	75 9f                	jne    192d <untar+0x129>
    198e:	83 ec 0c             	sub    $0xc,%esp
    1991:	ff 75 dc             	pushl  -0x24(%ebp)
    1994:	e8 6e ae 00 00       	call   c807 <close>
    1999:	83 c4 10             	add    $0x10,%esp
    199c:	e9 bb fe ff ff       	jmp    185c <untar+0x58>
    19a1:	90                   	nop
    19a2:	83 ec 0c             	sub    $0xc,%esp
    19a5:	ff 75 e8             	pushl  -0x18(%ebp)
    19a8:	e8 5a ae 00 00       	call   c807 <close>
    19ad:	83 c4 10             	add    $0x10,%esp
    19b0:	83 ec 0c             	sub    $0xc,%esp
    19b3:	68 fd cc 00 00       	push   $0xccfd
    19b8:	e8 f4 a6 00 00       	call   c0b1 <printf>
    19bd:	83 c4 10             	add    $0x10,%esp
    19c0:	c9                   	leave  
    19c1:	c3                   	ret    

000019c2 <shabby_shell>:
    19c2:	55                   	push   %ebp
    19c3:	89 e5                	mov    %esp,%ebp
    19c5:	81 ec b8 10 00 00    	sub    $0x10b8,%esp
    19cb:	83 ec 08             	sub    $0x8,%esp
    19ce:	6a 02                	push   $0x2
    19d0:	ff 75 08             	pushl  0x8(%ebp)
    19d3:	e8 5e ad 00 00       	call   c736 <open>
    19d8:	83 c4 10             	add    $0x10,%esp
    19db:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    19de:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    19e2:	74 1c                	je     1a00 <shabby_shell+0x3e>
    19e4:	68 00 01 00 00       	push   $0x100
    19e9:	68 91 cc 00 00       	push   $0xcc91
    19ee:	68 91 cc 00 00       	push   $0xcc91
    19f3:	68 05 cd 00 00       	push   $0xcd05
    19f8:	e8 00 ad 00 00       	call   c6fd <assertion_failure>
    19fd:	83 c4 10             	add    $0x10,%esp
    1a00:	83 ec 08             	sub    $0x8,%esp
    1a03:	6a 02                	push   $0x2
    1a05:	ff 75 08             	pushl  0x8(%ebp)
    1a08:	e8 29 ad 00 00       	call   c736 <open>
    1a0d:	83 c4 10             	add    $0x10,%esp
    1a10:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1a13:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
    1a17:	74 1c                	je     1a35 <shabby_shell+0x73>
    1a19:	68 02 01 00 00       	push   $0x102
    1a1e:	68 91 cc 00 00       	push   $0xcc91
    1a23:	68 91 cc 00 00       	push   $0xcc91
    1a28:	68 13 cd 00 00       	push   $0xcd13
    1a2d:	e8 cb ac 00 00       	call   c6fd <assertion_failure>
    1a32:	83 c4 10             	add    $0x10,%esp
    1a35:	83 ec 04             	sub    $0x4,%esp
    1a38:	6a 02                	push   $0x2
    1a3a:	68 22 cd 00 00       	push   $0xcd22
    1a3f:	6a 01                	push   $0x1
    1a41:	e8 8a ad 00 00       	call   c7d0 <write>
    1a46:	83 c4 10             	add    $0x10,%esp
    1a49:	83 ec 04             	sub    $0x4,%esp
    1a4c:	6a 46                	push   $0x46
    1a4e:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    1a54:	50                   	push   %eax
    1a55:	6a 00                	push   $0x0
    1a57:	e8 3d ad 00 00       	call   c799 <read>
    1a5c:	83 c4 10             	add    $0x10,%esp
    1a5f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    1a62:	8d 95 50 ff ff ff    	lea    -0xb0(%ebp),%edx
    1a68:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1a6b:	01 d0                	add    %edx,%eax
    1a6d:	c6 00 00             	movb   $0x0,(%eax)
    1a70:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1a77:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    1a7d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1a80:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    1a87:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1a8a:	0f b6 00             	movzbl (%eax),%eax
    1a8d:	88 45 db             	mov    %al,-0x25(%ebp)
    1a90:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1a93:	0f b6 00             	movzbl (%eax),%eax
    1a96:	3c 20                	cmp    $0x20,%al
    1a98:	74 1d                	je     1ab7 <shabby_shell+0xf5>
    1a9a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1a9d:	0f b6 00             	movzbl (%eax),%eax
    1aa0:	84 c0                	test   %al,%al
    1aa2:	74 13                	je     1ab7 <shabby_shell+0xf5>
    1aa4:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1aa8:	75 0d                	jne    1ab7 <shabby_shell+0xf5>
    1aaa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1aad:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1ab0:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
    1ab7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1aba:	0f b6 00             	movzbl (%eax),%eax
    1abd:	3c 20                	cmp    $0x20,%al
    1abf:	74 0a                	je     1acb <shabby_shell+0x109>
    1ac1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1ac4:	0f b6 00             	movzbl (%eax),%eax
    1ac7:	84 c0                	test   %al,%al
    1ac9:	75 26                	jne    1af1 <shabby_shell+0x12f>
    1acb:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1acf:	74 20                	je     1af1 <shabby_shell+0x12f>
    1ad1:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    1ad8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1adb:	8d 50 01             	lea    0x1(%eax),%edx
    1ade:	89 55 f4             	mov    %edx,-0xc(%ebp)
    1ae1:	8b 55 ec             	mov    -0x14(%ebp),%edx
    1ae4:	89 94 85 4c ef ff ff 	mov    %edx,-0x10b4(%ebp,%eax,4)
    1aeb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1aee:	c6 00 00             	movb   $0x0,(%eax)
    1af1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1af5:	80 7d db 00          	cmpb   $0x0,-0x25(%ebp)
    1af9:	75 8c                	jne    1a87 <shabby_shell+0xc5>
    1afb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1afe:	c7 84 85 4c ef ff ff 	movl   $0x0,-0x10b4(%ebp,%eax,4)
    1b05:	00 00 00 00 
    1b09:	8b 85 4c ef ff ff    	mov    -0x10b4(%ebp),%eax
    1b0f:	83 ec 08             	sub    $0x8,%esp
    1b12:	6a 02                	push   $0x2
    1b14:	50                   	push   %eax
    1b15:	e8 1c ac 00 00       	call   c736 <open>
    1b1a:	83 c4 10             	add    $0x10,%esp
    1b1d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1b20:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
    1b24:	75 53                	jne    1b79 <shabby_shell+0x1b7>
    1b26:	0f b6 85 50 ff ff ff 	movzbl -0xb0(%ebp),%eax
    1b2d:	84 c0                	test   %al,%al
    1b2f:	0f 84 00 ff ff ff    	je     1a35 <shabby_shell+0x73>
    1b35:	83 ec 04             	sub    $0x4,%esp
    1b38:	6a 01                	push   $0x1
    1b3a:	68 25 cd 00 00       	push   $0xcd25
    1b3f:	6a 01                	push   $0x1
    1b41:	e8 8a ac 00 00       	call   c7d0 <write>
    1b46:	83 c4 10             	add    $0x10,%esp
    1b49:	83 ec 04             	sub    $0x4,%esp
    1b4c:	ff 75 dc             	pushl  -0x24(%ebp)
    1b4f:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    1b55:	50                   	push   %eax
    1b56:	6a 01                	push   $0x1
    1b58:	e8 73 ac 00 00       	call   c7d0 <write>
    1b5d:	83 c4 10             	add    $0x10,%esp
    1b60:	83 ec 04             	sub    $0x4,%esp
    1b63:	6a 02                	push   $0x2
    1b65:	68 27 cd 00 00       	push   $0xcd27
    1b6a:	6a 01                	push   $0x1
    1b6c:	e8 5f ac 00 00       	call   c7d0 <write>
    1b71:	83 c4 10             	add    $0x10,%esp
    1b74:	e9 bc fe ff ff       	jmp    1a35 <shabby_shell+0x73>
    1b79:	83 ec 0c             	sub    $0xc,%esp
    1b7c:	ff 75 d4             	pushl  -0x2c(%ebp)
    1b7f:	e8 83 ac 00 00       	call   c807 <close>
    1b84:	83 c4 10             	add    $0x10,%esp
    1b87:	e8 4f ad 00 00       	call   c8db <fork>
    1b8c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1b8f:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
    1b93:	74 17                	je     1bac <shabby_shell+0x1ea>
    1b95:	83 ec 0c             	sub    $0xc,%esp
    1b98:	8d 85 4c ff ff ff    	lea    -0xb4(%ebp),%eax
    1b9e:	50                   	push   %eax
    1b9f:	e8 9d ad 00 00       	call   c941 <wait>
    1ba4:	83 c4 10             	add    $0x10,%esp
    1ba7:	e9 89 fe ff ff       	jmp    1a35 <shabby_shell+0x73>
    1bac:	8b 85 4c ef ff ff    	mov    -0x10b4(%ebp),%eax
    1bb2:	83 ec 08             	sub    $0x8,%esp
    1bb5:	8d 95 4c ef ff ff    	lea    -0x10b4(%ebp),%edx
    1bbb:	52                   	push   %edx
    1bbc:	50                   	push   %eax
    1bbd:	e8 4b ae 00 00       	call   ca0d <execv>
    1bc2:	83 c4 10             	add    $0x10,%esp
    1bc5:	e9 6b fe ff ff       	jmp    1a35 <shabby_shell+0x73>

00001bca <Init>:
    1bca:	55                   	push   %ebp
    1bcb:	89 e5                	mov    %esp,%ebp
    1bcd:	83 ec 28             	sub    $0x28,%esp
    1bd0:	83 ec 08             	sub    $0x8,%esp
    1bd3:	6a 02                	push   $0x2
    1bd5:	68 2a cd 00 00       	push   $0xcd2a
    1bda:	e8 57 ab 00 00       	call   c736 <open>
    1bdf:	83 c4 10             	add    $0x10,%esp
    1be2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1be5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1be9:	74 1c                	je     1c07 <Init+0x3d>
    1beb:	68 52 01 00 00       	push   $0x152
    1bf0:	68 91 cc 00 00       	push   $0xcc91
    1bf5:	68 91 cc 00 00       	push   $0xcc91
    1bfa:	68 05 cd 00 00       	push   $0xcd05
    1bff:	e8 f9 aa 00 00       	call   c6fd <assertion_failure>
    1c04:	83 c4 10             	add    $0x10,%esp
    1c07:	83 ec 08             	sub    $0x8,%esp
    1c0a:	6a 02                	push   $0x2
    1c0c:	68 2a cd 00 00       	push   $0xcd2a
    1c11:	e8 20 ab 00 00       	call   c736 <open>
    1c16:	83 c4 10             	add    $0x10,%esp
    1c19:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1c1c:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
    1c20:	74 1c                	je     1c3e <Init+0x74>
    1c22:	68 54 01 00 00       	push   $0x154
    1c27:	68 91 cc 00 00       	push   $0xcc91
    1c2c:	68 91 cc 00 00       	push   $0xcc91
    1c31:	68 13 cd 00 00       	push   $0xcd13
    1c36:	e8 c2 aa 00 00       	call   c6fd <assertion_failure>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	83 ec 0c             	sub    $0xc,%esp
    1c41:	68 34 cd 00 00       	push   $0xcd34
    1c46:	e8 66 a4 00 00       	call   c0b1 <printf>
    1c4b:	83 c4 10             	add    $0x10,%esp
    1c4e:	83 ec 0c             	sub    $0xc,%esp
    1c51:	68 4b cd 00 00       	push   $0xcd4b
    1c56:	e8 a9 fb ff ff       	call   1804 <untar>
    1c5b:	83 c4 10             	add    $0x10,%esp
    1c5e:	c7 45 dc 54 cd 00 00 	movl   $0xcd54,-0x24(%ebp)
    1c65:	c7 45 e0 5e cd 00 00 	movl   $0xcd5e,-0x20(%ebp)
    1c6c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1c73:	e9 88 00 00 00       	jmp    1d00 <Init+0x136>
    1c78:	e8 5e ac 00 00       	call   c8db <fork>
    1c7d:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1c80:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1c84:	74 15                	je     1c9b <Init+0xd1>
    1c86:	83 ec 08             	sub    $0x8,%esp
    1c89:	ff 75 e8             	pushl  -0x18(%ebp)
    1c8c:	68 68 cd 00 00       	push   $0xcd68
    1c91:	e8 1b a4 00 00       	call   c0b1 <printf>
    1c96:	83 c4 10             	add    $0x10,%esp
    1c99:	eb 61                	jmp    1cfc <Init+0x132>
    1c9b:	e8 92 ab 00 00       	call   c832 <getpid>
    1ca0:	83 ec 08             	sub    $0x8,%esp
    1ca3:	50                   	push   %eax
    1ca4:	68 8b cd 00 00       	push   $0xcd8b
    1ca9:	e8 03 a4 00 00       	call   c0b1 <printf>
    1cae:	83 c4 10             	add    $0x10,%esp
    1cb1:	83 ec 0c             	sub    $0xc,%esp
    1cb4:	ff 75 f0             	pushl  -0x10(%ebp)
    1cb7:	e8 4b ab 00 00       	call   c807 <close>
    1cbc:	83 c4 10             	add    $0x10,%esp
    1cbf:	83 ec 0c             	sub    $0xc,%esp
    1cc2:	ff 75 ec             	pushl  -0x14(%ebp)
    1cc5:	e8 3d ab 00 00       	call   c807 <close>
    1cca:	83 c4 10             	add    $0x10,%esp
    1ccd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1cd0:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
    1cd4:	83 ec 0c             	sub    $0xc,%esp
    1cd7:	50                   	push   %eax
    1cd8:	e8 e5 fc ff ff       	call   19c2 <shabby_shell>
    1cdd:	83 c4 10             	add    $0x10,%esp
    1ce0:	68 70 01 00 00       	push   $0x170
    1ce5:	68 91 cc 00 00       	push   $0xcc91
    1cea:	68 91 cc 00 00       	push   $0xcc91
    1cef:	68 a7 cd 00 00       	push   $0xcda7
    1cf4:	e8 04 aa 00 00       	call   c6fd <assertion_failure>
    1cf9:	83 c4 10             	add    $0x10,%esp
    1cfc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1d00:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1d03:	83 f8 01             	cmp    $0x1,%eax
    1d06:	0f 86 6c ff ff ff    	jbe    1c78 <Init+0xae>
    1d0c:	83 ec 0c             	sub    $0xc,%esp
    1d0f:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1d12:	50                   	push   %eax
    1d13:	e8 29 ac 00 00       	call   c941 <wait>
    1d18:	83 c4 10             	add    $0x10,%esp
    1d1b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1d1e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1d21:	83 ec 04             	sub    $0x4,%esp
    1d24:	50                   	push   %eax
    1d25:	ff 75 e4             	pushl  -0x1c(%ebp)
    1d28:	68 ac cd 00 00       	push   $0xcdac
    1d2d:	e8 7f a3 00 00       	call   c0b1 <printf>
    1d32:	83 c4 10             	add    $0x10,%esp
    1d35:	eb d5                	jmp    1d0c <Init+0x142>

00001d37 <TestA>:
    1d37:	55                   	push   %ebp
    1d38:	89 e5                	mov    %esp,%ebp
    1d3a:	eb fe                	jmp    1d3a <TestA+0x3>

00001d3c <TestB>:
    1d3c:	55                   	push   %ebp
    1d3d:	89 e5                	mov    %esp,%ebp
    1d3f:	eb fe                	jmp    1d3f <TestB+0x3>

00001d41 <TestC>:
    1d41:	55                   	push   %ebp
    1d42:	89 e5                	mov    %esp,%ebp
    1d44:	eb fe                	jmp    1d44 <TestC+0x3>

00001d46 <panic>:
    1d46:	55                   	push   %ebp
    1d47:	89 e5                	mov    %esp,%ebp
    1d49:	81 ec 18 01 00 00    	sub    $0x118,%esp
    1d4f:	8d 45 0c             	lea    0xc(%ebp),%eax
    1d52:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1d55:	8b 45 08             	mov    0x8(%ebp),%eax
    1d58:	83 ec 04             	sub    $0x4,%esp
    1d5b:	ff 75 f4             	pushl  -0xc(%ebp)
    1d5e:	50                   	push   %eax
    1d5f:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1d65:	50                   	push   %eax
    1d66:	e8 59 a4 00 00       	call   c1c4 <vsprintf>
    1d6b:	83 c4 10             	add    $0x10,%esp
    1d6e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1d71:	83 ec 04             	sub    $0x4,%esp
    1d74:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1d7a:	50                   	push   %eax
    1d7b:	6a 02                	push   $0x2
    1d7d:	68 d0 cd 00 00       	push   $0xcdd0
    1d82:	e8 95 a3 00 00       	call   c11c <printl>
    1d87:	83 c4 10             	add    $0x10,%esp
    1d8a:	0f 0b                	ud2    
    1d8c:	90                   	nop
    1d8d:	c9                   	leave  
    1d8e:	c3                   	ret    

00001d8f <clock_handler>:
    1d8f:	55                   	push   %ebp
    1d90:	89 e5                	mov    %esp,%ebp
    1d92:	83 ec 08             	sub    $0x8,%esp
    1d95:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    1d9a:	83 c0 01             	add    $0x1,%eax
    1d9d:	a3 e0 a3 03 00       	mov    %eax,0x3a3e0
    1da2:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    1da7:	3d cc ab ff 7f       	cmp    $0x7fffabcc,%eax
    1dac:	7e 0a                	jle    1db8 <clock_handler+0x29>
    1dae:	c7 05 e0 a3 03 00 00 	movl   $0x0,0x3a3e0
    1db5:	00 00 00 
    1db8:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1dbd:	8b 40 5c             	mov    0x5c(%eax),%eax
    1dc0:	85 c0                	test   %eax,%eax
    1dc2:	74 0e                	je     1dd2 <clock_handler+0x43>
    1dc4:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1dc9:	8b 50 5c             	mov    0x5c(%eax),%edx
    1dcc:	83 ea 01             	sub    $0x1,%edx
    1dcf:	89 50 5c             	mov    %edx,0x5c(%eax)
    1dd2:	a1 f0 99 03 00       	mov    0x399f0,%eax
    1dd7:	85 c0                	test   %eax,%eax
    1dd9:	74 0d                	je     1de8 <clock_handler+0x59>
    1ddb:	83 ec 0c             	sub    $0xc,%esp
    1dde:	6a 00                	push   $0x0
    1de0:	e8 55 31 00 00       	call   4f3a <inform_int>
    1de5:	83 c4 10             	add    $0x10,%esp
    1de8:	a1 20 84 03 00       	mov    0x38420,%eax
    1ded:	85 c0                	test   %eax,%eax
    1def:	75 13                	jne    1e04 <clock_handler+0x75>
    1df1:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1df6:	8b 40 5c             	mov    0x5c(%eax),%eax
    1df9:	85 c0                	test   %eax,%eax
    1dfb:	7f 0a                	jg     1e07 <clock_handler+0x78>
    1dfd:	e8 11 21 00 00       	call   3f13 <schedule>
    1e02:	eb 04                	jmp    1e08 <clock_handler+0x79>
    1e04:	90                   	nop
    1e05:	eb 01                	jmp    1e08 <clock_handler+0x79>
    1e07:	90                   	nop
    1e08:	c9                   	leave  
    1e09:	c3                   	ret    

00001e0a <milli_delay>:
    1e0a:	55                   	push   %ebp
    1e0b:	89 e5                	mov    %esp,%ebp
    1e0d:	83 ec 18             	sub    $0x18,%esp
    1e10:	e8 bb f9 ff ff       	call   17d0 <get_ticks>
    1e15:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1e18:	90                   	nop
    1e19:	e8 b2 f9 ff ff       	call   17d0 <get_ticks>
    1e1e:	2b 45 f4             	sub    -0xc(%ebp),%eax
    1e21:	89 c2                	mov    %eax,%edx
    1e23:	89 d0                	mov    %edx,%eax
    1e25:	c1 e0 02             	shl    $0x2,%eax
    1e28:	01 d0                	add    %edx,%eax
    1e2a:	01 c0                	add    %eax,%eax
    1e2c:	39 45 08             	cmp    %eax,0x8(%ebp)
    1e2f:	7f e8                	jg     1e19 <milli_delay+0xf>
    1e31:	90                   	nop
    1e32:	c9                   	leave  
    1e33:	c3                   	ret    

00001e34 <init_clock>:
    1e34:	55                   	push   %ebp
    1e35:	89 e5                	mov    %esp,%ebp
    1e37:	83 ec 08             	sub    $0x8,%esp
    1e3a:	83 ec 08             	sub    $0x8,%esp
    1e3d:	6a 34                	push   $0x34
    1e3f:	6a 43                	push   $0x43
    1e41:	e8 07 48 00 00       	call   664d <out_byte>
    1e46:	83 c4 10             	add    $0x10,%esp
    1e49:	83 ec 08             	sub    $0x8,%esp
    1e4c:	68 9b 00 00 00       	push   $0x9b
    1e51:	6a 40                	push   $0x40
    1e53:	e8 f5 47 00 00       	call   664d <out_byte>
    1e58:	83 c4 10             	add    $0x10,%esp
    1e5b:	83 ec 08             	sub    $0x8,%esp
    1e5e:	6a 2e                	push   $0x2e
    1e60:	6a 40                	push   $0x40
    1e62:	e8 e6 47 00 00       	call   664d <out_byte>
    1e67:	83 c4 10             	add    $0x10,%esp
    1e6a:	83 ec 08             	sub    $0x8,%esp
    1e6d:	68 8f 1d 00 00       	push   $0x1d8f
    1e72:	6a 00                	push   $0x0
    1e74:	e8 1c 1a 00 00       	call   3895 <put_irq_handler>
    1e79:	83 c4 10             	add    $0x10,%esp
    1e7c:	83 ec 0c             	sub    $0xc,%esp
    1e7f:	6a 00                	push   $0x0
    1e81:	e8 38 48 00 00       	call   66be <enable_irq>
    1e86:	83 c4 10             	add    $0x10,%esp
    1e89:	90                   	nop
    1e8a:	c9                   	leave  
    1e8b:	c3                   	ret    

00001e8c <keyboard_handler>:
    1e8c:	55                   	push   %ebp
    1e8d:	89 e5                	mov    %esp,%ebp
    1e8f:	83 ec 18             	sub    $0x18,%esp
    1e92:	83 ec 0c             	sub    $0xc,%esp
    1e95:	6a 60                	push   $0x60
    1e97:	e8 bd 47 00 00       	call   6659 <in_byte>
    1e9c:	83 c4 10             	add    $0x10,%esp
    1e9f:	88 45 f7             	mov    %al,-0x9(%ebp)
    1ea2:	a1 28 30 01 00       	mov    0x13028,%eax
    1ea7:	83 f8 1f             	cmp    $0x1f,%eax
    1eaa:	7f 3d                	jg     1ee9 <keyboard_handler+0x5d>
    1eac:	a1 20 30 01 00       	mov    0x13020,%eax
    1eb1:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    1eb5:	88 10                	mov    %dl,(%eax)
    1eb7:	a1 20 30 01 00       	mov    0x13020,%eax
    1ebc:	83 c0 01             	add    $0x1,%eax
    1ebf:	a3 20 30 01 00       	mov    %eax,0x13020
    1ec4:	a1 20 30 01 00       	mov    0x13020,%eax
    1ec9:	ba 4c 30 01 00       	mov    $0x1304c,%edx
    1ece:	39 d0                	cmp    %edx,%eax
    1ed0:	75 0a                	jne    1edc <keyboard_handler+0x50>
    1ed2:	c7 05 20 30 01 00 2c 	movl   $0x1302c,0x13020
    1ed9:	30 01 00 
    1edc:	a1 28 30 01 00       	mov    0x13028,%eax
    1ee1:	83 c0 01             	add    $0x1,%eax
    1ee4:	a3 28 30 01 00       	mov    %eax,0x13028
    1ee9:	c7 05 f0 99 03 00 01 	movl   $0x1,0x399f0
    1ef0:	00 00 00 
    1ef3:	90                   	nop
    1ef4:	c9                   	leave  
    1ef5:	c3                   	ret    

00001ef6 <init_keyboard>:
    1ef6:	55                   	push   %ebp
    1ef7:	89 e5                	mov    %esp,%ebp
    1ef9:	83 ec 08             	sub    $0x8,%esp
    1efc:	c7 05 28 30 01 00 00 	movl   $0x0,0x13028
    1f03:	00 00 00 
    1f06:	c7 05 24 30 01 00 2c 	movl   $0x1302c,0x13024
    1f0d:	30 01 00 
    1f10:	a1 24 30 01 00       	mov    0x13024,%eax
    1f15:	a3 20 30 01 00       	mov    %eax,0x13020
    1f1a:	c7 05 54 30 01 00 00 	movl   $0x0,0x13054
    1f21:	00 00 00 
    1f24:	a1 54 30 01 00       	mov    0x13054,%eax
    1f29:	a3 50 30 01 00       	mov    %eax,0x13050
    1f2e:	c7 05 5c 30 01 00 00 	movl   $0x0,0x1305c
    1f35:	00 00 00 
    1f38:	a1 5c 30 01 00       	mov    0x1305c,%eax
    1f3d:	a3 58 30 01 00       	mov    %eax,0x13058
    1f42:	c7 05 64 30 01 00 00 	movl   $0x0,0x13064
    1f49:	00 00 00 
    1f4c:	a1 64 30 01 00       	mov    0x13064,%eax
    1f51:	a3 60 30 01 00       	mov    %eax,0x13060
    1f56:	c7 05 68 30 01 00 00 	movl   $0x0,0x13068
    1f5d:	00 00 00 
    1f60:	c7 05 6c 30 01 00 01 	movl   $0x1,0x1306c
    1f67:	00 00 00 
    1f6a:	c7 05 70 30 01 00 00 	movl   $0x0,0x13070
    1f71:	00 00 00 
    1f74:	c7 05 74 30 01 00 00 	movl   $0x0,0x13074
    1f7b:	00 00 00 
    1f7e:	e8 8d 05 00 00       	call   2510 <set_leds>
    1f83:	83 ec 08             	sub    $0x8,%esp
    1f86:	68 8c 1e 00 00       	push   $0x1e8c
    1f8b:	6a 01                	push   $0x1
    1f8d:	e8 03 19 00 00       	call   3895 <put_irq_handler>
    1f92:	83 c4 10             	add    $0x10,%esp
    1f95:	83 ec 0c             	sub    $0xc,%esp
    1f98:	6a 01                	push   $0x1
    1f9a:	e8 1f 47 00 00       	call   66be <enable_irq>
    1f9f:	83 c4 10             	add    $0x10,%esp
    1fa2:	90                   	nop
    1fa3:	c9                   	leave  
    1fa4:	c3                   	ret    

00001fa5 <keyboard_read>:
    1fa5:	55                   	push   %ebp
    1fa6:	89 e5                	mov    %esp,%ebp
    1fa8:	83 ec 38             	sub    $0x38,%esp
    1fab:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1fb2:	e9 a9 04 00 00       	jmp    2460 <keyboard_read+0x4bb>
    1fb7:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    1fbe:	00 00 00 
    1fc1:	e8 aa 04 00 00       	call   2470 <get_byte_from_kb_buf>
    1fc6:	88 45 f7             	mov    %al,-0x9(%ebp)
    1fc9:	80 7d f7 e1          	cmpb   $0xe1,-0x9(%ebp)
    1fcd:	75 67                	jne    2036 <keyboard_read+0x91>
    1fcf:	c6 45 d2 e1          	movb   $0xe1,-0x2e(%ebp)
    1fd3:	c6 45 d3 1d          	movb   $0x1d,-0x2d(%ebp)
    1fd7:	c6 45 d4 45          	movb   $0x45,-0x2c(%ebp)
    1fdb:	c6 45 d5 e1          	movb   $0xe1,-0x2b(%ebp)
    1fdf:	c6 45 d6 9d          	movb   $0x9d,-0x2a(%ebp)
    1fe3:	c6 45 d7 c5          	movb   $0xc5,-0x29(%ebp)
    1fe7:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    1fee:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
    1ff5:	eb 23                	jmp    201a <keyboard_read+0x75>
    1ff7:	e8 74 04 00 00       	call   2470 <get_byte_from_kb_buf>
    1ffc:	89 c1                	mov    %eax,%ecx
    1ffe:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    2001:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2004:	01 d0                	add    %edx,%eax
    2006:	0f b6 00             	movzbl (%eax),%eax
    2009:	38 c1                	cmp    %al,%cl
    200b:	74 09                	je     2016 <keyboard_read+0x71>
    200d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    2014:	eb 0a                	jmp    2020 <keyboard_read+0x7b>
    2016:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    201a:	83 7d e8 05          	cmpl   $0x5,-0x18(%ebp)
    201e:	7e d7                	jle    1ff7 <keyboard_read+0x52>
    2020:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    2024:	0f 84 b2 00 00 00    	je     20dc <keyboard_read+0x137>
    202a:	c7 45 ec 1e 01 00 00 	movl   $0x11e,-0x14(%ebp)
    2031:	e9 a6 00 00 00       	jmp    20dc <keyboard_read+0x137>
    2036:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    203a:	0f 85 9c 00 00 00    	jne    20dc <keyboard_read+0x137>
    2040:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    2047:	00 00 00 
    204a:	e8 21 04 00 00       	call   2470 <get_byte_from_kb_buf>
    204f:	88 45 f7             	mov    %al,-0x9(%ebp)
    2052:	80 7d f7 2a          	cmpb   $0x2a,-0x9(%ebp)
    2056:	75 40                	jne    2098 <keyboard_read+0xf3>
    2058:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    205f:	00 00 00 
    2062:	e8 09 04 00 00       	call   2470 <get_byte_from_kb_buf>
    2067:	88 45 f7             	mov    %al,-0x9(%ebp)
    206a:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    206e:	75 6c                	jne    20dc <keyboard_read+0x137>
    2070:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    2077:	00 00 00 
    207a:	e8 f1 03 00 00       	call   2470 <get_byte_from_kb_buf>
    207f:	88 45 f7             	mov    %al,-0x9(%ebp)
    2082:	80 7d f7 37          	cmpb   $0x37,-0x9(%ebp)
    2086:	75 54                	jne    20dc <keyboard_read+0x137>
    2088:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    208f:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    2096:	eb 44                	jmp    20dc <keyboard_read+0x137>
    2098:	80 7d f7 b7          	cmpb   $0xb7,-0x9(%ebp)
    209c:	75 3e                	jne    20dc <keyboard_read+0x137>
    209e:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    20a5:	00 00 00 
    20a8:	e8 c3 03 00 00       	call   2470 <get_byte_from_kb_buf>
    20ad:	88 45 f7             	mov    %al,-0x9(%ebp)
    20b0:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    20b4:	75 26                	jne    20dc <keyboard_read+0x137>
    20b6:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    20bd:	00 00 00 
    20c0:	e8 ab 03 00 00       	call   2470 <get_byte_from_kb_buf>
    20c5:	88 45 f7             	mov    %al,-0x9(%ebp)
    20c8:	80 7d f7 aa          	cmpb   $0xaa,-0x9(%ebp)
    20cc:	75 0e                	jne    20dc <keyboard_read+0x137>
    20ce:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    20d5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    20dc:	81 7d ec 1e 01 00 00 	cmpl   $0x11e,-0x14(%ebp)
    20e3:	0f 84 80 01 00 00    	je     2269 <keyboard_read+0x2c4>
    20e9:	81 7d ec 1d 01 00 00 	cmpl   $0x11d,-0x14(%ebp)
    20f0:	0f 84 73 01 00 00    	je     2269 <keyboard_read+0x2c4>
    20f6:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    20fa:	f7 d0                	not    %eax
    20fc:	c0 e8 07             	shr    $0x7,%al
    20ff:	0f b6 c0             	movzbl %al,%eax
    2102:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2105:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2109:	83 e0 7f             	and    $0x7f,%eax
    210c:	89 c2                	mov    %eax,%edx
    210e:	89 d0                	mov    %edx,%eax
    2110:	01 c0                	add    %eax,%eax
    2112:	01 d0                	add    %edx,%eax
    2114:	c1 e0 02             	shl    $0x2,%eax
    2117:	05 20 20 01 00       	add    $0x12020,%eax
    211c:	89 45 d8             	mov    %eax,-0x28(%ebp)
    211f:	c7 05 74 30 01 00 00 	movl   $0x0,0x13074
    2126:	00 00 00 
    2129:	a1 50 30 01 00       	mov    0x13050,%eax
    212e:	85 c0                	test   %eax,%eax
    2130:	75 09                	jne    213b <keyboard_read+0x196>
    2132:	a1 54 30 01 00       	mov    0x13054,%eax
    2137:	85 c0                	test   %eax,%eax
    2139:	74 07                	je     2142 <keyboard_read+0x19d>
    213b:	b8 01 00 00 00       	mov    $0x1,%eax
    2140:	eb 05                	jmp    2147 <keyboard_read+0x1a2>
    2142:	b8 00 00 00 00       	mov    $0x0,%eax
    2147:	89 45 e0             	mov    %eax,-0x20(%ebp)
    214a:	a1 68 30 01 00       	mov    0x13068,%eax
    214f:	85 c0                	test   %eax,%eax
    2151:	74 21                	je     2174 <keyboard_read+0x1cf>
    2153:	8b 45 d8             	mov    -0x28(%ebp),%eax
    2156:	8b 00                	mov    (%eax),%eax
    2158:	83 f8 60             	cmp    $0x60,%eax
    215b:	76 17                	jbe    2174 <keyboard_read+0x1cf>
    215d:	8b 45 d8             	mov    -0x28(%ebp),%eax
    2160:	8b 00                	mov    (%eax),%eax
    2162:	83 f8 7a             	cmp    $0x7a,%eax
    2165:	77 0d                	ja     2174 <keyboard_read+0x1cf>
    2167:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    216b:	0f 94 c0             	sete   %al
    216e:	0f b6 c0             	movzbl %al,%eax
    2171:	89 45 e0             	mov    %eax,-0x20(%ebp)
    2174:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    2178:	74 0a                	je     2184 <keyboard_read+0x1df>
    217a:	c7 05 74 30 01 00 01 	movl   $0x1,0x13074
    2181:	00 00 00 
    2184:	a1 4c 30 01 00       	mov    0x1304c,%eax
    2189:	85 c0                	test   %eax,%eax
    218b:	74 0a                	je     2197 <keyboard_read+0x1f2>
    218d:	c7 05 74 30 01 00 02 	movl   $0x2,0x13074
    2194:	00 00 00 
    2197:	a1 74 30 01 00       	mov    0x13074,%eax
    219c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    21a3:	8b 45 d8             	mov    -0x28(%ebp),%eax
    21a6:	01 d0                	add    %edx,%eax
    21a8:	8b 00                	mov    (%eax),%eax
    21aa:	89 45 ec             	mov    %eax,-0x14(%ebp)
    21ad:	8b 45 ec             	mov    -0x14(%ebp),%eax
    21b0:	2d 08 01 00 00       	sub    $0x108,%eax
    21b5:	83 f8 08             	cmp    $0x8,%eax
    21b8:	0f 87 ae 00 00 00    	ja     226c <keyboard_read+0x2c7>
    21be:	8b 04 85 e0 cd 00 00 	mov    0xcde0(,%eax,4),%eax
    21c5:	ff e0                	jmp    *%eax
    21c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    21ca:	a3 50 30 01 00       	mov    %eax,0x13050
    21cf:	e9 a2 00 00 00       	jmp    2276 <keyboard_read+0x2d1>
    21d4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    21d7:	a3 54 30 01 00       	mov    %eax,0x13054
    21dc:	e9 95 00 00 00       	jmp    2276 <keyboard_read+0x2d1>
    21e1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    21e4:	a3 60 30 01 00       	mov    %eax,0x13060
    21e9:	e9 88 00 00 00       	jmp    2276 <keyboard_read+0x2d1>
    21ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
    21f1:	a3 64 30 01 00       	mov    %eax,0x13064
    21f6:	eb 7e                	jmp    2276 <keyboard_read+0x2d1>
    21f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    21fb:	a3 58 30 01 00       	mov    %eax,0x13058
    2200:	eb 74                	jmp    2276 <keyboard_read+0x2d1>
    2202:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2205:	a3 58 30 01 00       	mov    %eax,0x13058
    220a:	eb 6a                	jmp    2276 <keyboard_read+0x2d1>
    220c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2210:	74 5d                	je     226f <keyboard_read+0x2ca>
    2212:	a1 68 30 01 00       	mov    0x13068,%eax
    2217:	85 c0                	test   %eax,%eax
    2219:	0f 94 c0             	sete   %al
    221c:	0f b6 c0             	movzbl %al,%eax
    221f:	a3 68 30 01 00       	mov    %eax,0x13068
    2224:	e8 e7 02 00 00       	call   2510 <set_leds>
    2229:	eb 44                	jmp    226f <keyboard_read+0x2ca>
    222b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    222f:	74 41                	je     2272 <keyboard_read+0x2cd>
    2231:	a1 6c 30 01 00       	mov    0x1306c,%eax
    2236:	85 c0                	test   %eax,%eax
    2238:	0f 94 c0             	sete   %al
    223b:	0f b6 c0             	movzbl %al,%eax
    223e:	a3 6c 30 01 00       	mov    %eax,0x1306c
    2243:	e8 c8 02 00 00       	call   2510 <set_leds>
    2248:	eb 28                	jmp    2272 <keyboard_read+0x2cd>
    224a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    224e:	74 25                	je     2275 <keyboard_read+0x2d0>
    2250:	a1 70 30 01 00       	mov    0x13070,%eax
    2255:	85 c0                	test   %eax,%eax
    2257:	0f 94 c0             	sete   %al
    225a:	0f b6 c0             	movzbl %al,%eax
    225d:	a3 70 30 01 00       	mov    %eax,0x13070
    2262:	e8 a9 02 00 00       	call   2510 <set_leds>
    2267:	eb 0c                	jmp    2275 <keyboard_read+0x2d0>
    2269:	90                   	nop
    226a:	eb 0a                	jmp    2276 <keyboard_read+0x2d1>
    226c:	90                   	nop
    226d:	eb 07                	jmp    2276 <keyboard_read+0x2d1>
    226f:	90                   	nop
    2270:	eb 04                	jmp    2276 <keyboard_read+0x2d1>
    2272:	90                   	nop
    2273:	eb 01                	jmp    2276 <keyboard_read+0x2d1>
    2275:	90                   	nop
    2276:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    227a:	0f 84 e0 01 00 00    	je     2460 <keyboard_read+0x4bb>
    2280:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    2287:	81 7d ec 2b 01 00 00 	cmpl   $0x12b,-0x14(%ebp)
    228e:	0f 86 12 01 00 00    	jbe    23a6 <keyboard_read+0x401>
    2294:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    229b:	0f 87 05 01 00 00    	ja     23a6 <keyboard_read+0x401>
    22a1:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    22a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    22ab:	2d 2c 01 00 00       	sub    $0x12c,%eax
    22b0:	83 f8 04             	cmp    $0x4,%eax
    22b3:	77 45                	ja     22fa <keyboard_read+0x355>
    22b5:	8b 04 85 04 ce 00 00 	mov    0xce04(,%eax,4),%eax
    22bc:	ff e0                	jmp    *%eax
    22be:	c7 45 ec 2f 00 00 00 	movl   $0x2f,-0x14(%ebp)
    22c5:	e9 e0 00 00 00       	jmp    23aa <keyboard_read+0x405>
    22ca:	c7 45 ec 2a 00 00 00 	movl   $0x2a,-0x14(%ebp)
    22d1:	e9 d4 00 00 00       	jmp    23aa <keyboard_read+0x405>
    22d6:	c7 45 ec 2d 00 00 00 	movl   $0x2d,-0x14(%ebp)
    22dd:	e9 c8 00 00 00       	jmp    23aa <keyboard_read+0x405>
    22e2:	c7 45 ec 2b 00 00 00 	movl   $0x2b,-0x14(%ebp)
    22e9:	e9 bc 00 00 00       	jmp    23aa <keyboard_read+0x405>
    22ee:	c7 45 ec 03 01 00 00 	movl   $0x103,-0x14(%ebp)
    22f5:	e9 b0 00 00 00       	jmp    23aa <keyboard_read+0x405>
    22fa:	a1 6c 30 01 00       	mov    0x1306c,%eax
    22ff:	85 c0                	test   %eax,%eax
    2301:	74 30                	je     2333 <keyboard_read+0x38e>
    2303:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    230a:	76 15                	jbe    2321 <keyboard_read+0x37c>
    230c:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    2313:	77 0c                	ja     2321 <keyboard_read+0x37c>
    2315:	81 6d ec 02 01 00 00 	subl   $0x102,-0x14(%ebp)
    231c:	e9 83 00 00 00       	jmp    23a4 <keyboard_read+0x3ff>
    2321:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    2328:	75 7f                	jne    23a9 <keyboard_read+0x404>
    232a:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%ebp)
    2331:	eb 76                	jmp    23a9 <keyboard_read+0x404>
    2333:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2336:	2d 31 01 00 00       	sub    $0x131,%eax
    233b:	83 f8 0a             	cmp    $0xa,%eax
    233e:	77 63                	ja     23a3 <keyboard_read+0x3fe>
    2340:	8b 04 85 18 ce 00 00 	mov    0xce18(,%eax,4),%eax
    2347:	ff e0                	jmp    *%eax
    2349:	c7 45 ec 21 01 00 00 	movl   $0x121,-0x14(%ebp)
    2350:	eb 52                	jmp    23a4 <keyboard_read+0x3ff>
    2352:	c7 45 ec 22 01 00 00 	movl   $0x122,-0x14(%ebp)
    2359:	eb 49                	jmp    23a4 <keyboard_read+0x3ff>
    235b:	c7 45 ec 23 01 00 00 	movl   $0x123,-0x14(%ebp)
    2362:	eb 40                	jmp    23a4 <keyboard_read+0x3ff>
    2364:	c7 45 ec 24 01 00 00 	movl   $0x124,-0x14(%ebp)
    236b:	eb 37                	jmp    23a4 <keyboard_read+0x3ff>
    236d:	c7 45 ec 1f 01 00 00 	movl   $0x11f,-0x14(%ebp)
    2374:	eb 2e                	jmp    23a4 <keyboard_read+0x3ff>
    2376:	c7 45 ec 25 01 00 00 	movl   $0x125,-0x14(%ebp)
    237d:	eb 25                	jmp    23a4 <keyboard_read+0x3ff>
    237f:	c7 45 ec 26 01 00 00 	movl   $0x126,-0x14(%ebp)
    2386:	eb 1c                	jmp    23a4 <keyboard_read+0x3ff>
    2388:	c7 45 ec 27 01 00 00 	movl   $0x127,-0x14(%ebp)
    238f:	eb 13                	jmp    23a4 <keyboard_read+0x3ff>
    2391:	c7 45 ec 28 01 00 00 	movl   $0x128,-0x14(%ebp)
    2398:	eb 0a                	jmp    23a4 <keyboard_read+0x3ff>
    239a:	c7 45 ec 20 01 00 00 	movl   $0x120,-0x14(%ebp)
    23a1:	eb 01                	jmp    23a4 <keyboard_read+0x3ff>
    23a3:	90                   	nop
    23a4:	eb 03                	jmp    23a9 <keyboard_read+0x404>
    23a6:	90                   	nop
    23a7:	eb 01                	jmp    23aa <keyboard_read+0x405>
    23a9:	90                   	nop
    23aa:	a1 50 30 01 00       	mov    0x13050,%eax
    23af:	85 c0                	test   %eax,%eax
    23b1:	74 07                	je     23ba <keyboard_read+0x415>
    23b3:	b8 00 02 00 00       	mov    $0x200,%eax
    23b8:	eb 05                	jmp    23bf <keyboard_read+0x41a>
    23ba:	b8 00 00 00 00       	mov    $0x0,%eax
    23bf:	09 45 ec             	or     %eax,-0x14(%ebp)
    23c2:	a1 54 30 01 00       	mov    0x13054,%eax
    23c7:	85 c0                	test   %eax,%eax
    23c9:	74 07                	je     23d2 <keyboard_read+0x42d>
    23cb:	b8 00 04 00 00       	mov    $0x400,%eax
    23d0:	eb 05                	jmp    23d7 <keyboard_read+0x432>
    23d2:	b8 00 00 00 00       	mov    $0x0,%eax
    23d7:	09 45 ec             	or     %eax,-0x14(%ebp)
    23da:	a1 60 30 01 00       	mov    0x13060,%eax
    23df:	85 c0                	test   %eax,%eax
    23e1:	74 07                	je     23ea <keyboard_read+0x445>
    23e3:	b8 00 08 00 00       	mov    $0x800,%eax
    23e8:	eb 05                	jmp    23ef <keyboard_read+0x44a>
    23ea:	b8 00 00 00 00       	mov    $0x0,%eax
    23ef:	09 45 ec             	or     %eax,-0x14(%ebp)
    23f2:	a1 64 30 01 00       	mov    0x13064,%eax
    23f7:	85 c0                	test   %eax,%eax
    23f9:	74 07                	je     2402 <keyboard_read+0x45d>
    23fb:	b8 00 10 00 00       	mov    $0x1000,%eax
    2400:	eb 05                	jmp    2407 <keyboard_read+0x462>
    2402:	b8 00 00 00 00       	mov    $0x0,%eax
    2407:	09 45 ec             	or     %eax,-0x14(%ebp)
    240a:	a1 58 30 01 00       	mov    0x13058,%eax
    240f:	85 c0                	test   %eax,%eax
    2411:	74 07                	je     241a <keyboard_read+0x475>
    2413:	b8 00 20 00 00       	mov    $0x2000,%eax
    2418:	eb 05                	jmp    241f <keyboard_read+0x47a>
    241a:	b8 00 00 00 00       	mov    $0x0,%eax
    241f:	09 45 ec             	or     %eax,-0x14(%ebp)
    2422:	a1 5c 30 01 00       	mov    0x1305c,%eax
    2427:	85 c0                	test   %eax,%eax
    2429:	74 07                	je     2432 <keyboard_read+0x48d>
    242b:	b8 00 40 00 00       	mov    $0x4000,%eax
    2430:	eb 05                	jmp    2437 <keyboard_read+0x492>
    2432:	b8 00 00 00 00       	mov    $0x0,%eax
    2437:	09 45 ec             	or     %eax,-0x14(%ebp)
    243a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    243e:	74 07                	je     2447 <keyboard_read+0x4a2>
    2440:	b8 00 80 00 00       	mov    $0x8000,%eax
    2445:	eb 05                	jmp    244c <keyboard_read+0x4a7>
    2447:	b8 00 00 00 00       	mov    $0x0,%eax
    244c:	09 45 ec             	or     %eax,-0x14(%ebp)
    244f:	83 ec 08             	sub    $0x8,%esp
    2452:	ff 75 ec             	pushl  -0x14(%ebp)
    2455:	ff 75 08             	pushl  0x8(%ebp)
    2458:	e8 02 03 00 00       	call   275f <in_process>
    245d:	83 c4 10             	add    $0x10,%esp
    2460:	a1 28 30 01 00       	mov    0x13028,%eax
    2465:	85 c0                	test   %eax,%eax
    2467:	0f 8f 4a fb ff ff    	jg     1fb7 <keyboard_read+0x12>
    246d:	90                   	nop
    246e:	c9                   	leave  
    246f:	c3                   	ret    

00002470 <get_byte_from_kb_buf>:
    2470:	55                   	push   %ebp
    2471:	89 e5                	mov    %esp,%ebp
    2473:	83 ec 18             	sub    $0x18,%esp
    2476:	90                   	nop
    2477:	a1 28 30 01 00       	mov    0x13028,%eax
    247c:	85 c0                	test   %eax,%eax
    247e:	7e f7                	jle    2477 <get_byte_from_kb_buf+0x7>
    2480:	e8 58 42 00 00       	call   66dd <disable_int>
    2485:	a1 24 30 01 00       	mov    0x13024,%eax
    248a:	0f b6 00             	movzbl (%eax),%eax
    248d:	88 45 f7             	mov    %al,-0x9(%ebp)
    2490:	a1 24 30 01 00       	mov    0x13024,%eax
    2495:	83 c0 01             	add    $0x1,%eax
    2498:	a3 24 30 01 00       	mov    %eax,0x13024
    249d:	a1 24 30 01 00       	mov    0x13024,%eax
    24a2:	ba 4c 30 01 00       	mov    $0x1304c,%edx
    24a7:	39 d0                	cmp    %edx,%eax
    24a9:	75 0a                	jne    24b5 <get_byte_from_kb_buf+0x45>
    24ab:	c7 05 24 30 01 00 2c 	movl   $0x1302c,0x13024
    24b2:	30 01 00 
    24b5:	a1 28 30 01 00       	mov    0x13028,%eax
    24ba:	83 e8 01             	sub    $0x1,%eax
    24bd:	a3 28 30 01 00       	mov    %eax,0x13028
    24c2:	e8 18 42 00 00       	call   66df <enable_int>
    24c7:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    24cb:	c9                   	leave  
    24cc:	c3                   	ret    

000024cd <kb_wait>:
    24cd:	55                   	push   %ebp
    24ce:	89 e5                	mov    %esp,%ebp
    24d0:	83 ec 18             	sub    $0x18,%esp
    24d3:	83 ec 0c             	sub    $0xc,%esp
    24d6:	6a 64                	push   $0x64
    24d8:	e8 7c 41 00 00       	call   6659 <in_byte>
    24dd:	83 c4 10             	add    $0x10,%esp
    24e0:	88 45 f7             	mov    %al,-0x9(%ebp)
    24e3:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    24e7:	83 e0 02             	and    $0x2,%eax
    24ea:	85 c0                	test   %eax,%eax
    24ec:	75 e5                	jne    24d3 <kb_wait+0x6>
    24ee:	90                   	nop
    24ef:	c9                   	leave  
    24f0:	c3                   	ret    

000024f1 <kb_ack>:
    24f1:	55                   	push   %ebp
    24f2:	89 e5                	mov    %esp,%ebp
    24f4:	83 ec 18             	sub    $0x18,%esp
    24f7:	83 ec 0c             	sub    $0xc,%esp
    24fa:	6a 60                	push   $0x60
    24fc:	e8 58 41 00 00       	call   6659 <in_byte>
    2501:	83 c4 10             	add    $0x10,%esp
    2504:	88 45 f7             	mov    %al,-0x9(%ebp)
    2507:	80 7d f7 fa          	cmpb   $0xfa,-0x9(%ebp)
    250b:	75 ea                	jne    24f7 <kb_ack+0x6>
    250d:	90                   	nop
    250e:	c9                   	leave  
    250f:	c3                   	ret    

00002510 <set_leds>:
    2510:	55                   	push   %ebp
    2511:	89 e5                	mov    %esp,%ebp
    2513:	83 ec 18             	sub    $0x18,%esp
    2516:	a1 68 30 01 00       	mov    0x13068,%eax
    251b:	c1 e0 02             	shl    $0x2,%eax
    251e:	89 c2                	mov    %eax,%edx
    2520:	a1 6c 30 01 00       	mov    0x1306c,%eax
    2525:	01 c0                	add    %eax,%eax
    2527:	09 c2                	or     %eax,%edx
    2529:	a1 70 30 01 00       	mov    0x13070,%eax
    252e:	09 d0                	or     %edx,%eax
    2530:	88 45 f7             	mov    %al,-0x9(%ebp)
    2533:	e8 95 ff ff ff       	call   24cd <kb_wait>
    2538:	83 ec 08             	sub    $0x8,%esp
    253b:	68 ed 00 00 00       	push   $0xed
    2540:	6a 60                	push   $0x60
    2542:	e8 06 41 00 00       	call   664d <out_byte>
    2547:	83 c4 10             	add    $0x10,%esp
    254a:	e8 a2 ff ff ff       	call   24f1 <kb_ack>
    254f:	e8 79 ff ff ff       	call   24cd <kb_wait>
    2554:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    2558:	83 ec 08             	sub    $0x8,%esp
    255b:	50                   	push   %eax
    255c:	6a 60                	push   $0x60
    255e:	e8 ea 40 00 00       	call   664d <out_byte>
    2563:	83 c4 10             	add    $0x10,%esp
    2566:	e8 86 ff ff ff       	call   24f1 <kb_ack>
    256b:	90                   	nop
    256c:	c9                   	leave  
    256d:	c3                   	ret    

0000256e <task_tty>:
    256e:	55                   	push   %ebp
    256f:	89 e5                	mov    %esp,%ebp
    2571:	83 ec 48             	sub    $0x48,%esp
    2574:	e8 7d f9 ff ff       	call   1ef6 <init_keyboard>
    2579:	c7 45 f4 60 88 03 00 	movl   $0x38860,-0xc(%ebp)
    2580:	eb 15                	jmp    2597 <task_tty+0x29>
    2582:	83 ec 0c             	sub    $0xc,%esp
    2585:	ff 75 f4             	pushl  -0xc(%ebp)
    2588:	e8 4f 01 00 00       	call   26dc <init_tty>
    258d:	83 c4 10             	add    $0x10,%esp
    2590:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    2597:	b8 cc 94 03 00       	mov    $0x394cc,%eax
    259c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    259f:	72 e1                	jb     2582 <task_tty+0x14>
    25a1:	83 ec 0c             	sub    $0xc,%esp
    25a4:	6a 00                	push   $0x0
    25a6:	e8 4b 0f 00 00       	call   34f6 <select_console>
    25ab:	83 c4 10             	add    $0x10,%esp
    25ae:	c7 45 f4 60 88 03 00 	movl   $0x38860,-0xc(%ebp)
    25b5:	eb 30                	jmp    25e7 <task_tty+0x79>
    25b7:	83 ec 0c             	sub    $0xc,%esp
    25ba:	ff 75 f4             	pushl  -0xc(%ebp)
    25bd:	e8 21 03 00 00       	call   28e3 <tty_dev_read>
    25c2:	83 c4 10             	add    $0x10,%esp
    25c5:	83 ec 0c             	sub    $0xc,%esp
    25c8:	ff 75 f4             	pushl  -0xc(%ebp)
    25cb:	e8 43 03 00 00       	call   2913 <tty_dev_write>
    25d0:	83 c4 10             	add    $0x10,%esp
    25d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    25d6:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    25dc:	85 c0                	test   %eax,%eax
    25de:	75 d7                	jne    25b7 <task_tty+0x49>
    25e0:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    25e7:	b8 cc 94 03 00       	mov    $0x394cc,%eax
    25ec:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    25ef:	72 c6                	jb     25b7 <task_tty+0x49>
    25f1:	83 ec 04             	sub    $0x4,%esp
    25f4:	8d 45 bc             	lea    -0x44(%ebp),%eax
    25f7:	50                   	push   %eax
    25f8:	6a 2f                	push   $0x2f
    25fa:	6a 02                	push   $0x2
    25fc:	e8 e7 9e 00 00       	call   c4e8 <send_recv>
    2601:	83 c4 10             	add    $0x10,%esp
    2604:	8b 45 bc             	mov    -0x44(%ebp),%eax
    2607:	89 45 f0             	mov    %eax,-0x10(%ebp)
    260a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    260e:	75 19                	jne    2629 <task_tty+0xbb>
    2610:	6a 5e                	push   $0x5e
    2612:	68 44 ce 00 00       	push   $0xce44
    2617:	68 44 ce 00 00       	push   $0xce44
    261c:	68 51 ce 00 00       	push   $0xce51
    2621:	e8 d7 a0 00 00       	call   c6fd <assertion_failure>
    2626:	83 c4 10             	add    $0x10,%esp
    2629:	8b 45 d0             	mov    -0x30(%ebp),%eax
    262c:	69 c0 24 04 00 00    	imul   $0x424,%eax,%eax
    2632:	05 60 88 03 00       	add    $0x38860,%eax
    2637:	89 45 ec             	mov    %eax,-0x14(%ebp)
    263a:	8b 45 c0             	mov    -0x40(%ebp),%eax
    263d:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    2642:	74 1e                	je     2662 <task_tty+0xf4>
    2644:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    2649:	7f 07                	jg     2652 <task_tty+0xe4>
    264b:	83 f8 01             	cmp    $0x1,%eax
    264e:	74 66                	je     26b6 <task_tty+0x148>
    2650:	eb 70                	jmp    26c2 <task_tty+0x154>
    2652:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    2657:	74 35                	je     268e <task_tty+0x120>
    2659:	3d ec 03 00 00       	cmp    $0x3ec,%eax
    265e:	74 42                	je     26a2 <task_tty+0x134>
    2660:	eb 60                	jmp    26c2 <task_tty+0x154>
    2662:	83 ec 0c             	sub    $0xc,%esp
    2665:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2668:	50                   	push   %eax
    2669:	e8 fa 1a 00 00       	call   4168 <reset_msg>
    266e:	83 c4 10             	add    $0x10,%esp
    2671:	c7 45 c0 12 00 00 00 	movl   $0x12,-0x40(%ebp)
    2678:	83 ec 04             	sub    $0x4,%esp
    267b:	8d 45 bc             	lea    -0x44(%ebp),%eax
    267e:	50                   	push   %eax
    267f:	ff 75 f0             	pushl  -0x10(%ebp)
    2682:	6a 01                	push   $0x1
    2684:	e8 5f 9e 00 00       	call   c4e8 <send_recv>
    2689:	83 c4 10             	add    $0x10,%esp
    268c:	eb 49                	jmp    26d7 <task_tty+0x169>
    268e:	83 ec 08             	sub    $0x8,%esp
    2691:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2694:	50                   	push   %eax
    2695:	ff 75 ec             	pushl  -0x14(%ebp)
    2698:	e8 c0 04 00 00       	call   2b5d <tty_do_read>
    269d:	83 c4 10             	add    $0x10,%esp
    26a0:	eb 35                	jmp    26d7 <task_tty+0x169>
    26a2:	83 ec 08             	sub    $0x8,%esp
    26a5:	8d 45 bc             	lea    -0x44(%ebp),%eax
    26a8:	50                   	push   %eax
    26a9:	ff 75 ec             	pushl  -0x14(%ebp)
    26ac:	e8 39 05 00 00       	call   2bea <tty_do_write>
    26b1:	83 c4 10             	add    $0x10,%esp
    26b4:	eb 21                	jmp    26d7 <task_tty+0x169>
    26b6:	c7 05 f0 99 03 00 00 	movl   $0x0,0x399f0
    26bd:	00 00 00 
    26c0:	eb 15                	jmp    26d7 <task_tty+0x169>
    26c2:	83 ec 08             	sub    $0x8,%esp
    26c5:	8d 45 bc             	lea    -0x44(%ebp),%eax
    26c8:	50                   	push   %eax
    26c9:	68 61 ce 00 00       	push   $0xce61
    26ce:	e8 11 2d 00 00       	call   53e4 <dump_msg>
    26d3:	83 c4 10             	add    $0x10,%esp
    26d6:	90                   	nop
    26d7:	e9 d2 fe ff ff       	jmp    25ae <task_tty+0x40>

000026dc <init_tty>:
    26dc:	55                   	push   %ebp
    26dd:	89 e5                	mov    %esp,%ebp
    26df:	83 ec 08             	sub    $0x8,%esp
    26e2:	8b 45 08             	mov    0x8(%ebp),%eax
    26e5:	c7 80 08 04 00 00 00 	movl   $0x0,0x408(%eax)
    26ec:	00 00 00 
    26ef:	8b 55 08             	mov    0x8(%ebp),%edx
    26f2:	8b 45 08             	mov    0x8(%ebp),%eax
    26f5:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    26fb:	8b 45 08             	mov    0x8(%ebp),%eax
    26fe:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2704:	8b 45 08             	mov    0x8(%ebp),%eax
    2707:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    270d:	8b 45 08             	mov    0x8(%ebp),%eax
    2710:	c7 80 0c 04 00 00 39 	movl   $0x39,0x40c(%eax)
    2717:	00 00 00 
    271a:	8b 45 08             	mov    0x8(%ebp),%eax
    271d:	c7 80 10 04 00 00 39 	movl   $0x39,0x410(%eax)
    2724:	00 00 00 
    2727:	8b 45 08             	mov    0x8(%ebp),%eax
    272a:	c7 80 14 04 00 00 00 	movl   $0x0,0x414(%eax)
    2731:	00 00 00 
    2734:	8b 45 08             	mov    0x8(%ebp),%eax
    2737:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    273e:	00 00 00 
    2741:	8b 45 08             	mov    0x8(%ebp),%eax
    2744:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    274b:	00 00 00 
    274e:	83 ec 0c             	sub    $0xc,%esp
    2751:	ff 75 08             	pushl  0x8(%ebp)
    2754:	e8 59 08 00 00       	call   2fb2 <init_screen>
    2759:	83 c4 10             	add    $0x10,%esp
    275c:	90                   	nop
    275d:	c9                   	leave  
    275e:	c3                   	ret    

0000275f <in_process>:
    275f:	55                   	push   %ebp
    2760:	89 e5                	mov    %esp,%ebp
    2762:	83 ec 18             	sub    $0x18,%esp
    2765:	8b 45 0c             	mov    0xc(%ebp),%eax
    2768:	25 00 01 00 00       	and    $0x100,%eax
    276d:	85 c0                	test   %eax,%eax
    276f:	75 16                	jne    2787 <in_process+0x28>
    2771:	83 ec 08             	sub    $0x8,%esp
    2774:	ff 75 0c             	pushl  0xc(%ebp)
    2777:	ff 75 08             	pushl  0x8(%ebp)
    277a:	e8 f4 00 00 00       	call   2873 <put_key>
    277f:	83 c4 10             	add    $0x10,%esp
    2782:	e9 e9 00 00 00       	jmp    2870 <in_process+0x111>
    2787:	8b 45 0c             	mov    0xc(%ebp),%eax
    278a:	25 ff 01 00 00       	and    $0x1ff,%eax
    278f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2792:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2795:	2d 03 01 00 00       	sub    $0x103,%eax
    279a:	83 f8 23             	cmp    $0x23,%eax
    279d:	0f 87 c3 00 00 00    	ja     2866 <in_process+0x107>
    27a3:	8b 04 85 74 ce 00 00 	mov    0xce74(,%eax,4),%eax
    27aa:	ff e0                	jmp    *%eax
    27ac:	83 ec 08             	sub    $0x8,%esp
    27af:	6a 0a                	push   $0xa
    27b1:	ff 75 08             	pushl  0x8(%ebp)
    27b4:	e8 ba 00 00 00       	call   2873 <put_key>
    27b9:	83 c4 10             	add    $0x10,%esp
    27bc:	e9 af 00 00 00       	jmp    2870 <in_process+0x111>
    27c1:	83 ec 08             	sub    $0x8,%esp
    27c4:	6a 08                	push   $0x8
    27c6:	ff 75 08             	pushl  0x8(%ebp)
    27c9:	e8 a5 00 00 00       	call   2873 <put_key>
    27ce:	83 c4 10             	add    $0x10,%esp
    27d1:	e9 9a 00 00 00       	jmp    2870 <in_process+0x111>
    27d6:	8b 45 0c             	mov    0xc(%ebp),%eax
    27d9:	25 00 02 00 00       	and    $0x200,%eax
    27de:	85 c0                	test   %eax,%eax
    27e0:	75 0c                	jne    27ee <in_process+0x8f>
    27e2:	8b 45 0c             	mov    0xc(%ebp),%eax
    27e5:	25 00 04 00 00       	and    $0x400,%eax
    27ea:	85 c0                	test   %eax,%eax
    27ec:	74 7b                	je     2869 <in_process+0x10a>
    27ee:	8b 45 08             	mov    0x8(%ebp),%eax
    27f1:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    27f7:	83 ec 08             	sub    $0x8,%esp
    27fa:	6a ff                	push   $0xffffffff
    27fc:	50                   	push   %eax
    27fd:	e8 34 0d 00 00       	call   3536 <scroll_screen>
    2802:	83 c4 10             	add    $0x10,%esp
    2805:	eb 62                	jmp    2869 <in_process+0x10a>
    2807:	8b 45 0c             	mov    0xc(%ebp),%eax
    280a:	25 00 02 00 00       	and    $0x200,%eax
    280f:	85 c0                	test   %eax,%eax
    2811:	75 0c                	jne    281f <in_process+0xc0>
    2813:	8b 45 0c             	mov    0xc(%ebp),%eax
    2816:	25 00 04 00 00       	and    $0x400,%eax
    281b:	85 c0                	test   %eax,%eax
    281d:	74 4d                	je     286c <in_process+0x10d>
    281f:	8b 45 08             	mov    0x8(%ebp),%eax
    2822:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2828:	83 ec 08             	sub    $0x8,%esp
    282b:	6a 01                	push   $0x1
    282d:	50                   	push   %eax
    282e:	e8 03 0d 00 00       	call   3536 <scroll_screen>
    2833:	83 c4 10             	add    $0x10,%esp
    2836:	eb 34                	jmp    286c <in_process+0x10d>
    2838:	8b 45 0c             	mov    0xc(%ebp),%eax
    283b:	25 00 20 00 00       	and    $0x2000,%eax
    2840:	85 c0                	test   %eax,%eax
    2842:	75 0c                	jne    2850 <in_process+0xf1>
    2844:	8b 45 0c             	mov    0xc(%ebp),%eax
    2847:	25 00 40 00 00       	and    $0x4000,%eax
    284c:	85 c0                	test   %eax,%eax
    284e:	74 1f                	je     286f <in_process+0x110>
    2850:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2853:	2d 11 01 00 00       	sub    $0x111,%eax
    2858:	83 ec 0c             	sub    $0xc,%esp
    285b:	50                   	push   %eax
    285c:	e8 95 0c 00 00       	call   34f6 <select_console>
    2861:	83 c4 10             	add    $0x10,%esp
    2864:	eb 09                	jmp    286f <in_process+0x110>
    2866:	90                   	nop
    2867:	eb 07                	jmp    2870 <in_process+0x111>
    2869:	90                   	nop
    286a:	eb 04                	jmp    2870 <in_process+0x111>
    286c:	90                   	nop
    286d:	eb 01                	jmp    2870 <in_process+0x111>
    286f:	90                   	nop
    2870:	90                   	nop
    2871:	c9                   	leave  
    2872:	c3                   	ret    

00002873 <put_key>:
    2873:	55                   	push   %ebp
    2874:	89 e5                	mov    %esp,%ebp
    2876:	8b 45 08             	mov    0x8(%ebp),%eax
    2879:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    287f:	3d ff 00 00 00       	cmp    $0xff,%eax
    2884:	7f 5a                	jg     28e0 <put_key+0x6d>
    2886:	8b 45 08             	mov    0x8(%ebp),%eax
    2889:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    288f:	8b 55 0c             	mov    0xc(%ebp),%edx
    2892:	89 10                	mov    %edx,(%eax)
    2894:	8b 45 08             	mov    0x8(%ebp),%eax
    2897:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    289d:	8d 50 04             	lea    0x4(%eax),%edx
    28a0:	8b 45 08             	mov    0x8(%ebp),%eax
    28a3:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    28a9:	8b 45 08             	mov    0x8(%ebp),%eax
    28ac:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    28b2:	8b 55 08             	mov    0x8(%ebp),%edx
    28b5:	81 c2 00 04 00 00    	add    $0x400,%edx
    28bb:	39 d0                	cmp    %edx,%eax
    28bd:	75 0c                	jne    28cb <put_key+0x58>
    28bf:	8b 55 08             	mov    0x8(%ebp),%edx
    28c2:	8b 45 08             	mov    0x8(%ebp),%eax
    28c5:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    28cb:	8b 45 08             	mov    0x8(%ebp),%eax
    28ce:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    28d4:	8d 50 01             	lea    0x1(%eax),%edx
    28d7:	8b 45 08             	mov    0x8(%ebp),%eax
    28da:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    28e0:	90                   	nop
    28e1:	5d                   	pop    %ebp
    28e2:	c3                   	ret    

000028e3 <tty_dev_read>:
    28e3:	55                   	push   %ebp
    28e4:	89 e5                	mov    %esp,%ebp
    28e6:	83 ec 08             	sub    $0x8,%esp
    28e9:	8b 45 08             	mov    0x8(%ebp),%eax
    28ec:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    28f2:	83 ec 0c             	sub    $0xc,%esp
    28f5:	50                   	push   %eax
    28f6:	e8 08 0b 00 00       	call   3403 <is_current_console>
    28fb:	83 c4 10             	add    $0x10,%esp
    28fe:	85 c0                	test   %eax,%eax
    2900:	74 0e                	je     2910 <tty_dev_read+0x2d>
    2902:	83 ec 0c             	sub    $0xc,%esp
    2905:	ff 75 08             	pushl  0x8(%ebp)
    2908:	e8 98 f6 ff ff       	call   1fa5 <keyboard_read>
    290d:	83 c4 10             	add    $0x10,%esp
    2910:	90                   	nop
    2911:	c9                   	leave  
    2912:	c3                   	ret    

00002913 <tty_dev_write>:
    2913:	55                   	push   %ebp
    2914:	89 e5                	mov    %esp,%ebp
    2916:	83 ec 48             	sub    $0x48,%esp
    2919:	e9 2b 02 00 00       	jmp    2b49 <tty_dev_write+0x236>
    291e:	8b 45 08             	mov    0x8(%ebp),%eax
    2921:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    2927:	8b 00                	mov    (%eax),%eax
    2929:	88 45 f3             	mov    %al,-0xd(%ebp)
    292c:	8b 45 08             	mov    0x8(%ebp),%eax
    292f:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    2935:	8d 50 04             	lea    0x4(%eax),%edx
    2938:	8b 45 08             	mov    0x8(%ebp),%eax
    293b:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    2941:	8b 45 08             	mov    0x8(%ebp),%eax
    2944:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    294a:	8b 55 08             	mov    0x8(%ebp),%edx
    294d:	81 c2 00 04 00 00    	add    $0x400,%edx
    2953:	39 d0                	cmp    %edx,%eax
    2955:	75 0c                	jne    2963 <tty_dev_write+0x50>
    2957:	8b 55 08             	mov    0x8(%ebp),%edx
    295a:	8b 45 08             	mov    0x8(%ebp),%eax
    295d:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    2963:	8b 45 08             	mov    0x8(%ebp),%eax
    2966:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    296c:	8d 50 ff             	lea    -0x1(%eax),%edx
    296f:	8b 45 08             	mov    0x8(%ebp),%eax
    2972:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    2978:	8b 45 08             	mov    0x8(%ebp),%eax
    297b:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2981:	85 c0                	test   %eax,%eax
    2983:	0f 84 c0 01 00 00    	je     2b49 <tty_dev_write+0x236>
    2989:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    298d:	3c 1f                	cmp    $0x1f,%al
    298f:	0f 8e b7 00 00 00    	jle    2a4c <tty_dev_write+0x139>
    2995:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2999:	3c 7f                	cmp    $0x7f,%al
    299b:	0f 84 ab 00 00 00    	je     2a4c <tty_dev_write+0x139>
    29a1:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    29a5:	0f be d0             	movsbl %al,%edx
    29a8:	8b 45 08             	mov    0x8(%ebp),%eax
    29ab:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    29b1:	83 ec 08             	sub    $0x8,%esp
    29b4:	52                   	push   %edx
    29b5:	50                   	push   %eax
    29b6:	e8 6b 07 00 00       	call   3126 <out_char>
    29bb:	83 c4 10             	add    $0x10,%esp
    29be:	8b 45 08             	mov    0x8(%ebp),%eax
    29c1:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    29c7:	85 c0                	test   %eax,%eax
    29c9:	75 1c                	jne    29e7 <tty_dev_write+0xd4>
    29cb:	68 0f 01 00 00       	push   $0x10f
    29d0:	68 44 ce 00 00       	push   $0xce44
    29d5:	68 44 ce 00 00       	push   $0xce44
    29da:	68 04 cf 00 00       	push   $0xcf04
    29df:	e8 19 9d 00 00       	call   c6fd <assertion_failure>
    29e4:	83 c4 10             	add    $0x10,%esp
    29e7:	8b 45 08             	mov    0x8(%ebp),%eax
    29ea:	8b 90 14 04 00 00    	mov    0x414(%eax),%edx
    29f0:	8b 45 08             	mov    0x8(%ebp),%eax
    29f3:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    29f9:	01 d0                	add    %edx,%eax
    29fb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    29fe:	83 ec 08             	sub    $0x8,%esp
    2a01:	8d 45 f3             	lea    -0xd(%ebp),%eax
    2a04:	50                   	push   %eax
    2a05:	6a 00                	push   $0x0
    2a07:	e8 fb 16 00 00       	call   4107 <va2la>
    2a0c:	83 c4 10             	add    $0x10,%esp
    2a0f:	83 ec 04             	sub    $0x4,%esp
    2a12:	6a 01                	push   $0x1
    2a14:	50                   	push   %eax
    2a15:	ff 75 f4             	pushl  -0xc(%ebp)
    2a18:	e8 53 9a 00 00       	call   c470 <memcpy>
    2a1d:	83 c4 10             	add    $0x10,%esp
    2a20:	8b 45 08             	mov    0x8(%ebp),%eax
    2a23:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2a29:	8d 50 01             	lea    0x1(%eax),%edx
    2a2c:	8b 45 08             	mov    0x8(%ebp),%eax
    2a2f:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    2a35:	8b 45 08             	mov    0x8(%ebp),%eax
    2a38:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2a3e:	8d 50 ff             	lea    -0x1(%eax),%edx
    2a41:	8b 45 08             	mov    0x8(%ebp),%eax
    2a44:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    2a4a:	eb 5c                	jmp    2aa8 <tty_dev_write+0x195>
    2a4c:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2a50:	3c 08                	cmp    $0x8,%al
    2a52:	75 54                	jne    2aa8 <tty_dev_write+0x195>
    2a54:	8b 45 08             	mov    0x8(%ebp),%eax
    2a57:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2a5d:	85 c0                	test   %eax,%eax
    2a5f:	74 47                	je     2aa8 <tty_dev_write+0x195>
    2a61:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2a65:	0f be d0             	movsbl %al,%edx
    2a68:	8b 45 08             	mov    0x8(%ebp),%eax
    2a6b:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2a71:	83 ec 08             	sub    $0x8,%esp
    2a74:	52                   	push   %edx
    2a75:	50                   	push   %eax
    2a76:	e8 ab 06 00 00       	call   3126 <out_char>
    2a7b:	83 c4 10             	add    $0x10,%esp
    2a7e:	8b 45 08             	mov    0x8(%ebp),%eax
    2a81:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2a87:	8d 50 ff             	lea    -0x1(%eax),%edx
    2a8a:	8b 45 08             	mov    0x8(%ebp),%eax
    2a8d:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    2a93:	8b 45 08             	mov    0x8(%ebp),%eax
    2a96:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2a9c:	8d 50 01             	lea    0x1(%eax),%edx
    2a9f:	8b 45 08             	mov    0x8(%ebp),%eax
    2aa2:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    2aa8:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2aac:	3c 0a                	cmp    $0xa,%al
    2aae:	74 11                	je     2ac1 <tty_dev_write+0x1ae>
    2ab0:	8b 45 08             	mov    0x8(%ebp),%eax
    2ab3:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2ab9:	85 c0                	test   %eax,%eax
    2abb:	0f 85 88 00 00 00    	jne    2b49 <tty_dev_write+0x236>
    2ac1:	8b 45 08             	mov    0x8(%ebp),%eax
    2ac4:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2aca:	83 ec 08             	sub    $0x8,%esp
    2acd:	6a 0a                	push   $0xa
    2acf:	50                   	push   %eax
    2ad0:	e8 51 06 00 00       	call   3126 <out_char>
    2ad5:	83 c4 10             	add    $0x10,%esp
    2ad8:	8b 45 08             	mov    0x8(%ebp),%eax
    2adb:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2ae1:	83 f8 39             	cmp    $0x39,%eax
    2ae4:	75 1c                	jne    2b02 <tty_dev_write+0x1ef>
    2ae6:	68 20 01 00 00       	push   $0x120
    2aeb:	68 44 ce 00 00       	push   $0xce44
    2af0:	68 44 ce 00 00       	push   $0xce44
    2af5:	68 15 cf 00 00       	push   $0xcf15
    2afa:	e8 fe 9b 00 00       	call   c6fd <assertion_failure>
    2aff:	83 c4 10             	add    $0x10,%esp
    2b02:	c7 45 c4 0d 00 00 00 	movl   $0xd,-0x3c(%ebp)
    2b09:	8b 45 08             	mov    0x8(%ebp),%eax
    2b0c:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2b12:	89 45 d0             	mov    %eax,-0x30(%ebp)
    2b15:	8b 45 08             	mov    0x8(%ebp),%eax
    2b18:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2b1e:	89 45 cc             	mov    %eax,-0x34(%ebp)
    2b21:	8b 45 08             	mov    0x8(%ebp),%eax
    2b24:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2b2a:	83 ec 04             	sub    $0x4,%esp
    2b2d:	8d 55 c0             	lea    -0x40(%ebp),%edx
    2b30:	52                   	push   %edx
    2b31:	50                   	push   %eax
    2b32:	6a 01                	push   $0x1
    2b34:	e8 af 99 00 00       	call   c4e8 <send_recv>
    2b39:	83 c4 10             	add    $0x10,%esp
    2b3c:	8b 45 08             	mov    0x8(%ebp),%eax
    2b3f:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    2b46:	00 00 00 
    2b49:	8b 45 08             	mov    0x8(%ebp),%eax
    2b4c:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2b52:	85 c0                	test   %eax,%eax
    2b54:	0f 85 c4 fd ff ff    	jne    291e <tty_dev_write+0xb>
    2b5a:	90                   	nop
    2b5b:	c9                   	leave  
    2b5c:	c3                   	ret    

00002b5d <tty_do_read>:
    2b5d:	55                   	push   %ebp
    2b5e:	89 e5                	mov    %esp,%ebp
    2b60:	83 ec 08             	sub    $0x8,%esp
    2b63:	8b 45 0c             	mov    0xc(%ebp),%eax
    2b66:	8b 10                	mov    (%eax),%edx
    2b68:	8b 45 08             	mov    0x8(%ebp),%eax
    2b6b:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
    2b71:	8b 45 0c             	mov    0xc(%ebp),%eax
    2b74:	8b 50 10             	mov    0x10(%eax),%edx
    2b77:	8b 45 08             	mov    0x8(%ebp),%eax
    2b7a:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
    2b80:	8b 45 0c             	mov    0xc(%ebp),%eax
    2b83:	8b 50 2c             	mov    0x2c(%eax),%edx
    2b86:	8b 45 08             	mov    0x8(%ebp),%eax
    2b89:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2b8f:	83 ec 08             	sub    $0x8,%esp
    2b92:	52                   	push   %edx
    2b93:	50                   	push   %eax
    2b94:	e8 6e 15 00 00       	call   4107 <va2la>
    2b99:	83 c4 10             	add    $0x10,%esp
    2b9c:	89 c2                	mov    %eax,%edx
    2b9e:	8b 45 08             	mov    0x8(%ebp),%eax
    2ba1:	89 90 14 04 00 00    	mov    %edx,0x414(%eax)
    2ba7:	8b 45 0c             	mov    0xc(%ebp),%eax
    2baa:	8b 50 0c             	mov    0xc(%eax),%edx
    2bad:	8b 45 08             	mov    0x8(%ebp),%eax
    2bb0:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    2bb6:	8b 45 08             	mov    0x8(%ebp),%eax
    2bb9:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    2bc0:	00 00 00 
    2bc3:	8b 45 0c             	mov    0xc(%ebp),%eax
    2bc6:	c7 40 04 0c 00 00 00 	movl   $0xc,0x4(%eax)
    2bcd:	8b 45 08             	mov    0x8(%ebp),%eax
    2bd0:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2bd6:	83 ec 04             	sub    $0x4,%esp
    2bd9:	ff 75 0c             	pushl  0xc(%ebp)
    2bdc:	50                   	push   %eax
    2bdd:	6a 01                	push   $0x1
    2bdf:	e8 04 99 00 00       	call   c4e8 <send_recv>
    2be4:	83 c4 10             	add    $0x10,%esp
    2be7:	90                   	nop
    2be8:	c9                   	leave  
    2be9:	c3                   	ret    

00002bea <tty_do_write>:
    2bea:	55                   	push   %ebp
    2beb:	89 e5                	mov    %esp,%ebp
    2bed:	83 ec 28             	sub    $0x28,%esp
    2bf0:	8b 45 0c             	mov    0xc(%ebp),%eax
    2bf3:	8b 50 2c             	mov    0x2c(%eax),%edx
    2bf6:	8b 45 0c             	mov    0xc(%ebp),%eax
    2bf9:	8b 40 10             	mov    0x10(%eax),%eax
    2bfc:	83 ec 08             	sub    $0x8,%esp
    2bff:	52                   	push   %edx
    2c00:	50                   	push   %eax
    2c01:	e8 01 15 00 00       	call   4107 <va2la>
    2c06:	83 c4 10             	add    $0x10,%esp
    2c09:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2c0c:	8b 45 0c             	mov    0xc(%ebp),%eax
    2c0f:	8b 40 0c             	mov    0xc(%eax),%eax
    2c12:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2c15:	eb 78                	jmp    2c8f <tty_do_write+0xa5>
    2c17:	b8 02 00 00 00       	mov    $0x2,%eax
    2c1c:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    2c20:	0f 4e 45 f0          	cmovle -0x10(%ebp),%eax
    2c24:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2c27:	83 ec 08             	sub    $0x8,%esp
    2c2a:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    2c2d:	50                   	push   %eax
    2c2e:	6a 00                	push   $0x0
    2c30:	e8 d2 14 00 00       	call   4107 <va2la>
    2c35:	83 c4 10             	add    $0x10,%esp
    2c38:	83 ec 04             	sub    $0x4,%esp
    2c3b:	ff 75 e8             	pushl  -0x18(%ebp)
    2c3e:	ff 75 f4             	pushl  -0xc(%ebp)
    2c41:	50                   	push   %eax
    2c42:	e8 29 98 00 00       	call   c470 <memcpy>
    2c47:	83 c4 10             	add    $0x10,%esp
    2c4a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    2c51:	eb 28                	jmp    2c7b <tty_do_write+0x91>
    2c53:	8d 55 e6             	lea    -0x1a(%ebp),%edx
    2c56:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2c59:	01 d0                	add    %edx,%eax
    2c5b:	0f b6 00             	movzbl (%eax),%eax
    2c5e:	0f be d0             	movsbl %al,%edx
    2c61:	8b 45 08             	mov    0x8(%ebp),%eax
    2c64:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2c6a:	83 ec 08             	sub    $0x8,%esp
    2c6d:	52                   	push   %edx
    2c6e:	50                   	push   %eax
    2c6f:	e8 b2 04 00 00       	call   3126 <out_char>
    2c74:	83 c4 10             	add    $0x10,%esp
    2c77:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    2c7b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2c7e:	3b 45 e8             	cmp    -0x18(%ebp),%eax
    2c81:	7c d0                	jl     2c53 <tty_do_write+0x69>
    2c83:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2c86:	29 45 f0             	sub    %eax,-0x10(%ebp)
    2c89:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2c8c:	01 45 f4             	add    %eax,-0xc(%ebp)
    2c8f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2c93:	75 82                	jne    2c17 <tty_do_write+0x2d>
    2c95:	8b 45 0c             	mov    0xc(%ebp),%eax
    2c98:	c7 40 04 12 00 00 00 	movl   $0x12,0x4(%eax)
    2c9f:	8b 45 0c             	mov    0xc(%ebp),%eax
    2ca2:	8b 00                	mov    (%eax),%eax
    2ca4:	83 ec 04             	sub    $0x4,%esp
    2ca7:	ff 75 0c             	pushl  0xc(%ebp)
    2caa:	50                   	push   %eax
    2cab:	6a 01                	push   $0x1
    2cad:	e8 36 98 00 00       	call   c4e8 <send_recv>
    2cb2:	83 c4 10             	add    $0x10,%esp
    2cb5:	90                   	nop
    2cb6:	c9                   	leave  
    2cb7:	c3                   	ret    

00002cb8 <sys_printx>:
    2cb8:	55                   	push   %ebp
    2cb9:	89 e5                	mov    %esp,%ebp
    2cbb:	83 ec 48             	sub    $0x48,%esp
    2cbe:	c7 45 bf 3f 20 6b 5f 	movl   $0x5f6b203f,-0x41(%ebp)
    2cc5:	c7 45 c3 72 65 65 6e 	movl   $0x6e656572,-0x3d(%ebp)
    2ccc:	c7 45 c7 74 65 72 20 	movl   $0x20726574,-0x39(%ebp)
    2cd3:	c7 45 cb 69 73 20 69 	movl   $0x69207369,-0x35(%ebp)
    2cda:	c7 45 cf 6e 63 6f 72 	movl   $0x726f636e,-0x31(%ebp)
    2ce1:	c7 45 d3 72 65 63 74 	movl   $0x74636572,-0x2d(%ebp)
    2ce8:	c7 45 d7 20 66 6f 72 	movl   $0x726f6620,-0x29(%ebp)
    2cef:	c7 45 db 20 75 6e 6b 	movl   $0x6b6e7520,-0x25(%ebp)
    2cf6:	c7 45 df 6e 6f 77 6e 	movl   $0x6e776f6e,-0x21(%ebp)
    2cfd:	c7 45 e3 20 72 65 61 	movl   $0x61657220,-0x1d(%ebp)
    2d04:	c7 45 e7 73 6f 6e 00 	movl   $0x6e6f73,-0x19(%ebp)
    2d0b:	c6 45 bf 02          	movb   $0x2,-0x41(%ebp)
    2d0f:	a1 20 84 03 00       	mov    0x38420,%eax
    2d14:	85 c0                	test   %eax,%eax
    2d16:	75 25                	jne    2d3d <sys_printx+0x85>
    2d18:	8b 45 14             	mov    0x14(%ebp),%eax
    2d1b:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    2d20:	c1 f8 03             	sar    $0x3,%eax
    2d23:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    2d29:	83 ec 08             	sub    $0x8,%esp
    2d2c:	ff 75 10             	pushl  0x10(%ebp)
    2d2f:	50                   	push   %eax
    2d30:	e8 d2 13 00 00       	call   4107 <va2la>
    2d35:	83 c4 10             	add    $0x10,%esp
    2d38:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2d3b:	eb 17                	jmp    2d54 <sys_printx+0x9c>
    2d3d:	a1 20 84 03 00       	mov    0x38420,%eax
    2d42:	85 c0                	test   %eax,%eax
    2d44:	74 08                	je     2d4e <sys_printx+0x96>
    2d46:	8b 45 10             	mov    0x10(%ebp),%eax
    2d49:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2d4c:	eb 06                	jmp    2d54 <sys_printx+0x9c>
    2d4e:	8d 45 bf             	lea    -0x41(%ebp),%eax
    2d51:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2d54:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d57:	0f b6 00             	movzbl (%eax),%eax
    2d5a:	3c 02                	cmp    $0x2,%al
    2d5c:	74 1e                	je     2d7c <sys_printx+0xc4>
    2d5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d61:	0f b6 00             	movzbl (%eax),%eax
    2d64:	3c 03                	cmp    $0x3,%al
    2d66:	0f 85 cd 00 00 00    	jne    2e39 <sys_printx+0x181>
    2d6c:	a1 80 a4 03 00       	mov    0x3a480,%eax
    2d71:	3d 98 ac 03 00       	cmp    $0x3ac98,%eax
    2d76:	0f 83 bd 00 00 00    	jae    2e39 <sys_printx+0x181>
    2d7c:	e8 5c 39 00 00       	call   66dd <disable_int>
    2d81:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
    2d88:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d8b:	83 c0 01             	add    $0x1,%eax
    2d8e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2d91:	eb 76                	jmp    2e09 <sys_printx+0x151>
    2d93:	8b 55 ec             	mov    -0x14(%ebp),%edx
    2d96:	8d 42 01             	lea    0x1(%edx),%eax
    2d99:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2d9c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2d9f:	8d 48 01             	lea    0x1(%eax),%ecx
    2da2:	89 4d f0             	mov    %ecx,-0x10(%ebp)
    2da5:	0f b6 12             	movzbl (%edx),%edx
    2da8:	88 10                	mov    %dl,(%eax)
    2daa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2dad:	8d 50 01             	lea    0x1(%eax),%edx
    2db0:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2db3:	c6 00 1c             	movb   $0x1c,(%eax)
    2db6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2db9:	0f b6 00             	movzbl (%eax),%eax
    2dbc:	84 c0                	test   %al,%al
    2dbe:	75 49                	jne    2e09 <sys_printx+0x151>
    2dc0:	eb 10                	jmp    2dd2 <sys_printx+0x11a>
    2dc2:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    2dc6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2dc9:	8d 50 01             	lea    0x1(%eax),%edx
    2dcc:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2dcf:	c6 00 08             	movb   $0x8,(%eax)
    2dd2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2dd5:	8d 88 00 80 f4 ff    	lea    -0xb8000(%eax),%ecx
    2ddb:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2de0:	89 c8                	mov    %ecx,%eax
    2de2:	f7 ea                	imul   %edx
    2de4:	c1 fa 09             	sar    $0x9,%edx
    2de7:	89 c8                	mov    %ecx,%eax
    2de9:	c1 f8 1f             	sar    $0x1f,%eax
    2dec:	29 c2                	sub    %eax,%edx
    2dee:	89 d0                	mov    %edx,%eax
    2df0:	c1 e0 02             	shl    $0x2,%eax
    2df3:	01 d0                	add    %edx,%eax
    2df5:	c1 e0 08             	shl    $0x8,%eax
    2df8:	29 c1                	sub    %eax,%ecx
    2dfa:	89 ca                	mov    %ecx,%edx
    2dfc:	85 d2                	test   %edx,%edx
    2dfe:	75 c2                	jne    2dc2 <sys_printx+0x10a>
    2e00:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e03:	83 c0 01             	add    $0x1,%eax
    2e06:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2e09:	81 7d f0 ff ff 0b 00 	cmpl   $0xbffff,-0x10(%ebp)
    2e10:	76 81                	jbe    2d93 <sys_printx+0xdb>
    2e12:	f4                   	hlt    
    2e13:	eb 24                	jmp    2e39 <sys_printx+0x181>
    2e15:	80 7d eb 02          	cmpb   $0x2,-0x15(%ebp)
    2e19:	74 1e                	je     2e39 <sys_printx+0x181>
    2e1b:	80 7d eb 03          	cmpb   $0x3,-0x15(%ebp)
    2e1f:	75 02                	jne    2e23 <sys_printx+0x16b>
    2e21:	eb 16                	jmp    2e39 <sys_printx+0x181>
    2e23:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
    2e27:	a1 80 8c 03 00       	mov    0x38c80,%eax
    2e2c:	83 ec 08             	sub    $0x8,%esp
    2e2f:	52                   	push   %edx
    2e30:	50                   	push   %eax
    2e31:	e8 f0 02 00 00       	call   3126 <out_char>
    2e36:	83 c4 10             	add    $0x10,%esp
    2e39:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e3c:	8d 50 01             	lea    0x1(%eax),%edx
    2e3f:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2e42:	0f b6 00             	movzbl (%eax),%eax
    2e45:	88 45 eb             	mov    %al,-0x15(%ebp)
    2e48:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
    2e4c:	75 c7                	jne    2e15 <sys_printx+0x15d>
    2e4e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e53:	c9                   	leave  
    2e54:	c3                   	ret    

00002e55 <dump_tty_buf>:
    2e55:	55                   	push   %ebp
    2e56:	89 e5                	mov    %esp,%ebp
    2e58:	83 ec 18             	sub    $0x18,%esp
    2e5b:	c7 45 f4 84 8c 03 00 	movl   $0x38c84,-0xc(%ebp)
    2e62:	83 ec 0c             	sub    $0xc,%esp
    2e65:	68 20 26 01 00       	push   $0x12620
    2e6a:	e8 ad 92 00 00       	call   c11c <printl>
    2e6f:	83 c4 10             	add    $0x10,%esp
    2e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e75:	8b 90 00 04 00 00    	mov    0x400(%eax),%edx
    2e7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e7e:	29 c2                	sub    %eax,%edx
    2e80:	89 d0                	mov    %edx,%eax
    2e82:	c1 f8 02             	sar    $0x2,%eax
    2e85:	83 ec 08             	sub    $0x8,%esp
    2e88:	50                   	push   %eax
    2e89:	68 30 cf 00 00       	push   $0xcf30
    2e8e:	e8 89 92 00 00       	call   c11c <printl>
    2e93:	83 c4 10             	add    $0x10,%esp
    2e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e99:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2e9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ea2:	29 c2                	sub    %eax,%edx
    2ea4:	89 d0                	mov    %edx,%eax
    2ea6:	c1 f8 02             	sar    $0x2,%eax
    2ea9:	83 ec 08             	sub    $0x8,%esp
    2eac:	50                   	push   %eax
    2ead:	68 3a cf 00 00       	push   $0xcf3a
    2eb2:	e8 65 92 00 00       	call   c11c <printl>
    2eb7:	83 c4 10             	add    $0x10,%esp
    2eba:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ebd:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2ec3:	83 ec 08             	sub    $0x8,%esp
    2ec6:	50                   	push   %eax
    2ec7:	68 44 cf 00 00       	push   $0xcf44
    2ecc:	e8 4b 92 00 00       	call   c11c <printl>
    2ed1:	83 c4 10             	add    $0x10,%esp
    2ed4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ed7:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2edd:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2ee0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2ee3:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    2ee9:	83 c0 60             	add    $0x60,%eax
    2eec:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    2ef1:	83 c0 04             	add    $0x4,%eax
    2ef4:	83 ec 04             	sub    $0x4,%esp
    2ef7:	ff 75 f0             	pushl  -0x10(%ebp)
    2efa:	50                   	push   %eax
    2efb:	68 4d cf 00 00       	push   $0xcf4d
    2f00:	e8 17 92 00 00       	call   c11c <printl>
    2f05:	83 c4 10             	add    $0x10,%esp
    2f08:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f0b:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2f11:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2f14:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2f17:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    2f1d:	83 c0 60             	add    $0x60,%eax
    2f20:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    2f25:	83 c0 04             	add    $0x4,%eax
    2f28:	83 ec 04             	sub    $0x4,%esp
    2f2b:	ff 75 f0             	pushl  -0x10(%ebp)
    2f2e:	50                   	push   %eax
    2f2f:	68 4d cf 00 00       	push   $0xcf4d
    2f34:	e8 e3 91 00 00       	call   c11c <printl>
    2f39:	83 c4 10             	add    $0x10,%esp
    2f3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f3f:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    2f45:	83 ec 08             	sub    $0x8,%esp
    2f48:	50                   	push   %eax
    2f49:	68 5e cf 00 00       	push   $0xcf5e
    2f4e:	e8 c9 91 00 00       	call   c11c <printl>
    2f53:	83 c4 10             	add    $0x10,%esp
    2f56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f59:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2f5f:	83 ec 08             	sub    $0x8,%esp
    2f62:	50                   	push   %eax
    2f63:	68 6b cf 00 00       	push   $0xcf6b
    2f68:	e8 af 91 00 00       	call   c11c <printl>
    2f6d:	83 c4 10             	add    $0x10,%esp
    2f70:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f73:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2f79:	83 ec 08             	sub    $0x8,%esp
    2f7c:	50                   	push   %eax
    2f7d:	68 79 cf 00 00       	push   $0xcf79
    2f82:	e8 95 91 00 00       	call   c11c <printl>
    2f87:	83 c4 10             	add    $0x10,%esp
    2f8a:	83 ec 0c             	sub    $0xc,%esp
    2f8d:	68 88 cf 00 00       	push   $0xcf88
    2f92:	e8 85 91 00 00       	call   c11c <printl>
    2f97:	83 c4 10             	add    $0x10,%esp
    2f9a:	83 ec 08             	sub    $0x8,%esp
    2f9d:	68 aa cf 00 00       	push   $0xcfaa
    2fa2:	68 20 26 01 00       	push   $0x12620
    2fa7:	e8 0e 95 00 00       	call   c4ba <strcpy>
    2fac:	83 c4 10             	add    $0x10,%esp
    2faf:	90                   	nop
    2fb0:	c9                   	leave  
    2fb1:	c3                   	ret    

00002fb2 <init_screen>:
    2fb2:	55                   	push   %ebp
    2fb3:	89 e5                	mov    %esp,%ebp
    2fb5:	83 ec 28             	sub    $0x28,%esp
    2fb8:	8b 45 08             	mov    0x8(%ebp),%eax
    2fbb:	2d 60 88 03 00       	sub    $0x38860,%eax
    2fc0:	c1 f8 02             	sar    $0x2,%eax
    2fc3:	69 c0 39 dd 03 1c    	imul   $0x1c03dd39,%eax,%eax
    2fc9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2fcc:	8b 55 f0             	mov    -0x10(%ebp),%edx
    2fcf:	89 d0                	mov    %edx,%eax
    2fd1:	c1 e0 02             	shl    $0x2,%eax
    2fd4:	01 d0                	add    %edx,%eax
    2fd6:	c1 e0 02             	shl    $0x2,%eax
    2fd9:	8d 90 00 a4 03 00    	lea    0x3a400(%eax),%edx
    2fdf:	8b 45 08             	mov    0x8(%ebp),%eax
    2fe2:	89 90 20 04 00 00    	mov    %edx,0x420(%eax)
    2fe8:	c7 45 ec 00 40 00 00 	movl   $0x4000,-0x14(%ebp)
    2fef:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2ff2:	ba 56 55 55 55       	mov    $0x55555556,%edx
    2ff7:	89 c8                	mov    %ecx,%eax
    2ff9:	f7 ea                	imul   %edx
    2ffb:	89 c8                	mov    %ecx,%eax
    2ffd:	c1 f8 1f             	sar    $0x1f,%eax
    3000:	29 c2                	sub    %eax,%edx
    3002:	89 d0                	mov    %edx,%eax
    3004:	89 45 e8             	mov    %eax,-0x18(%ebp)
    3007:	8b 45 f0             	mov    -0x10(%ebp),%eax
    300a:	0f af 45 e8          	imul   -0x18(%ebp),%eax
    300e:	89 c2                	mov    %eax,%edx
    3010:	8b 45 08             	mov    0x8(%ebp),%eax
    3013:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    3019:	89 50 04             	mov    %edx,0x4(%eax)
    301c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    301f:	ba 67 66 66 66       	mov    $0x66666667,%edx
    3024:	89 c8                	mov    %ecx,%eax
    3026:	f7 ea                	imul   %edx
    3028:	c1 fa 05             	sar    $0x5,%edx
    302b:	89 c8                	mov    %ecx,%eax
    302d:	c1 f8 1f             	sar    $0x1f,%eax
    3030:	29 c2                	sub    %eax,%edx
    3032:	89 d0                	mov    %edx,%eax
    3034:	c1 e0 02             	shl    $0x2,%eax
    3037:	01 d0                	add    %edx,%eax
    3039:	c1 e0 04             	shl    $0x4,%eax
    303c:	89 c2                	mov    %eax,%edx
    303e:	8b 45 08             	mov    0x8(%ebp),%eax
    3041:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    3047:	89 50 08             	mov    %edx,0x8(%eax)
    304a:	8b 45 08             	mov    0x8(%ebp),%eax
    304d:	8b 90 20 04 00 00    	mov    0x420(%eax),%edx
    3053:	8b 45 08             	mov    0x8(%ebp),%eax
    3056:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    305c:	8b 52 04             	mov    0x4(%edx),%edx
    305f:	89 10                	mov    %edx,(%eax)
    3061:	8b 55 08             	mov    0x8(%ebp),%edx
    3064:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    306a:	8b 00                	mov    (%eax),%eax
    306c:	89 42 0c             	mov    %eax,0xc(%edx)
    306f:	8b 45 08             	mov    0x8(%ebp),%eax
    3072:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    3078:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
    307f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    3083:	75 28                	jne    30ad <init_screen+0xfb>
    3085:	a1 a4 99 03 00       	mov    0x399a4,%eax
    308a:	89 c2                	mov    %eax,%edx
    308c:	c1 ea 1f             	shr    $0x1f,%edx
    308f:	01 d0                	add    %edx,%eax
    3091:	d1 f8                	sar    %eax
    3093:	89 c2                	mov    %eax,%edx
    3095:	8b 45 08             	mov    0x8(%ebp),%eax
    3098:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    309e:	89 50 0c             	mov    %edx,0xc(%eax)
    30a1:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    30a8:	00 00 00 
    30ab:	eb 5e                	jmp    310b <init_screen+0x159>
    30ad:	c7 45 de 5b 54 54 59 	movl   $0x5954545b,-0x22(%ebp)
    30b4:	c7 45 e2 20 23 3f 5d 	movl   $0x5d3f2320,-0x1e(%ebp)
    30bb:	66 c7 45 e6 0a 00    	movw   $0xa,-0x1a(%ebp)
    30c1:	8d 45 de             	lea    -0x22(%ebp),%eax
    30c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    30c7:	eb 38                	jmp    3101 <init_screen+0x14f>
    30c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    30cc:	0f b6 00             	movzbl (%eax),%eax
    30cf:	3c 3f                	cmp    $0x3f,%al
    30d1:	75 0b                	jne    30de <init_screen+0x12c>
    30d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    30d6:	83 c0 30             	add    $0x30,%eax
    30d9:	0f be c0             	movsbl %al,%eax
    30dc:	eb 09                	jmp    30e7 <init_screen+0x135>
    30de:	8b 45 f4             	mov    -0xc(%ebp),%eax
    30e1:	0f b6 00             	movzbl (%eax),%eax
    30e4:	0f be c0             	movsbl %al,%eax
    30e7:	8b 55 08             	mov    0x8(%ebp),%edx
    30ea:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    30f0:	83 ec 08             	sub    $0x8,%esp
    30f3:	50                   	push   %eax
    30f4:	52                   	push   %edx
    30f5:	e8 2c 00 00 00       	call   3126 <out_char>
    30fa:	83 c4 10             	add    $0x10,%esp
    30fd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3101:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3104:	0f b6 00             	movzbl (%eax),%eax
    3107:	84 c0                	test   %al,%al
    3109:	75 be                	jne    30c9 <init_screen+0x117>
    310b:	8b 45 08             	mov    0x8(%ebp),%eax
    310e:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    3114:	8b 40 0c             	mov    0xc(%eax),%eax
    3117:	83 ec 0c             	sub    $0xc,%esp
    311a:	50                   	push   %eax
    311b:	e8 06 03 00 00       	call   3426 <set_cursor>
    3120:	83 c4 10             	add    $0x10,%esp
    3123:	90                   	nop
    3124:	c9                   	leave  
    3125:	c3                   	ret    

00003126 <out_char>:
    3126:	55                   	push   %ebp
    3127:	89 e5                	mov    %esp,%ebp
    3129:	83 ec 28             	sub    $0x28,%esp
    312c:	8b 45 0c             	mov    0xc(%ebp),%eax
    312f:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3132:	8b 45 08             	mov    0x8(%ebp),%eax
    3135:	8b 40 0c             	mov    0xc(%eax),%eax
    3138:	05 00 c0 05 00       	add    $0x5c000,%eax
    313d:	01 c0                	add    %eax,%eax
    313f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3142:	8b 45 08             	mov    0x8(%ebp),%eax
    3145:	8b 50 0c             	mov    0xc(%eax),%edx
    3148:	8b 45 08             	mov    0x8(%ebp),%eax
    314b:	8b 40 04             	mov    0x4(%eax),%eax
    314e:	29 c2                	sub    %eax,%edx
    3150:	8b 45 08             	mov    0x8(%ebp),%eax
    3153:	8b 40 08             	mov    0x8(%eax),%eax
    3156:	39 c2                	cmp    %eax,%edx
    3158:	72 19                	jb     3173 <out_char+0x4d>
    315a:	6a 59                	push   $0x59
    315c:	68 ac cf 00 00       	push   $0xcfac
    3161:	68 ac cf 00 00       	push   $0xcfac
    3166:	68 c0 cf 00 00       	push   $0xcfc0
    316b:	e8 8d 95 00 00       	call   c6fd <assertion_failure>
    3170:	83 c4 10             	add    $0x10,%esp
    3173:	8b 45 08             	mov    0x8(%ebp),%eax
    3176:	8b 50 0c             	mov    0xc(%eax),%edx
    3179:	8b 45 08             	mov    0x8(%ebp),%eax
    317c:	8b 40 04             	mov    0x4(%eax),%eax
    317f:	89 d1                	mov    %edx,%ecx
    3181:	29 c1                	sub    %eax,%ecx
    3183:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3188:	89 c8                	mov    %ecx,%eax
    318a:	f7 e2                	mul    %edx
    318c:	c1 ea 06             	shr    $0x6,%edx
    318f:	89 d0                	mov    %edx,%eax
    3191:	c1 e0 02             	shl    $0x2,%eax
    3194:	01 d0                	add    %edx,%eax
    3196:	c1 e0 04             	shl    $0x4,%eax
    3199:	29 c1                	sub    %eax,%ecx
    319b:	89 ca                	mov    %ecx,%edx
    319d:	89 55 f0             	mov    %edx,-0x10(%ebp)
    31a0:	8b 45 08             	mov    0x8(%ebp),%eax
    31a3:	8b 50 0c             	mov    0xc(%eax),%edx
    31a6:	8b 45 08             	mov    0x8(%ebp),%eax
    31a9:	8b 40 04             	mov    0x4(%eax),%eax
    31ac:	29 c2                	sub    %eax,%edx
    31ae:	89 d0                	mov    %edx,%eax
    31b0:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    31b5:	f7 e2                	mul    %edx
    31b7:	89 d0                	mov    %edx,%eax
    31b9:	c1 e8 06             	shr    $0x6,%eax
    31bc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    31bf:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
    31c3:	83 f8 08             	cmp    $0x8,%eax
    31c6:	74 26                	je     31ee <out_char+0xc8>
    31c8:	83 f8 0a             	cmp    $0xa,%eax
    31cb:	75 54                	jne    3221 <out_char+0xfb>
    31cd:	8b 45 08             	mov    0x8(%ebp),%eax
    31d0:	8b 48 04             	mov    0x4(%eax),%ecx
    31d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    31d6:	8d 50 01             	lea    0x1(%eax),%edx
    31d9:	89 d0                	mov    %edx,%eax
    31db:	c1 e0 02             	shl    $0x2,%eax
    31de:	01 d0                	add    %edx,%eax
    31e0:	c1 e0 04             	shl    $0x4,%eax
    31e3:	8d 14 01             	lea    (%ecx,%eax,1),%edx
    31e6:	8b 45 08             	mov    0x8(%ebp),%eax
    31e9:	89 50 0c             	mov    %edx,0xc(%eax)
    31ec:	eb 60                	jmp    324e <out_char+0x128>
    31ee:	8b 45 08             	mov    0x8(%ebp),%eax
    31f1:	8b 50 0c             	mov    0xc(%eax),%edx
    31f4:	8b 45 08             	mov    0x8(%ebp),%eax
    31f7:	8b 40 04             	mov    0x4(%eax),%eax
    31fa:	39 c2                	cmp    %eax,%edx
    31fc:	76 4f                	jbe    324d <out_char+0x127>
    31fe:	8b 45 08             	mov    0x8(%ebp),%eax
    3201:	8b 40 0c             	mov    0xc(%eax),%eax
    3204:	8d 50 ff             	lea    -0x1(%eax),%edx
    3207:	8b 45 08             	mov    0x8(%ebp),%eax
    320a:	89 50 0c             	mov    %edx,0xc(%eax)
    320d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3210:	83 e8 02             	sub    $0x2,%eax
    3213:	c6 00 20             	movb   $0x20,(%eax)
    3216:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3219:	83 e8 01             	sub    $0x1,%eax
    321c:	c6 00 07             	movb   $0x7,(%eax)
    321f:	eb 2c                	jmp    324d <out_char+0x127>
    3221:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3224:	8d 50 01             	lea    0x1(%eax),%edx
    3227:	89 55 f4             	mov    %edx,-0xc(%ebp)
    322a:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    322e:	88 10                	mov    %dl,(%eax)
    3230:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3233:	8d 50 01             	lea    0x1(%eax),%edx
    3236:	89 55 f4             	mov    %edx,-0xc(%ebp)
    3239:	c6 00 07             	movb   $0x7,(%eax)
    323c:	8b 45 08             	mov    0x8(%ebp),%eax
    323f:	8b 40 0c             	mov    0xc(%eax),%eax
    3242:	8d 50 01             	lea    0x1(%eax),%edx
    3245:	8b 45 08             	mov    0x8(%ebp),%eax
    3248:	89 50 0c             	mov    %edx,0xc(%eax)
    324b:	eb 01                	jmp    324e <out_char+0x128>
    324d:	90                   	nop
    324e:	8b 45 08             	mov    0x8(%ebp),%eax
    3251:	8b 50 0c             	mov    0xc(%eax),%edx
    3254:	8b 45 08             	mov    0x8(%ebp),%eax
    3257:	8b 40 04             	mov    0x4(%eax),%eax
    325a:	29 c2                	sub    %eax,%edx
    325c:	8b 45 08             	mov    0x8(%ebp),%eax
    325f:	8b 40 08             	mov    0x8(%eax),%eax
    3262:	39 c2                	cmp    %eax,%edx
    3264:	0f 82 d1 00 00 00    	jb     333b <out_char+0x215>
    326a:	8b 45 08             	mov    0x8(%ebp),%eax
    326d:	8b 50 0c             	mov    0xc(%eax),%edx
    3270:	8b 45 08             	mov    0x8(%ebp),%eax
    3273:	8b 40 04             	mov    0x4(%eax),%eax
    3276:	89 d1                	mov    %edx,%ecx
    3278:	29 c1                	sub    %eax,%ecx
    327a:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    327f:	89 c8                	mov    %ecx,%eax
    3281:	f7 e2                	mul    %edx
    3283:	c1 ea 06             	shr    $0x6,%edx
    3286:	89 d0                	mov    %edx,%eax
    3288:	c1 e0 02             	shl    $0x2,%eax
    328b:	01 d0                	add    %edx,%eax
    328d:	c1 e0 04             	shl    $0x4,%eax
    3290:	29 c1                	sub    %eax,%ecx
    3292:	89 ca                	mov    %ecx,%edx
    3294:	89 55 f0             	mov    %edx,-0x10(%ebp)
    3297:	8b 45 08             	mov    0x8(%ebp),%eax
    329a:	8b 50 0c             	mov    0xc(%eax),%edx
    329d:	8b 45 08             	mov    0x8(%ebp),%eax
    32a0:	8b 40 04             	mov    0x4(%eax),%eax
    32a3:	29 c2                	sub    %eax,%edx
    32a5:	89 d0                	mov    %edx,%eax
    32a7:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    32ac:	f7 e2                	mul    %edx
    32ae:	89 d0                	mov    %edx,%eax
    32b0:	c1 e8 06             	shr    $0x6,%eax
    32b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    32b6:	8b 45 08             	mov    0x8(%ebp),%eax
    32b9:	8b 48 04             	mov    0x4(%eax),%ecx
    32bc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    32bf:	8d 50 01             	lea    0x1(%eax),%edx
    32c2:	89 d0                	mov    %edx,%eax
    32c4:	c1 e0 02             	shl    $0x2,%eax
    32c7:	01 d0                	add    %edx,%eax
    32c9:	c1 e0 04             	shl    $0x4,%eax
    32cc:	01 c8                	add    %ecx,%eax
    32ce:	2d d0 07 00 00       	sub    $0x7d0,%eax
    32d3:	89 45 e8             	mov    %eax,-0x18(%ebp)
    32d6:	8b 55 e8             	mov    -0x18(%ebp),%edx
    32d9:	8b 45 08             	mov    0x8(%ebp),%eax
    32dc:	8b 40 04             	mov    0x4(%eax),%eax
    32df:	83 ec 04             	sub    $0x4,%esp
    32e2:	68 80 07 00 00       	push   $0x780
    32e7:	52                   	push   %edx
    32e8:	50                   	push   %eax
    32e9:	e8 67 04 00 00       	call   3755 <w_copy>
    32ee:	83 c4 10             	add    $0x10,%esp
    32f1:	8b 45 08             	mov    0x8(%ebp),%eax
    32f4:	8b 50 04             	mov    0x4(%eax),%edx
    32f7:	8b 45 08             	mov    0x8(%ebp),%eax
    32fa:	89 10                	mov    %edx,(%eax)
    32fc:	8b 45 08             	mov    0x8(%ebp),%eax
    32ff:	8b 50 04             	mov    0x4(%eax),%edx
    3302:	8b 45 f0             	mov    -0x10(%ebp),%eax
    3305:	01 d0                	add    %edx,%eax
    3307:	8d 90 80 07 00 00    	lea    0x780(%eax),%edx
    330d:	8b 45 08             	mov    0x8(%ebp),%eax
    3310:	89 50 0c             	mov    %edx,0xc(%eax)
    3313:	8b 45 08             	mov    0x8(%ebp),%eax
    3316:	8b 40 0c             	mov    0xc(%eax),%eax
    3319:	83 ec 08             	sub    $0x8,%esp
    331c:	6a 50                	push   $0x50
    331e:	50                   	push   %eax
    331f:	e8 a5 00 00 00       	call   33c9 <clear_screen>
    3324:	83 c4 10             	add    $0x10,%esp
    3327:	8b 45 08             	mov    0x8(%ebp),%eax
    332a:	8b 40 10             	mov    0x10(%eax),%eax
    332d:	85 c0                	test   %eax,%eax
    332f:	75 0a                	jne    333b <out_char+0x215>
    3331:	8b 45 08             	mov    0x8(%ebp),%eax
    3334:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
    333b:	8b 45 08             	mov    0x8(%ebp),%eax
    333e:	8b 50 0c             	mov    0xc(%eax),%edx
    3341:	8b 45 08             	mov    0x8(%ebp),%eax
    3344:	8b 40 04             	mov    0x4(%eax),%eax
    3347:	29 c2                	sub    %eax,%edx
    3349:	8b 45 08             	mov    0x8(%ebp),%eax
    334c:	8b 40 08             	mov    0x8(%eax),%eax
    334f:	39 c2                	cmp    %eax,%edx
    3351:	72 42                	jb     3395 <out_char+0x26f>
    3353:	68 80 00 00 00       	push   $0x80
    3358:	68 ac cf 00 00       	push   $0xcfac
    335d:	68 ac cf 00 00       	push   $0xcfac
    3362:	68 c0 cf 00 00       	push   $0xcfc0
    3367:	e8 91 93 00 00       	call   c6fd <assertion_failure>
    336c:	83 c4 10             	add    $0x10,%esp
    336f:	eb 24                	jmp    3395 <out_char+0x26f>
    3371:	83 ec 08             	sub    $0x8,%esp
    3374:	6a 01                	push   $0x1
    3376:	ff 75 08             	pushl  0x8(%ebp)
    3379:	e8 b8 01 00 00       	call   3536 <scroll_screen>
    337e:	83 c4 10             	add    $0x10,%esp
    3381:	8b 45 08             	mov    0x8(%ebp),%eax
    3384:	8b 40 0c             	mov    0xc(%eax),%eax
    3387:	83 ec 08             	sub    $0x8,%esp
    338a:	6a 50                	push   $0x50
    338c:	50                   	push   %eax
    338d:	e8 37 00 00 00       	call   33c9 <clear_screen>
    3392:	83 c4 10             	add    $0x10,%esp
    3395:	8b 45 08             	mov    0x8(%ebp),%eax
    3398:	8b 50 0c             	mov    0xc(%eax),%edx
    339b:	8b 45 08             	mov    0x8(%ebp),%eax
    339e:	8b 00                	mov    (%eax),%eax
    33a0:	05 d0 07 00 00       	add    $0x7d0,%eax
    33a5:	39 c2                	cmp    %eax,%edx
    33a7:	73 c8                	jae    3371 <out_char+0x24b>
    33a9:	8b 45 08             	mov    0x8(%ebp),%eax
    33ac:	8b 50 0c             	mov    0xc(%eax),%edx
    33af:	8b 45 08             	mov    0x8(%ebp),%eax
    33b2:	8b 00                	mov    (%eax),%eax
    33b4:	39 c2                	cmp    %eax,%edx
    33b6:	72 b9                	jb     3371 <out_char+0x24b>
    33b8:	83 ec 0c             	sub    $0xc,%esp
    33bb:	ff 75 08             	pushl  0x8(%ebp)
    33be:	e8 57 03 00 00       	call   371a <flush>
    33c3:	83 c4 10             	add    $0x10,%esp
    33c6:	90                   	nop
    33c7:	c9                   	leave  
    33c8:	c3                   	ret    

000033c9 <clear_screen>:
    33c9:	55                   	push   %ebp
    33ca:	89 e5                	mov    %esp,%ebp
    33cc:	83 ec 10             	sub    $0x10,%esp
    33cf:	8b 45 08             	mov    0x8(%ebp),%eax
    33d2:	05 00 c0 05 00       	add    $0x5c000,%eax
    33d7:	01 c0                	add    %eax,%eax
    33d9:	89 45 fc             	mov    %eax,-0x4(%ebp)
    33dc:	eb 18                	jmp    33f6 <clear_screen+0x2d>
    33de:	8b 45 fc             	mov    -0x4(%ebp),%eax
    33e1:	8d 50 01             	lea    0x1(%eax),%edx
    33e4:	89 55 fc             	mov    %edx,-0x4(%ebp)
    33e7:	c6 00 20             	movb   $0x20,(%eax)
    33ea:	8b 45 fc             	mov    -0x4(%ebp),%eax
    33ed:	8d 50 01             	lea    0x1(%eax),%edx
    33f0:	89 55 fc             	mov    %edx,-0x4(%ebp)
    33f3:	c6 00 07             	movb   $0x7,(%eax)
    33f6:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    33fa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    33fe:	79 de                	jns    33de <clear_screen+0x15>
    3400:	90                   	nop
    3401:	c9                   	leave  
    3402:	c3                   	ret    

00003403 <is_current_console>:
    3403:	55                   	push   %ebp
    3404:	89 e5                	mov    %esp,%ebp
    3406:	8b 15 40 88 03 00    	mov    0x38840,%edx
    340c:	89 d0                	mov    %edx,%eax
    340e:	c1 e0 02             	shl    $0x2,%eax
    3411:	01 d0                	add    %edx,%eax
    3413:	c1 e0 02             	shl    $0x2,%eax
    3416:	05 00 a4 03 00       	add    $0x3a400,%eax
    341b:	39 45 08             	cmp    %eax,0x8(%ebp)
    341e:	0f 94 c0             	sete   %al
    3421:	0f b6 c0             	movzbl %al,%eax
    3424:	5d                   	pop    %ebp
    3425:	c3                   	ret    

00003426 <set_cursor>:
    3426:	55                   	push   %ebp
    3427:	89 e5                	mov    %esp,%ebp
    3429:	83 ec 08             	sub    $0x8,%esp
    342c:	e8 ac 32 00 00       	call   66dd <disable_int>
    3431:	83 ec 08             	sub    $0x8,%esp
    3434:	6a 0e                	push   $0xe
    3436:	68 d4 03 00 00       	push   $0x3d4
    343b:	e8 0d 32 00 00       	call   664d <out_byte>
    3440:	83 c4 10             	add    $0x10,%esp
    3443:	8b 45 08             	mov    0x8(%ebp),%eax
    3446:	c1 e8 08             	shr    $0x8,%eax
    3449:	0f b6 c0             	movzbl %al,%eax
    344c:	83 ec 08             	sub    $0x8,%esp
    344f:	50                   	push   %eax
    3450:	68 d5 03 00 00       	push   $0x3d5
    3455:	e8 f3 31 00 00       	call   664d <out_byte>
    345a:	83 c4 10             	add    $0x10,%esp
    345d:	83 ec 08             	sub    $0x8,%esp
    3460:	6a 0f                	push   $0xf
    3462:	68 d4 03 00 00       	push   $0x3d4
    3467:	e8 e1 31 00 00       	call   664d <out_byte>
    346c:	83 c4 10             	add    $0x10,%esp
    346f:	8b 45 08             	mov    0x8(%ebp),%eax
    3472:	0f b6 c0             	movzbl %al,%eax
    3475:	83 ec 08             	sub    $0x8,%esp
    3478:	50                   	push   %eax
    3479:	68 d5 03 00 00       	push   $0x3d5
    347e:	e8 ca 31 00 00       	call   664d <out_byte>
    3483:	83 c4 10             	add    $0x10,%esp
    3486:	e8 54 32 00 00       	call   66df <enable_int>
    348b:	90                   	nop
    348c:	c9                   	leave  
    348d:	c3                   	ret    

0000348e <set_video_start_addr>:
    348e:	55                   	push   %ebp
    348f:	89 e5                	mov    %esp,%ebp
    3491:	83 ec 08             	sub    $0x8,%esp
    3494:	e8 44 32 00 00       	call   66dd <disable_int>
    3499:	83 ec 08             	sub    $0x8,%esp
    349c:	6a 0c                	push   $0xc
    349e:	68 d4 03 00 00       	push   $0x3d4
    34a3:	e8 a5 31 00 00       	call   664d <out_byte>
    34a8:	83 c4 10             	add    $0x10,%esp
    34ab:	8b 45 08             	mov    0x8(%ebp),%eax
    34ae:	c1 e8 08             	shr    $0x8,%eax
    34b1:	0f b6 c0             	movzbl %al,%eax
    34b4:	83 ec 08             	sub    $0x8,%esp
    34b7:	50                   	push   %eax
    34b8:	68 d5 03 00 00       	push   $0x3d5
    34bd:	e8 8b 31 00 00       	call   664d <out_byte>
    34c2:	83 c4 10             	add    $0x10,%esp
    34c5:	83 ec 08             	sub    $0x8,%esp
    34c8:	6a 0d                	push   $0xd
    34ca:	68 d4 03 00 00       	push   $0x3d4
    34cf:	e8 79 31 00 00       	call   664d <out_byte>
    34d4:	83 c4 10             	add    $0x10,%esp
    34d7:	8b 45 08             	mov    0x8(%ebp),%eax
    34da:	0f b6 c0             	movzbl %al,%eax
    34dd:	83 ec 08             	sub    $0x8,%esp
    34e0:	50                   	push   %eax
    34e1:	68 d5 03 00 00       	push   $0x3d5
    34e6:	e8 62 31 00 00       	call   664d <out_byte>
    34eb:	83 c4 10             	add    $0x10,%esp
    34ee:	e8 ec 31 00 00       	call   66df <enable_int>
    34f3:	90                   	nop
    34f4:	c9                   	leave  
    34f5:	c3                   	ret    

000034f6 <select_console>:
    34f6:	55                   	push   %ebp
    34f7:	89 e5                	mov    %esp,%ebp
    34f9:	83 ec 08             	sub    $0x8,%esp
    34fc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    3500:	78 31                	js     3533 <select_console+0x3d>
    3502:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3506:	7f 2b                	jg     3533 <select_console+0x3d>
    3508:	8b 45 08             	mov    0x8(%ebp),%eax
    350b:	a3 40 88 03 00       	mov    %eax,0x38840
    3510:	8b 15 40 88 03 00    	mov    0x38840,%edx
    3516:	89 d0                	mov    %edx,%eax
    3518:	c1 e0 02             	shl    $0x2,%eax
    351b:	01 d0                	add    %edx,%eax
    351d:	c1 e0 02             	shl    $0x2,%eax
    3520:	05 00 a4 03 00       	add    $0x3a400,%eax
    3525:	83 ec 0c             	sub    $0xc,%esp
    3528:	50                   	push   %eax
    3529:	e8 ec 01 00 00       	call   371a <flush>
    352e:	83 c4 10             	add    $0x10,%esp
    3531:	eb 01                	jmp    3534 <select_console+0x3e>
    3533:	90                   	nop
    3534:	c9                   	leave  
    3535:	c3                   	ret    

00003536 <scroll_screen>:
    3536:	55                   	push   %ebp
    3537:	89 e5                	mov    %esp,%ebp
    3539:	83 ec 18             	sub    $0x18,%esp
    353c:	8b 45 08             	mov    0x8(%ebp),%eax
    353f:	8b 50 0c             	mov    0xc(%eax),%edx
    3542:	8b 45 08             	mov    0x8(%ebp),%eax
    3545:	8b 40 04             	mov    0x4(%eax),%eax
    3548:	29 c2                	sub    %eax,%edx
    354a:	89 d0                	mov    %edx,%eax
    354c:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3551:	f7 e2                	mul    %edx
    3553:	c1 ea 06             	shr    $0x6,%edx
    3556:	89 d0                	mov    %edx,%eax
    3558:	c1 e0 02             	shl    $0x2,%eax
    355b:	01 d0                	add    %edx,%eax
    355d:	c1 e0 04             	shl    $0x4,%eax
    3560:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3563:	8b 45 08             	mov    0x8(%ebp),%eax
    3566:	8b 40 10             	mov    0x10(%eax),%eax
    3569:	85 c0                	test   %eax,%eax
    356b:	74 1b                	je     3588 <scroll_screen+0x52>
    356d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3570:	83 c0 50             	add    $0x50,%eax
    3573:	89 c2                	mov    %eax,%edx
    3575:	8b 45 08             	mov    0x8(%ebp),%eax
    3578:	8b 48 08             	mov    0x8(%eax),%ecx
    357b:	89 d0                	mov    %edx,%eax
    357d:	ba 00 00 00 00       	mov    $0x0,%edx
    3582:	f7 f1                	div    %ecx
    3584:	89 d0                	mov    %edx,%eax
    3586:	eb 05                	jmp    358d <scroll_screen+0x57>
    3588:	b8 00 00 00 00       	mov    $0x0,%eax
    358d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3590:	8b 45 08             	mov    0x8(%ebp),%eax
    3593:	8b 10                	mov    (%eax),%edx
    3595:	8b 45 08             	mov    0x8(%ebp),%eax
    3598:	8b 40 04             	mov    0x4(%eax),%eax
    359b:	29 c2                	sub    %eax,%edx
    359d:	89 d0                	mov    %edx,%eax
    359f:	89 45 ec             	mov    %eax,-0x14(%ebp)
    35a2:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    35a6:	0f 85 c2 00 00 00    	jne    366e <scroll_screen+0x138>
    35ac:	8b 45 08             	mov    0x8(%ebp),%eax
    35af:	8b 40 10             	mov    0x10(%eax),%eax
    35b2:	85 c0                	test   %eax,%eax
    35b4:	75 18                	jne    35ce <scroll_screen+0x98>
    35b6:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    35ba:	7e 12                	jle    35ce <scroll_screen+0x98>
    35bc:	8b 45 08             	mov    0x8(%ebp),%eax
    35bf:	8b 00                	mov    (%eax),%eax
    35c1:	8d 50 b0             	lea    -0x50(%eax),%edx
    35c4:	8b 45 08             	mov    0x8(%ebp),%eax
    35c7:	89 10                	mov    %edx,(%eax)
    35c9:	e9 3b 01 00 00       	jmp    3709 <scroll_screen+0x1d3>
    35ce:	8b 45 08             	mov    0x8(%ebp),%eax
    35d1:	8b 40 10             	mov    0x10(%eax),%eax
    35d4:	85 c0                	test   %eax,%eax
    35d6:	0f 84 2d 01 00 00    	je     3709 <scroll_screen+0x1d3>
    35dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    35df:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    35e2:	0f 84 21 01 00 00    	je     3709 <scroll_screen+0x1d3>
    35e8:	8b 45 08             	mov    0x8(%ebp),%eax
    35eb:	8b 50 0c             	mov    0xc(%eax),%edx
    35ee:	8b 45 08             	mov    0x8(%ebp),%eax
    35f1:	8b 40 04             	mov    0x4(%eax),%eax
    35f4:	29 c2                	sub    %eax,%edx
    35f6:	8b 45 08             	mov    0x8(%ebp),%eax
    35f9:	8b 40 08             	mov    0x8(%eax),%eax
    35fc:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3601:	39 c2                	cmp    %eax,%edx
    3603:	72 25                	jb     362a <scroll_screen+0xf4>
    3605:	8b 45 08             	mov    0x8(%ebp),%eax
    3608:	8b 10                	mov    (%eax),%edx
    360a:	8b 45 08             	mov    0x8(%ebp),%eax
    360d:	8b 40 04             	mov    0x4(%eax),%eax
    3610:	39 c2                	cmp    %eax,%edx
    3612:	0f 84 f1 00 00 00    	je     3709 <scroll_screen+0x1d3>
    3618:	8b 45 08             	mov    0x8(%ebp),%eax
    361b:	8b 00                	mov    (%eax),%eax
    361d:	8d 50 b0             	lea    -0x50(%eax),%edx
    3620:	8b 45 08             	mov    0x8(%ebp),%eax
    3623:	89 10                	mov    %edx,(%eax)
    3625:	e9 df 00 00 00       	jmp    3709 <scroll_screen+0x1d3>
    362a:	8b 45 08             	mov    0x8(%ebp),%eax
    362d:	8b 10                	mov    (%eax),%edx
    362f:	8b 45 08             	mov    0x8(%ebp),%eax
    3632:	8b 40 04             	mov    0x4(%eax),%eax
    3635:	39 c2                	cmp    %eax,%edx
    3637:	75 23                	jne    365c <scroll_screen+0x126>
    3639:	8b 45 08             	mov    0x8(%ebp),%eax
    363c:	8b 40 08             	mov    0x8(%eax),%eax
    363f:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3644:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3647:	8b 45 08             	mov    0x8(%ebp),%eax
    364a:	8b 50 04             	mov    0x4(%eax),%edx
    364d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3650:	01 c2                	add    %eax,%edx
    3652:	8b 45 08             	mov    0x8(%ebp),%eax
    3655:	89 10                	mov    %edx,(%eax)
    3657:	e9 ad 00 00 00       	jmp    3709 <scroll_screen+0x1d3>
    365c:	8b 45 08             	mov    0x8(%ebp),%eax
    365f:	8b 00                	mov    (%eax),%eax
    3661:	8d 50 b0             	lea    -0x50(%eax),%edx
    3664:	8b 45 08             	mov    0x8(%ebp),%eax
    3667:	89 10                	mov    %edx,(%eax)
    3669:	e9 9b 00 00 00       	jmp    3709 <scroll_screen+0x1d3>
    366e:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    3672:	75 6d                	jne    36e1 <scroll_screen+0x1ab>
    3674:	8b 45 08             	mov    0x8(%ebp),%eax
    3677:	8b 40 10             	mov    0x10(%eax),%eax
    367a:	85 c0                	test   %eax,%eax
    367c:	75 1c                	jne    369a <scroll_screen+0x164>
    367e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3681:	05 cf 07 00 00       	add    $0x7cf,%eax
    3686:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    3689:	7e 0f                	jle    369a <scroll_screen+0x164>
    368b:	8b 45 08             	mov    0x8(%ebp),%eax
    368e:	8b 00                	mov    (%eax),%eax
    3690:	8d 50 50             	lea    0x50(%eax),%edx
    3693:	8b 45 08             	mov    0x8(%ebp),%eax
    3696:	89 10                	mov    %edx,(%eax)
    3698:	eb 6f                	jmp    3709 <scroll_screen+0x1d3>
    369a:	8b 45 08             	mov    0x8(%ebp),%eax
    369d:	8b 40 10             	mov    0x10(%eax),%eax
    36a0:	85 c0                	test   %eax,%eax
    36a2:	74 65                	je     3709 <scroll_screen+0x1d3>
    36a4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    36a7:	05 80 07 00 00       	add    $0x780,%eax
    36ac:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    36af:	74 58                	je     3709 <scroll_screen+0x1d3>
    36b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    36b4:	05 d0 07 00 00       	add    $0x7d0,%eax
    36b9:	89 c2                	mov    %eax,%edx
    36bb:	8b 45 08             	mov    0x8(%ebp),%eax
    36be:	8b 40 08             	mov    0x8(%eax),%eax
    36c1:	39 c2                	cmp    %eax,%edx
    36c3:	75 0d                	jne    36d2 <scroll_screen+0x19c>
    36c5:	8b 45 08             	mov    0x8(%ebp),%eax
    36c8:	8b 50 04             	mov    0x4(%eax),%edx
    36cb:	8b 45 08             	mov    0x8(%ebp),%eax
    36ce:	89 10                	mov    %edx,(%eax)
    36d0:	eb 37                	jmp    3709 <scroll_screen+0x1d3>
    36d2:	8b 45 08             	mov    0x8(%ebp),%eax
    36d5:	8b 00                	mov    (%eax),%eax
    36d7:	8d 50 50             	lea    0x50(%eax),%edx
    36da:	8b 45 08             	mov    0x8(%ebp),%eax
    36dd:	89 10                	mov    %edx,(%eax)
    36df:	eb 28                	jmp    3709 <scroll_screen+0x1d3>
    36e1:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    36e5:	74 22                	je     3709 <scroll_screen+0x1d3>
    36e7:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    36eb:	74 1c                	je     3709 <scroll_screen+0x1d3>
    36ed:	68 24 01 00 00       	push   $0x124
    36f2:	68 ac cf 00 00       	push   $0xcfac
    36f7:	68 ac cf 00 00       	push   $0xcfac
    36fc:	68 e8 cf 00 00       	push   $0xcfe8
    3701:	e8 f7 8f 00 00       	call   c6fd <assertion_failure>
    3706:	83 c4 10             	add    $0x10,%esp
    3709:	83 ec 0c             	sub    $0xc,%esp
    370c:	ff 75 08             	pushl  0x8(%ebp)
    370f:	e8 06 00 00 00       	call   371a <flush>
    3714:	83 c4 10             	add    $0x10,%esp
    3717:	90                   	nop
    3718:	c9                   	leave  
    3719:	c3                   	ret    

0000371a <flush>:
    371a:	55                   	push   %ebp
    371b:	89 e5                	mov    %esp,%ebp
    371d:	83 ec 08             	sub    $0x8,%esp
    3720:	ff 75 08             	pushl  0x8(%ebp)
    3723:	e8 db fc ff ff       	call   3403 <is_current_console>
    3728:	83 c4 04             	add    $0x4,%esp
    372b:	85 c0                	test   %eax,%eax
    372d:	74 23                	je     3752 <flush+0x38>
    372f:	8b 45 08             	mov    0x8(%ebp),%eax
    3732:	8b 40 0c             	mov    0xc(%eax),%eax
    3735:	83 ec 0c             	sub    $0xc,%esp
    3738:	50                   	push   %eax
    3739:	e8 e8 fc ff ff       	call   3426 <set_cursor>
    373e:	83 c4 10             	add    $0x10,%esp
    3741:	8b 45 08             	mov    0x8(%ebp),%eax
    3744:	8b 00                	mov    (%eax),%eax
    3746:	83 ec 0c             	sub    $0xc,%esp
    3749:	50                   	push   %eax
    374a:	e8 3f fd ff ff       	call   348e <set_video_start_addr>
    374f:	83 c4 10             	add    $0x10,%esp
    3752:	90                   	nop
    3753:	c9                   	leave  
    3754:	c3                   	ret    

00003755 <w_copy>:
    3755:	55                   	push   %ebp
    3756:	89 e5                	mov    %esp,%ebp
    3758:	83 ec 08             	sub    $0x8,%esp
    375b:	8b 45 10             	mov    0x10(%ebp),%eax
    375e:	01 c0                	add    %eax,%eax
    3760:	8b 55 0c             	mov    0xc(%ebp),%edx
    3763:	01 d2                	add    %edx,%edx
    3765:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    376b:	89 d1                	mov    %edx,%ecx
    376d:	8b 55 08             	mov    0x8(%ebp),%edx
    3770:	01 d2                	add    %edx,%edx
    3772:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    3778:	83 ec 04             	sub    $0x4,%esp
    377b:	50                   	push   %eax
    377c:	51                   	push   %ecx
    377d:	52                   	push   %edx
    377e:	e8 ed 8c 00 00       	call   c470 <memcpy>
    3783:	83 c4 10             	add    $0x10,%esp
    3786:	90                   	nop
    3787:	c9                   	leave  
    3788:	c3                   	ret    

00003789 <init_8259A>:
    3789:	55                   	push   %ebp
    378a:	89 e5                	mov    %esp,%ebp
    378c:	83 ec 18             	sub    $0x18,%esp
    378f:	83 ec 08             	sub    $0x8,%esp
    3792:	6a 11                	push   $0x11
    3794:	6a 20                	push   $0x20
    3796:	e8 b2 2e 00 00       	call   664d <out_byte>
    379b:	83 c4 10             	add    $0x10,%esp
    379e:	83 ec 08             	sub    $0x8,%esp
    37a1:	6a 11                	push   $0x11
    37a3:	68 a0 00 00 00       	push   $0xa0
    37a8:	e8 a0 2e 00 00       	call   664d <out_byte>
    37ad:	83 c4 10             	add    $0x10,%esp
    37b0:	83 ec 08             	sub    $0x8,%esp
    37b3:	6a 20                	push   $0x20
    37b5:	6a 21                	push   $0x21
    37b7:	e8 91 2e 00 00       	call   664d <out_byte>
    37bc:	83 c4 10             	add    $0x10,%esp
    37bf:	83 ec 08             	sub    $0x8,%esp
    37c2:	6a 28                	push   $0x28
    37c4:	68 a1 00 00 00       	push   $0xa1
    37c9:	e8 7f 2e 00 00       	call   664d <out_byte>
    37ce:	83 c4 10             	add    $0x10,%esp
    37d1:	83 ec 08             	sub    $0x8,%esp
    37d4:	6a 04                	push   $0x4
    37d6:	6a 21                	push   $0x21
    37d8:	e8 70 2e 00 00       	call   664d <out_byte>
    37dd:	83 c4 10             	add    $0x10,%esp
    37e0:	83 ec 08             	sub    $0x8,%esp
    37e3:	6a 02                	push   $0x2
    37e5:	68 a1 00 00 00       	push   $0xa1
    37ea:	e8 5e 2e 00 00       	call   664d <out_byte>
    37ef:	83 c4 10             	add    $0x10,%esp
    37f2:	83 ec 08             	sub    $0x8,%esp
    37f5:	6a 01                	push   $0x1
    37f7:	6a 21                	push   $0x21
    37f9:	e8 4f 2e 00 00       	call   664d <out_byte>
    37fe:	83 c4 10             	add    $0x10,%esp
    3801:	83 ec 08             	sub    $0x8,%esp
    3804:	6a 01                	push   $0x1
    3806:	68 a1 00 00 00       	push   $0xa1
    380b:	e8 3d 2e 00 00       	call   664d <out_byte>
    3810:	83 c4 10             	add    $0x10,%esp
    3813:	83 ec 08             	sub    $0x8,%esp
    3816:	68 ff 00 00 00       	push   $0xff
    381b:	6a 21                	push   $0x21
    381d:	e8 2b 2e 00 00       	call   664d <out_byte>
    3822:	83 c4 10             	add    $0x10,%esp
    3825:	83 ec 08             	sub    $0x8,%esp
    3828:	68 ff 00 00 00       	push   $0xff
    382d:	68 a1 00 00 00       	push   $0xa1
    3832:	e8 16 2e 00 00       	call   664d <out_byte>
    3837:	83 c4 10             	add    $0x10,%esp
    383a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3841:	eb 12                	jmp    3855 <init_8259A+0xcc>
    3843:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3846:	c7 04 85 40 a4 03 00 	movl   $0x385e,0x3a440(,%eax,4)
    384d:	5e 38 00 00 
    3851:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3855:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    3859:	7e e8                	jle    3843 <init_8259A+0xba>
    385b:	90                   	nop
    385c:	c9                   	leave  
    385d:	c3                   	ret    

0000385e <spurious_irq>:
    385e:	55                   	push   %ebp
    385f:	89 e5                	mov    %esp,%ebp
    3861:	83 ec 08             	sub    $0x8,%esp
    3864:	83 ec 0c             	sub    $0xc,%esp
    3867:	68 07 d0 00 00       	push   $0xd007
    386c:	e8 5f 2d 00 00       	call   65d0 <disp_str>
    3871:	83 c4 10             	add    $0x10,%esp
    3874:	83 ec 0c             	sub    $0xc,%esp
    3877:	ff 75 08             	pushl  0x8(%ebp)
    387a:	e8 2c 31 00 00       	call   69ab <disp_int>
    387f:	83 c4 10             	add    $0x10,%esp
    3882:	83 ec 0c             	sub    $0xc,%esp
    3885:	68 16 d0 00 00       	push   $0xd016
    388a:	e8 41 2d 00 00       	call   65d0 <disp_str>
    388f:	83 c4 10             	add    $0x10,%esp
    3892:	90                   	nop
    3893:	c9                   	leave  
    3894:	c3                   	ret    

00003895 <put_irq_handler>:
    3895:	55                   	push   %ebp
    3896:	89 e5                	mov    %esp,%ebp
    3898:	83 ec 08             	sub    $0x8,%esp
    389b:	83 ec 0c             	sub    $0xc,%esp
    389e:	ff 75 08             	pushl  0x8(%ebp)
    38a1:	e8 e3 2d 00 00       	call   6689 <disable_irq>
    38a6:	83 c4 10             	add    $0x10,%esp
    38a9:	8b 45 08             	mov    0x8(%ebp),%eax
    38ac:	8b 55 0c             	mov    0xc(%ebp),%edx
    38af:	89 14 85 40 a4 03 00 	mov    %edx,0x3a440(,%eax,4)
    38b6:	90                   	nop
    38b7:	c9                   	leave  
    38b8:	c3                   	ret    

000038b9 <init_prot>:
    38b9:	55                   	push   %ebp
    38ba:	89 e5                	mov    %esp,%ebp
    38bc:	83 ec 18             	sub    $0x18,%esp
    38bf:	e8 c5 fe ff ff       	call   3789 <init_8259A>
    38c4:	6a 00                	push   $0x0
    38c6:	68 44 13 00 00       	push   $0x1344
    38cb:	68 8e 00 00 00       	push   $0x8e
    38d0:	6a 00                	push   $0x0
    38d2:	e8 d4 03 00 00       	call   3cab <init_idt_desc>
    38d7:	83 c4 10             	add    $0x10,%esp
    38da:	6a 00                	push   $0x0
    38dc:	68 4a 13 00 00       	push   $0x134a
    38e1:	68 8e 00 00 00       	push   $0x8e
    38e6:	6a 01                	push   $0x1
    38e8:	e8 be 03 00 00       	call   3cab <init_idt_desc>
    38ed:	83 c4 10             	add    $0x10,%esp
    38f0:	6a 00                	push   $0x0
    38f2:	68 50 13 00 00       	push   $0x1350
    38f7:	68 8e 00 00 00       	push   $0x8e
    38fc:	6a 02                	push   $0x2
    38fe:	e8 a8 03 00 00       	call   3cab <init_idt_desc>
    3903:	83 c4 10             	add    $0x10,%esp
    3906:	6a 03                	push   $0x3
    3908:	68 56 13 00 00       	push   $0x1356
    390d:	68 8e 00 00 00       	push   $0x8e
    3912:	6a 03                	push   $0x3
    3914:	e8 92 03 00 00       	call   3cab <init_idt_desc>
    3919:	83 c4 10             	add    $0x10,%esp
    391c:	6a 03                	push   $0x3
    391e:	68 5c 13 00 00       	push   $0x135c
    3923:	68 8e 00 00 00       	push   $0x8e
    3928:	6a 04                	push   $0x4
    392a:	e8 7c 03 00 00       	call   3cab <init_idt_desc>
    392f:	83 c4 10             	add    $0x10,%esp
    3932:	6a 00                	push   $0x0
    3934:	68 62 13 00 00       	push   $0x1362
    3939:	68 8e 00 00 00       	push   $0x8e
    393e:	6a 05                	push   $0x5
    3940:	e8 66 03 00 00       	call   3cab <init_idt_desc>
    3945:	83 c4 10             	add    $0x10,%esp
    3948:	6a 00                	push   $0x0
    394a:	68 68 13 00 00       	push   $0x1368
    394f:	68 8e 00 00 00       	push   $0x8e
    3954:	6a 06                	push   $0x6
    3956:	e8 50 03 00 00       	call   3cab <init_idt_desc>
    395b:	83 c4 10             	add    $0x10,%esp
    395e:	6a 00                	push   $0x0
    3960:	68 6e 13 00 00       	push   $0x136e
    3965:	68 8e 00 00 00       	push   $0x8e
    396a:	6a 07                	push   $0x7
    396c:	e8 3a 03 00 00       	call   3cab <init_idt_desc>
    3971:	83 c4 10             	add    $0x10,%esp
    3974:	6a 00                	push   $0x0
    3976:	68 74 13 00 00       	push   $0x1374
    397b:	68 8e 00 00 00       	push   $0x8e
    3980:	6a 08                	push   $0x8
    3982:	e8 24 03 00 00       	call   3cab <init_idt_desc>
    3987:	83 c4 10             	add    $0x10,%esp
    398a:	6a 00                	push   $0x0
    398c:	68 78 13 00 00       	push   $0x1378
    3991:	68 8e 00 00 00       	push   $0x8e
    3996:	6a 09                	push   $0x9
    3998:	e8 0e 03 00 00       	call   3cab <init_idt_desc>
    399d:	83 c4 10             	add    $0x10,%esp
    39a0:	6a 00                	push   $0x0
    39a2:	68 7e 13 00 00       	push   $0x137e
    39a7:	68 8e 00 00 00       	push   $0x8e
    39ac:	6a 0a                	push   $0xa
    39ae:	e8 f8 02 00 00       	call   3cab <init_idt_desc>
    39b3:	83 c4 10             	add    $0x10,%esp
    39b6:	6a 00                	push   $0x0
    39b8:	68 82 13 00 00       	push   $0x1382
    39bd:	68 8e 00 00 00       	push   $0x8e
    39c2:	6a 0b                	push   $0xb
    39c4:	e8 e2 02 00 00       	call   3cab <init_idt_desc>
    39c9:	83 c4 10             	add    $0x10,%esp
    39cc:	6a 00                	push   $0x0
    39ce:	68 86 13 00 00       	push   $0x1386
    39d3:	68 8e 00 00 00       	push   $0x8e
    39d8:	6a 0c                	push   $0xc
    39da:	e8 cc 02 00 00       	call   3cab <init_idt_desc>
    39df:	83 c4 10             	add    $0x10,%esp
    39e2:	6a 00                	push   $0x0
    39e4:	68 8a 13 00 00       	push   $0x138a
    39e9:	68 8e 00 00 00       	push   $0x8e
    39ee:	6a 0d                	push   $0xd
    39f0:	e8 b6 02 00 00       	call   3cab <init_idt_desc>
    39f5:	83 c4 10             	add    $0x10,%esp
    39f8:	6a 00                	push   $0x0
    39fa:	68 8e 13 00 00       	push   $0x138e
    39ff:	68 8e 00 00 00       	push   $0x8e
    3a04:	6a 0e                	push   $0xe
    3a06:	e8 a0 02 00 00       	call   3cab <init_idt_desc>
    3a0b:	83 c4 10             	add    $0x10,%esp
    3a0e:	6a 00                	push   $0x0
    3a10:	68 92 13 00 00       	push   $0x1392
    3a15:	68 8e 00 00 00       	push   $0x8e
    3a1a:	6a 10                	push   $0x10
    3a1c:	e8 8a 02 00 00       	call   3cab <init_idt_desc>
    3a21:	83 c4 10             	add    $0x10,%esp
    3a24:	6a 00                	push   $0x0
    3a26:	68 50 10 00 00       	push   $0x1050
    3a2b:	68 8e 00 00 00       	push   $0x8e
    3a30:	6a 20                	push   $0x20
    3a32:	e8 74 02 00 00       	call   3cab <init_idt_desc>
    3a37:	83 c4 10             	add    $0x10,%esp
    3a3a:	6a 00                	push   $0x0
    3a3c:	68 80 10 00 00       	push   $0x1080
    3a41:	68 8e 00 00 00       	push   $0x8e
    3a46:	6a 21                	push   $0x21
    3a48:	e8 5e 02 00 00       	call   3cab <init_idt_desc>
    3a4d:	83 c4 10             	add    $0x10,%esp
    3a50:	6a 00                	push   $0x0
    3a52:	68 b0 10 00 00       	push   $0x10b0
    3a57:	68 8e 00 00 00       	push   $0x8e
    3a5c:	6a 22                	push   $0x22
    3a5e:	e8 48 02 00 00       	call   3cab <init_idt_desc>
    3a63:	83 c4 10             	add    $0x10,%esp
    3a66:	6a 00                	push   $0x0
    3a68:	68 e0 10 00 00       	push   $0x10e0
    3a6d:	68 8e 00 00 00       	push   $0x8e
    3a72:	6a 23                	push   $0x23
    3a74:	e8 32 02 00 00       	call   3cab <init_idt_desc>
    3a79:	83 c4 10             	add    $0x10,%esp
    3a7c:	6a 00                	push   $0x0
    3a7e:	68 10 11 00 00       	push   $0x1110
    3a83:	68 8e 00 00 00       	push   $0x8e
    3a88:	6a 24                	push   $0x24
    3a8a:	e8 1c 02 00 00       	call   3cab <init_idt_desc>
    3a8f:	83 c4 10             	add    $0x10,%esp
    3a92:	6a 00                	push   $0x0
    3a94:	68 40 11 00 00       	push   $0x1140
    3a99:	68 8e 00 00 00       	push   $0x8e
    3a9e:	6a 25                	push   $0x25
    3aa0:	e8 06 02 00 00       	call   3cab <init_idt_desc>
    3aa5:	83 c4 10             	add    $0x10,%esp
    3aa8:	6a 00                	push   $0x0
    3aaa:	68 70 11 00 00       	push   $0x1170
    3aaf:	68 8e 00 00 00       	push   $0x8e
    3ab4:	6a 26                	push   $0x26
    3ab6:	e8 f0 01 00 00       	call   3cab <init_idt_desc>
    3abb:	83 c4 10             	add    $0x10,%esp
    3abe:	6a 00                	push   $0x0
    3ac0:	68 a0 11 00 00       	push   $0x11a0
    3ac5:	68 8e 00 00 00       	push   $0x8e
    3aca:	6a 27                	push   $0x27
    3acc:	e8 da 01 00 00       	call   3cab <init_idt_desc>
    3ad1:	83 c4 10             	add    $0x10,%esp
    3ad4:	6a 00                	push   $0x0
    3ad6:	68 d0 11 00 00       	push   $0x11d0
    3adb:	68 8e 00 00 00       	push   $0x8e
    3ae0:	6a 28                	push   $0x28
    3ae2:	e8 c4 01 00 00       	call   3cab <init_idt_desc>
    3ae7:	83 c4 10             	add    $0x10,%esp
    3aea:	6a 00                	push   $0x0
    3aec:	68 00 12 00 00       	push   $0x1200
    3af1:	68 8e 00 00 00       	push   $0x8e
    3af6:	6a 29                	push   $0x29
    3af8:	e8 ae 01 00 00       	call   3cab <init_idt_desc>
    3afd:	83 c4 10             	add    $0x10,%esp
    3b00:	6a 00                	push   $0x0
    3b02:	68 30 12 00 00       	push   $0x1230
    3b07:	68 8e 00 00 00       	push   $0x8e
    3b0c:	6a 2a                	push   $0x2a
    3b0e:	e8 98 01 00 00       	call   3cab <init_idt_desc>
    3b13:	83 c4 10             	add    $0x10,%esp
    3b16:	6a 00                	push   $0x0
    3b18:	68 60 12 00 00       	push   $0x1260
    3b1d:	68 8e 00 00 00       	push   $0x8e
    3b22:	6a 2b                	push   $0x2b
    3b24:	e8 82 01 00 00       	call   3cab <init_idt_desc>
    3b29:	83 c4 10             	add    $0x10,%esp
    3b2c:	6a 00                	push   $0x0
    3b2e:	68 90 12 00 00       	push   $0x1290
    3b33:	68 8e 00 00 00       	push   $0x8e
    3b38:	6a 2c                	push   $0x2c
    3b3a:	e8 6c 01 00 00       	call   3cab <init_idt_desc>
    3b3f:	83 c4 10             	add    $0x10,%esp
    3b42:	6a 00                	push   $0x0
    3b44:	68 c0 12 00 00       	push   $0x12c0
    3b49:	68 8e 00 00 00       	push   $0x8e
    3b4e:	6a 2d                	push   $0x2d
    3b50:	e8 56 01 00 00       	call   3cab <init_idt_desc>
    3b55:	83 c4 10             	add    $0x10,%esp
    3b58:	6a 00                	push   $0x0
    3b5a:	68 f0 12 00 00       	push   $0x12f0
    3b5f:	68 8e 00 00 00       	push   $0x8e
    3b64:	6a 2e                	push   $0x2e
    3b66:	e8 40 01 00 00       	call   3cab <init_idt_desc>
    3b6b:	83 c4 10             	add    $0x10,%esp
    3b6e:	6a 00                	push   $0x0
    3b70:	68 20 13 00 00       	push   $0x1320
    3b75:	68 8e 00 00 00       	push   $0x8e
    3b7a:	6a 2f                	push   $0x2f
    3b7c:	e8 2a 01 00 00       	call   3cab <init_idt_desc>
    3b81:	83 c4 10             	add    $0x10,%esp
    3b84:	6a 03                	push   $0x3
    3b86:	68 db 13 00 00       	push   $0x13db
    3b8b:	68 8e 00 00 00       	push   $0x8e
    3b90:	68 90 00 00 00       	push   $0x90
    3b95:	e8 11 01 00 00       	call   3cab <init_idt_desc>
    3b9a:	83 c4 10             	add    $0x10,%esp
    3b9d:	83 ec 04             	sub    $0x4,%esp
    3ba0:	6a 68                	push   $0x68
    3ba2:	6a 00                	push   $0x0
    3ba4:	68 e0 94 03 00       	push   $0x394e0
    3ba9:	e8 eb 88 00 00       	call   c499 <memset>
    3bae:	83 c4 10             	add    $0x10,%esp
    3bb1:	c7 05 e8 94 03 00 10 	movl   $0x10,0x394e8
    3bb8:	00 00 00 
    3bbb:	83 ec 0c             	sub    $0xc,%esp
    3bbe:	6a 10                	push   $0x10
    3bc0:	e8 57 01 00 00       	call   3d1c <seg2linear>
    3bc5:	83 c4 10             	add    $0x10,%esp
    3bc8:	ba e0 94 03 00       	mov    $0x394e0,%edx
    3bcd:	01 d0                	add    %edx,%eax
    3bcf:	68 89 00 00 00       	push   $0x89
    3bd4:	6a 67                	push   $0x67
    3bd6:	50                   	push   %eax
    3bd7:	68 60 84 03 00       	push   $0x38460
    3bdc:	e8 8a 01 00 00       	call   3d6b <init_desc>
    3be1:	83 c4 10             	add    $0x10,%esp
    3be4:	66 c7 05 46 95 03 00 	movw   $0x68,0x39546
    3beb:	68 00 
    3bed:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3bf4:	e9 a5 00 00 00       	jmp    3c9e <init_prot+0x3e5>
    3bf9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3bfc:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3c02:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3c07:	83 ec 04             	sub    $0x4,%esp
    3c0a:	68 98 01 00 00       	push   $0x198
    3c0f:	6a 00                	push   $0x0
    3c11:	50                   	push   %eax
    3c12:	e8 82 88 00 00       	call   c499 <memset>
    3c17:	83 c4 10             	add    $0x10,%esp
    3c1a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3c1d:	c1 e0 03             	shl    $0x3,%eax
    3c20:	8d 50 28             	lea    0x28(%eax),%edx
    3c23:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3c26:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3c2c:	05 e8 a4 03 00       	add    $0x3a4e8,%eax
    3c31:	66 89 10             	mov    %dx,(%eax)
    3c34:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
    3c38:	7e 1c                	jle    3c56 <init_prot+0x39d>
    3c3a:	68 b8 00 00 00       	push   $0xb8
    3c3f:	68 40 d0 00 00       	push   $0xd040
    3c44:	68 40 d0 00 00       	push   $0xd040
    3c49:	68 54 d0 00 00       	push   $0xd054
    3c4e:	e8 aa 8a 00 00       	call   c6fd <assertion_failure>
    3c53:	83 c4 10             	add    $0x10,%esp
    3c56:	83 ec 0c             	sub    $0xc,%esp
    3c59:	6a 10                	push   $0x10
    3c5b:	e8 bc 00 00 00       	call   3d1c <seg2linear>
    3c60:	83 c4 10             	add    $0x10,%esp
    3c63:	89 c2                	mov    %eax,%edx
    3c65:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3c68:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3c6e:	83 c0 40             	add    $0x40,%eax
    3c71:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3c76:	83 c0 0a             	add    $0xa,%eax
    3c79:	01 c2                	add    %eax,%edx
    3c7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3c7e:	83 c0 05             	add    $0x5,%eax
    3c81:	c1 e0 03             	shl    $0x3,%eax
    3c84:	05 40 84 03 00       	add    $0x38440,%eax
    3c89:	68 82 00 00 00       	push   $0x82
    3c8e:	6a 0f                	push   $0xf
    3c90:	52                   	push   %edx
    3c91:	50                   	push   %eax
    3c92:	e8 d4 00 00 00       	call   3d6b <init_desc>
    3c97:	83 c4 10             	add    $0x10,%esp
    3c9a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3c9e:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    3ca2:	0f 8e 51 ff ff ff    	jle    3bf9 <init_prot+0x340>
    3ca8:	90                   	nop
    3ca9:	c9                   	leave  
    3caa:	c3                   	ret    

00003cab <init_idt_desc>:
    3cab:	55                   	push   %ebp
    3cac:	89 e5                	mov    %esp,%ebp
    3cae:	83 ec 1c             	sub    $0x1c,%esp
    3cb1:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3cb4:	8b 55 0c             	mov    0xc(%ebp),%edx
    3cb7:	8b 45 14             	mov    0x14(%ebp),%eax
    3cba:	88 4d ec             	mov    %cl,-0x14(%ebp)
    3cbd:	88 55 e8             	mov    %dl,-0x18(%ebp)
    3cc0:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3cc3:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
    3cc7:	c1 e0 03             	shl    $0x3,%eax
    3cca:	05 00 9a 03 00       	add    $0x39a00,%eax
    3ccf:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3cd2:	8b 45 10             	mov    0x10(%ebp),%eax
    3cd5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3cd8:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3cdb:	89 c2                	mov    %eax,%edx
    3cdd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ce0:	66 89 10             	mov    %dx,(%eax)
    3ce3:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ce6:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
    3cec:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cef:	c6 40 04 00          	movb   $0x0,0x4(%eax)
    3cf3:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    3cf7:	c1 e0 05             	shl    $0x5,%eax
    3cfa:	89 c2                	mov    %eax,%edx
    3cfc:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    3d00:	09 d0                	or     %edx,%eax
    3d02:	89 c2                	mov    %eax,%edx
    3d04:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d07:	88 50 05             	mov    %dl,0x5(%eax)
    3d0a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3d0d:	c1 e8 10             	shr    $0x10,%eax
    3d10:	89 c2                	mov    %eax,%edx
    3d12:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d15:	66 89 50 06          	mov    %dx,0x6(%eax)
    3d19:	90                   	nop
    3d1a:	c9                   	leave  
    3d1b:	c3                   	ret    

00003d1c <seg2linear>:
    3d1c:	55                   	push   %ebp
    3d1d:	89 e5                	mov    %esp,%ebp
    3d1f:	83 ec 14             	sub    $0x14,%esp
    3d22:	8b 45 08             	mov    0x8(%ebp),%eax
    3d25:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    3d29:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    3d2d:	66 c1 e8 03          	shr    $0x3,%ax
    3d31:	0f b7 c0             	movzwl %ax,%eax
    3d34:	c1 e0 03             	shl    $0x3,%eax
    3d37:	05 40 84 03 00       	add    $0x38440,%eax
    3d3c:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3d3f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d42:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3d46:	0f b6 c0             	movzbl %al,%eax
    3d49:	c1 e0 18             	shl    $0x18,%eax
    3d4c:	89 c2                	mov    %eax,%edx
    3d4e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d51:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3d55:	0f b6 c0             	movzbl %al,%eax
    3d58:	c1 e0 10             	shl    $0x10,%eax
    3d5b:	09 c2                	or     %eax,%edx
    3d5d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d60:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3d64:	0f b7 c0             	movzwl %ax,%eax
    3d67:	09 d0                	or     %edx,%eax
    3d69:	c9                   	leave  
    3d6a:	c3                   	ret    

00003d6b <init_desc>:
    3d6b:	55                   	push   %ebp
    3d6c:	89 e5                	mov    %esp,%ebp
    3d6e:	83 ec 04             	sub    $0x4,%esp
    3d71:	8b 45 14             	mov    0x14(%ebp),%eax
    3d74:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    3d78:	8b 45 10             	mov    0x10(%ebp),%eax
    3d7b:	89 c2                	mov    %eax,%edx
    3d7d:	8b 45 08             	mov    0x8(%ebp),%eax
    3d80:	66 89 10             	mov    %dx,(%eax)
    3d83:	8b 45 0c             	mov    0xc(%ebp),%eax
    3d86:	89 c2                	mov    %eax,%edx
    3d88:	8b 45 08             	mov    0x8(%ebp),%eax
    3d8b:	66 89 50 02          	mov    %dx,0x2(%eax)
    3d8f:	8b 45 0c             	mov    0xc(%ebp),%eax
    3d92:	c1 e8 10             	shr    $0x10,%eax
    3d95:	89 c2                	mov    %eax,%edx
    3d97:	8b 45 08             	mov    0x8(%ebp),%eax
    3d9a:	88 50 04             	mov    %dl,0x4(%eax)
    3d9d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3da1:	89 c2                	mov    %eax,%edx
    3da3:	8b 45 08             	mov    0x8(%ebp),%eax
    3da6:	88 50 05             	mov    %dl,0x5(%eax)
    3da9:	8b 45 10             	mov    0x10(%ebp),%eax
    3dac:	c1 e8 10             	shr    $0x10,%eax
    3daf:	83 e0 0f             	and    $0xf,%eax
    3db2:	89 c2                	mov    %eax,%edx
    3db4:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3db8:	66 c1 e8 08          	shr    $0x8,%ax
    3dbc:	83 e0 f0             	and    $0xfffffff0,%eax
    3dbf:	09 c2                	or     %eax,%edx
    3dc1:	8b 45 08             	mov    0x8(%ebp),%eax
    3dc4:	88 50 06             	mov    %dl,0x6(%eax)
    3dc7:	8b 45 0c             	mov    0xc(%ebp),%eax
    3dca:	c1 e8 18             	shr    $0x18,%eax
    3dcd:	89 c2                	mov    %eax,%edx
    3dcf:	8b 45 08             	mov    0x8(%ebp),%eax
    3dd2:	88 50 07             	mov    %dl,0x7(%eax)
    3dd5:	90                   	nop
    3dd6:	c9                   	leave  
    3dd7:	c3                   	ret    

00003dd8 <exception_handler>:
    3dd8:	55                   	push   %ebp
    3dd9:	89 e5                	mov    %esp,%ebp
    3ddb:	57                   	push   %edi
    3ddc:	56                   	push   %esi
    3ddd:	53                   	push   %ebx
    3dde:	81 ec 1c 05 00 00    	sub    $0x51c,%esp
    3de4:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
    3deb:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3df1:	bb c0 d0 00 00       	mov    $0xd0c0,%ebx
    3df6:	ba 40 01 00 00       	mov    $0x140,%edx
    3dfb:	89 c7                	mov    %eax,%edi
    3dfd:	89 de                	mov    %ebx,%esi
    3dff:	89 d1                	mov    %edx,%ecx
    3e01:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    3e03:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    3e0a:	00 00 00 
    3e0d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    3e14:	eb 14                	jmp    3e2a <exception_handler+0x52>
    3e16:	83 ec 0c             	sub    $0xc,%esp
    3e19:	68 73 d0 00 00       	push   $0xd073
    3e1e:	e8 ad 27 00 00       	call   65d0 <disp_str>
    3e23:	83 c4 10             	add    $0x10,%esp
    3e26:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    3e2a:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
    3e31:	7e e3                	jle    3e16 <exception_handler+0x3e>
    3e33:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    3e3a:	00 00 00 
    3e3d:	83 ec 08             	sub    $0x8,%esp
    3e40:	ff 75 e0             	pushl  -0x20(%ebp)
    3e43:	68 75 d0 00 00       	push   $0xd075
    3e48:	e8 c1 27 00 00       	call   660e <disp_color_str>
    3e4d:	83 c4 10             	add    $0x10,%esp
    3e50:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3e56:	8b 55 08             	mov    0x8(%ebp),%edx
    3e59:	c1 e2 06             	shl    $0x6,%edx
    3e5c:	01 d0                	add    %edx,%eax
    3e5e:	83 ec 08             	sub    $0x8,%esp
    3e61:	ff 75 e0             	pushl  -0x20(%ebp)
    3e64:	50                   	push   %eax
    3e65:	e8 a4 27 00 00       	call   660e <disp_color_str>
    3e6a:	83 c4 10             	add    $0x10,%esp
    3e6d:	83 ec 08             	sub    $0x8,%esp
    3e70:	ff 75 e0             	pushl  -0x20(%ebp)
    3e73:	68 85 d0 00 00       	push   $0xd085
    3e78:	e8 91 27 00 00       	call   660e <disp_color_str>
    3e7d:	83 c4 10             	add    $0x10,%esp
    3e80:	83 ec 08             	sub    $0x8,%esp
    3e83:	ff 75 e0             	pushl  -0x20(%ebp)
    3e86:	68 88 d0 00 00       	push   $0xd088
    3e8b:	e8 7e 27 00 00       	call   660e <disp_color_str>
    3e90:	83 c4 10             	add    $0x10,%esp
    3e93:	83 ec 0c             	sub    $0xc,%esp
    3e96:	ff 75 18             	pushl  0x18(%ebp)
    3e99:	e8 0d 2b 00 00       	call   69ab <disp_int>
    3e9e:	83 c4 10             	add    $0x10,%esp
    3ea1:	83 ec 08             	sub    $0x8,%esp
    3ea4:	ff 75 e0             	pushl  -0x20(%ebp)
    3ea7:	68 90 d0 00 00       	push   $0xd090
    3eac:	e8 5d 27 00 00       	call   660e <disp_color_str>
    3eb1:	83 c4 10             	add    $0x10,%esp
    3eb4:	83 ec 0c             	sub    $0xc,%esp
    3eb7:	ff 75 14             	pushl  0x14(%ebp)
    3eba:	e8 ec 2a 00 00       	call   69ab <disp_int>
    3ebf:	83 c4 10             	add    $0x10,%esp
    3ec2:	83 ec 08             	sub    $0x8,%esp
    3ec5:	ff 75 e0             	pushl  -0x20(%ebp)
    3ec8:	68 94 d0 00 00       	push   $0xd094
    3ecd:	e8 3c 27 00 00       	call   660e <disp_color_str>
    3ed2:	83 c4 10             	add    $0x10,%esp
    3ed5:	83 ec 0c             	sub    $0xc,%esp
    3ed8:	ff 75 10             	pushl  0x10(%ebp)
    3edb:	e8 cb 2a 00 00       	call   69ab <disp_int>
    3ee0:	83 c4 10             	add    $0x10,%esp
    3ee3:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    3ee7:	74 21                	je     3f0a <exception_handler+0x132>
    3ee9:	83 ec 08             	sub    $0x8,%esp
    3eec:	ff 75 e0             	pushl  -0x20(%ebp)
    3eef:	68 99 d0 00 00       	push   $0xd099
    3ef4:	e8 15 27 00 00       	call   660e <disp_color_str>
    3ef9:	83 c4 10             	add    $0x10,%esp
    3efc:	83 ec 0c             	sub    $0xc,%esp
    3eff:	ff 75 0c             	pushl  0xc(%ebp)
    3f02:	e8 a4 2a 00 00       	call   69ab <disp_int>
    3f07:	83 c4 10             	add    $0x10,%esp
    3f0a:	90                   	nop
    3f0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3f0e:	5b                   	pop    %ebx
    3f0f:	5e                   	pop    %esi
    3f10:	5f                   	pop    %edi
    3f11:	5d                   	pop    %ebp
    3f12:	c3                   	ret    

00003f13 <schedule>:
    3f13:	55                   	push   %ebp
    3f14:	89 e5                	mov    %esp,%ebp
    3f16:	83 ec 10             	sub    $0x10,%esp
    3f19:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    3f20:	eb 74                	jmp    3f96 <schedule+0x83>
    3f22:	c7 45 fc a0 a4 03 00 	movl   $0x3a4a0,-0x4(%ebp)
    3f29:	eb 2d                	jmp    3f58 <schedule+0x45>
    3f2b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f2e:	8b 40 74             	mov    0x74(%eax),%eax
    3f31:	85 c0                	test   %eax,%eax
    3f33:	75 1c                	jne    3f51 <schedule+0x3e>
    3f35:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f38:	8b 40 5c             	mov    0x5c(%eax),%eax
    3f3b:	39 45 f8             	cmp    %eax,-0x8(%ebp)
    3f3e:	7d 11                	jge    3f51 <schedule+0x3e>
    3f40:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f43:	8b 40 5c             	mov    0x5c(%eax),%eax
    3f46:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3f49:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f4c:	a3 80 a4 03 00       	mov    %eax,0x3a480
    3f51:	81 45 fc 98 01 00 00 	addl   $0x198,-0x4(%ebp)
    3f58:	81 7d fc 00 de 03 00 	cmpl   $0x3de00,-0x4(%ebp)
    3f5f:	76 ca                	jbe    3f2b <schedule+0x18>
    3f61:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3f65:	75 2f                	jne    3f96 <schedule+0x83>
    3f67:	c7 45 fc a0 a4 03 00 	movl   $0x3a4a0,-0x4(%ebp)
    3f6e:	eb 1d                	jmp    3f8d <schedule+0x7a>
    3f70:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f73:	8b 40 74             	mov    0x74(%eax),%eax
    3f76:	85 c0                	test   %eax,%eax
    3f78:	75 0c                	jne    3f86 <schedule+0x73>
    3f7a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f7d:	8b 50 60             	mov    0x60(%eax),%edx
    3f80:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3f83:	89 50 5c             	mov    %edx,0x5c(%eax)
    3f86:	81 45 fc 98 01 00 00 	addl   $0x198,-0x4(%ebp)
    3f8d:	81 7d fc 00 de 03 00 	cmpl   $0x3de00,-0x4(%ebp)
    3f94:	76 da                	jbe    3f70 <schedule+0x5d>
    3f96:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3f9a:	74 86                	je     3f22 <schedule+0xf>
    3f9c:	90                   	nop
    3f9d:	c9                   	leave  
    3f9e:	c3                   	ret    

00003f9f <sys_sendrec>:
    3f9f:	55                   	push   %ebp
    3fa0:	89 e5                	mov    %esp,%ebp
    3fa2:	83 ec 18             	sub    $0x18,%esp
    3fa5:	a1 20 84 03 00       	mov    0x38420,%eax
    3faa:	85 c0                	test   %eax,%eax
    3fac:	74 19                	je     3fc7 <sys_sendrec+0x28>
    3fae:	6a 46                	push   $0x46
    3fb0:	68 c0 d5 00 00       	push   $0xd5c0
    3fb5:	68 c0 d5 00 00       	push   $0xd5c0
    3fba:	68 ce d5 00 00       	push   $0xd5ce
    3fbf:	e8 39 87 00 00       	call   c6fd <assertion_failure>
    3fc4:	83 c4 10             	add    $0x10,%esp
    3fc7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    3fcb:	78 06                	js     3fd3 <sys_sendrec+0x34>
    3fcd:	83 7d 0c 24          	cmpl   $0x24,0xc(%ebp)
    3fd1:	7e 25                	jle    3ff8 <sys_sendrec+0x59>
    3fd3:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    3fd7:	74 1f                	je     3ff8 <sys_sendrec+0x59>
    3fd9:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    3fdd:	74 19                	je     3ff8 <sys_sendrec+0x59>
    3fdf:	6a 49                	push   $0x49
    3fe1:	68 c0 d5 00 00       	push   $0xd5c0
    3fe6:	68 c0 d5 00 00       	push   $0xd5c0
    3feb:	68 e0 d5 00 00       	push   $0xd5e0
    3ff0:	e8 08 87 00 00       	call   c6fd <assertion_failure>
    3ff5:	83 c4 10             	add    $0x10,%esp
    3ff8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3fff:	8b 45 14             	mov    0x14(%ebp),%eax
    4002:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4007:	c1 f8 03             	sar    $0x3,%eax
    400a:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4010:	89 45 f0             	mov    %eax,-0x10(%ebp)
    4013:	83 ec 08             	sub    $0x8,%esp
    4016:	ff 75 10             	pushl  0x10(%ebp)
    4019:	ff 75 f0             	pushl  -0x10(%ebp)
    401c:	e8 e6 00 00 00       	call   4107 <va2la>
    4021:	83 c4 10             	add    $0x10,%esp
    4024:	89 45 ec             	mov    %eax,-0x14(%ebp)
    4027:	8b 45 ec             	mov    -0x14(%ebp),%eax
    402a:	8b 55 f0             	mov    -0x10(%ebp),%edx
    402d:	89 10                	mov    %edx,(%eax)
    402f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4032:	8b 00                	mov    (%eax),%eax
    4034:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4037:	75 19                	jne    4052 <sys_sendrec+0xb3>
    4039:	6a 50                	push   $0x50
    403b:	68 c0 d5 00 00       	push   $0xd5c0
    4040:	68 c0 d5 00 00       	push   $0xd5c0
    4045:	68 3e d6 00 00       	push   $0xd63e
    404a:	e8 ae 86 00 00       	call   c6fd <assertion_failure>
    404f:	83 c4 10             	add    $0x10,%esp
    4052:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    4056:	75 22                	jne    407a <sys_sendrec+0xdb>
    4058:	83 ec 04             	sub    $0x4,%esp
    405b:	ff 75 10             	pushl  0x10(%ebp)
    405e:	ff 75 0c             	pushl  0xc(%ebp)
    4061:	ff 75 14             	pushl  0x14(%ebp)
    4064:	e8 81 02 00 00       	call   42ea <msg_send>
    4069:	83 c4 10             	add    $0x10,%esp
    406c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    406f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    4073:	74 41                	je     40b6 <sys_sendrec+0x117>
    4075:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4078:	eb 41                	jmp    40bb <sys_sendrec+0x11c>
    407a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    407e:	75 22                	jne    40a2 <sys_sendrec+0x103>
    4080:	83 ec 04             	sub    $0x4,%esp
    4083:	ff 75 10             	pushl  0x10(%ebp)
    4086:	ff 75 0c             	pushl  0xc(%ebp)
    4089:	ff 75 14             	pushl  0x14(%ebp)
    408c:	e8 89 06 00 00       	call   471a <msg_receive>
    4091:	83 c4 10             	add    $0x10,%esp
    4094:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4097:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    409b:	74 19                	je     40b6 <sys_sendrec+0x117>
    409d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    40a0:	eb 19                	jmp    40bb <sys_sendrec+0x11c>
    40a2:	6a 02                	push   $0x2
    40a4:	6a 01                	push   $0x1
    40a6:	ff 75 08             	pushl  0x8(%ebp)
    40a9:	68 58 d6 00 00       	push   $0xd658
    40ae:	e8 93 dc ff ff       	call   1d46 <panic>
    40b3:	83 c4 10             	add    $0x10,%esp
    40b6:	b8 00 00 00 00       	mov    $0x0,%eax
    40bb:	c9                   	leave  
    40bc:	c3                   	ret    

000040bd <ldt_seg_linear>:
    40bd:	55                   	push   %ebp
    40be:	89 e5                	mov    %esp,%ebp
    40c0:	83 ec 10             	sub    $0x10,%esp
    40c3:	8b 45 0c             	mov    0xc(%ebp),%eax
    40c6:	83 c0 08             	add    $0x8,%eax
    40c9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    40d0:	8b 45 08             	mov    0x8(%ebp),%eax
    40d3:	01 d0                	add    %edx,%eax
    40d5:	83 c0 0a             	add    $0xa,%eax
    40d8:	89 45 fc             	mov    %eax,-0x4(%ebp)
    40db:	8b 45 fc             	mov    -0x4(%ebp),%eax
    40de:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    40e2:	0f b6 c0             	movzbl %al,%eax
    40e5:	c1 e0 18             	shl    $0x18,%eax
    40e8:	89 c2                	mov    %eax,%edx
    40ea:	8b 45 fc             	mov    -0x4(%ebp),%eax
    40ed:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    40f1:	0f b6 c0             	movzbl %al,%eax
    40f4:	c1 e0 10             	shl    $0x10,%eax
    40f7:	09 c2                	or     %eax,%edx
    40f9:	8b 45 fc             	mov    -0x4(%ebp),%eax
    40fc:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    4100:	0f b7 c0             	movzwl %ax,%eax
    4103:	09 d0                	or     %edx,%eax
    4105:	c9                   	leave  
    4106:	c3                   	ret    

00004107 <va2la>:
    4107:	55                   	push   %ebp
    4108:	89 e5                	mov    %esp,%ebp
    410a:	83 ec 18             	sub    $0x18,%esp
    410d:	8b 45 08             	mov    0x8(%ebp),%eax
    4110:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4116:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    411b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    411e:	6a 01                	push   $0x1
    4120:	ff 75 f4             	pushl  -0xc(%ebp)
    4123:	e8 95 ff ff ff       	call   40bd <ldt_seg_linear>
    4128:	83 c4 08             	add    $0x8,%esp
    412b:	89 45 f0             	mov    %eax,-0x10(%ebp)
    412e:	8b 55 0c             	mov    0xc(%ebp),%edx
    4131:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4134:	01 d0                	add    %edx,%eax
    4136:	89 45 ec             	mov    %eax,-0x14(%ebp)
    4139:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
    413d:	7f 24                	jg     4163 <va2la+0x5c>
    413f:	8b 45 0c             	mov    0xc(%ebp),%eax
    4142:	39 45 ec             	cmp    %eax,-0x14(%ebp)
    4145:	74 1c                	je     4163 <va2la+0x5c>
    4147:	68 90 00 00 00       	push   $0x90
    414c:	68 c0 d5 00 00       	push   $0xd5c0
    4151:	68 c0 d5 00 00       	push   $0xd5c0
    4156:	68 92 d6 00 00       	push   $0xd692
    415b:	e8 9d 85 00 00       	call   c6fd <assertion_failure>
    4160:	83 c4 10             	add    $0x10,%esp
    4163:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4166:	c9                   	leave  
    4167:	c3                   	ret    

00004168 <reset_msg>:
    4168:	55                   	push   %ebp
    4169:	89 e5                	mov    %esp,%ebp
    416b:	83 ec 08             	sub    $0x8,%esp
    416e:	83 ec 04             	sub    $0x4,%esp
    4171:	6a 30                	push   $0x30
    4173:	6a 00                	push   $0x0
    4175:	ff 75 08             	pushl  0x8(%ebp)
    4178:	e8 1c 83 00 00       	call   c499 <memset>
    417d:	83 c4 10             	add    $0x10,%esp
    4180:	90                   	nop
    4181:	c9                   	leave  
    4182:	c3                   	ret    

00004183 <block>:
    4183:	55                   	push   %ebp
    4184:	89 e5                	mov    %esp,%ebp
    4186:	83 ec 08             	sub    $0x8,%esp
    4189:	8b 45 08             	mov    0x8(%ebp),%eax
    418c:	8b 40 74             	mov    0x74(%eax),%eax
    418f:	85 c0                	test   %eax,%eax
    4191:	75 1c                	jne    41af <block+0x2c>
    4193:	68 b1 00 00 00       	push   $0xb1
    4198:	68 c0 d5 00 00       	push   $0xd5c0
    419d:	68 c0 d5 00 00       	push   $0xd5c0
    41a2:	68 a0 d6 00 00       	push   $0xd6a0
    41a7:	e8 51 85 00 00       	call   c6fd <assertion_failure>
    41ac:	83 c4 10             	add    $0x10,%esp
    41af:	e8 5f fd ff ff       	call   3f13 <schedule>
    41b4:	90                   	nop
    41b5:	c9                   	leave  
    41b6:	c3                   	ret    

000041b7 <unblock>:
    41b7:	55                   	push   %ebp
    41b8:	89 e5                	mov    %esp,%ebp
    41ba:	83 ec 08             	sub    $0x8,%esp
    41bd:	8b 45 08             	mov    0x8(%ebp),%eax
    41c0:	8b 40 74             	mov    0x74(%eax),%eax
    41c3:	85 c0                	test   %eax,%eax
    41c5:	74 1c                	je     41e3 <unblock+0x2c>
    41c7:	68 c0 00 00 00       	push   $0xc0
    41cc:	68 c0 d5 00 00       	push   $0xd5c0
    41d1:	68 c0 d5 00 00       	push   $0xd5c0
    41d6:	68 ab d6 00 00       	push   $0xd6ab
    41db:	e8 1d 85 00 00       	call   c6fd <assertion_failure>
    41e0:	83 c4 10             	add    $0x10,%esp
    41e3:	90                   	nop
    41e4:	c9                   	leave  
    41e5:	c3                   	ret    

000041e6 <deadlock>:
    41e6:	55                   	push   %ebp
    41e7:	89 e5                	mov    %esp,%ebp
    41e9:	83 ec 18             	sub    $0x18,%esp
    41ec:	8b 45 0c             	mov    0xc(%ebp),%eax
    41ef:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    41f5:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    41fa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    41fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4200:	8b 40 74             	mov    0x74(%eax),%eax
    4203:	83 e0 02             	and    $0x2,%eax
    4206:	85 c0                	test   %eax,%eax
    4208:	0f 84 d4 00 00 00    	je     42e2 <deadlock+0xfc>
    420e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4211:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4217:	39 45 08             	cmp    %eax,0x8(%ebp)
    421a:	0f 85 a6 00 00 00    	jne    42c6 <deadlock+0xe0>
    4220:	8b 45 0c             	mov    0xc(%ebp),%eax
    4223:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4229:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    422e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4231:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4234:	83 c0 64             	add    $0x64,%eax
    4237:	83 ec 08             	sub    $0x8,%esp
    423a:	50                   	push   %eax
    423b:	68 bb d6 00 00       	push   $0xd6bb
    4240:	e8 d7 7e 00 00       	call   c11c <printl>
    4245:	83 c4 10             	add    $0x10,%esp
    4248:	8b 45 f4             	mov    -0xc(%ebp),%eax
    424b:	8b 40 78             	mov    0x78(%eax),%eax
    424e:	85 c0                	test   %eax,%eax
    4250:	75 1c                	jne    426e <deadlock+0x88>
    4252:	68 dc 00 00 00       	push   $0xdc
    4257:	68 c0 d5 00 00       	push   $0xd5c0
    425c:	68 c0 d5 00 00       	push   $0xd5c0
    4261:	68 c1 d6 00 00       	push   $0xd6c1
    4266:	e8 92 84 00 00       	call   c6fd <assertion_failure>
    426b:	83 c4 10             	add    $0x10,%esp
    426e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4271:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4277:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    427d:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4282:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4285:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4288:	83 c0 64             	add    $0x64,%eax
    428b:	83 ec 08             	sub    $0x8,%esp
    428e:	50                   	push   %eax
    428f:	68 ca d6 00 00       	push   $0xd6ca
    4294:	e8 83 7e 00 00       	call   c11c <printl>
    4299:	83 c4 10             	add    $0x10,%esp
    429c:	8b 45 08             	mov    0x8(%ebp),%eax
    429f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    42a5:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    42aa:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    42ad:	75 99                	jne    4248 <deadlock+0x62>
    42af:	83 ec 0c             	sub    $0xc,%esp
    42b2:	68 cf d6 00 00       	push   $0xd6cf
    42b7:	e8 60 7e 00 00       	call   c11c <printl>
    42bc:	83 c4 10             	add    $0x10,%esp
    42bf:	b8 01 00 00 00       	mov    $0x1,%eax
    42c4:	eb 22                	jmp    42e8 <deadlock+0x102>
    42c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    42c9:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    42cf:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    42d5:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    42da:	89 45 f4             	mov    %eax,-0xc(%ebp)
    42dd:	e9 1b ff ff ff       	jmp    41fd <deadlock+0x17>
    42e2:	90                   	nop
    42e3:	b8 00 00 00 00       	mov    $0x0,%eax
    42e8:	c9                   	leave  
    42e9:	c3                   	ret    

000042ea <msg_send>:
    42ea:	55                   	push   %ebp
    42eb:	89 e5                	mov    %esp,%ebp
    42ed:	53                   	push   %ebx
    42ee:	83 ec 14             	sub    $0x14,%esp
    42f1:	8b 45 08             	mov    0x8(%ebp),%eax
    42f4:	89 45 f0             	mov    %eax,-0x10(%ebp)
    42f7:	8b 45 0c             	mov    0xc(%ebp),%eax
    42fa:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4300:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4305:	89 45 ec             	mov    %eax,-0x14(%ebp)
    4308:	8b 45 f0             	mov    -0x10(%ebp),%eax
    430b:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4310:	c1 f8 03             	sar    $0x3,%eax
    4313:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4319:	39 45 0c             	cmp    %eax,0xc(%ebp)
    431c:	75 1c                	jne    433a <msg_send+0x50>
    431e:	68 00 01 00 00       	push   $0x100
    4323:	68 c0 d5 00 00       	push   $0xd5c0
    4328:	68 c0 d5 00 00       	push   $0xd5c0
    432d:	68 d3 d6 00 00       	push   $0xd6d3
    4332:	e8 c6 83 00 00       	call   c6fd <assertion_failure>
    4337:	83 c4 10             	add    $0x10,%esp
    433a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    433d:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4342:	c1 f8 03             	sar    $0x3,%eax
    4345:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    434b:	83 ec 08             	sub    $0x8,%esp
    434e:	ff 75 0c             	pushl  0xc(%ebp)
    4351:	50                   	push   %eax
    4352:	e8 8f fe ff ff       	call   41e6 <deadlock>
    4357:	83 c4 10             	add    $0x10,%esp
    435a:	85 c0                	test   %eax,%eax
    435c:	74 1e                	je     437c <msg_send+0x92>
    435e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4361:	8d 50 64             	lea    0x64(%eax),%edx
    4364:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4367:	83 c0 64             	add    $0x64,%eax
    436a:	83 ec 04             	sub    $0x4,%esp
    436d:	52                   	push   %edx
    436e:	50                   	push   %eax
    436f:	68 ec d6 00 00       	push   $0xd6ec
    4374:	e8 cd d9 ff ff       	call   1d46 <panic>
    4379:	83 c4 10             	add    $0x10,%esp
    437c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    437f:	8b 40 74             	mov    0x74(%eax),%eax
    4382:	83 e0 04             	and    $0x4,%eax
    4385:	85 c0                	test   %eax,%eax
    4387:	0f 84 2f 02 00 00    	je     45bc <msg_send+0x2d2>
    438d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4390:	8b 40 7c             	mov    0x7c(%eax),%eax
    4393:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4396:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    439c:	c1 fa 03             	sar    $0x3,%edx
    439f:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    43a5:	39 d0                	cmp    %edx,%eax
    43a7:	74 0f                	je     43b8 <msg_send+0xce>
    43a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    43ac:	8b 40 7c             	mov    0x7c(%eax),%eax
    43af:	83 f8 2f             	cmp    $0x2f,%eax
    43b2:	0f 85 04 02 00 00    	jne    45bc <msg_send+0x2d2>
    43b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    43bb:	8b 40 78             	mov    0x78(%eax),%eax
    43be:	85 c0                	test   %eax,%eax
    43c0:	75 1c                	jne    43de <msg_send+0xf4>
    43c2:	68 0a 01 00 00       	push   $0x10a
    43c7:	68 c0 d5 00 00       	push   $0xd5c0
    43cc:	68 c0 d5 00 00       	push   $0xd5c0
    43d1:	68 00 d7 00 00       	push   $0xd700
    43d6:	e8 22 83 00 00       	call   c6fd <assertion_failure>
    43db:	83 c4 10             	add    $0x10,%esp
    43de:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    43e2:	75 1c                	jne    4400 <msg_send+0x116>
    43e4:	68 0b 01 00 00       	push   $0x10b
    43e9:	68 c0 d5 00 00       	push   $0xd5c0
    43ee:	68 c0 d5 00 00       	push   $0xd5c0
    43f3:	68 0e d7 00 00       	push   $0xd70e
    43f8:	e8 00 83 00 00       	call   c6fd <assertion_failure>
    43fd:	83 c4 10             	add    $0x10,%esp
    4400:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4403:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4408:	c1 f8 03             	sar    $0x3,%eax
    440b:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4411:	83 ec 08             	sub    $0x8,%esp
    4414:	ff 75 10             	pushl  0x10(%ebp)
    4417:	50                   	push   %eax
    4418:	e8 ea fc ff ff       	call   4107 <va2la>
    441d:	83 c4 10             	add    $0x10,%esp
    4420:	89 c3                	mov    %eax,%ebx
    4422:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4425:	8b 40 78             	mov    0x78(%eax),%eax
    4428:	83 ec 08             	sub    $0x8,%esp
    442b:	50                   	push   %eax
    442c:	ff 75 0c             	pushl  0xc(%ebp)
    442f:	e8 d3 fc ff ff       	call   4107 <va2la>
    4434:	83 c4 10             	add    $0x10,%esp
    4437:	83 ec 04             	sub    $0x4,%esp
    443a:	6a 30                	push   $0x30
    443c:	53                   	push   %ebx
    443d:	50                   	push   %eax
    443e:	e8 2d 80 00 00       	call   c470 <memcpy>
    4443:	83 c4 10             	add    $0x10,%esp
    4446:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4449:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4450:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4453:	8b 40 74             	mov    0x74(%eax),%eax
    4456:	83 e0 fb             	and    $0xfffffffb,%eax
    4459:	89 c2                	mov    %eax,%edx
    445b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    445e:	89 50 74             	mov    %edx,0x74(%eax)
    4461:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4464:	c7 40 7c 39 00 00 00 	movl   $0x39,0x7c(%eax)
    446b:	83 ec 0c             	sub    $0xc,%esp
    446e:	ff 75 ec             	pushl  -0x14(%ebp)
    4471:	e8 41 fd ff ff       	call   41b7 <unblock>
    4476:	83 c4 10             	add    $0x10,%esp
    4479:	8b 45 ec             	mov    -0x14(%ebp),%eax
    447c:	8b 40 74             	mov    0x74(%eax),%eax
    447f:	85 c0                	test   %eax,%eax
    4481:	74 1c                	je     449f <msg_send+0x1b5>
    4483:	68 15 01 00 00       	push   $0x115
    4488:	68 c0 d5 00 00       	push   $0xd5c0
    448d:	68 c0 d5 00 00       	push   $0xd5c0
    4492:	68 10 d7 00 00       	push   $0xd710
    4497:	e8 61 82 00 00       	call   c6fd <assertion_failure>
    449c:	83 c4 10             	add    $0x10,%esp
    449f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44a2:	8b 40 78             	mov    0x78(%eax),%eax
    44a5:	85 c0                	test   %eax,%eax
    44a7:	74 1c                	je     44c5 <msg_send+0x1db>
    44a9:	68 16 01 00 00       	push   $0x116
    44ae:	68 c0 d5 00 00       	push   $0xd5c0
    44b3:	68 c0 d5 00 00       	push   $0xd5c0
    44b8:	68 25 d7 00 00       	push   $0xd725
    44bd:	e8 3b 82 00 00       	call   c6fd <assertion_failure>
    44c2:	83 c4 10             	add    $0x10,%esp
    44c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44c8:	8b 40 7c             	mov    0x7c(%eax),%eax
    44cb:	83 f8 39             	cmp    $0x39,%eax
    44ce:	74 1c                	je     44ec <msg_send+0x202>
    44d0:	68 17 01 00 00       	push   $0x117
    44d5:	68 c0 d5 00 00       	push   $0xd5c0
    44da:	68 c0 d5 00 00       	push   $0xd5c0
    44df:	68 38 d7 00 00       	push   $0xd738
    44e4:	e8 14 82 00 00       	call   c6fd <assertion_failure>
    44e9:	83 c4 10             	add    $0x10,%esp
    44ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44ef:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    44f5:	83 f8 39             	cmp    $0x39,%eax
    44f8:	74 1c                	je     4516 <msg_send+0x22c>
    44fa:	68 18 01 00 00       	push   $0x118
    44ff:	68 c0 d5 00 00       	push   $0xd5c0
    4504:	68 c0 d5 00 00       	push   $0xd5c0
    4509:	68 56 d7 00 00       	push   $0xd756
    450e:	e8 ea 81 00 00       	call   c6fd <assertion_failure>
    4513:	83 c4 10             	add    $0x10,%esp
    4516:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4519:	8b 40 74             	mov    0x74(%eax),%eax
    451c:	85 c0                	test   %eax,%eax
    451e:	74 1c                	je     453c <msg_send+0x252>
    4520:	68 19 01 00 00       	push   $0x119
    4525:	68 c0 d5 00 00       	push   $0xd5c0
    452a:	68 c0 d5 00 00       	push   $0xd5c0
    452f:	68 72 d7 00 00       	push   $0xd772
    4534:	e8 c4 81 00 00       	call   c6fd <assertion_failure>
    4539:	83 c4 10             	add    $0x10,%esp
    453c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    453f:	8b 40 78             	mov    0x78(%eax),%eax
    4542:	85 c0                	test   %eax,%eax
    4544:	74 1c                	je     4562 <msg_send+0x278>
    4546:	68 1a 01 00 00       	push   $0x11a
    454b:	68 c0 d5 00 00       	push   $0xd5c0
    4550:	68 c0 d5 00 00       	push   $0xd5c0
    4555:	68 87 d7 00 00       	push   $0xd787
    455a:	e8 9e 81 00 00       	call   c6fd <assertion_failure>
    455f:	83 c4 10             	add    $0x10,%esp
    4562:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4565:	8b 40 7c             	mov    0x7c(%eax),%eax
    4568:	83 f8 39             	cmp    $0x39,%eax
    456b:	74 1c                	je     4589 <msg_send+0x29f>
    456d:	68 1b 01 00 00       	push   $0x11b
    4572:	68 c0 d5 00 00       	push   $0xd5c0
    4577:	68 c0 d5 00 00       	push   $0xd5c0
    457c:	68 9a d7 00 00       	push   $0xd79a
    4581:	e8 77 81 00 00       	call   c6fd <assertion_failure>
    4586:	83 c4 10             	add    $0x10,%esp
    4589:	8b 45 f0             	mov    -0x10(%ebp),%eax
    458c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4592:	83 f8 39             	cmp    $0x39,%eax
    4595:	0f 84 75 01 00 00    	je     4710 <msg_send+0x426>
    459b:	68 1c 01 00 00       	push   $0x11c
    45a0:	68 c0 d5 00 00       	push   $0xd5c0
    45a5:	68 c0 d5 00 00       	push   $0xd5c0
    45aa:	68 b8 d7 00 00       	push   $0xd7b8
    45af:	e8 49 81 00 00       	call   c6fd <assertion_failure>
    45b4:	83 c4 10             	add    $0x10,%esp
    45b7:	e9 54 01 00 00       	jmp    4710 <msg_send+0x426>
    45bc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    45bf:	8b 40 74             	mov    0x74(%eax),%eax
    45c2:	83 c8 02             	or     $0x2,%eax
    45c5:	89 c2                	mov    %eax,%edx
    45c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    45ca:	89 50 74             	mov    %edx,0x74(%eax)
    45cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
    45d0:	8b 40 74             	mov    0x74(%eax),%eax
    45d3:	83 f8 02             	cmp    $0x2,%eax
    45d6:	74 1c                	je     45f4 <msg_send+0x30a>
    45d8:	68 20 01 00 00       	push   $0x120
    45dd:	68 c0 d5 00 00       	push   $0xd5c0
    45e2:	68 c0 d5 00 00       	push   $0xd5c0
    45e7:	68 d4 d7 00 00       	push   $0xd7d4
    45ec:	e8 0c 81 00 00       	call   c6fd <assertion_failure>
    45f1:	83 c4 10             	add    $0x10,%esp
    45f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    45f7:	8b 55 0c             	mov    0xc(%ebp),%edx
    45fa:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
    4600:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4603:	8b 55 10             	mov    0x10(%ebp),%edx
    4606:	89 50 78             	mov    %edx,0x78(%eax)
    4609:	8b 45 ec             	mov    -0x14(%ebp),%eax
    460c:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4612:	85 c0                	test   %eax,%eax
    4614:	74 35                	je     464b <msg_send+0x361>
    4616:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4619:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    461f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4622:	eb 0c                	jmp    4630 <msg_send+0x346>
    4624:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4627:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    462d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4630:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4633:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4639:	85 c0                	test   %eax,%eax
    463b:	75 e7                	jne    4624 <msg_send+0x33a>
    463d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4640:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4643:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    4649:	eb 0c                	jmp    4657 <msg_send+0x36d>
    464b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    464e:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4651:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
    4657:	8b 45 f0             	mov    -0x10(%ebp),%eax
    465a:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4661:	00 00 00 
    4664:	83 ec 0c             	sub    $0xc,%esp
    4667:	ff 75 f0             	pushl  -0x10(%ebp)
    466a:	e8 14 fb ff ff       	call   4183 <block>
    466f:	83 c4 10             	add    $0x10,%esp
    4672:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4675:	8b 40 74             	mov    0x74(%eax),%eax
    4678:	83 f8 02             	cmp    $0x2,%eax
    467b:	74 1c                	je     4699 <msg_send+0x3af>
    467d:	68 33 01 00 00       	push   $0x133
    4682:	68 c0 d5 00 00       	push   $0xd5c0
    4687:	68 c0 d5 00 00       	push   $0xd5c0
    468c:	68 d4 d7 00 00       	push   $0xd7d4
    4691:	e8 67 80 00 00       	call   c6fd <assertion_failure>
    4696:	83 c4 10             	add    $0x10,%esp
    4699:	8b 45 f0             	mov    -0x10(%ebp),%eax
    469c:	8b 40 78             	mov    0x78(%eax),%eax
    469f:	85 c0                	test   %eax,%eax
    46a1:	75 1c                	jne    46bf <msg_send+0x3d5>
    46a3:	68 34 01 00 00       	push   $0x134
    46a8:	68 c0 d5 00 00       	push   $0xd5c0
    46ad:	68 c0 d5 00 00       	push   $0xd5c0
    46b2:	68 ef d7 00 00       	push   $0xd7ef
    46b7:	e8 41 80 00 00       	call   c6fd <assertion_failure>
    46bc:	83 c4 10             	add    $0x10,%esp
    46bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    46c2:	8b 40 7c             	mov    0x7c(%eax),%eax
    46c5:	83 f8 39             	cmp    $0x39,%eax
    46c8:	74 1c                	je     46e6 <msg_send+0x3fc>
    46ca:	68 35 01 00 00       	push   $0x135
    46cf:	68 c0 d5 00 00       	push   $0xd5c0
    46d4:	68 c0 d5 00 00       	push   $0xd5c0
    46d9:	68 9a d7 00 00       	push   $0xd79a
    46de:	e8 1a 80 00 00       	call   c6fd <assertion_failure>
    46e3:	83 c4 10             	add    $0x10,%esp
    46e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    46e9:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    46ef:	39 45 0c             	cmp    %eax,0xc(%ebp)
    46f2:	74 1c                	je     4710 <msg_send+0x426>
    46f4:	68 36 01 00 00       	push   $0x136
    46f9:	68 c0 d5 00 00       	push   $0xd5c0
    46fe:	68 c0 d5 00 00       	push   $0xd5c0
    4703:	68 02 d8 00 00       	push   $0xd802
    4708:	e8 f0 7f 00 00       	call   c6fd <assertion_failure>
    470d:	83 c4 10             	add    $0x10,%esp
    4710:	b8 00 00 00 00       	mov    $0x0,%eax
    4715:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4718:	c9                   	leave  
    4719:	c3                   	ret    

0000471a <msg_receive>:
    471a:	55                   	push   %ebp
    471b:	89 e5                	mov    %esp,%ebp
    471d:	53                   	push   %ebx
    471e:	83 ec 54             	sub    $0x54,%esp
    4721:	8b 45 08             	mov    0x8(%ebp),%eax
    4724:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    4727:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    472e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    4735:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    473c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    473f:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4744:	c1 f8 03             	sar    $0x3,%eax
    4747:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    474d:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4750:	75 1c                	jne    476e <msg_receive+0x54>
    4752:	68 57 01 00 00       	push   $0x157
    4757:	68 c0 d5 00 00       	push   $0xd5c0
    475c:	68 c0 d5 00 00       	push   $0xd5c0
    4761:	68 1c d8 00 00       	push   $0xd81c
    4766:	e8 92 7f 00 00       	call   c6fd <assertion_failure>
    476b:	83 c4 10             	add    $0x10,%esp
    476e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4771:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4777:	85 c0                	test   %eax,%eax
    4779:	0f 84 39 01 00 00    	je     48b8 <msg_receive+0x19e>
    477f:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    4783:	74 0a                	je     478f <msg_receive+0x75>
    4785:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    4789:	0f 85 29 01 00 00    	jne    48b8 <msg_receive+0x19e>
    478f:	83 ec 0c             	sub    $0xc,%esp
    4792:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    4795:	50                   	push   %eax
    4796:	e8 cd f9 ff ff       	call   4168 <reset_msg>
    479b:	83 c4 10             	add    $0x10,%esp
    479e:	c7 45 b4 f6 ff ff ff 	movl   $0xfffffff6,-0x4c(%ebp)
    47a5:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
    47ac:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    47b0:	75 1c                	jne    47ce <msg_receive+0xb4>
    47b2:	68 64 01 00 00       	push   $0x164
    47b7:	68 c0 d5 00 00       	push   $0xd5c0
    47bc:	68 c0 d5 00 00       	push   $0xd5c0
    47c1:	68 0e d7 00 00       	push   $0xd70e
    47c6:	e8 32 7f 00 00       	call   c6fd <assertion_failure>
    47cb:	83 c4 10             	add    $0x10,%esp
    47ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    47d1:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    47d6:	c1 f8 03             	sar    $0x3,%eax
    47d9:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    47df:	83 ec 08             	sub    $0x8,%esp
    47e2:	ff 75 10             	pushl  0x10(%ebp)
    47e5:	50                   	push   %eax
    47e6:	e8 1c f9 ff ff       	call   4107 <va2la>
    47eb:	83 c4 10             	add    $0x10,%esp
    47ee:	89 c2                	mov    %eax,%edx
    47f0:	83 ec 04             	sub    $0x4,%esp
    47f3:	6a 30                	push   $0x30
    47f5:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    47f8:	50                   	push   %eax
    47f9:	52                   	push   %edx
    47fa:	e8 71 7c 00 00       	call   c470 <memcpy>
    47ff:	83 c4 10             	add    $0x10,%esp
    4802:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4805:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    480c:	00 00 00 
    480f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4812:	8b 40 74             	mov    0x74(%eax),%eax
    4815:	85 c0                	test   %eax,%eax
    4817:	74 1c                	je     4835 <msg_receive+0x11b>
    4819:	68 6b 01 00 00       	push   $0x16b
    481e:	68 c0 d5 00 00       	push   $0xd5c0
    4823:	68 c0 d5 00 00       	push   $0xd5c0
    4828:	68 40 d8 00 00       	push   $0xd840
    482d:	e8 cb 7e 00 00       	call   c6fd <assertion_failure>
    4832:	83 c4 10             	add    $0x10,%esp
    4835:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4838:	8b 40 78             	mov    0x78(%eax),%eax
    483b:	85 c0                	test   %eax,%eax
    483d:	74 1c                	je     485b <msg_receive+0x141>
    483f:	68 6c 01 00 00       	push   $0x16c
    4844:	68 c0 d5 00 00       	push   $0xd5c0
    4849:	68 c0 d5 00 00       	push   $0xd5c0
    484e:	68 5f d8 00 00       	push   $0xd85f
    4853:	e8 a5 7e 00 00       	call   c6fd <assertion_failure>
    4858:	83 c4 10             	add    $0x10,%esp
    485b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    485e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4864:	83 f8 39             	cmp    $0x39,%eax
    4867:	74 1c                	je     4885 <msg_receive+0x16b>
    4869:	68 6d 01 00 00       	push   $0x16d
    486e:	68 c0 d5 00 00       	push   $0xd5c0
    4873:	68 c0 d5 00 00       	push   $0xd5c0
    4878:	68 7c d8 00 00       	push   $0xd87c
    487d:	e8 7b 7e 00 00       	call   c6fd <assertion_failure>
    4882:	83 c4 10             	add    $0x10,%esp
    4885:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4888:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    488e:	85 c0                	test   %eax,%eax
    4890:	74 1c                	je     48ae <msg_receive+0x194>
    4892:	68 6e 01 00 00       	push   $0x16e
    4897:	68 c0 d5 00 00       	push   $0xd5c0
    489c:	68 c0 d5 00 00       	push   $0xd5c0
    48a1:	68 a4 d8 00 00       	push   $0xd8a4
    48a6:	e8 52 7e 00 00       	call   c6fd <assertion_failure>
    48ab:	83 c4 10             	add    $0x10,%esp
    48ae:	b8 00 00 00 00       	mov    $0x0,%eax
    48b3:	e9 7d 06 00 00       	jmp    4f35 <msg_receive+0x81b>
    48b8:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    48bc:	0f 85 a2 01 00 00    	jne    4a64 <msg_receive+0x34a>
    48c2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    48c5:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    48cb:	85 c0                	test   %eax,%eax
    48cd:	0f 84 f0 03 00 00    	je     4cc3 <msg_receive+0x5a9>
    48d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    48d6:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    48dc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    48df:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    48e6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    48e9:	8b 40 74             	mov    0x74(%eax),%eax
    48ec:	85 c0                	test   %eax,%eax
    48ee:	74 1c                	je     490c <msg_receive+0x1f2>
    48f0:	68 7e 01 00 00       	push   $0x17e
    48f5:	68 c0 d5 00 00       	push   $0xd5c0
    48fa:	68 c0 d5 00 00       	push   $0xd5c0
    48ff:	68 40 d8 00 00       	push   $0xd840
    4904:	e8 f4 7d 00 00       	call   c6fd <assertion_failure>
    4909:	83 c4 10             	add    $0x10,%esp
    490c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    490f:	8b 40 78             	mov    0x78(%eax),%eax
    4912:	85 c0                	test   %eax,%eax
    4914:	74 1c                	je     4932 <msg_receive+0x218>
    4916:	68 7f 01 00 00       	push   $0x17f
    491b:	68 c0 d5 00 00       	push   $0xd5c0
    4920:	68 c0 d5 00 00       	push   $0xd5c0
    4925:	68 5f d8 00 00       	push   $0xd85f
    492a:	e8 ce 7d 00 00       	call   c6fd <assertion_failure>
    492f:	83 c4 10             	add    $0x10,%esp
    4932:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4935:	8b 40 7c             	mov    0x7c(%eax),%eax
    4938:	83 f8 39             	cmp    $0x39,%eax
    493b:	74 1c                	je     4959 <msg_receive+0x23f>
    493d:	68 80 01 00 00       	push   $0x180
    4942:	68 c0 d5 00 00       	push   $0xd5c0
    4947:	68 c0 d5 00 00       	push   $0xd5c0
    494c:	68 c8 d8 00 00       	push   $0xd8c8
    4951:	e8 a7 7d 00 00       	call   c6fd <assertion_failure>
    4956:	83 c4 10             	add    $0x10,%esp
    4959:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    495c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4962:	83 f8 39             	cmp    $0x39,%eax
    4965:	74 1c                	je     4983 <msg_receive+0x269>
    4967:	68 81 01 00 00       	push   $0x181
    496c:	68 c0 d5 00 00       	push   $0xd5c0
    4971:	68 c0 d5 00 00       	push   $0xd5c0
    4976:	68 7c d8 00 00       	push   $0xd87c
    497b:	e8 7d 7d 00 00       	call   c6fd <assertion_failure>
    4980:	83 c4 10             	add    $0x10,%esp
    4983:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4986:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    498c:	85 c0                	test   %eax,%eax
    498e:	75 1c                	jne    49ac <msg_receive+0x292>
    4990:	68 82 01 00 00       	push   $0x182
    4995:	68 c0 d5 00 00       	push   $0xd5c0
    499a:	68 c0 d5 00 00       	push   $0xd5c0
    499f:	68 f0 d8 00 00       	push   $0xd8f0
    49a4:	e8 54 7d 00 00       	call   c6fd <assertion_failure>
    49a9:	83 c4 10             	add    $0x10,%esp
    49ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49af:	8b 40 74             	mov    0x74(%eax),%eax
    49b2:	83 f8 02             	cmp    $0x2,%eax
    49b5:	74 1c                	je     49d3 <msg_receive+0x2b9>
    49b7:	68 83 01 00 00       	push   $0x183
    49bc:	68 c0 d5 00 00       	push   $0xd5c0
    49c1:	68 c0 d5 00 00       	push   $0xd5c0
    49c6:	68 11 d9 00 00       	push   $0xd911
    49cb:	e8 2d 7d 00 00       	call   c6fd <assertion_failure>
    49d0:	83 c4 10             	add    $0x10,%esp
    49d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49d6:	8b 40 78             	mov    0x78(%eax),%eax
    49d9:	85 c0                	test   %eax,%eax
    49db:	75 1c                	jne    49f9 <msg_receive+0x2df>
    49dd:	68 84 01 00 00       	push   $0x184
    49e2:	68 c0 d5 00 00       	push   $0xd5c0
    49e7:	68 c0 d5 00 00       	push   $0xd5c0
    49ec:	68 2c d9 00 00       	push   $0xd92c
    49f1:	e8 07 7d 00 00       	call   c6fd <assertion_failure>
    49f6:	83 c4 10             	add    $0x10,%esp
    49f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49fc:	8b 40 7c             	mov    0x7c(%eax),%eax
    49ff:	83 f8 39             	cmp    $0x39,%eax
    4a02:	74 1c                	je     4a20 <msg_receive+0x306>
    4a04:	68 85 01 00 00       	push   $0x185
    4a09:	68 c0 d5 00 00       	push   $0xd5c0
    4a0e:	68 c0 d5 00 00       	push   $0xd5c0
    4a13:	68 3f d9 00 00       	push   $0xd93f
    4a18:	e8 e0 7c 00 00       	call   c6fd <assertion_failure>
    4a1d:	83 c4 10             	add    $0x10,%esp
    4a20:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a23:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4a29:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4a2c:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4a32:	c1 fa 03             	sar    $0x3,%edx
    4a35:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4a3b:	39 d0                	cmp    %edx,%eax
    4a3d:	0f 84 80 02 00 00    	je     4cc3 <msg_receive+0x5a9>
    4a43:	68 86 01 00 00       	push   $0x186
    4a48:	68 c0 d5 00 00       	push   $0xd5c0
    4a4d:	68 c0 d5 00 00       	push   $0xd5c0
    4a52:	68 60 d9 00 00       	push   $0xd960
    4a57:	e8 a1 7c 00 00       	call   c6fd <assertion_failure>
    4a5c:	83 c4 10             	add    $0x10,%esp
    4a5f:	e9 5f 02 00 00       	jmp    4cc3 <msg_receive+0x5a9>
    4a64:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    4a68:	0f 88 55 02 00 00    	js     4cc3 <msg_receive+0x5a9>
    4a6e:	83 7d 0c 24          	cmpl   $0x24,0xc(%ebp)
    4a72:	0f 8f 4b 02 00 00    	jg     4cc3 <msg_receive+0x5a9>
    4a78:	8b 45 0c             	mov    0xc(%ebp),%eax
    4a7b:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4a81:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4a86:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4a89:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a8c:	8b 40 74             	mov    0x74(%eax),%eax
    4a8f:	83 e0 02             	and    $0x2,%eax
    4a92:	85 c0                	test   %eax,%eax
    4a94:	0f 84 29 02 00 00    	je     4cc3 <msg_receive+0x5a9>
    4a9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a9d:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4aa3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4aa6:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4aac:	c1 fa 03             	sar    $0x3,%edx
    4aaf:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4ab5:	39 d0                	cmp    %edx,%eax
    4ab7:	0f 85 06 02 00 00    	jne    4cc3 <msg_receive+0x5a9>
    4abd:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    4ac4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ac7:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4acd:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4ad0:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    4ad4:	75 6f                	jne    4b45 <msg_receive+0x42b>
    4ad6:	68 98 01 00 00       	push   $0x198
    4adb:	68 c0 d5 00 00       	push   $0xd5c0
    4ae0:	68 c0 d5 00 00       	push   $0xd5c0
    4ae5:	68 8f d9 00 00       	push   $0xd98f
    4aea:	e8 0e 7c 00 00       	call   c6fd <assertion_failure>
    4aef:	83 c4 10             	add    $0x10,%esp
    4af2:	eb 51                	jmp    4b45 <msg_receive+0x42b>
    4af4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4af7:	8b 40 74             	mov    0x74(%eax),%eax
    4afa:	83 e0 02             	and    $0x2,%eax
    4afd:	85 c0                	test   %eax,%eax
    4aff:	75 1c                	jne    4b1d <msg_receive+0x403>
    4b01:	68 9d 01 00 00       	push   $0x19d
    4b06:	68 c0 d5 00 00       	push   $0xd5c0
    4b0b:	68 c0 d5 00 00       	push   $0xd5c0
    4b10:	68 91 d9 00 00       	push   $0xd991
    4b15:	e8 e3 7b 00 00       	call   c6fd <assertion_failure>
    4b1a:	83 c4 10             	add    $0x10,%esp
    4b1d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4b20:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4b25:	c1 f8 03             	sar    $0x3,%eax
    4b28:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4b2e:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4b31:	74 1a                	je     4b4d <msg_receive+0x433>
    4b33:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4b36:	89 45 f0             	mov    %eax,-0x10(%ebp)
    4b39:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4b3c:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4b42:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4b45:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    4b49:	75 a9                	jne    4af4 <msg_receive+0x3da>
    4b4b:	eb 01                	jmp    4b4e <msg_receive+0x434>
    4b4d:	90                   	nop
    4b4e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b51:	8b 40 74             	mov    0x74(%eax),%eax
    4b54:	85 c0                	test   %eax,%eax
    4b56:	74 1c                	je     4b74 <msg_receive+0x45a>
    4b58:	68 a6 01 00 00       	push   $0x1a6
    4b5d:	68 c0 d5 00 00       	push   $0xd5c0
    4b62:	68 c0 d5 00 00       	push   $0xd5c0
    4b67:	68 40 d8 00 00       	push   $0xd840
    4b6c:	e8 8c 7b 00 00       	call   c6fd <assertion_failure>
    4b71:	83 c4 10             	add    $0x10,%esp
    4b74:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b77:	8b 40 78             	mov    0x78(%eax),%eax
    4b7a:	85 c0                	test   %eax,%eax
    4b7c:	74 1c                	je     4b9a <msg_receive+0x480>
    4b7e:	68 a7 01 00 00       	push   $0x1a7
    4b83:	68 c0 d5 00 00       	push   $0xd5c0
    4b88:	68 c0 d5 00 00       	push   $0xd5c0
    4b8d:	68 5f d8 00 00       	push   $0xd85f
    4b92:	e8 66 7b 00 00       	call   c6fd <assertion_failure>
    4b97:	83 c4 10             	add    $0x10,%esp
    4b9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b9d:	8b 40 7c             	mov    0x7c(%eax),%eax
    4ba0:	83 f8 39             	cmp    $0x39,%eax
    4ba3:	74 1c                	je     4bc1 <msg_receive+0x4a7>
    4ba5:	68 a8 01 00 00       	push   $0x1a8
    4baa:	68 c0 d5 00 00       	push   $0xd5c0
    4baf:	68 c0 d5 00 00       	push   $0xd5c0
    4bb4:	68 c8 d8 00 00       	push   $0xd8c8
    4bb9:	e8 3f 7b 00 00       	call   c6fd <assertion_failure>
    4bbe:	83 c4 10             	add    $0x10,%esp
    4bc1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bc4:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4bca:	83 f8 39             	cmp    $0x39,%eax
    4bcd:	74 1c                	je     4beb <msg_receive+0x4d1>
    4bcf:	68 a9 01 00 00       	push   $0x1a9
    4bd4:	68 c0 d5 00 00       	push   $0xd5c0
    4bd9:	68 c0 d5 00 00       	push   $0xd5c0
    4bde:	68 7c d8 00 00       	push   $0xd87c
    4be3:	e8 15 7b 00 00       	call   c6fd <assertion_failure>
    4be8:	83 c4 10             	add    $0x10,%esp
    4beb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bee:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4bf4:	85 c0                	test   %eax,%eax
    4bf6:	75 1c                	jne    4c14 <msg_receive+0x4fa>
    4bf8:	68 aa 01 00 00       	push   $0x1aa
    4bfd:	68 c0 d5 00 00       	push   $0xd5c0
    4c02:	68 c0 d5 00 00       	push   $0xd5c0
    4c07:	68 f0 d8 00 00       	push   $0xd8f0
    4c0c:	e8 ec 7a 00 00       	call   c6fd <assertion_failure>
    4c11:	83 c4 10             	add    $0x10,%esp
    4c14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c17:	8b 40 74             	mov    0x74(%eax),%eax
    4c1a:	83 f8 02             	cmp    $0x2,%eax
    4c1d:	74 1c                	je     4c3b <msg_receive+0x521>
    4c1f:	68 ab 01 00 00       	push   $0x1ab
    4c24:	68 c0 d5 00 00       	push   $0xd5c0
    4c29:	68 c0 d5 00 00       	push   $0xd5c0
    4c2e:	68 11 d9 00 00       	push   $0xd911
    4c33:	e8 c5 7a 00 00       	call   c6fd <assertion_failure>
    4c38:	83 c4 10             	add    $0x10,%esp
    4c3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c3e:	8b 40 78             	mov    0x78(%eax),%eax
    4c41:	85 c0                	test   %eax,%eax
    4c43:	75 1c                	jne    4c61 <msg_receive+0x547>
    4c45:	68 ac 01 00 00       	push   $0x1ac
    4c4a:	68 c0 d5 00 00       	push   $0xd5c0
    4c4f:	68 c0 d5 00 00       	push   $0xd5c0
    4c54:	68 2c d9 00 00       	push   $0xd92c
    4c59:	e8 9f 7a 00 00       	call   c6fd <assertion_failure>
    4c5e:	83 c4 10             	add    $0x10,%esp
    4c61:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c64:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c67:	83 f8 39             	cmp    $0x39,%eax
    4c6a:	74 1c                	je     4c88 <msg_receive+0x56e>
    4c6c:	68 ad 01 00 00       	push   $0x1ad
    4c71:	68 c0 d5 00 00       	push   $0xd5c0
    4c76:	68 c0 d5 00 00       	push   $0xd5c0
    4c7b:	68 3f d9 00 00       	push   $0xd93f
    4c80:	e8 78 7a 00 00       	call   c6fd <assertion_failure>
    4c85:	83 c4 10             	add    $0x10,%esp
    4c88:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c8b:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4c91:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4c94:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4c9a:	c1 fa 03             	sar    $0x3,%edx
    4c9d:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4ca3:	39 d0                	cmp    %edx,%eax
    4ca5:	74 1c                	je     4cc3 <msg_receive+0x5a9>
    4ca7:	68 ae 01 00 00       	push   $0x1ae
    4cac:	68 c0 d5 00 00       	push   $0xd5c0
    4cb1:	68 c0 d5 00 00       	push   $0xd5c0
    4cb6:	68 60 d9 00 00       	push   $0xd960
    4cbb:	e8 3d 7a 00 00       	call   c6fd <assertion_failure>
    4cc0:	83 c4 10             	add    $0x10,%esp
    4cc3:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    4cc7:	0f 84 6b 01 00 00    	je     4e38 <msg_receive+0x71e>
    4ccd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cd0:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4cd6:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4cd9:	75 43                	jne    4d1e <msg_receive+0x604>
    4cdb:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4cdf:	74 1c                	je     4cfd <msg_receive+0x5e3>
    4ce1:	68 b9 01 00 00       	push   $0x1b9
    4ce6:	68 c0 d5 00 00       	push   $0xd5c0
    4ceb:	68 c0 d5 00 00       	push   $0xd5c0
    4cf0:	68 ab d9 00 00       	push   $0xd9ab
    4cf5:	e8 03 7a 00 00       	call   c6fd <assertion_failure>
    4cfa:	83 c4 10             	add    $0x10,%esp
    4cfd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d00:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
    4d06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4d09:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
    4d0f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d12:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4d19:	00 00 00 
    4d1c:	eb 41                	jmp    4d5f <msg_receive+0x645>
    4d1e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4d22:	75 1c                	jne    4d40 <msg_receive+0x626>
    4d24:	68 be 01 00 00       	push   $0x1be
    4d29:	68 c0 d5 00 00       	push   $0xd5c0
    4d2e:	68 c0 d5 00 00       	push   $0xd5c0
    4d33:	68 b5 d9 00 00       	push   $0xd9b5
    4d38:	e8 c0 79 00 00       	call   c6fd <assertion_failure>
    4d3d:	83 c4 10             	add    $0x10,%esp
    4d40:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d43:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
    4d49:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4d4c:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    4d52:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d55:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4d5c:	00 00 00 
    4d5f:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4d63:	75 1c                	jne    4d81 <msg_receive+0x667>
    4d65:	68 c3 01 00 00       	push   $0x1c3
    4d6a:	68 c0 d5 00 00       	push   $0xd5c0
    4d6f:	68 c0 d5 00 00       	push   $0xd5c0
    4d74:	68 0e d7 00 00       	push   $0xd70e
    4d79:	e8 7f 79 00 00       	call   c6fd <assertion_failure>
    4d7e:	83 c4 10             	add    $0x10,%esp
    4d81:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d84:	8b 40 78             	mov    0x78(%eax),%eax
    4d87:	85 c0                	test   %eax,%eax
    4d89:	75 1c                	jne    4da7 <msg_receive+0x68d>
    4d8b:	68 c4 01 00 00       	push   $0x1c4
    4d90:	68 c0 d5 00 00       	push   $0xd5c0
    4d95:	68 c0 d5 00 00       	push   $0xd5c0
    4d9a:	68 ba d9 00 00       	push   $0xd9ba
    4d9f:	e8 59 79 00 00       	call   c6fd <assertion_failure>
    4da4:	83 c4 10             	add    $0x10,%esp
    4da7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4daa:	8b 40 78             	mov    0x78(%eax),%eax
    4dad:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4db0:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4db6:	c1 fa 03             	sar    $0x3,%edx
    4db9:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4dbf:	83 ec 08             	sub    $0x8,%esp
    4dc2:	50                   	push   %eax
    4dc3:	52                   	push   %edx
    4dc4:	e8 3e f3 ff ff       	call   4107 <va2la>
    4dc9:	83 c4 10             	add    $0x10,%esp
    4dcc:	89 c3                	mov    %eax,%ebx
    4dce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4dd1:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4dd6:	c1 f8 03             	sar    $0x3,%eax
    4dd9:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4ddf:	83 ec 08             	sub    $0x8,%esp
    4de2:	ff 75 10             	pushl  0x10(%ebp)
    4de5:	50                   	push   %eax
    4de6:	e8 1c f3 ff ff       	call   4107 <va2la>
    4deb:	83 c4 10             	add    $0x10,%esp
    4dee:	83 ec 04             	sub    $0x4,%esp
    4df1:	6a 30                	push   $0x30
    4df3:	53                   	push   %ebx
    4df4:	50                   	push   %eax
    4df5:	e8 76 76 00 00       	call   c470 <memcpy>
    4dfa:	83 c4 10             	add    $0x10,%esp
    4dfd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e00:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4e07:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e0a:	c7 80 80 00 00 00 39 	movl   $0x39,0x80(%eax)
    4e11:	00 00 00 
    4e14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e17:	8b 40 74             	mov    0x74(%eax),%eax
    4e1a:	83 e0 fd             	and    $0xfffffffd,%eax
    4e1d:	89 c2                	mov    %eax,%edx
    4e1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e22:	89 50 74             	mov    %edx,0x74(%eax)
    4e25:	83 ec 0c             	sub    $0xc,%esp
    4e28:	ff 75 f4             	pushl  -0xc(%ebp)
    4e2b:	e8 87 f3 ff ff       	call   41b7 <unblock>
    4e30:	83 c4 10             	add    $0x10,%esp
    4e33:	e9 f8 00 00 00       	jmp    4f30 <msg_receive+0x816>
    4e38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e3b:	8b 40 74             	mov    0x74(%eax),%eax
    4e3e:	83 c8 04             	or     $0x4,%eax
    4e41:	89 c2                	mov    %eax,%edx
    4e43:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e46:	89 50 74             	mov    %edx,0x74(%eax)
    4e49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e4c:	8b 55 10             	mov    0x10(%ebp),%edx
    4e4f:	89 50 78             	mov    %edx,0x78(%eax)
    4e52:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e55:	8b 55 0c             	mov    0xc(%ebp),%edx
    4e58:	89 50 7c             	mov    %edx,0x7c(%eax)
    4e5b:	83 ec 0c             	sub    $0xc,%esp
    4e5e:	ff 75 e4             	pushl  -0x1c(%ebp)
    4e61:	e8 1d f3 ff ff       	call   4183 <block>
    4e66:	83 c4 10             	add    $0x10,%esp
    4e69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e6c:	8b 40 74             	mov    0x74(%eax),%eax
    4e6f:	83 f8 04             	cmp    $0x4,%eax
    4e72:	74 1c                	je     4e90 <msg_receive+0x776>
    4e74:	68 da 01 00 00       	push   $0x1da
    4e79:	68 c0 d5 00 00       	push   $0xd5c0
    4e7e:	68 c0 d5 00 00       	push   $0xd5c0
    4e83:	68 c8 d9 00 00       	push   $0xd9c8
    4e88:	e8 70 78 00 00       	call   c6fd <assertion_failure>
    4e8d:	83 c4 10             	add    $0x10,%esp
    4e90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e93:	8b 40 78             	mov    0x78(%eax),%eax
    4e96:	85 c0                	test   %eax,%eax
    4e98:	75 1c                	jne    4eb6 <msg_receive+0x79c>
    4e9a:	68 db 01 00 00       	push   $0x1db
    4e9f:	68 c0 d5 00 00       	push   $0xd5c0
    4ea4:	68 c0 d5 00 00       	push   $0xd5c0
    4ea9:	68 ef d9 00 00       	push   $0xd9ef
    4eae:	e8 4a 78 00 00       	call   c6fd <assertion_failure>
    4eb3:	83 c4 10             	add    $0x10,%esp
    4eb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4eb9:	8b 40 7c             	mov    0x7c(%eax),%eax
    4ebc:	83 f8 39             	cmp    $0x39,%eax
    4ebf:	75 1c                	jne    4edd <msg_receive+0x7c3>
    4ec1:	68 dc 01 00 00       	push   $0x1dc
    4ec6:	68 c0 d5 00 00       	push   $0xd5c0
    4ecb:	68 c0 d5 00 00       	push   $0xd5c0
    4ed0:	68 0c da 00 00       	push   $0xda0c
    4ed5:	e8 23 78 00 00       	call   c6fd <assertion_failure>
    4eda:	83 c4 10             	add    $0x10,%esp
    4edd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ee0:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4ee6:	83 f8 39             	cmp    $0x39,%eax
    4ee9:	74 1c                	je     4f07 <msg_receive+0x7ed>
    4eeb:	68 dd 01 00 00       	push   $0x1dd
    4ef0:	68 c0 d5 00 00       	push   $0xd5c0
    4ef5:	68 c0 d5 00 00       	push   $0xd5c0
    4efa:	68 7c d8 00 00       	push   $0xd87c
    4eff:	e8 f9 77 00 00       	call   c6fd <assertion_failure>
    4f04:	83 c4 10             	add    $0x10,%esp
    4f07:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4f0a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4f10:	85 c0                	test   %eax,%eax
    4f12:	74 1c                	je     4f30 <msg_receive+0x816>
    4f14:	68 de 01 00 00       	push   $0x1de
    4f19:	68 c0 d5 00 00       	push   $0xd5c0
    4f1e:	68 c0 d5 00 00       	push   $0xd5c0
    4f23:	68 a4 d8 00 00       	push   $0xd8a4
    4f28:	e8 d0 77 00 00       	call   c6fd <assertion_failure>
    4f2d:	83 c4 10             	add    $0x10,%esp
    4f30:	b8 00 00 00 00       	mov    $0x0,%eax
    4f35:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4f38:	c9                   	leave  
    4f39:	c3                   	ret    

00004f3a <inform_int>:
    4f3a:	55                   	push   %ebp
    4f3b:	89 e5                	mov    %esp,%ebp
    4f3d:	83 ec 18             	sub    $0x18,%esp
    4f40:	8b 45 08             	mov    0x8(%ebp),%eax
    4f43:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4f49:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4f4e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4f51:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f54:	8b 40 74             	mov    0x74(%eax),%eax
    4f57:	83 e0 04             	and    $0x4,%eax
    4f5a:	85 c0                	test   %eax,%eax
    4f5c:	0f 84 38 01 00 00    	je     509a <inform_int+0x160>
    4f62:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f65:	8b 40 7c             	mov    0x7c(%eax),%eax
    4f68:	83 f8 f6             	cmp    $0xfffffff6,%eax
    4f6b:	74 0f                	je     4f7c <inform_int+0x42>
    4f6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f70:	8b 40 7c             	mov    0x7c(%eax),%eax
    4f73:	83 f8 2f             	cmp    $0x2f,%eax
    4f76:	0f 85 1e 01 00 00    	jne    509a <inform_int+0x160>
    4f7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f7f:	8b 40 78             	mov    0x78(%eax),%eax
    4f82:	c7 00 f6 ff ff ff    	movl   $0xfffffff6,(%eax)
    4f88:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f8b:	8b 40 78             	mov    0x78(%eax),%eax
    4f8e:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
    4f95:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f98:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4f9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4fa2:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    4fa9:	00 00 00 
    4fac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4faf:	8b 40 74             	mov    0x74(%eax),%eax
    4fb2:	83 e0 fb             	and    $0xfffffffb,%eax
    4fb5:	89 c2                	mov    %eax,%edx
    4fb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4fba:	89 50 74             	mov    %edx,0x74(%eax)
    4fbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4fc0:	c7 40 7c 39 00 00 00 	movl   $0x39,0x7c(%eax)
    4fc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4fca:	8b 40 74             	mov    0x74(%eax),%eax
    4fcd:	85 c0                	test   %eax,%eax
    4fcf:	74 1c                	je     4fed <inform_int+0xb3>
    4fd1:	68 f8 01 00 00       	push   $0x1f8
    4fd6:	68 c0 d5 00 00       	push   $0xd5c0
    4fdb:	68 c0 d5 00 00       	push   $0xd5c0
    4fe0:	68 ab d6 00 00       	push   $0xd6ab
    4fe5:	e8 13 77 00 00       	call   c6fd <assertion_failure>
    4fea:	83 c4 10             	add    $0x10,%esp
    4fed:	83 ec 0c             	sub    $0xc,%esp
    4ff0:	ff 75 f4             	pushl  -0xc(%ebp)
    4ff3:	e8 bf f1 ff ff       	call   41b7 <unblock>
    4ff8:	83 c4 10             	add    $0x10,%esp
    4ffb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ffe:	8b 40 74             	mov    0x74(%eax),%eax
    5001:	85 c0                	test   %eax,%eax
    5003:	74 1c                	je     5021 <inform_int+0xe7>
    5005:	68 fb 01 00 00       	push   $0x1fb
    500a:	68 c0 d5 00 00       	push   $0xd5c0
    500f:	68 c0 d5 00 00       	push   $0xd5c0
    5014:	68 ab d6 00 00       	push   $0xd6ab
    5019:	e8 df 76 00 00       	call   c6fd <assertion_failure>
    501e:	83 c4 10             	add    $0x10,%esp
    5021:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5024:	8b 40 78             	mov    0x78(%eax),%eax
    5027:	85 c0                	test   %eax,%eax
    5029:	74 1c                	je     5047 <inform_int+0x10d>
    502b:	68 fc 01 00 00       	push   $0x1fc
    5030:	68 c0 d5 00 00       	push   $0xd5c0
    5035:	68 c0 d5 00 00       	push   $0xd5c0
    503a:	68 34 da 00 00       	push   $0xda34
    503f:	e8 b9 76 00 00       	call   c6fd <assertion_failure>
    5044:	83 c4 10             	add    $0x10,%esp
    5047:	8b 45 f4             	mov    -0xc(%ebp),%eax
    504a:	8b 40 7c             	mov    0x7c(%eax),%eax
    504d:	83 f8 39             	cmp    $0x39,%eax
    5050:	74 1c                	je     506e <inform_int+0x134>
    5052:	68 fd 01 00 00       	push   $0x1fd
    5057:	68 c0 d5 00 00       	push   $0xd5c0
    505c:	68 c0 d5 00 00       	push   $0xd5c0
    5061:	68 42 da 00 00       	push   $0xda42
    5066:	e8 92 76 00 00       	call   c6fd <assertion_failure>
    506b:	83 c4 10             	add    $0x10,%esp
    506e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5071:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    5077:	83 f8 39             	cmp    $0x39,%eax
    507a:	74 2b                	je     50a7 <inform_int+0x16d>
    507c:	68 fe 01 00 00       	push   $0x1fe
    5081:	68 c0 d5 00 00       	push   $0xd5c0
    5086:	68 c0 d5 00 00       	push   $0xd5c0
    508b:	68 5b da 00 00       	push   $0xda5b
    5090:	e8 68 76 00 00       	call   c6fd <assertion_failure>
    5095:	83 c4 10             	add    $0x10,%esp
    5098:	eb 0d                	jmp    50a7 <inform_int+0x16d>
    509a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    509d:	c7 80 84 00 00 00 01 	movl   $0x1,0x84(%eax)
    50a4:	00 00 00 
    50a7:	90                   	nop
    50a8:	c9                   	leave  
    50a9:	c3                   	ret    

000050aa <dump_proc>:
    50aa:	55                   	push   %ebp
    50ab:	89 e5                	mov    %esp,%ebp
    50ad:	81 ec 18 04 00 00    	sub    $0x418,%esp
    50b3:	c7 45 f0 24 00 00 00 	movl   $0x24,-0x10(%ebp)
    50ba:	c7 45 ec 98 01 00 00 	movl   $0x198,-0x14(%ebp)
    50c1:	83 ec 08             	sub    $0x8,%esp
    50c4:	6a 0c                	push   $0xc
    50c6:	68 d4 03 00 00       	push   $0x3d4
    50cb:	e8 7d 15 00 00       	call   664d <out_byte>
    50d0:	83 c4 10             	add    $0x10,%esp
    50d3:	83 ec 08             	sub    $0x8,%esp
    50d6:	6a 00                	push   $0x0
    50d8:	68 d5 03 00 00       	push   $0x3d5
    50dd:	e8 6b 15 00 00       	call   664d <out_byte>
    50e2:	83 c4 10             	add    $0x10,%esp
    50e5:	83 ec 08             	sub    $0x8,%esp
    50e8:	6a 0d                	push   $0xd
    50ea:	68 d4 03 00 00       	push   $0x3d4
    50ef:	e8 59 15 00 00       	call   664d <out_byte>
    50f4:	83 c4 10             	add    $0x10,%esp
    50f7:	83 ec 08             	sub    $0x8,%esp
    50fa:	6a 00                	push   $0x0
    50fc:	68 d5 03 00 00       	push   $0x3d5
    5101:	e8 47 15 00 00       	call   664d <out_byte>
    5106:	83 c4 10             	add    $0x10,%esp
    5109:	8b 45 08             	mov    0x8(%ebp),%eax
    510c:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    5111:	c1 f8 03             	sar    $0x3,%eax
    5114:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    511a:	83 ec 04             	sub    $0x4,%esp
    511d:	50                   	push   %eax
    511e:	68 72 da 00 00       	push   $0xda72
    5123:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5129:	50                   	push   %eax
    512a:	e8 12 73 00 00       	call   c441 <sprintf>
    512f:	83 c4 10             	add    $0x10,%esp
    5132:	83 ec 08             	sub    $0x8,%esp
    5135:	ff 75 f0             	pushl  -0x10(%ebp)
    5138:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    513e:	50                   	push   %eax
    513f:	e8 ca 14 00 00       	call   660e <disp_color_str>
    5144:	83 c4 10             	add    $0x10,%esp
    5147:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    514e:	eb 3f                	jmp    518f <dump_proc+0xe5>
    5150:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5153:	8b 45 08             	mov    0x8(%ebp),%eax
    5156:	01 d0                	add    %edx,%eax
    5158:	0f b6 00             	movzbl (%eax),%eax
    515b:	0f b6 c0             	movzbl %al,%eax
    515e:	83 ec 04             	sub    $0x4,%esp
    5161:	50                   	push   %eax
    5162:	68 90 da 00 00       	push   $0xda90
    5167:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    516d:	50                   	push   %eax
    516e:	e8 ce 72 00 00       	call   c441 <sprintf>
    5173:	83 c4 10             	add    $0x10,%esp
    5176:	83 ec 08             	sub    $0x8,%esp
    5179:	ff 75 f0             	pushl  -0x10(%ebp)
    517c:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5182:	50                   	push   %eax
    5183:	e8 86 14 00 00       	call   660e <disp_color_str>
    5188:	83 c4 10             	add    $0x10,%esp
    518b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    518f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5192:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    5195:	7c b9                	jl     5150 <dump_proc+0xa6>
    5197:	83 ec 08             	sub    $0x8,%esp
    519a:	ff 75 f0             	pushl  -0x10(%ebp)
    519d:	68 94 da 00 00       	push   $0xda94
    51a2:	e8 67 14 00 00       	call   660e <disp_color_str>
    51a7:	83 c4 10             	add    $0x10,%esp
    51aa:	83 ec 04             	sub    $0x4,%esp
    51ad:	6a 2f                	push   $0x2f
    51af:	68 97 da 00 00       	push   $0xda97
    51b4:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51ba:	50                   	push   %eax
    51bb:	e8 81 72 00 00       	call   c441 <sprintf>
    51c0:	83 c4 10             	add    $0x10,%esp
    51c3:	83 ec 08             	sub    $0x8,%esp
    51c6:	ff 75 f0             	pushl  -0x10(%ebp)
    51c9:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51cf:	50                   	push   %eax
    51d0:	e8 39 14 00 00       	call   660e <disp_color_str>
    51d5:	83 c4 10             	add    $0x10,%esp
    51d8:	83 ec 04             	sub    $0x4,%esp
    51db:	6a 39                	push   $0x39
    51dd:	68 a3 da 00 00       	push   $0xdaa3
    51e2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51e8:	50                   	push   %eax
    51e9:	e8 53 72 00 00       	call   c441 <sprintf>
    51ee:	83 c4 10             	add    $0x10,%esp
    51f1:	83 ec 08             	sub    $0x8,%esp
    51f4:	ff 75 f0             	pushl  -0x10(%ebp)
    51f7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51fd:	50                   	push   %eax
    51fe:	e8 0b 14 00 00       	call   660e <disp_color_str>
    5203:	83 c4 10             	add    $0x10,%esp
    5206:	83 ec 08             	sub    $0x8,%esp
    5209:	ff 75 f0             	pushl  -0x10(%ebp)
    520c:	68 b3 da 00 00       	push   $0xdab3
    5211:	e8 f8 13 00 00       	call   660e <disp_color_str>
    5216:	83 c4 10             	add    $0x10,%esp
    5219:	8b 45 08             	mov    0x8(%ebp),%eax
    521c:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    5220:	0f b7 c0             	movzwl %ax,%eax
    5223:	83 ec 04             	sub    $0x4,%esp
    5226:	50                   	push   %eax
    5227:	68 b5 da 00 00       	push   $0xdab5
    522c:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5232:	50                   	push   %eax
    5233:	e8 09 72 00 00       	call   c441 <sprintf>
    5238:	83 c4 10             	add    $0x10,%esp
    523b:	83 ec 08             	sub    $0x8,%esp
    523e:	ff 75 f0             	pushl  -0x10(%ebp)
    5241:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5247:	50                   	push   %eax
    5248:	e8 c1 13 00 00       	call   660e <disp_color_str>
    524d:	83 c4 10             	add    $0x10,%esp
    5250:	8b 45 08             	mov    0x8(%ebp),%eax
    5253:	8b 40 5c             	mov    0x5c(%eax),%eax
    5256:	83 ec 04             	sub    $0x4,%esp
    5259:	50                   	push   %eax
    525a:	68 c6 da 00 00       	push   $0xdac6
    525f:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5265:	50                   	push   %eax
    5266:	e8 d6 71 00 00       	call   c441 <sprintf>
    526b:	83 c4 10             	add    $0x10,%esp
    526e:	83 ec 08             	sub    $0x8,%esp
    5271:	ff 75 f0             	pushl  -0x10(%ebp)
    5274:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    527a:	50                   	push   %eax
    527b:	e8 8e 13 00 00       	call   660e <disp_color_str>
    5280:	83 c4 10             	add    $0x10,%esp
    5283:	8b 45 08             	mov    0x8(%ebp),%eax
    5286:	8b 40 60             	mov    0x60(%eax),%eax
    5289:	83 ec 04             	sub    $0x4,%esp
    528c:	50                   	push   %eax
    528d:	68 d5 da 00 00       	push   $0xdad5
    5292:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5298:	50                   	push   %eax
    5299:	e8 a3 71 00 00       	call   c441 <sprintf>
    529e:	83 c4 10             	add    $0x10,%esp
    52a1:	83 ec 08             	sub    $0x8,%esp
    52a4:	ff 75 f0             	pushl  -0x10(%ebp)
    52a7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52ad:	50                   	push   %eax
    52ae:	e8 5b 13 00 00       	call   660e <disp_color_str>
    52b3:	83 c4 10             	add    $0x10,%esp
    52b6:	8b 45 08             	mov    0x8(%ebp),%eax
    52b9:	83 c0 64             	add    $0x64,%eax
    52bc:	83 ec 04             	sub    $0x4,%esp
    52bf:	50                   	push   %eax
    52c0:	68 e7 da 00 00       	push   $0xdae7
    52c5:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52cb:	50                   	push   %eax
    52cc:	e8 70 71 00 00       	call   c441 <sprintf>
    52d1:	83 c4 10             	add    $0x10,%esp
    52d4:	83 ec 08             	sub    $0x8,%esp
    52d7:	ff 75 f0             	pushl  -0x10(%ebp)
    52da:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52e0:	50                   	push   %eax
    52e1:	e8 28 13 00 00       	call   660e <disp_color_str>
    52e6:	83 c4 10             	add    $0x10,%esp
    52e9:	83 ec 08             	sub    $0x8,%esp
    52ec:	ff 75 f0             	pushl  -0x10(%ebp)
    52ef:	68 b3 da 00 00       	push   $0xdab3
    52f4:	e8 15 13 00 00       	call   660e <disp_color_str>
    52f9:	83 c4 10             	add    $0x10,%esp
    52fc:	8b 45 08             	mov    0x8(%ebp),%eax
    52ff:	8b 40 74             	mov    0x74(%eax),%eax
    5302:	83 ec 04             	sub    $0x4,%esp
    5305:	50                   	push   %eax
    5306:	68 f3 da 00 00       	push   $0xdaf3
    530b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5311:	50                   	push   %eax
    5312:	e8 2a 71 00 00       	call   c441 <sprintf>
    5317:	83 c4 10             	add    $0x10,%esp
    531a:	83 ec 08             	sub    $0x8,%esp
    531d:	ff 75 f0             	pushl  -0x10(%ebp)
    5320:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5326:	50                   	push   %eax
    5327:	e8 e2 12 00 00       	call   660e <disp_color_str>
    532c:	83 c4 10             	add    $0x10,%esp
    532f:	8b 45 08             	mov    0x8(%ebp),%eax
    5332:	8b 40 7c             	mov    0x7c(%eax),%eax
    5335:	83 ec 04             	sub    $0x4,%esp
    5338:	50                   	push   %eax
    5339:	68 04 db 00 00       	push   $0xdb04
    533e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5344:	50                   	push   %eax
    5345:	e8 f7 70 00 00       	call   c441 <sprintf>
    534a:	83 c4 10             	add    $0x10,%esp
    534d:	83 ec 08             	sub    $0x8,%esp
    5350:	ff 75 f0             	pushl  -0x10(%ebp)
    5353:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5359:	50                   	push   %eax
    535a:	e8 af 12 00 00       	call   660e <disp_color_str>
    535f:	83 c4 10             	add    $0x10,%esp
    5362:	8b 45 08             	mov    0x8(%ebp),%eax
    5365:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    536b:	83 ec 04             	sub    $0x4,%esp
    536e:	50                   	push   %eax
    536f:	68 18 db 00 00       	push   $0xdb18
    5374:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    537a:	50                   	push   %eax
    537b:	e8 c1 70 00 00       	call   c441 <sprintf>
    5380:	83 c4 10             	add    $0x10,%esp
    5383:	83 ec 08             	sub    $0x8,%esp
    5386:	ff 75 f0             	pushl  -0x10(%ebp)
    5389:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    538f:	50                   	push   %eax
    5390:	e8 79 12 00 00       	call   660e <disp_color_str>
    5395:	83 c4 10             	add    $0x10,%esp
    5398:	83 ec 08             	sub    $0x8,%esp
    539b:	ff 75 f0             	pushl  -0x10(%ebp)
    539e:	68 b3 da 00 00       	push   $0xdab3
    53a3:	e8 66 12 00 00       	call   660e <disp_color_str>
    53a8:	83 c4 10             	add    $0x10,%esp
    53ab:	8b 45 08             	mov    0x8(%ebp),%eax
    53ae:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    53b4:	83 ec 04             	sub    $0x4,%esp
    53b7:	50                   	push   %eax
    53b8:	68 2a db 00 00       	push   $0xdb2a
    53bd:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    53c3:	50                   	push   %eax
    53c4:	e8 78 70 00 00       	call   c441 <sprintf>
    53c9:	83 c4 10             	add    $0x10,%esp
    53cc:	83 ec 08             	sub    $0x8,%esp
    53cf:	ff 75 f0             	pushl  -0x10(%ebp)
    53d2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    53d8:	50                   	push   %eax
    53d9:	e8 30 12 00 00       	call   660e <disp_color_str>
    53de:	83 c4 10             	add    $0x10,%esp
    53e1:	90                   	nop
    53e2:	c9                   	leave  
    53e3:	c3                   	ret    

000053e4 <dump_msg>:
    53e4:	55                   	push   %ebp
    53e5:	89 e5                	mov    %esp,%ebp
    53e7:	57                   	push   %edi
    53e8:	56                   	push   %esi
    53e9:	53                   	push   %ebx
    53ea:	83 ec 4c             	sub    $0x4c,%esp
    53ed:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    53f4:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    53f8:	74 09                	je     5403 <dump_msg+0x1f>
    53fa:	c7 45 d4 3f db 00 00 	movl   $0xdb3f,-0x2c(%ebp)
    5401:	eb 07                	jmp    540a <dump_msg+0x26>
    5403:	c7 45 d4 b3 da 00 00 	movl   $0xdab3,-0x2c(%ebp)
    540a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    540e:	74 09                	je     5419 <dump_msg+0x35>
    5410:	c7 45 d0 3f db 00 00 	movl   $0xdb3f,-0x30(%ebp)
    5417:	eb 07                	jmp    5420 <dump_msg+0x3c>
    5419:	c7 45 d0 b3 da 00 00 	movl   $0xdab3,-0x30(%ebp)
    5420:	8b 45 0c             	mov    0xc(%ebp),%eax
    5423:	8b 40 2c             	mov    0x2c(%eax),%eax
    5426:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    5429:	8b 45 0c             	mov    0xc(%ebp),%eax
    542c:	8b 40 28             	mov    0x28(%eax),%eax
    542f:	89 45 c0             	mov    %eax,-0x40(%ebp)
    5432:	8b 45 0c             	mov    0xc(%ebp),%eax
    5435:	8b 40 14             	mov    0x14(%eax),%eax
    5438:	89 45 bc             	mov    %eax,-0x44(%ebp)
    543b:	8b 45 0c             	mov    0xc(%ebp),%eax
    543e:	8b 40 10             	mov    0x10(%eax),%eax
    5441:	89 45 b8             	mov    %eax,-0x48(%ebp)
    5444:	8b 45 0c             	mov    0xc(%ebp),%eax
    5447:	8b 40 0c             	mov    0xc(%eax),%eax
    544a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    544d:	8b 45 0c             	mov    0xc(%ebp),%eax
    5450:	8b 78 08             	mov    0x8(%eax),%edi
    5453:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5457:	74 09                	je     5462 <dump_msg+0x7e>
    5459:	c7 45 cc 40 db 00 00 	movl   $0xdb40,-0x34(%ebp)
    5460:	eb 07                	jmp    5469 <dump_msg+0x85>
    5462:	c7 45 cc 42 db 00 00 	movl   $0xdb42,-0x34(%ebp)
    5469:	8b 45 0c             	mov    0xc(%ebp),%eax
    546c:	8b 70 04             	mov    0x4(%eax),%esi
    546f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5473:	74 09                	je     547e <dump_msg+0x9a>
    5475:	c7 45 c8 40 db 00 00 	movl   $0xdb40,-0x38(%ebp)
    547c:	eb 07                	jmp    5485 <dump_msg+0xa1>
    547e:	c7 45 c8 42 db 00 00 	movl   $0xdb42,-0x38(%ebp)
    5485:	8b 45 0c             	mov    0xc(%ebp),%eax
    5488:	8b 18                	mov    (%eax),%ebx
    548a:	8b 45 0c             	mov    0xc(%ebp),%eax
    548d:	8b 00                	mov    (%eax),%eax
    548f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    5495:	83 c0 60             	add    $0x60,%eax
    5498:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    549d:	8d 50 04             	lea    0x4(%eax),%edx
    54a0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    54a4:	74 07                	je     54ad <dump_msg+0xc9>
    54a6:	b9 3f db 00 00       	mov    $0xdb3f,%ecx
    54ab:	eb 05                	jmp    54b2 <dump_msg+0xce>
    54ad:	b9 42 db 00 00       	mov    $0xdb42,%ecx
    54b2:	8b 45 0c             	mov    0xc(%ebp),%eax
    54b5:	83 ec 0c             	sub    $0xc,%esp
    54b8:	ff 75 d4             	pushl  -0x2c(%ebp)
    54bb:	ff 75 d0             	pushl  -0x30(%ebp)
    54be:	ff 75 c4             	pushl  -0x3c(%ebp)
    54c1:	ff 75 c0             	pushl  -0x40(%ebp)
    54c4:	ff 75 bc             	pushl  -0x44(%ebp)
    54c7:	ff 75 b8             	pushl  -0x48(%ebp)
    54ca:	ff 75 b4             	pushl  -0x4c(%ebp)
    54cd:	57                   	push   %edi
    54ce:	ff 75 cc             	pushl  -0x34(%ebp)
    54d1:	56                   	push   %esi
    54d2:	ff 75 c8             	pushl  -0x38(%ebp)
    54d5:	53                   	push   %ebx
    54d6:	52                   	push   %edx
    54d7:	51                   	push   %ecx
    54d8:	50                   	push   %eax
    54d9:	ff 75 08             	pushl  0x8(%ebp)
    54dc:	68 4c db 00 00       	push   $0xdb4c
    54e1:	e8 36 6c 00 00       	call   c11c <printl>
    54e6:	83 c4 50             	add    $0x50,%esp
    54e9:	90                   	nop
    54ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    54ed:	5b                   	pop    %ebx
    54ee:	5e                   	pop    %esi
    54ef:	5f                   	pop    %edi
    54f0:	5d                   	pop    %ebp
    54f1:	c3                   	ret    

000054f2 <task_sys>:
    54f2:	55                   	push   %ebp
    54f3:	89 e5                	mov    %esp,%ebp
    54f5:	53                   	push   %ebx
    54f6:	83 ec 54             	sub    $0x54,%esp
    54f9:	83 ec 04             	sub    $0x4,%esp
    54fc:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    54ff:	50                   	push   %eax
    5500:	6a 2f                	push   $0x2f
    5502:	6a 02                	push   $0x2
    5504:	e8 df 6f 00 00       	call   c4e8 <send_recv>
    5509:	83 c4 10             	add    $0x10,%esp
    550c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    550f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5512:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5515:	83 f8 03             	cmp    $0x3,%eax
    5518:	74 2f                	je     5549 <task_sys+0x57>
    551a:	83 f8 04             	cmp    $0x4,%eax
    551d:	74 4d                	je     556c <task_sys+0x7a>
    551f:	83 f8 02             	cmp    $0x2,%eax
    5522:	0f 85 a4 00 00 00    	jne    55cc <task_sys+0xda>
    5528:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    552d:	89 45 cc             	mov    %eax,-0x34(%ebp)
    5530:	83 ec 04             	sub    $0x4,%esp
    5533:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5536:	50                   	push   %eax
    5537:	ff 75 f4             	pushl  -0xc(%ebp)
    553a:	6a 01                	push   $0x1
    553c:	e8 a7 6f 00 00       	call   c4e8 <send_recv>
    5541:	83 c4 10             	add    $0x10,%esp
    5544:	e9 94 00 00 00       	jmp    55dd <task_sys+0xeb>
    5549:	c7 45 c8 12 00 00 00 	movl   $0x12,-0x38(%ebp)
    5550:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5553:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5556:	83 ec 04             	sub    $0x4,%esp
    5559:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    555c:	50                   	push   %eax
    555d:	ff 75 f4             	pushl  -0xc(%ebp)
    5560:	6a 01                	push   $0x1
    5562:	e8 81 6f 00 00       	call   c4e8 <send_recv>
    5567:	83 c4 10             	add    $0x10,%esp
    556a:	eb 71                	jmp    55dd <task_sys+0xeb>
    556c:	c7 45 c8 12 00 00 00 	movl   $0x12,-0x38(%ebp)
    5573:	83 ec 0c             	sub    $0xc,%esp
    5576:	8d 45 ac             	lea    -0x54(%ebp),%eax
    5579:	50                   	push   %eax
    557a:	e8 63 00 00 00       	call   55e2 <get_rtc_time>
    557f:	83 c4 10             	add    $0x10,%esp
    5582:	83 ec 08             	sub    $0x8,%esp
    5585:	8d 45 ac             	lea    -0x54(%ebp),%eax
    5588:	50                   	push   %eax
    5589:	6a 01                	push   $0x1
    558b:	e8 77 eb ff ff       	call   4107 <va2la>
    5590:	83 c4 10             	add    $0x10,%esp
    5593:	89 c3                	mov    %eax,%ebx
    5595:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5598:	83 ec 08             	sub    $0x8,%esp
    559b:	50                   	push   %eax
    559c:	ff 75 f4             	pushl  -0xc(%ebp)
    559f:	e8 63 eb ff ff       	call   4107 <va2la>
    55a4:	83 c4 10             	add    $0x10,%esp
    55a7:	83 ec 04             	sub    $0x4,%esp
    55aa:	6a 18                	push   $0x18
    55ac:	53                   	push   %ebx
    55ad:	50                   	push   %eax
    55ae:	e8 bd 6e 00 00       	call   c470 <memcpy>
    55b3:	83 c4 10             	add    $0x10,%esp
    55b6:	83 ec 04             	sub    $0x4,%esp
    55b9:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    55bc:	50                   	push   %eax
    55bd:	ff 75 f4             	pushl  -0xc(%ebp)
    55c0:	6a 01                	push   $0x1
    55c2:	e8 21 6f 00 00       	call   c4e8 <send_recv>
    55c7:	83 c4 10             	add    $0x10,%esp
    55ca:	eb 11                	jmp    55dd <task_sys+0xeb>
    55cc:	83 ec 0c             	sub    $0xc,%esp
    55cf:	68 9a db 00 00       	push   $0xdb9a
    55d4:	e8 6d c7 ff ff       	call   1d46 <panic>
    55d9:	83 c4 10             	add    $0x10,%esp
    55dc:	90                   	nop
    55dd:	e9 17 ff ff ff       	jmp    54f9 <task_sys+0x7>

000055e2 <get_rtc_time>:
    55e2:	55                   	push   %ebp
    55e3:	89 e5                	mov    %esp,%ebp
    55e5:	83 ec 08             	sub    $0x8,%esp
    55e8:	83 ec 0c             	sub    $0xc,%esp
    55eb:	6a 09                	push   $0x9
    55ed:	e8 89 01 00 00       	call   577b <read_register>
    55f2:	83 c4 10             	add    $0x10,%esp
    55f5:	89 c2                	mov    %eax,%edx
    55f7:	8b 45 08             	mov    0x8(%ebp),%eax
    55fa:	89 10                	mov    %edx,(%eax)
    55fc:	83 ec 0c             	sub    $0xc,%esp
    55ff:	6a 08                	push   $0x8
    5601:	e8 75 01 00 00       	call   577b <read_register>
    5606:	83 c4 10             	add    $0x10,%esp
    5609:	89 c2                	mov    %eax,%edx
    560b:	8b 45 08             	mov    0x8(%ebp),%eax
    560e:	89 50 04             	mov    %edx,0x4(%eax)
    5611:	83 ec 0c             	sub    $0xc,%esp
    5614:	6a 07                	push   $0x7
    5616:	e8 60 01 00 00       	call   577b <read_register>
    561b:	83 c4 10             	add    $0x10,%esp
    561e:	89 c2                	mov    %eax,%edx
    5620:	8b 45 08             	mov    0x8(%ebp),%eax
    5623:	89 50 08             	mov    %edx,0x8(%eax)
    5626:	83 ec 0c             	sub    $0xc,%esp
    5629:	6a 04                	push   $0x4
    562b:	e8 4b 01 00 00       	call   577b <read_register>
    5630:	83 c4 10             	add    $0x10,%esp
    5633:	89 c2                	mov    %eax,%edx
    5635:	8b 45 08             	mov    0x8(%ebp),%eax
    5638:	89 50 0c             	mov    %edx,0xc(%eax)
    563b:	83 ec 0c             	sub    $0xc,%esp
    563e:	6a 02                	push   $0x2
    5640:	e8 36 01 00 00       	call   577b <read_register>
    5645:	83 c4 10             	add    $0x10,%esp
    5648:	89 c2                	mov    %eax,%edx
    564a:	8b 45 08             	mov    0x8(%ebp),%eax
    564d:	89 50 10             	mov    %edx,0x10(%eax)
    5650:	83 ec 0c             	sub    $0xc,%esp
    5653:	6a 00                	push   $0x0
    5655:	e8 21 01 00 00       	call   577b <read_register>
    565a:	83 c4 10             	add    $0x10,%esp
    565d:	89 c2                	mov    %eax,%edx
    565f:	8b 45 08             	mov    0x8(%ebp),%eax
    5662:	89 50 14             	mov    %edx,0x14(%eax)
    5665:	83 ec 0c             	sub    $0xc,%esp
    5668:	6a 0b                	push   $0xb
    566a:	e8 0c 01 00 00       	call   577b <read_register>
    566f:	83 c4 10             	add    $0x10,%esp
    5672:	83 e0 04             	and    $0x4,%eax
    5675:	85 c0                	test   %eax,%eax
    5677:	0f 85 e7 00 00 00    	jne    5764 <get_rtc_time+0x182>
    567d:	8b 45 08             	mov    0x8(%ebp),%eax
    5680:	8b 00                	mov    (%eax),%eax
    5682:	c1 e8 04             	shr    $0x4,%eax
    5685:	89 c2                	mov    %eax,%edx
    5687:	89 d0                	mov    %edx,%eax
    5689:	c1 e0 02             	shl    $0x2,%eax
    568c:	01 d0                	add    %edx,%eax
    568e:	01 c0                	add    %eax,%eax
    5690:	89 c2                	mov    %eax,%edx
    5692:	8b 45 08             	mov    0x8(%ebp),%eax
    5695:	8b 00                	mov    (%eax),%eax
    5697:	83 e0 0f             	and    $0xf,%eax
    569a:	01 c2                	add    %eax,%edx
    569c:	8b 45 08             	mov    0x8(%ebp),%eax
    569f:	89 10                	mov    %edx,(%eax)
    56a1:	8b 45 08             	mov    0x8(%ebp),%eax
    56a4:	8b 40 04             	mov    0x4(%eax),%eax
    56a7:	c1 e8 04             	shr    $0x4,%eax
    56aa:	89 c2                	mov    %eax,%edx
    56ac:	89 d0                	mov    %edx,%eax
    56ae:	c1 e0 02             	shl    $0x2,%eax
    56b1:	01 d0                	add    %edx,%eax
    56b3:	01 c0                	add    %eax,%eax
    56b5:	89 c2                	mov    %eax,%edx
    56b7:	8b 45 08             	mov    0x8(%ebp),%eax
    56ba:	8b 40 04             	mov    0x4(%eax),%eax
    56bd:	83 e0 0f             	and    $0xf,%eax
    56c0:	01 c2                	add    %eax,%edx
    56c2:	8b 45 08             	mov    0x8(%ebp),%eax
    56c5:	89 50 04             	mov    %edx,0x4(%eax)
    56c8:	8b 45 08             	mov    0x8(%ebp),%eax
    56cb:	8b 40 08             	mov    0x8(%eax),%eax
    56ce:	c1 e8 04             	shr    $0x4,%eax
    56d1:	89 c2                	mov    %eax,%edx
    56d3:	89 d0                	mov    %edx,%eax
    56d5:	c1 e0 02             	shl    $0x2,%eax
    56d8:	01 d0                	add    %edx,%eax
    56da:	01 c0                	add    %eax,%eax
    56dc:	89 c2                	mov    %eax,%edx
    56de:	8b 45 08             	mov    0x8(%ebp),%eax
    56e1:	8b 40 08             	mov    0x8(%eax),%eax
    56e4:	83 e0 0f             	and    $0xf,%eax
    56e7:	01 c2                	add    %eax,%edx
    56e9:	8b 45 08             	mov    0x8(%ebp),%eax
    56ec:	89 50 08             	mov    %edx,0x8(%eax)
    56ef:	8b 45 08             	mov    0x8(%ebp),%eax
    56f2:	8b 40 0c             	mov    0xc(%eax),%eax
    56f5:	c1 e8 04             	shr    $0x4,%eax
    56f8:	89 c2                	mov    %eax,%edx
    56fa:	89 d0                	mov    %edx,%eax
    56fc:	c1 e0 02             	shl    $0x2,%eax
    56ff:	01 d0                	add    %edx,%eax
    5701:	01 c0                	add    %eax,%eax
    5703:	89 c2                	mov    %eax,%edx
    5705:	8b 45 08             	mov    0x8(%ebp),%eax
    5708:	8b 40 0c             	mov    0xc(%eax),%eax
    570b:	83 e0 0f             	and    $0xf,%eax
    570e:	01 c2                	add    %eax,%edx
    5710:	8b 45 08             	mov    0x8(%ebp),%eax
    5713:	89 50 0c             	mov    %edx,0xc(%eax)
    5716:	8b 45 08             	mov    0x8(%ebp),%eax
    5719:	8b 40 10             	mov    0x10(%eax),%eax
    571c:	c1 e8 04             	shr    $0x4,%eax
    571f:	89 c2                	mov    %eax,%edx
    5721:	89 d0                	mov    %edx,%eax
    5723:	c1 e0 02             	shl    $0x2,%eax
    5726:	01 d0                	add    %edx,%eax
    5728:	01 c0                	add    %eax,%eax
    572a:	89 c2                	mov    %eax,%edx
    572c:	8b 45 08             	mov    0x8(%ebp),%eax
    572f:	8b 40 10             	mov    0x10(%eax),%eax
    5732:	83 e0 0f             	and    $0xf,%eax
    5735:	01 c2                	add    %eax,%edx
    5737:	8b 45 08             	mov    0x8(%ebp),%eax
    573a:	89 50 10             	mov    %edx,0x10(%eax)
    573d:	8b 45 08             	mov    0x8(%ebp),%eax
    5740:	8b 40 14             	mov    0x14(%eax),%eax
    5743:	c1 e8 04             	shr    $0x4,%eax
    5746:	89 c2                	mov    %eax,%edx
    5748:	89 d0                	mov    %edx,%eax
    574a:	c1 e0 02             	shl    $0x2,%eax
    574d:	01 d0                	add    %edx,%eax
    574f:	01 c0                	add    %eax,%eax
    5751:	89 c2                	mov    %eax,%edx
    5753:	8b 45 08             	mov    0x8(%ebp),%eax
    5756:	8b 40 14             	mov    0x14(%eax),%eax
    5759:	83 e0 0f             	and    $0xf,%eax
    575c:	01 c2                	add    %eax,%edx
    575e:	8b 45 08             	mov    0x8(%ebp),%eax
    5761:	89 50 14             	mov    %edx,0x14(%eax)
    5764:	8b 45 08             	mov    0x8(%ebp),%eax
    5767:	8b 00                	mov    (%eax),%eax
    5769:	8d 90 d0 07 00 00    	lea    0x7d0(%eax),%edx
    576f:	8b 45 08             	mov    0x8(%ebp),%eax
    5772:	89 10                	mov    %edx,(%eax)
    5774:	b8 00 00 00 00       	mov    $0x0,%eax
    5779:	c9                   	leave  
    577a:	c3                   	ret    

0000577b <read_register>:
    577b:	55                   	push   %ebp
    577c:	89 e5                	mov    %esp,%ebp
    577e:	83 ec 18             	sub    $0x18,%esp
    5781:	8b 45 08             	mov    0x8(%ebp),%eax
    5784:	88 45 f4             	mov    %al,-0xc(%ebp)
    5787:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
    578b:	0f b6 c0             	movzbl %al,%eax
    578e:	83 ec 08             	sub    $0x8,%esp
    5791:	50                   	push   %eax
    5792:	6a 70                	push   $0x70
    5794:	e8 b4 0e 00 00       	call   664d <out_byte>
    5799:	83 c4 10             	add    $0x10,%esp
    579c:	83 ec 0c             	sub    $0xc,%esp
    579f:	6a 71                	push   $0x71
    57a1:	e8 b3 0e 00 00       	call   6659 <in_byte>
    57a6:	83 c4 10             	add    $0x10,%esp
    57a9:	0f b6 c0             	movzbl %al,%eax
    57ac:	c9                   	leave  
    57ad:	c3                   	ret    

000057ae <task_hd>:
    57ae:	55                   	push   %ebp
    57af:	89 e5                	mov    %esp,%ebp
    57b1:	83 ec 48             	sub    $0x48,%esp
    57b4:	e8 b1 00 00 00       	call   586a <init_hd>
    57b9:	83 ec 04             	sub    $0x4,%esp
    57bc:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    57bf:	50                   	push   %eax
    57c0:	6a 2f                	push   $0x2f
    57c2:	6a 02                	push   $0x2
    57c4:	e8 1f 6d 00 00       	call   c4e8 <send_recv>
    57c9:	83 c4 10             	add    $0x10,%esp
    57cc:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    57cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    57d2:	8b 45 c8             	mov    -0x38(%ebp),%eax
    57d5:	2d e9 03 00 00       	sub    $0x3e9,%eax
    57da:	83 f8 04             	cmp    $0x4,%eax
    57dd:	77 4d                	ja     582c <task_hd+0x7e>
    57df:	8b 04 85 e8 db 00 00 	mov    0xdbe8(,%eax,4),%eax
    57e6:	ff e0                	jmp    *%eax
    57e8:	8b 45 d8             	mov    -0x28(%ebp),%eax
    57eb:	83 ec 0c             	sub    $0xc,%esp
    57ee:	50                   	push   %eax
    57ef:	e8 2d 01 00 00       	call   5921 <hd_open>
    57f4:	83 c4 10             	add    $0x10,%esp
    57f7:	eb 58                	jmp    5851 <task_hd+0xa3>
    57f9:	8b 45 d8             	mov    -0x28(%ebp),%eax
    57fc:	83 ec 0c             	sub    $0xc,%esp
    57ff:	50                   	push   %eax
    5800:	e8 e2 01 00 00       	call   59e7 <hd_close>
    5805:	83 c4 10             	add    $0x10,%esp
    5808:	eb 47                	jmp    5851 <task_hd+0xa3>
    580a:	83 ec 0c             	sub    $0xc,%esp
    580d:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5810:	50                   	push   %eax
    5811:	e8 52 02 00 00       	call   5a68 <hd_rdwt>
    5816:	83 c4 10             	add    $0x10,%esp
    5819:	eb 36                	jmp    5851 <task_hd+0xa3>
    581b:	83 ec 0c             	sub    $0xc,%esp
    581e:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5821:	50                   	push   %eax
    5822:	e8 ec 04 00 00       	call   5d13 <hd_ioctl>
    5827:	83 c4 10             	add    $0x10,%esp
    582a:	eb 25                	jmp    5851 <task_hd+0xa3>
    582c:	83 ec 08             	sub    $0x8,%esp
    582f:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5832:	50                   	push   %eax
    5833:	68 ac db 00 00       	push   $0xdbac
    5838:	e8 a7 fb ff ff       	call   53e4 <dump_msg>
    583d:	83 c4 10             	add    $0x10,%esp
    5840:	83 ec 0c             	sub    $0xc,%esp
    5843:	68 c4 db 00 00       	push   $0xdbc4
    5848:	e8 95 6e 00 00       	call   c6e2 <spin>
    584d:	83 c4 10             	add    $0x10,%esp
    5850:	90                   	nop
    5851:	83 ec 04             	sub    $0x4,%esp
    5854:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5857:	50                   	push   %eax
    5858:	ff 75 f4             	pushl  -0xc(%ebp)
    585b:	6a 01                	push   $0x1
    585d:	e8 86 6c 00 00       	call   c4e8 <send_recv>
    5862:	83 c4 10             	add    $0x10,%esp
    5865:	e9 4f ff ff ff       	jmp    57b9 <task_hd+0xb>

0000586a <init_hd>:
    586a:	55                   	push   %ebp
    586b:	89 e5                	mov    %esp,%ebp
    586d:	83 ec 18             	sub    $0x18,%esp
    5870:	c7 45 f0 75 04 00 00 	movl   $0x475,-0x10(%ebp)
    5877:	8b 45 f0             	mov    -0x10(%ebp),%eax
    587a:	0f b6 00             	movzbl (%eax),%eax
    587d:	0f b6 c0             	movzbl %al,%eax
    5880:	83 ec 08             	sub    $0x8,%esp
    5883:	50                   	push   %eax
    5884:	68 fc db 00 00       	push   $0xdbfc
    5889:	e8 8e 68 00 00       	call   c11c <printl>
    588e:	83 c4 10             	add    $0x10,%esp
    5891:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5894:	0f b6 00             	movzbl (%eax),%eax
    5897:	84 c0                	test   %al,%al
    5899:	75 19                	jne    58b4 <init_hd+0x4a>
    589b:	6a 6b                	push   $0x6b
    589d:	68 0f dc 00 00       	push   $0xdc0f
    58a2:	68 0f dc 00 00       	push   $0xdc0f
    58a7:	68 1b dc 00 00       	push   $0xdc1b
    58ac:	e8 4c 6e 00 00       	call   c6fd <assertion_failure>
    58b1:	83 c4 10             	add    $0x10,%esp
    58b4:	83 ec 08             	sub    $0x8,%esp
    58b7:	68 96 65 00 00       	push   $0x6596
    58bc:	6a 0e                	push   $0xe
    58be:	e8 d2 df ff ff       	call   3895 <put_irq_handler>
    58c3:	83 c4 10             	add    $0x10,%esp
    58c6:	83 ec 0c             	sub    $0xc,%esp
    58c9:	6a 02                	push   $0x2
    58cb:	e8 ee 0d 00 00       	call   66be <enable_irq>
    58d0:	83 c4 10             	add    $0x10,%esp
    58d3:	83 ec 0c             	sub    $0xc,%esp
    58d6:	6a 0e                	push   $0xe
    58d8:	e8 e1 0d 00 00       	call   66be <enable_irq>
    58dd:	83 c4 10             	add    $0x10,%esp
    58e0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    58e7:	eb 25                	jmp    590e <init_hd+0xa4>
    58e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    58ec:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    58f2:	05 a0 34 01 00       	add    $0x134a0,%eax
    58f7:	83 ec 04             	sub    $0x4,%esp
    58fa:	68 2c 02 00 00       	push   $0x22c
    58ff:	6a 00                	push   $0x0
    5901:	50                   	push   %eax
    5902:	e8 92 6b 00 00       	call   c499 <memset>
    5907:	83 c4 10             	add    $0x10,%esp
    590a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    590e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5912:	74 d5                	je     58e9 <init_hd+0x7f>
    5914:	c7 05 a0 34 01 00 00 	movl   $0x0,0x134a0
    591b:	00 00 00 
    591e:	90                   	nop
    591f:	c9                   	leave  
    5920:	c3                   	ret    

00005921 <hd_open>:
    5921:	55                   	push   %ebp
    5922:	89 e5                	mov    %esp,%ebp
    5924:	83 ec 18             	sub    $0x18,%esp
    5927:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    592b:	7f 19                	jg     5946 <hd_open+0x25>
    592d:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5930:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5935:	89 c8                	mov    %ecx,%eax
    5937:	f7 ea                	imul   %edx
    5939:	d1 fa                	sar    %edx
    593b:	89 c8                	mov    %ecx,%eax
    593d:	c1 f8 1f             	sar    $0x1f,%eax
    5940:	29 c2                	sub    %eax,%edx
    5942:	89 d0                	mov    %edx,%eax
    5944:	eb 11                	jmp    5957 <hd_open+0x36>
    5946:	8b 45 08             	mov    0x8(%ebp),%eax
    5949:	83 e8 10             	sub    $0x10,%eax
    594c:	8d 50 3f             	lea    0x3f(%eax),%edx
    594f:	85 c0                	test   %eax,%eax
    5951:	0f 48 c2             	cmovs  %edx,%eax
    5954:	c1 f8 06             	sar    $0x6,%eax
    5957:	89 45 f4             	mov    %eax,-0xc(%ebp)
    595a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    595e:	74 1c                	je     597c <hd_open+0x5b>
    5960:	68 86 00 00 00       	push   $0x86
    5965:	68 0f dc 00 00       	push   $0xdc0f
    596a:	68 0f dc 00 00       	push   $0xdc0f
    596f:	68 26 dc 00 00       	push   $0xdc26
    5974:	e8 84 6d 00 00       	call   c6fd <assertion_failure>
    5979:	83 c4 10             	add    $0x10,%esp
    597c:	83 ec 0c             	sub    $0xc,%esp
    597f:	ff 75 f4             	pushl  -0xc(%ebp)
    5982:	e8 38 08 00 00       	call   61bf <hd_identify>
    5987:	83 c4 10             	add    $0x10,%esp
    598a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    598d:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5993:	05 a0 34 01 00       	add    $0x134a0,%eax
    5998:	8b 00                	mov    (%eax),%eax
    599a:	8d 50 01             	lea    0x1(%eax),%edx
    599d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    59a0:	69 c9 2c 02 00 00    	imul   $0x22c,%ecx,%ecx
    59a6:	81 c1 a0 34 01 00    	add    $0x134a0,%ecx
    59ac:	89 11                	mov    %edx,(%ecx)
    59ae:	85 c0                	test   %eax,%eax
    59b0:	75 32                	jne    59e4 <hd_open+0xc3>
    59b2:	8b 55 f4             	mov    -0xc(%ebp),%edx
    59b5:	89 d0                	mov    %edx,%eax
    59b7:	c1 e0 02             	shl    $0x2,%eax
    59ba:	01 d0                	add    %edx,%eax
    59bc:	83 ec 08             	sub    $0x8,%esp
    59bf:	6a 00                	push   $0x0
    59c1:	50                   	push   %eax
    59c2:	e8 df 04 00 00       	call   5ea6 <partition>
    59c7:	83 c4 10             	add    $0x10,%esp
    59ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
    59cd:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    59d3:	05 a0 34 01 00       	add    $0x134a0,%eax
    59d8:	83 ec 0c             	sub    $0xc,%esp
    59db:	50                   	push   %eax
    59dc:	e8 f7 06 00 00       	call   60d8 <print_hdinfo>
    59e1:	83 c4 10             	add    $0x10,%esp
    59e4:	90                   	nop
    59e5:	c9                   	leave  
    59e6:	c3                   	ret    

000059e7 <hd_close>:
    59e7:	55                   	push   %ebp
    59e8:	89 e5                	mov    %esp,%ebp
    59ea:	83 ec 18             	sub    $0x18,%esp
    59ed:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    59f1:	7f 19                	jg     5a0c <hd_close+0x25>
    59f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    59f6:	ba 67 66 66 66       	mov    $0x66666667,%edx
    59fb:	89 c8                	mov    %ecx,%eax
    59fd:	f7 ea                	imul   %edx
    59ff:	d1 fa                	sar    %edx
    5a01:	89 c8                	mov    %ecx,%eax
    5a03:	c1 f8 1f             	sar    $0x1f,%eax
    5a06:	29 c2                	sub    %eax,%edx
    5a08:	89 d0                	mov    %edx,%eax
    5a0a:	eb 11                	jmp    5a1d <hd_close+0x36>
    5a0c:	8b 45 08             	mov    0x8(%ebp),%eax
    5a0f:	83 e8 10             	sub    $0x10,%eax
    5a12:	8d 50 3f             	lea    0x3f(%eax),%edx
    5a15:	85 c0                	test   %eax,%eax
    5a17:	0f 48 c2             	cmovs  %edx,%eax
    5a1a:	c1 f8 06             	sar    $0x6,%eax
    5a1d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5a20:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5a24:	74 1c                	je     5a42 <hd_close+0x5b>
    5a26:	68 9b 00 00 00       	push   $0x9b
    5a2b:	68 0f dc 00 00       	push   $0xdc0f
    5a30:	68 0f dc 00 00       	push   $0xdc0f
    5a35:	68 26 dc 00 00       	push   $0xdc26
    5a3a:	e8 be 6c 00 00       	call   c6fd <assertion_failure>
    5a3f:	83 c4 10             	add    $0x10,%esp
    5a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a45:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5a4b:	05 a0 34 01 00       	add    $0x134a0,%eax
    5a50:	8b 00                	mov    (%eax),%eax
    5a52:	8d 50 ff             	lea    -0x1(%eax),%edx
    5a55:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5a58:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5a5e:	05 a0 34 01 00       	add    $0x134a0,%eax
    5a63:	89 10                	mov    %edx,(%eax)
    5a65:	90                   	nop
    5a66:	c9                   	leave  
    5a67:	c3                   	ret    

00005a68 <hd_rdwt>:
    5a68:	55                   	push   %ebp
    5a69:	89 e5                	mov    %esp,%ebp
    5a6b:	57                   	push   %edi
    5a6c:	56                   	push   %esi
    5a6d:	53                   	push   %ebx
    5a6e:	83 ec 3c             	sub    $0x3c,%esp
    5a71:	8b 45 08             	mov    0x8(%ebp),%eax
    5a74:	8b 40 14             	mov    0x14(%eax),%eax
    5a77:	83 f8 09             	cmp    $0x9,%eax
    5a7a:	7f 1c                	jg     5a98 <hd_rdwt+0x30>
    5a7c:	8b 45 08             	mov    0x8(%ebp),%eax
    5a7f:	8b 48 14             	mov    0x14(%eax),%ecx
    5a82:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5a87:	89 c8                	mov    %ecx,%eax
    5a89:	f7 ea                	imul   %edx
    5a8b:	d1 fa                	sar    %edx
    5a8d:	89 c8                	mov    %ecx,%eax
    5a8f:	c1 f8 1f             	sar    $0x1f,%eax
    5a92:	29 c2                	sub    %eax,%edx
    5a94:	89 d0                	mov    %edx,%eax
    5a96:	eb 14                	jmp    5aac <hd_rdwt+0x44>
    5a98:	8b 45 08             	mov    0x8(%ebp),%eax
    5a9b:	8b 40 14             	mov    0x14(%eax),%eax
    5a9e:	83 e8 10             	sub    $0x10,%eax
    5aa1:	8d 50 3f             	lea    0x3f(%eax),%edx
    5aa4:	85 c0                	test   %eax,%eax
    5aa6:	0f 48 c2             	cmovs  %edx,%eax
    5aa9:	c1 f8 06             	sar    $0x6,%eax
    5aac:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5aaf:	8b 45 08             	mov    0x8(%ebp),%eax
    5ab2:	8b 50 1c             	mov    0x1c(%eax),%edx
    5ab5:	8b 40 18             	mov    0x18(%eax),%eax
    5ab8:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5abb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    5abe:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5ac1:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5ac4:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    5ac8:	c1 ea 09             	shr    $0x9,%edx
    5acb:	89 c6                	mov    %eax,%esi
    5acd:	89 d7                	mov    %edx,%edi
    5acf:	bb ff ff ff 7f       	mov    $0x7fffffff,%ebx
    5ad4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    5ad9:	39 f3                	cmp    %esi,%ebx
    5adb:	19 f9                	sbb    %edi,%ecx
    5add:	73 1c                	jae    5afb <hd_rdwt+0x93>
    5adf:	68 ae 00 00 00       	push   $0xae
    5ae4:	68 0f dc 00 00       	push   $0xdc0f
    5ae9:	68 0f dc 00 00       	push   $0xdc0f
    5aee:	68 34 dc 00 00       	push   $0xdc34
    5af3:	e8 05 6c 00 00       	call   c6fd <assertion_failure>
    5af8:	83 c4 10             	add    $0x10,%esp
    5afb:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5afe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5b01:	25 ff 01 00 00       	and    $0x1ff,%eax
    5b06:	ba 00 00 00 00       	mov    $0x0,%edx
    5b0b:	09 d0                	or     %edx,%eax
    5b0d:	85 c0                	test   %eax,%eax
    5b0f:	74 1c                	je     5b2d <hd_rdwt+0xc5>
    5b11:	68 b3 00 00 00       	push   $0xb3
    5b16:	68 0f dc 00 00       	push   $0xdc0f
    5b1b:	68 0f dc 00 00       	push   $0xdc0f
    5b20:	68 5b dc 00 00       	push   $0xdc5b
    5b25:	e8 d3 6b 00 00       	call   c6fd <assertion_failure>
    5b2a:	83 c4 10             	add    $0x10,%esp
    5b2d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5b30:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5b33:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    5b37:	c1 ea 09             	shr    $0x9,%edx
    5b3a:	89 c3                	mov    %eax,%ebx
    5b3c:	89 d6                	mov    %edx,%esi
    5b3e:	89 5d cc             	mov    %ebx,-0x34(%ebp)
    5b41:	8b 45 08             	mov    0x8(%ebp),%eax
    5b44:	8b 40 14             	mov    0x14(%eax),%eax
    5b47:	8d 50 f0             	lea    -0x10(%eax),%edx
    5b4a:	89 d0                	mov    %edx,%eax
    5b4c:	c1 f8 1f             	sar    $0x1f,%eax
    5b4f:	c1 e8 1a             	shr    $0x1a,%eax
    5b52:	01 c2                	add    %eax,%edx
    5b54:	83 e2 3f             	and    $0x3f,%edx
    5b57:	29 c2                	sub    %eax,%edx
    5b59:	89 d0                	mov    %edx,%eax
    5b5b:	89 45 c8             	mov    %eax,-0x38(%ebp)
    5b5e:	8b 45 08             	mov    0x8(%ebp),%eax
    5b61:	8b 40 14             	mov    0x14(%eax),%eax
    5b64:	83 f8 08             	cmp    $0x8,%eax
    5b67:	7f 1d                	jg     5b86 <hd_rdwt+0x11e>
    5b69:	8b 45 08             	mov    0x8(%ebp),%eax
    5b6c:	8b 50 14             	mov    0x14(%eax),%edx
    5b6f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5b72:	c1 e2 03             	shl    $0x3,%edx
    5b75:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5b7b:	01 d0                	add    %edx,%eax
    5b7d:	05 a4 34 01 00       	add    $0x134a4,%eax
    5b82:	8b 00                	mov    (%eax),%eax
    5b84:	eb 1b                	jmp    5ba1 <hd_rdwt+0x139>
    5b86:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5b89:	8d 50 04             	lea    0x4(%eax),%edx
    5b8c:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5b8f:	c1 e2 03             	shl    $0x3,%edx
    5b92:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5b98:	01 d0                	add    %edx,%eax
    5b9a:	05 ac 34 01 00       	add    $0x134ac,%eax
    5b9f:	8b 00                	mov    (%eax),%eax
    5ba1:	01 45 cc             	add    %eax,-0x34(%ebp)
    5ba4:	c6 45 bd 00          	movb   $0x0,-0x43(%ebp)
    5ba8:	8b 45 08             	mov    0x8(%ebp),%eax
    5bab:	8b 40 0c             	mov    0xc(%eax),%eax
    5bae:	05 ff 01 00 00       	add    $0x1ff,%eax
    5bb3:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
    5bb9:	85 c0                	test   %eax,%eax
    5bbb:	0f 48 c2             	cmovs  %edx,%eax
    5bbe:	c1 f8 09             	sar    $0x9,%eax
    5bc1:	88 45 be             	mov    %al,-0x42(%ebp)
    5bc4:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5bc7:	88 45 bf             	mov    %al,-0x41(%ebp)
    5bca:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5bcd:	c1 e8 08             	shr    $0x8,%eax
    5bd0:	88 45 c0             	mov    %al,-0x40(%ebp)
    5bd3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5bd6:	c1 e8 10             	shr    $0x10,%eax
    5bd9:	88 45 c1             	mov    %al,-0x3f(%ebp)
    5bdc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5bdf:	c1 e0 04             	shl    $0x4,%eax
    5be2:	89 c2                	mov    %eax,%edx
    5be4:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5be7:	c1 e8 18             	shr    $0x18,%eax
    5bea:	83 e0 0f             	and    $0xf,%eax
    5bed:	09 d0                	or     %edx,%eax
    5bef:	83 c8 e0             	or     $0xffffffe0,%eax
    5bf2:	88 45 c2             	mov    %al,-0x3e(%ebp)
    5bf5:	8b 45 08             	mov    0x8(%ebp),%eax
    5bf8:	8b 40 04             	mov    0x4(%eax),%eax
    5bfb:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    5c00:	75 07                	jne    5c09 <hd_rdwt+0x1a1>
    5c02:	b8 20 00 00 00       	mov    $0x20,%eax
    5c07:	eb 05                	jmp    5c0e <hd_rdwt+0x1a6>
    5c09:	b8 30 00 00 00       	mov    $0x30,%eax
    5c0e:	88 45 c3             	mov    %al,-0x3d(%ebp)
    5c11:	83 ec 0c             	sub    $0xc,%esp
    5c14:	8d 45 bd             	lea    -0x43(%ebp),%eax
    5c17:	50                   	push   %eax
    5c18:	e8 0a 08 00 00       	call   6427 <hd_cmd_out>
    5c1d:	83 c4 10             	add    $0x10,%esp
    5c20:	8b 45 08             	mov    0x8(%ebp),%eax
    5c23:	8b 40 0c             	mov    0xc(%eax),%eax
    5c26:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5c29:	8b 45 08             	mov    0x8(%ebp),%eax
    5c2c:	8b 50 2c             	mov    0x2c(%eax),%edx
    5c2f:	8b 45 08             	mov    0x8(%ebp),%eax
    5c32:	8b 40 10             	mov    0x10(%eax),%eax
    5c35:	83 ec 08             	sub    $0x8,%esp
    5c38:	52                   	push   %edx
    5c39:	50                   	push   %eax
    5c3a:	e8 c8 e4 ff ff       	call   4107 <va2la>
    5c3f:	83 c4 10             	add    $0x10,%esp
    5c42:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5c45:	e9 b6 00 00 00       	jmp    5d00 <hd_rdwt+0x298>
    5c4a:	b8 00 02 00 00       	mov    $0x200,%eax
    5c4f:	81 7d e4 00 02 00 00 	cmpl   $0x200,-0x1c(%ebp)
    5c56:	0f 4e 45 e4          	cmovle -0x1c(%ebp),%eax
    5c5a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    5c5d:	8b 45 08             	mov    0x8(%ebp),%eax
    5c60:	8b 40 04             	mov    0x4(%eax),%eax
    5c63:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    5c68:	75 45                	jne    5caf <hd_rdwt+0x247>
    5c6a:	e8 ba 08 00 00       	call   6529 <interrupt_wait>
    5c6f:	83 ec 04             	sub    $0x4,%esp
    5c72:	68 00 02 00 00       	push   $0x200
    5c77:	68 a0 30 01 00       	push   $0x130a0
    5c7c:	68 f0 01 00 00       	push   $0x1f0
    5c81:	e8 dd 09 00 00       	call   6663 <port_read>
    5c86:	83 c4 10             	add    $0x10,%esp
    5c89:	83 ec 08             	sub    $0x8,%esp
    5c8c:	68 a0 30 01 00       	push   $0x130a0
    5c91:	6a 02                	push   $0x2
    5c93:	e8 6f e4 ff ff       	call   4107 <va2la>
    5c98:	83 c4 10             	add    $0x10,%esp
    5c9b:	83 ec 04             	sub    $0x4,%esp
    5c9e:	ff 75 c4             	pushl  -0x3c(%ebp)
    5ca1:	50                   	push   %eax
    5ca2:	ff 75 e0             	pushl  -0x20(%ebp)
    5ca5:	e8 c6 67 00 00       	call   c470 <memcpy>
    5caa:	83 c4 10             	add    $0x10,%esp
    5cad:	eb 43                	jmp    5cf2 <hd_rdwt+0x28a>
    5caf:	83 ec 04             	sub    $0x4,%esp
    5cb2:	68 10 27 00 00       	push   $0x2710
    5cb7:	6a 08                	push   $0x8
    5cb9:	6a 08                	push   $0x8
    5cbb:	e8 85 08 00 00       	call   6545 <waitfor>
    5cc0:	83 c4 10             	add    $0x10,%esp
    5cc3:	85 c0                	test   %eax,%eax
    5cc5:	75 10                	jne    5cd7 <hd_rdwt+0x26f>
    5cc7:	83 ec 0c             	sub    $0xc,%esp
    5cca:	68 6e dc 00 00       	push   $0xdc6e
    5ccf:	e8 72 c0 ff ff       	call   1d46 <panic>
    5cd4:	83 c4 10             	add    $0x10,%esp
    5cd7:	83 ec 04             	sub    $0x4,%esp
    5cda:	ff 75 c4             	pushl  -0x3c(%ebp)
    5cdd:	ff 75 e0             	pushl  -0x20(%ebp)
    5ce0:	68 f0 01 00 00       	push   $0x1f0
    5ce5:	e8 8c 09 00 00       	call   6676 <port_write>
    5cea:	83 c4 10             	add    $0x10,%esp
    5ced:	e8 37 08 00 00       	call   6529 <interrupt_wait>
    5cf2:	81 6d e4 00 02 00 00 	subl   $0x200,-0x1c(%ebp)
    5cf9:	81 45 e0 00 02 00 00 	addl   $0x200,-0x20(%ebp)
    5d00:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5d04:	0f 85 40 ff ff ff    	jne    5c4a <hd_rdwt+0x1e2>
    5d0a:	90                   	nop
    5d0b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5d0e:	5b                   	pop    %ebx
    5d0f:	5e                   	pop    %esi
    5d10:	5f                   	pop    %edi
    5d11:	5d                   	pop    %ebp
    5d12:	c3                   	ret    

00005d13 <hd_ioctl>:
    5d13:	55                   	push   %ebp
    5d14:	89 e5                	mov    %esp,%ebp
    5d16:	83 ec 28             	sub    $0x28,%esp
    5d19:	8b 45 08             	mov    0x8(%ebp),%eax
    5d1c:	8b 40 14             	mov    0x14(%eax),%eax
    5d1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5d22:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    5d26:	7f 19                	jg     5d41 <hd_ioctl+0x2e>
    5d28:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    5d2b:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5d30:	89 c8                	mov    %ecx,%eax
    5d32:	f7 ea                	imul   %edx
    5d34:	d1 fa                	sar    %edx
    5d36:	89 c8                	mov    %ecx,%eax
    5d38:	c1 f8 1f             	sar    $0x1f,%eax
    5d3b:	29 c2                	sub    %eax,%edx
    5d3d:	89 d0                	mov    %edx,%eax
    5d3f:	eb 11                	jmp    5d52 <hd_ioctl+0x3f>
    5d41:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d44:	83 e8 10             	sub    $0x10,%eax
    5d47:	8d 50 3f             	lea    0x3f(%eax),%edx
    5d4a:	85 c0                	test   %eax,%eax
    5d4c:	0f 48 c2             	cmovs  %edx,%eax
    5d4f:	c1 f8 06             	sar    $0x6,%eax
    5d52:	89 45 f0             	mov    %eax,-0x10(%ebp)
    5d55:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5d58:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5d5e:	05 a0 34 01 00       	add    $0x134a0,%eax
    5d63:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5d66:	8b 45 08             	mov    0x8(%ebp),%eax
    5d69:	8b 40 0c             	mov    0xc(%eax),%eax
    5d6c:	83 f8 01             	cmp    $0x1,%eax
    5d6f:	0f 85 85 00 00 00    	jne    5dfa <hd_ioctl+0xe7>
    5d75:	8b 45 08             	mov    0x8(%ebp),%eax
    5d78:	8b 50 2c             	mov    0x2c(%eax),%edx
    5d7b:	8b 45 08             	mov    0x8(%ebp),%eax
    5d7e:	8b 40 10             	mov    0x10(%eax),%eax
    5d81:	83 ec 08             	sub    $0x8,%esp
    5d84:	52                   	push   %edx
    5d85:	50                   	push   %eax
    5d86:	e8 7c e3 ff ff       	call   4107 <va2la>
    5d8b:	83 c4 10             	add    $0x10,%esp
    5d8e:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5d91:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    5d95:	7f 14                	jg     5dab <hd_ioctl+0x98>
    5d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d9a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5da1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5da4:	01 d0                	add    %edx,%eax
    5da6:	83 c0 04             	add    $0x4,%eax
    5da9:	eb 29                	jmp    5dd4 <hd_ioctl+0xc1>
    5dab:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5dae:	8d 50 f0             	lea    -0x10(%eax),%edx
    5db1:	89 d0                	mov    %edx,%eax
    5db3:	c1 f8 1f             	sar    $0x1f,%eax
    5db6:	c1 e8 1a             	shr    $0x1a,%eax
    5db9:	01 c2                	add    %eax,%edx
    5dbb:	83 e2 3f             	and    $0x3f,%edx
    5dbe:	29 c2                	sub    %eax,%edx
    5dc0:	89 d0                	mov    %edx,%eax
    5dc2:	83 c0 04             	add    $0x4,%eax
    5dc5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5dcc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5dcf:	01 d0                	add    %edx,%eax
    5dd1:	83 c0 0c             	add    $0xc,%eax
    5dd4:	83 ec 08             	sub    $0x8,%esp
    5dd7:	50                   	push   %eax
    5dd8:	6a 02                	push   $0x2
    5dda:	e8 28 e3 ff ff       	call   4107 <va2la>
    5ddf:	83 c4 10             	add    $0x10,%esp
    5de2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5de5:	83 ec 04             	sub    $0x4,%esp
    5de8:	6a 08                	push   $0x8
    5dea:	ff 75 e4             	pushl  -0x1c(%ebp)
    5ded:	ff 75 e8             	pushl  -0x18(%ebp)
    5df0:	e8 7b 66 00 00       	call   c470 <memcpy>
    5df5:	83 c4 10             	add    $0x10,%esp
    5df8:	eb 1c                	jmp    5e16 <hd_ioctl+0x103>
    5dfa:	68 f6 00 00 00       	push   $0xf6
    5dff:	68 0f dc 00 00       	push   $0xdc0f
    5e04:	68 0f dc 00 00       	push   $0xdc0f
    5e09:	68 80 dc 00 00       	push   $0xdc80
    5e0e:	e8 ea 68 00 00       	call   c6fd <assertion_failure>
    5e13:	83 c4 10             	add    $0x10,%esp
    5e16:	90                   	nop
    5e17:	c9                   	leave  
    5e18:	c3                   	ret    

00005e19 <get_part_table>:
    5e19:	55                   	push   %ebp
    5e1a:	89 e5                	mov    %esp,%ebp
    5e1c:	83 ec 18             	sub    $0x18,%esp
    5e1f:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    5e23:	c6 45 f2 01          	movb   $0x1,-0xe(%ebp)
    5e27:	8b 45 0c             	mov    0xc(%ebp),%eax
    5e2a:	88 45 f3             	mov    %al,-0xd(%ebp)
    5e2d:	8b 45 0c             	mov    0xc(%ebp),%eax
    5e30:	c1 f8 08             	sar    $0x8,%eax
    5e33:	88 45 f4             	mov    %al,-0xc(%ebp)
    5e36:	8b 45 0c             	mov    0xc(%ebp),%eax
    5e39:	c1 f8 10             	sar    $0x10,%eax
    5e3c:	88 45 f5             	mov    %al,-0xb(%ebp)
    5e3f:	8b 45 08             	mov    0x8(%ebp),%eax
    5e42:	c1 e0 04             	shl    $0x4,%eax
    5e45:	83 c8 40             	or     $0x40,%eax
    5e48:	89 c2                	mov    %eax,%edx
    5e4a:	8b 45 0c             	mov    0xc(%ebp),%eax
    5e4d:	c1 f8 18             	sar    $0x18,%eax
    5e50:	83 e0 0f             	and    $0xf,%eax
    5e53:	09 d0                	or     %edx,%eax
    5e55:	83 c8 a0             	or     $0xffffffa0,%eax
    5e58:	88 45 f6             	mov    %al,-0xa(%ebp)
    5e5b:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
    5e5f:	83 ec 0c             	sub    $0xc,%esp
    5e62:	8d 45 f1             	lea    -0xf(%ebp),%eax
    5e65:	50                   	push   %eax
    5e66:	e8 bc 05 00 00       	call   6427 <hd_cmd_out>
    5e6b:	83 c4 10             	add    $0x10,%esp
    5e6e:	e8 b6 06 00 00       	call   6529 <interrupt_wait>
    5e73:	83 ec 04             	sub    $0x4,%esp
    5e76:	68 00 02 00 00       	push   $0x200
    5e7b:	68 a0 30 01 00       	push   $0x130a0
    5e80:	68 f0 01 00 00       	push   $0x1f0
    5e85:	e8 d9 07 00 00       	call   6663 <port_read>
    5e8a:	83 c4 10             	add    $0x10,%esp
    5e8d:	b8 5e 32 01 00       	mov    $0x1325e,%eax
    5e92:	83 ec 04             	sub    $0x4,%esp
    5e95:	6a 40                	push   $0x40
    5e97:	50                   	push   %eax
    5e98:	ff 75 10             	pushl  0x10(%ebp)
    5e9b:	e8 d0 65 00 00       	call   c470 <memcpy>
    5ea0:	83 c4 10             	add    $0x10,%esp
    5ea3:	90                   	nop
    5ea4:	c9                   	leave  
    5ea5:	c3                   	ret    

00005ea6 <partition>:
    5ea6:	55                   	push   %ebp
    5ea7:	89 e5                	mov    %esp,%ebp
    5ea9:	81 ec 38 04 00 00    	sub    $0x438,%esp
    5eaf:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    5eb3:	7f 19                	jg     5ece <partition+0x28>
    5eb5:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5eb8:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5ebd:	89 c8                	mov    %ecx,%eax
    5ebf:	f7 ea                	imul   %edx
    5ec1:	d1 fa                	sar    %edx
    5ec3:	89 c8                	mov    %ecx,%eax
    5ec5:	c1 f8 1f             	sar    $0x1f,%eax
    5ec8:	29 c2                	sub    %eax,%edx
    5eca:	89 d0                	mov    %edx,%eax
    5ecc:	eb 11                	jmp    5edf <partition+0x39>
    5ece:	8b 45 08             	mov    0x8(%ebp),%eax
    5ed1:	83 e8 10             	sub    $0x10,%eax
    5ed4:	8d 50 3f             	lea    0x3f(%eax),%edx
    5ed7:	85 c0                	test   %eax,%eax
    5ed9:	0f 48 c2             	cmovs  %edx,%eax
    5edc:	c1 f8 06             	sar    $0x6,%eax
    5edf:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5ee2:	8b 45 e8             	mov    -0x18(%ebp),%eax
    5ee5:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5eeb:	05 a0 34 01 00       	add    $0x134a0,%eax
    5ef0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5ef3:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    5ef7:	0f 85 f0 00 00 00    	jne    5fed <partition+0x147>
    5efd:	83 ec 04             	sub    $0x4,%esp
    5f00:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5f06:	50                   	push   %eax
    5f07:	ff 75 e8             	pushl  -0x18(%ebp)
    5f0a:	ff 75 e8             	pushl  -0x18(%ebp)
    5f0d:	e8 07 ff ff ff       	call   5e19 <get_part_table>
    5f12:	83 c4 10             	add    $0x10,%esp
    5f15:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5f1c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5f23:	e9 90 00 00 00       	jmp    5fb8 <partition+0x112>
    5f28:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f2b:	c1 e0 04             	shl    $0x4,%eax
    5f2e:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f31:	01 c8                	add    %ecx,%eax
    5f33:	2d 24 04 00 00       	sub    $0x424,%eax
    5f38:	0f b6 00             	movzbl (%eax),%eax
    5f3b:	84 c0                	test   %al,%al
    5f3d:	74 74                	je     5fb3 <partition+0x10d>
    5f3f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    5f43:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f46:	83 c0 01             	add    $0x1,%eax
    5f49:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5f4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f4f:	c1 e0 04             	shl    $0x4,%eax
    5f52:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f55:	01 c8                	add    %ecx,%eax
    5f57:	2d 20 04 00 00       	sub    $0x420,%eax
    5f5c:	8b 08                	mov    (%eax),%ecx
    5f5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5f61:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5f64:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
    5f68:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f6b:	c1 e0 04             	shl    $0x4,%eax
    5f6e:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f71:	01 c8                	add    %ecx,%eax
    5f73:	2d 1c 04 00 00       	sub    $0x41c,%eax
    5f78:	8b 08                	mov    (%eax),%ecx
    5f7a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5f7d:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5f80:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
    5f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5f87:	c1 e0 04             	shl    $0x4,%eax
    5f8a:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5f8d:	01 c8                	add    %ecx,%eax
    5f8f:	2d 24 04 00 00       	sub    $0x424,%eax
    5f94:	0f b6 00             	movzbl (%eax),%eax
    5f97:	3c 05                	cmp    $0x5,%al
    5f99:	75 19                	jne    5fb4 <partition+0x10e>
    5f9b:	8b 55 08             	mov    0x8(%ebp),%edx
    5f9e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    5fa1:	01 d0                	add    %edx,%eax
    5fa3:	83 ec 08             	sub    $0x8,%esp
    5fa6:	6a 01                	push   $0x1
    5fa8:	50                   	push   %eax
    5fa9:	e8 f8 fe ff ff       	call   5ea6 <partition>
    5fae:	83 c4 10             	add    $0x10,%esp
    5fb1:	eb 01                	jmp    5fb4 <partition+0x10e>
    5fb3:	90                   	nop
    5fb4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5fb8:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    5fbc:	0f 8e 66 ff ff ff    	jle    5f28 <partition+0x82>
    5fc2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    5fc6:	0f 85 09 01 00 00    	jne    60d5 <partition+0x22f>
    5fcc:	68 3c 01 00 00       	push   $0x13c
    5fd1:	68 0f dc 00 00       	push   $0xdc0f
    5fd6:	68 0f dc 00 00       	push   $0xdc0f
    5fdb:	68 82 dc 00 00       	push   $0xdc82
    5fe0:	e8 18 67 00 00       	call   c6fd <assertion_failure>
    5fe5:	83 c4 10             	add    $0x10,%esp
    5fe8:	e9 e8 00 00 00       	jmp    60d5 <partition+0x22f>
    5fed:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    5ff1:	0f 85 bf 00 00 00    	jne    60b6 <partition+0x210>
    5ff7:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5ffa:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5fff:	89 c8                	mov    %ecx,%eax
    6001:	f7 ea                	imul   %edx
    6003:	d1 fa                	sar    %edx
    6005:	89 c8                	mov    %ecx,%eax
    6007:	c1 f8 1f             	sar    $0x1f,%eax
    600a:	29 c2                	sub    %eax,%edx
    600c:	89 d0                	mov    %edx,%eax
    600e:	c1 e0 02             	shl    $0x2,%eax
    6011:	01 d0                	add    %edx,%eax
    6013:	29 c1                	sub    %eax,%ecx
    6015:	89 c8                	mov    %ecx,%eax
    6017:	89 45 dc             	mov    %eax,-0x24(%ebp)
    601a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    601d:	8b 55 dc             	mov    -0x24(%ebp),%edx
    6020:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
    6024:	89 45 d8             	mov    %eax,-0x28(%ebp)
    6027:	8b 45 d8             	mov    -0x28(%ebp),%eax
    602a:	89 45 ec             	mov    %eax,-0x14(%ebp)
    602d:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6030:	83 e8 01             	sub    $0x1,%eax
    6033:	c1 e0 04             	shl    $0x4,%eax
    6036:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6039:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6040:	eb 6c                	jmp    60ae <partition+0x208>
    6042:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    6045:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6048:	01 d0                	add    %edx,%eax
    604a:	89 45 d0             	mov    %eax,-0x30(%ebp)
    604d:	83 ec 04             	sub    $0x4,%esp
    6050:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    6056:	50                   	push   %eax
    6057:	ff 75 ec             	pushl  -0x14(%ebp)
    605a:	ff 75 e8             	pushl  -0x18(%ebp)
    605d:	e8 b7 fd ff ff       	call   5e19 <get_part_table>
    6062:	83 c4 10             	add    $0x10,%esp
    6065:	8b 95 d8 fb ff ff    	mov    -0x428(%ebp),%edx
    606b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    606e:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    6071:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6074:	8b 55 d0             	mov    -0x30(%ebp),%edx
    6077:	83 c2 04             	add    $0x4,%edx
    607a:	89 4c d0 0c          	mov    %ecx,0xc(%eax,%edx,8)
    607e:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    6084:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6087:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    608a:	83 c1 04             	add    $0x4,%ecx
    608d:	89 54 c8 10          	mov    %edx,0x10(%eax,%ecx,8)
    6091:	8b 95 e8 fb ff ff    	mov    -0x418(%ebp),%edx
    6097:	8b 45 d8             	mov    -0x28(%ebp),%eax
    609a:	01 d0                	add    %edx,%eax
    609c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    609f:	0f b6 85 e4 fb ff ff 	movzbl -0x41c(%ebp),%eax
    60a6:	84 c0                	test   %al,%al
    60a8:	74 2a                	je     60d4 <partition+0x22e>
    60aa:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    60ae:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    60b2:	7e 8e                	jle    6042 <partition+0x19c>
    60b4:	eb 1f                	jmp    60d5 <partition+0x22f>
    60b6:	68 55 01 00 00       	push   $0x155
    60bb:	68 0f dc 00 00       	push   $0xdc0f
    60c0:	68 0f dc 00 00       	push   $0xdc0f
    60c5:	68 80 dc 00 00       	push   $0xdc80
    60ca:	e8 2e 66 00 00       	call   c6fd <assertion_failure>
    60cf:	83 c4 10             	add    $0x10,%esp
    60d2:	eb 01                	jmp    60d5 <partition+0x22f>
    60d4:	90                   	nop
    60d5:	90                   	nop
    60d6:	c9                   	leave  
    60d7:	c3                   	ret    

000060d8 <print_hdinfo>:
    60d8:	55                   	push   %ebp
    60d9:	89 e5                	mov    %esp,%ebp
    60db:	56                   	push   %esi
    60dc:	53                   	push   %ebx
    60dd:	83 ec 10             	sub    $0x10,%esp
    60e0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    60e7:	eb 56                	jmp    613f <print_hdinfo+0x67>
    60e9:	8b 45 08             	mov    0x8(%ebp),%eax
    60ec:	8b 55 f4             	mov    -0xc(%ebp),%edx
    60ef:	8b 5c d0 08          	mov    0x8(%eax,%edx,8),%ebx
    60f3:	8b 45 08             	mov    0x8(%ebp),%eax
    60f6:	8b 55 f4             	mov    -0xc(%ebp),%edx
    60f9:	8b 4c d0 08          	mov    0x8(%eax,%edx,8),%ecx
    60fd:	8b 45 08             	mov    0x8(%ebp),%eax
    6100:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6103:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
    6107:	8b 45 08             	mov    0x8(%ebp),%eax
    610a:	8b 75 f4             	mov    -0xc(%ebp),%esi
    610d:	8b 44 f0 04          	mov    0x4(%eax,%esi,8),%eax
    6111:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    6115:	75 07                	jne    611e <print_hdinfo+0x46>
    6117:	be 95 dc 00 00       	mov    $0xdc95,%esi
    611c:	eb 05                	jmp    6123 <print_hdinfo+0x4b>
    611e:	be 97 dc 00 00       	mov    $0xdc97,%esi
    6123:	83 ec 04             	sub    $0x4,%esp
    6126:	53                   	push   %ebx
    6127:	51                   	push   %ecx
    6128:	52                   	push   %edx
    6129:	50                   	push   %eax
    612a:	ff 75 f4             	pushl  -0xc(%ebp)
    612d:	56                   	push   %esi
    612e:	68 a0 dc 00 00       	push   $0xdca0
    6133:	e8 e4 5f 00 00       	call   c11c <printl>
    6138:	83 c4 20             	add    $0x20,%esp
    613b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    613f:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    6143:	7e a4                	jle    60e9 <print_hdinfo+0x11>
    6145:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    614c:	eb 63                	jmp    61b1 <print_hdinfo+0xd9>
    614e:	8b 45 08             	mov    0x8(%ebp),%eax
    6151:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6154:	83 c2 04             	add    $0x4,%edx
    6157:	8b 44 d0 10          	mov    0x10(%eax,%edx,8),%eax
    615b:	85 c0                	test   %eax,%eax
    615d:	74 4d                	je     61ac <print_hdinfo+0xd4>
    615f:	8b 45 08             	mov    0x8(%ebp),%eax
    6162:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6165:	83 c2 04             	add    $0x4,%edx
    6168:	8b 5c d0 10          	mov    0x10(%eax,%edx,8),%ebx
    616c:	8b 45 08             	mov    0x8(%ebp),%eax
    616f:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6172:	83 c2 04             	add    $0x4,%edx
    6175:	8b 4c d0 10          	mov    0x10(%eax,%edx,8),%ecx
    6179:	8b 45 08             	mov    0x8(%ebp),%eax
    617c:	8b 55 f4             	mov    -0xc(%ebp),%edx
    617f:	83 c2 04             	add    $0x4,%edx
    6182:	8b 54 d0 0c          	mov    0xc(%eax,%edx,8),%edx
    6186:	8b 45 08             	mov    0x8(%ebp),%eax
    6189:	8b 75 f4             	mov    -0xc(%ebp),%esi
    618c:	83 c6 04             	add    $0x4,%esi
    618f:	8b 44 f0 0c          	mov    0xc(%eax,%esi,8),%eax
    6193:	83 ec 08             	sub    $0x8,%esp
    6196:	53                   	push   %ebx
    6197:	51                   	push   %ecx
    6198:	52                   	push   %edx
    6199:	50                   	push   %eax
    619a:	ff 75 f4             	pushl  -0xc(%ebp)
    619d:	68 dc dc 00 00       	push   $0xdcdc
    61a2:	e8 75 5f 00 00       	call   c11c <printl>
    61a7:	83 c4 20             	add    $0x20,%esp
    61aa:	eb 01                	jmp    61ad <print_hdinfo+0xd5>
    61ac:	90                   	nop
    61ad:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    61b1:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    61b5:	7e 97                	jle    614e <print_hdinfo+0x76>
    61b7:	90                   	nop
    61b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    61bb:	5b                   	pop    %ebx
    61bc:	5e                   	pop    %esi
    61bd:	5d                   	pop    %ebp
    61be:	c3                   	ret    

000061bf <hd_identify>:
    61bf:	55                   	push   %ebp
    61c0:	89 e5                	mov    %esp,%ebp
    61c2:	83 ec 18             	sub    $0x18,%esp
    61c5:	8b 45 08             	mov    0x8(%ebp),%eax
    61c8:	c1 e0 04             	shl    $0x4,%eax
    61cb:	83 c8 a0             	or     $0xffffffa0,%eax
    61ce:	88 45 f2             	mov    %al,-0xe(%ebp)
    61d1:	c6 45 f3 ec          	movb   $0xec,-0xd(%ebp)
    61d5:	83 ec 0c             	sub    $0xc,%esp
    61d8:	8d 45 ed             	lea    -0x13(%ebp),%eax
    61db:	50                   	push   %eax
    61dc:	e8 46 02 00 00       	call   6427 <hd_cmd_out>
    61e1:	83 c4 10             	add    $0x10,%esp
    61e4:	e8 40 03 00 00       	call   6529 <interrupt_wait>
    61e9:	83 ec 04             	sub    $0x4,%esp
    61ec:	68 00 02 00 00       	push   $0x200
    61f1:	68 a0 30 01 00       	push   $0x130a0
    61f6:	68 f0 01 00 00       	push   $0x1f0
    61fb:	e8 63 04 00 00       	call   6663 <port_read>
    6200:	83 c4 10             	add    $0x10,%esp
    6203:	83 ec 0c             	sub    $0xc,%esp
    6206:	68 a0 30 01 00       	push   $0x130a0
    620b:	e8 52 00 00 00       	call   6262 <print_identify_info>
    6210:	83 c4 10             	add    $0x10,%esp
    6213:	c7 45 f4 a0 30 01 00 	movl   $0x130a0,-0xc(%ebp)
    621a:	8b 45 08             	mov    0x8(%ebp),%eax
    621d:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    6223:	05 a4 34 01 00       	add    $0x134a4,%eax
    6228:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    622e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6231:	83 c0 7a             	add    $0x7a,%eax
    6234:	0f b7 00             	movzwl (%eax),%eax
    6237:	0f b7 c0             	movzwl %ax,%eax
    623a:	c1 e0 10             	shl    $0x10,%eax
    623d:	89 c2                	mov    %eax,%edx
    623f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6242:	83 c0 78             	add    $0x78,%eax
    6245:	0f b7 00             	movzwl (%eax),%eax
    6248:	0f b7 c0             	movzwl %ax,%eax
    624b:	01 d0                	add    %edx,%eax
    624d:	89 c2                	mov    %eax,%edx
    624f:	8b 45 08             	mov    0x8(%ebp),%eax
    6252:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    6258:	05 a8 34 01 00       	add    $0x134a8,%eax
    625d:	89 10                	mov    %edx,(%eax)
    625f:	90                   	nop
    6260:	c9                   	leave  
    6261:	c3                   	ret    

00006262 <print_identify_info>:
    6262:	55                   	push   %ebp
    6263:	89 e5                	mov    %esp,%ebp
    6265:	83 ec 78             	sub    $0x78,%esp
    6268:	c7 45 88 0a 00 00 00 	movl   $0xa,-0x78(%ebp)
    626f:	c7 45 8c 14 00 00 00 	movl   $0x14,-0x74(%ebp)
    6276:	c7 45 90 18 dd 00 00 	movl   $0xdd18,-0x70(%ebp)
    627d:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
    6284:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
    628b:	c7 45 9c 1e dd 00 00 	movl   $0xdd1e,-0x64(%ebp)
    6292:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    6299:	e9 b8 00 00 00       	jmp    6356 <print_identify_info+0xf4>
    629e:	8b 55 f0             	mov    -0x10(%ebp),%edx
    62a1:	89 d0                	mov    %edx,%eax
    62a3:	01 c0                	add    %eax,%eax
    62a5:	01 d0                	add    %edx,%eax
    62a7:	c1 e0 02             	shl    $0x2,%eax
    62aa:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    62ad:	01 c8                	add    %ecx,%eax
    62af:	83 e8 70             	sub    $0x70,%eax
    62b2:	8b 00                	mov    (%eax),%eax
    62b4:	8d 14 00             	lea    (%eax,%eax,1),%edx
    62b7:	8b 45 08             	mov    0x8(%ebp),%eax
    62ba:	01 d0                	add    %edx,%eax
    62bc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    62bf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    62c6:	eb 31                	jmp    62f9 <print_identify_info+0x97>
    62c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    62cb:	8d 50 01             	lea    0x1(%eax),%edx
    62ce:	89 55 ec             	mov    %edx,-0x14(%ebp)
    62d1:	8b 55 f4             	mov    -0xc(%ebp),%edx
    62d4:	01 d2                	add    %edx,%edx
    62d6:	83 c2 01             	add    $0x1,%edx
    62d9:	0f b6 00             	movzbl (%eax),%eax
    62dc:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    62e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    62e3:	8d 50 01             	lea    0x1(%eax),%edx
    62e6:	89 55 ec             	mov    %edx,-0x14(%ebp)
    62e9:	8b 55 f4             	mov    -0xc(%ebp),%edx
    62ec:	01 d2                	add    %edx,%edx
    62ee:	0f b6 00             	movzbl (%eax),%eax
    62f1:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    62f5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    62f9:	8b 55 f0             	mov    -0x10(%ebp),%edx
    62fc:	89 d0                	mov    %edx,%eax
    62fe:	01 c0                	add    %eax,%eax
    6300:	01 d0                	add    %edx,%eax
    6302:	c1 e0 02             	shl    $0x2,%eax
    6305:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    6308:	01 c8                	add    %ecx,%eax
    630a:	83 e8 6c             	sub    $0x6c,%eax
    630d:	8b 00                	mov    (%eax),%eax
    630f:	89 c2                	mov    %eax,%edx
    6311:	c1 ea 1f             	shr    $0x1f,%edx
    6314:	01 d0                	add    %edx,%eax
    6316:	d1 f8                	sar    %eax
    6318:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    631b:	7c ab                	jl     62c8 <print_identify_info+0x66>
    631d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6320:	01 c0                	add    %eax,%eax
    6322:	c6 44 05 a0 00       	movb   $0x0,-0x60(%ebp,%eax,1)
    6327:	8b 55 f0             	mov    -0x10(%ebp),%edx
    632a:	89 d0                	mov    %edx,%eax
    632c:	01 c0                	add    %eax,%eax
    632e:	01 d0                	add    %edx,%eax
    6330:	c1 e0 02             	shl    $0x2,%eax
    6333:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    6336:	01 c8                	add    %ecx,%eax
    6338:	83 e8 68             	sub    $0x68,%eax
    633b:	8b 00                	mov    (%eax),%eax
    633d:	83 ec 04             	sub    $0x4,%esp
    6340:	8d 55 a0             	lea    -0x60(%ebp),%edx
    6343:	52                   	push   %edx
    6344:	50                   	push   %eax
    6345:	68 27 dd 00 00       	push   $0xdd27
    634a:	e8 cd 5d 00 00       	call   c11c <printl>
    634f:	83 c4 10             	add    $0x10,%esp
    6352:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    6356:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6359:	83 f8 01             	cmp    $0x1,%eax
    635c:	0f 86 3c ff ff ff    	jbe    629e <print_identify_info+0x3c>
    6362:	8b 45 08             	mov    0x8(%ebp),%eax
    6365:	83 c0 62             	add    $0x62,%eax
    6368:	0f b7 00             	movzwl (%eax),%eax
    636b:	0f b7 c0             	movzwl %ax,%eax
    636e:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6371:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6374:	25 00 02 00 00       	and    $0x200,%eax
    6379:	85 c0                	test   %eax,%eax
    637b:	74 07                	je     6384 <print_identify_info+0x122>
    637d:	b8 34 dd 00 00       	mov    $0xdd34,%eax
    6382:	eb 05                	jmp    6389 <print_identify_info+0x127>
    6384:	b8 38 dd 00 00       	mov    $0xdd38,%eax
    6389:	83 ec 08             	sub    $0x8,%esp
    638c:	50                   	push   %eax
    638d:	68 3b dd 00 00       	push   $0xdd3b
    6392:	e8 85 5d 00 00       	call   c11c <printl>
    6397:	83 c4 10             	add    $0x10,%esp
    639a:	8b 45 08             	mov    0x8(%ebp),%eax
    639d:	05 a6 00 00 00       	add    $0xa6,%eax
    63a2:	0f b7 00             	movzwl (%eax),%eax
    63a5:	0f b7 c0             	movzwl %ax,%eax
    63a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    63ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    63ae:	25 00 04 00 00       	and    $0x400,%eax
    63b3:	85 c0                	test   %eax,%eax
    63b5:	74 07                	je     63be <print_identify_info+0x15c>
    63b7:	b8 34 dd 00 00       	mov    $0xdd34,%eax
    63bc:	eb 05                	jmp    63c3 <print_identify_info+0x161>
    63be:	b8 38 dd 00 00       	mov    $0xdd38,%eax
    63c3:	83 ec 08             	sub    $0x8,%esp
    63c6:	50                   	push   %eax
    63c7:	68 53 dd 00 00       	push   $0xdd53
    63cc:	e8 4b 5d 00 00       	call   c11c <printl>
    63d1:	83 c4 10             	add    $0x10,%esp
    63d4:	8b 45 08             	mov    0x8(%ebp),%eax
    63d7:	83 c0 7a             	add    $0x7a,%eax
    63da:	0f b7 00             	movzwl (%eax),%eax
    63dd:	0f b7 c0             	movzwl %ax,%eax
    63e0:	c1 e0 10             	shl    $0x10,%eax
    63e3:	89 c2                	mov    %eax,%edx
    63e5:	8b 45 08             	mov    0x8(%ebp),%eax
    63e8:	83 c0 78             	add    $0x78,%eax
    63eb:	0f b7 00             	movzwl (%eax),%eax
    63ee:	0f b7 c0             	movzwl %ax,%eax
    63f1:	01 d0                	add    %edx,%eax
    63f3:	89 45 e0             	mov    %eax,-0x20(%ebp)
    63f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
    63f9:	c1 e0 09             	shl    $0x9,%eax
    63fc:	89 c1                	mov    %eax,%ecx
    63fe:	ba 83 de 1b 43       	mov    $0x431bde83,%edx
    6403:	89 c8                	mov    %ecx,%eax
    6405:	f7 ea                	imul   %edx
    6407:	c1 fa 12             	sar    $0x12,%edx
    640a:	89 c8                	mov    %ecx,%eax
    640c:	c1 f8 1f             	sar    $0x1f,%eax
    640f:	29 c2                	sub    %eax,%edx
    6411:	89 d0                	mov    %edx,%eax
    6413:	83 ec 08             	sub    $0x8,%esp
    6416:	50                   	push   %eax
    6417:	68 6d dd 00 00       	push   $0xdd6d
    641c:	e8 fb 5c 00 00       	call   c11c <printl>
    6421:	83 c4 10             	add    $0x10,%esp
    6424:	90                   	nop
    6425:	c9                   	leave  
    6426:	c3                   	ret    

00006427 <hd_cmd_out>:
    6427:	55                   	push   %ebp
    6428:	89 e5                	mov    %esp,%ebp
    642a:	83 ec 08             	sub    $0x8,%esp
    642d:	83 ec 04             	sub    $0x4,%esp
    6430:	68 10 27 00 00       	push   $0x2710
    6435:	6a 00                	push   $0x0
    6437:	68 80 00 00 00       	push   $0x80
    643c:	e8 04 01 00 00       	call   6545 <waitfor>
    6441:	83 c4 10             	add    $0x10,%esp
    6444:	85 c0                	test   %eax,%eax
    6446:	75 10                	jne    6458 <hd_cmd_out+0x31>
    6448:	83 ec 0c             	sub    $0xc,%esp
    644b:	68 81 dd 00 00       	push   $0xdd81
    6450:	e8 f1 b8 ff ff       	call   1d46 <panic>
    6455:	83 c4 10             	add    $0x10,%esp
    6458:	83 ec 08             	sub    $0x8,%esp
    645b:	6a 00                	push   $0x0
    645d:	68 f6 03 00 00       	push   $0x3f6
    6462:	e8 e6 01 00 00       	call   664d <out_byte>
    6467:	83 c4 10             	add    $0x10,%esp
    646a:	8b 45 08             	mov    0x8(%ebp),%eax
    646d:	0f b6 00             	movzbl (%eax),%eax
    6470:	0f b6 c0             	movzbl %al,%eax
    6473:	83 ec 08             	sub    $0x8,%esp
    6476:	50                   	push   %eax
    6477:	68 f1 01 00 00       	push   $0x1f1
    647c:	e8 cc 01 00 00       	call   664d <out_byte>
    6481:	83 c4 10             	add    $0x10,%esp
    6484:	8b 45 08             	mov    0x8(%ebp),%eax
    6487:	0f b6 40 01          	movzbl 0x1(%eax),%eax
    648b:	0f b6 c0             	movzbl %al,%eax
    648e:	83 ec 08             	sub    $0x8,%esp
    6491:	50                   	push   %eax
    6492:	68 f2 01 00 00       	push   $0x1f2
    6497:	e8 b1 01 00 00       	call   664d <out_byte>
    649c:	83 c4 10             	add    $0x10,%esp
    649f:	8b 45 08             	mov    0x8(%ebp),%eax
    64a2:	0f b6 40 02          	movzbl 0x2(%eax),%eax
    64a6:	0f b6 c0             	movzbl %al,%eax
    64a9:	83 ec 08             	sub    $0x8,%esp
    64ac:	50                   	push   %eax
    64ad:	68 f3 01 00 00       	push   $0x1f3
    64b2:	e8 96 01 00 00       	call   664d <out_byte>
    64b7:	83 c4 10             	add    $0x10,%esp
    64ba:	8b 45 08             	mov    0x8(%ebp),%eax
    64bd:	0f b6 40 03          	movzbl 0x3(%eax),%eax
    64c1:	0f b6 c0             	movzbl %al,%eax
    64c4:	83 ec 08             	sub    $0x8,%esp
    64c7:	50                   	push   %eax
    64c8:	68 f4 01 00 00       	push   $0x1f4
    64cd:	e8 7b 01 00 00       	call   664d <out_byte>
    64d2:	83 c4 10             	add    $0x10,%esp
    64d5:	8b 45 08             	mov    0x8(%ebp),%eax
    64d8:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    64dc:	0f b6 c0             	movzbl %al,%eax
    64df:	83 ec 08             	sub    $0x8,%esp
    64e2:	50                   	push   %eax
    64e3:	68 f5 01 00 00       	push   $0x1f5
    64e8:	e8 60 01 00 00       	call   664d <out_byte>
    64ed:	83 c4 10             	add    $0x10,%esp
    64f0:	8b 45 08             	mov    0x8(%ebp),%eax
    64f3:	0f b6 40 05          	movzbl 0x5(%eax),%eax
    64f7:	0f b6 c0             	movzbl %al,%eax
    64fa:	83 ec 08             	sub    $0x8,%esp
    64fd:	50                   	push   %eax
    64fe:	68 f6 01 00 00       	push   $0x1f6
    6503:	e8 45 01 00 00       	call   664d <out_byte>
    6508:	83 c4 10             	add    $0x10,%esp
    650b:	8b 45 08             	mov    0x8(%ebp),%eax
    650e:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6512:	0f b6 c0             	movzbl %al,%eax
    6515:	83 ec 08             	sub    $0x8,%esp
    6518:	50                   	push   %eax
    6519:	68 f7 01 00 00       	push   $0x1f7
    651e:	e8 2a 01 00 00       	call   664d <out_byte>
    6523:	83 c4 10             	add    $0x10,%esp
    6526:	90                   	nop
    6527:	c9                   	leave  
    6528:	c3                   	ret    

00006529 <interrupt_wait>:
    6529:	55                   	push   %ebp
    652a:	89 e5                	mov    %esp,%ebp
    652c:	83 ec 38             	sub    $0x38,%esp
    652f:	83 ec 04             	sub    $0x4,%esp
    6532:	8d 45 c8             	lea    -0x38(%ebp),%eax
    6535:	50                   	push   %eax
    6536:	6a f6                	push   $0xfffffff6
    6538:	6a 02                	push   $0x2
    653a:	e8 a9 5f 00 00       	call   c4e8 <send_recv>
    653f:	83 c4 10             	add    $0x10,%esp
    6542:	90                   	nop
    6543:	c9                   	leave  
    6544:	c3                   	ret    

00006545 <waitfor>:
    6545:	55                   	push   %ebp
    6546:	89 e5                	mov    %esp,%ebp
    6548:	83 ec 18             	sub    $0x18,%esp
    654b:	e8 80 b2 ff ff       	call   17d0 <get_ticks>
    6550:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6553:	eb 22                	jmp    6577 <waitfor+0x32>
    6555:	83 ec 0c             	sub    $0xc,%esp
    6558:	68 f7 01 00 00       	push   $0x1f7
    655d:	e8 f7 00 00 00       	call   6659 <in_byte>
    6562:	83 c4 10             	add    $0x10,%esp
    6565:	0f b6 c0             	movzbl %al,%eax
    6568:	23 45 08             	and    0x8(%ebp),%eax
    656b:	39 45 0c             	cmp    %eax,0xc(%ebp)
    656e:	75 07                	jne    6577 <waitfor+0x32>
    6570:	b8 01 00 00 00       	mov    $0x1,%eax
    6575:	eb 1d                	jmp    6594 <waitfor+0x4f>
    6577:	e8 54 b2 ff ff       	call   17d0 <get_ticks>
    657c:	2b 45 f4             	sub    -0xc(%ebp),%eax
    657f:	89 c2                	mov    %eax,%edx
    6581:	89 d0                	mov    %edx,%eax
    6583:	c1 e0 02             	shl    $0x2,%eax
    6586:	01 d0                	add    %edx,%eax
    6588:	01 c0                	add    %eax,%eax
    658a:	39 45 10             	cmp    %eax,0x10(%ebp)
    658d:	7f c6                	jg     6555 <waitfor+0x10>
    658f:	b8 00 00 00 00       	mov    $0x0,%eax
    6594:	c9                   	leave  
    6595:	c3                   	ret    

00006596 <hd_handler>:
    6596:	55                   	push   %ebp
    6597:	89 e5                	mov    %esp,%ebp
    6599:	83 ec 08             	sub    $0x8,%esp
    659c:	83 ec 0c             	sub    $0xc,%esp
    659f:	68 f7 01 00 00       	push   $0x1f7
    65a4:	e8 b0 00 00 00       	call   6659 <in_byte>
    65a9:	83 c4 10             	add    $0x10,%esp
    65ac:	a2 80 30 01 00       	mov    %al,0x13080
    65b1:	83 ec 0c             	sub    $0xc,%esp
    65b4:	6a 02                	push   $0x2
    65b6:	e8 7f e9 ff ff       	call   4f3a <inform_int>
    65bb:	83 c4 10             	add    $0x10,%esp
    65be:	90                   	nop
    65bf:	c9                   	leave  
    65c0:	c3                   	ret    
    65c1:	66 90                	xchg   %ax,%ax
    65c3:	66 90                	xchg   %ax,%ax
    65c5:	66 90                	xchg   %ax,%ax
    65c7:	66 90                	xchg   %ax,%ax
    65c9:	66 90                	xchg   %ax,%ax
    65cb:	66 90                	xchg   %ax,%ax
    65cd:	66 90                	xchg   %ax,%ax
    65cf:	90                   	nop

000065d0 <disp_str>:
    65d0:	55                   	push   %ebp
    65d1:	89 e5                	mov    %esp,%ebp
    65d3:	8b 75 08             	mov    0x8(%ebp),%esi
    65d6:	8b 3d a4 99 03 00    	mov    0x399a4,%edi
    65dc:	b4 0f                	mov    $0xf,%ah

000065de <disp_str.1>:
    65de:	ac                   	lods   %ds:(%esi),%al
    65df:	84 c0                	test   %al,%al
    65e1:	74 23                	je     6606 <disp_str.2>
    65e3:	3c 0a                	cmp    $0xa,%al
    65e5:	75 16                	jne    65fd <disp_str.3>
    65e7:	50                   	push   %eax
    65e8:	89 f8                	mov    %edi,%eax
    65ea:	b3 a0                	mov    $0xa0,%bl
    65ec:	f6 f3                	div    %bl
    65ee:	25 ff 00 00 00       	and    $0xff,%eax
    65f3:	40                   	inc    %eax
    65f4:	b3 a0                	mov    $0xa0,%bl
    65f6:	f6 e3                	mul    %bl
    65f8:	89 c7                	mov    %eax,%edi
    65fa:	58                   	pop    %eax
    65fb:	eb e1                	jmp    65de <disp_str.1>

000065fd <disp_str.3>:
    65fd:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6601:	83 c7 02             	add    $0x2,%edi
    6604:	eb d8                	jmp    65de <disp_str.1>

00006606 <disp_str.2>:
    6606:	89 3d a4 99 03 00    	mov    %edi,0x399a4
    660c:	5d                   	pop    %ebp
    660d:	c3                   	ret    

0000660e <disp_color_str>:
    660e:	55                   	push   %ebp
    660f:	89 e5                	mov    %esp,%ebp
    6611:	8b 75 08             	mov    0x8(%ebp),%esi
    6614:	8b 3d a4 99 03 00    	mov    0x399a4,%edi
    661a:	8a 65 0c             	mov    0xc(%ebp),%ah

0000661d <disp_color_str.1>:
    661d:	ac                   	lods   %ds:(%esi),%al
    661e:	84 c0                	test   %al,%al
    6620:	74 23                	je     6645 <disp_color_str.2>
    6622:	3c 0a                	cmp    $0xa,%al
    6624:	75 16                	jne    663c <disp_color_str.3>
    6626:	50                   	push   %eax
    6627:	89 f8                	mov    %edi,%eax
    6629:	b3 a0                	mov    $0xa0,%bl
    662b:	f6 f3                	div    %bl
    662d:	25 ff 00 00 00       	and    $0xff,%eax
    6632:	40                   	inc    %eax
    6633:	b3 a0                	mov    $0xa0,%bl
    6635:	f6 e3                	mul    %bl
    6637:	89 c7                	mov    %eax,%edi
    6639:	58                   	pop    %eax
    663a:	eb e1                	jmp    661d <disp_color_str.1>

0000663c <disp_color_str.3>:
    663c:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6640:	83 c7 02             	add    $0x2,%edi
    6643:	eb d8                	jmp    661d <disp_color_str.1>

00006645 <disp_color_str.2>:
    6645:	89 3d a4 99 03 00    	mov    %edi,0x399a4
    664b:	5d                   	pop    %ebp
    664c:	c3                   	ret    

0000664d <out_byte>:
    664d:	8b 54 24 04          	mov    0x4(%esp),%edx
    6651:	8a 44 24 08          	mov    0x8(%esp),%al
    6655:	ee                   	out    %al,(%dx)
    6656:	90                   	nop
    6657:	90                   	nop
    6658:	c3                   	ret    

00006659 <in_byte>:
    6659:	8b 54 24 04          	mov    0x4(%esp),%edx
    665d:	31 c0                	xor    %eax,%eax
    665f:	ec                   	in     (%dx),%al
    6660:	90                   	nop
    6661:	90                   	nop
    6662:	c3                   	ret    

00006663 <port_read>:
    6663:	8b 54 24 04          	mov    0x4(%esp),%edx
    6667:	8b 7c 24 08          	mov    0x8(%esp),%edi
    666b:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    666f:	d1 e9                	shr    %ecx
    6671:	fc                   	cld    
    6672:	f3 66 6d             	rep insw (%dx),%es:(%edi)
    6675:	c3                   	ret    

00006676 <port_write>:
    6676:	8b 54 24 04          	mov    0x4(%esp),%edx
    667a:	8b 74 24 08          	mov    0x8(%esp),%esi
    667e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    6682:	d1 e9                	shr    %ecx
    6684:	fc                   	cld    
    6685:	f3 66 6f             	rep outsw %ds:(%esi),(%dx)
    6688:	c3                   	ret    

00006689 <disable_irq>:
    6689:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    668d:	9c                   	pushf  
    668e:	fa                   	cli    
    668f:	b4 01                	mov    $0x1,%ah
    6691:	d2 c4                	rol    %cl,%ah
    6693:	80 f9 08             	cmp    $0x8,%cl
    6696:	73 11                	jae    66a9 <disable_8>

00006698 <disable_0>:
    6698:	e4 21                	in     $0x21,%al
    669a:	84 e0                	test   %ah,%al
    669c:	75 1c                	jne    66ba <dis_already>
    669e:	08 e0                	or     %ah,%al
    66a0:	e6 21                	out    %al,$0x21
    66a2:	9d                   	popf   
    66a3:	b8 01 00 00 00       	mov    $0x1,%eax
    66a8:	c3                   	ret    

000066a9 <disable_8>:
    66a9:	e4 a1                	in     $0xa1,%al
    66ab:	84 e0                	test   %ah,%al
    66ad:	75 0b                	jne    66ba <dis_already>
    66af:	08 e0                	or     %ah,%al
    66b1:	e6 a1                	out    %al,$0xa1
    66b3:	9d                   	popf   
    66b4:	b8 01 00 00 00       	mov    $0x1,%eax
    66b9:	c3                   	ret    

000066ba <dis_already>:
    66ba:	9d                   	popf   
    66bb:	31 c0                	xor    %eax,%eax
    66bd:	c3                   	ret    

000066be <enable_irq>:
    66be:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    66c2:	9c                   	pushf  
    66c3:	fa                   	cli    
    66c4:	b4 fe                	mov    $0xfe,%ah
    66c6:	d2 c4                	rol    %cl,%ah
    66c8:	80 f9 08             	cmp    $0x8,%cl
    66cb:	73 08                	jae    66d5 <enable_8>

000066cd <enable_0>:
    66cd:	e4 21                	in     $0x21,%al
    66cf:	20 e0                	and    %ah,%al
    66d1:	e6 21                	out    %al,$0x21
    66d3:	9d                   	popf   
    66d4:	c3                   	ret    

000066d5 <enable_8>:
    66d5:	e4 a1                	in     $0xa1,%al
    66d7:	20 e0                	and    %ah,%al
    66d9:	e6 a1                	out    %al,$0xa1
    66db:	9d                   	popf   
    66dc:	c3                   	ret    

000066dd <disable_int>:
    66dd:	fa                   	cli    
    66de:	c3                   	ret    

000066df <enable_int>:
    66df:	fb                   	sti    
    66e0:	c3                   	ret    

000066e1 <glitter>:
    66e1:	50                   	push   %eax
    66e2:	53                   	push   %ebx
    66e3:	52                   	push   %edx
    66e4:	a1 20 67 00 00       	mov    0x6720,%eax
    66e9:	40                   	inc    %eax
    66ea:	83 f8 42             	cmp    $0x42,%eax
    66ed:	74 02                	je     66f1 <glitter.1>
    66ef:	eb 02                	jmp    66f3 <glitter.2>

000066f1 <glitter.1>:
    66f1:	31 c0                	xor    %eax,%eax

000066f3 <glitter.2>:
    66f3:	a3 20 67 00 00       	mov    %eax,0x6720
    66f8:	8a 90 24 67 00 00    	mov    0x6724(%eax),%dl
    66fe:	31 c0                	xor    %eax,%eax
    6700:	8a 44 24 10          	mov    0x10(%esp),%al
    6704:	b3 50                	mov    $0x50,%bl
    6706:	f6 e3                	mul    %bl
    6708:	66 8b 5c 24 14       	mov    0x14(%esp),%bx
    670d:	66 01 d8             	add    %bx,%ax
    6710:	66 d1 e0             	shl    %ax
    6713:	0f b7 c0             	movzwl %ax,%eax
    6716:	65 88 10             	mov    %dl,%gs:(%eax)
    6719:	40                   	inc    %eax
    671a:	65 c6 00 04          	movb   $0x4,%gs:(%eax)
    671e:	eb 46                	jmp    6766 <glitter.end>

00006720 <glitter.current_char>:
    6720:	00 00                	add    %al,(%eax)
	...

00006724 <glitter.glitter_str>:
    6724:	2d 5c 7c 2f 31       	sub    $0x312f7c5c,%eax
    6729:	32 33                	xor    (%ebx),%dh
    672b:	34 35                	xor    $0x35,%al
    672d:	36 37                	ss aaa 
    672f:	38 39                	cmp    %bh,(%ecx)
    6731:	30 61 62             	xor    %ah,0x62(%ecx)
    6734:	63 64 65 66          	arpl   %sp,0x66(%ebp,%eiz,2)
    6738:	67 68 69 6a 6b 6c    	addr16 push $0x6c6b6a69
    673e:	6d                   	insl   (%dx),%es:(%edi)
    673f:	6e                   	outsb  %ds:(%esi),(%dx)
    6740:	6f                   	outsl  %ds:(%esi),(%dx)
    6741:	70 71                	jo     67b4 <get_boot_params+0x4a>
    6743:	72 73                	jb     67b8 <get_boot_params+0x4e>
    6745:	74 75                	je     67bc <get_boot_params+0x52>
    6747:	76 77                	jbe    67c0 <get_boot_params+0x56>
    6749:	78 79                	js     67c4 <get_boot_params+0x5a>
    674b:	7a 41                	jp     678e <get_boot_params+0x24>
    674d:	42                   	inc    %edx
    674e:	43                   	inc    %ebx
    674f:	44                   	inc    %esp
    6750:	45                   	inc    %ebp
    6751:	46                   	inc    %esi
    6752:	47                   	inc    %edi
    6753:	48                   	dec    %eax
    6754:	49                   	dec    %ecx
    6755:	4a                   	dec    %edx
    6756:	4b                   	dec    %ebx
    6757:	4c                   	dec    %esp
    6758:	4d                   	dec    %ebp
    6759:	4e                   	dec    %esi
    675a:	4f                   	dec    %edi
    675b:	50                   	push   %eax
    675c:	51                   	push   %ecx
    675d:	52                   	push   %edx
    675e:	53                   	push   %ebx
    675f:	54                   	push   %esp
    6760:	55                   	push   %ebp
    6761:	56                   	push   %esi
    6762:	57                   	push   %edi
    6763:	58                   	pop    %eax
    6764:	59                   	pop    %ecx
    6765:	5a                   	pop    %edx

00006766 <glitter.end>:
    6766:	5a                   	pop    %edx
    6767:	5b                   	pop    %ebx
    6768:	58                   	pop    %eax
    6769:	c3                   	ret    

0000676a <get_boot_params>:
    676a:	55                   	push   %ebp
    676b:	89 e5                	mov    %esp,%ebp
    676d:	83 ec 18             	sub    $0x18,%esp
    6770:	c7 45 f4 00 09 00 00 	movl   $0x900,-0xc(%ebp)
    6777:	8b 45 f4             	mov    -0xc(%ebp),%eax
    677a:	8b 00                	mov    (%eax),%eax
    677c:	3d 07 b0 00 00       	cmp    $0xb007,%eax
    6781:	74 19                	je     679c <get_boot_params+0x32>
    6783:	6a 2b                	push   $0x2b
    6785:	68 8c dd 00 00       	push   $0xdd8c
    678a:	68 8c dd 00 00       	push   $0xdd8c
    678f:	68 9a dd 00 00       	push   $0xdd9a
    6794:	e8 64 5f 00 00       	call   c6fd <assertion_failure>
    6799:	83 c4 10             	add    $0x10,%esp
    679c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    679f:	8b 50 04             	mov    0x4(%eax),%edx
    67a2:	8b 45 08             	mov    0x8(%ebp),%eax
    67a5:	89 10                	mov    %edx,(%eax)
    67a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    67aa:	83 c0 08             	add    $0x8,%eax
    67ad:	8b 00                	mov    (%eax),%eax
    67af:	89 c2                	mov    %eax,%edx
    67b1:	8b 45 08             	mov    0x8(%ebp),%eax
    67b4:	89 50 04             	mov    %edx,0x4(%eax)
    67b7:	8b 45 08             	mov    0x8(%ebp),%eax
    67ba:	8b 40 04             	mov    0x4(%eax),%eax
    67bd:	83 ec 04             	sub    $0x4,%esp
    67c0:	6a 04                	push   $0x4
    67c2:	68 b8 dd 00 00       	push   $0xddb8
    67c7:	50                   	push   %eax
    67c8:	e8 d5 5d 00 00       	call   c5a2 <memcmp>
    67cd:	83 c4 10             	add    $0x10,%esp
    67d0:	85 c0                	test   %eax,%eax
    67d2:	74 19                	je     67ed <get_boot_params+0x83>
    67d4:	6a 34                	push   $0x34
    67d6:	68 8c dd 00 00       	push   $0xdd8c
    67db:	68 8c dd 00 00       	push   $0xdd8c
    67e0:	68 c0 dd 00 00       	push   $0xddc0
    67e5:	e8 13 5f 00 00       	call   c6fd <assertion_failure>
    67ea:	83 c4 10             	add    $0x10,%esp
    67ed:	90                   	nop
    67ee:	c9                   	leave  
    67ef:	c3                   	ret    

000067f0 <get_kernel_map>:
    67f0:	55                   	push   %ebp
    67f1:	89 e5                	mov    %esp,%ebp
    67f3:	83 ec 28             	sub    $0x28,%esp
    67f6:	83 ec 0c             	sub    $0xc,%esp
    67f9:	8d 45 d8             	lea    -0x28(%ebp),%eax
    67fc:	50                   	push   %eax
    67fd:	e8 68 ff ff ff       	call   676a <get_boot_params>
    6802:	83 c4 10             	add    $0x10,%esp
    6805:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6808:	89 45 ec             	mov    %eax,-0x14(%ebp)
    680b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    680e:	83 ec 04             	sub    $0x4,%esp
    6811:	6a 04                	push   $0x4
    6813:	68 b8 dd 00 00       	push   $0xddb8
    6818:	50                   	push   %eax
    6819:	e8 84 5d 00 00       	call   c5a2 <memcmp>
    681e:	83 c4 10             	add    $0x10,%esp
    6821:	85 c0                	test   %eax,%eax
    6823:	74 0a                	je     682f <get_kernel_map+0x3f>
    6825:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    682a:	e9 cf 00 00 00       	jmp    68fe <get_kernel_map+0x10e>
    682f:	8b 45 08             	mov    0x8(%ebp),%eax
    6832:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    6838:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    683f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    6846:	eb 6b                	jmp    68b3 <get_kernel_map+0xc3>
    6848:	8b 55 dc             	mov    -0x24(%ebp),%edx
    684b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    684e:	8b 48 20             	mov    0x20(%eax),%ecx
    6851:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6854:	0f b7 40 2e          	movzwl 0x2e(%eax),%eax
    6858:	0f b7 c0             	movzwl %ax,%eax
    685b:	0f af 45 f0          	imul   -0x10(%ebp),%eax
    685f:	01 c8                	add    %ecx,%eax
    6861:	01 d0                	add    %edx,%eax
    6863:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6866:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6869:	8b 40 08             	mov    0x8(%eax),%eax
    686c:	83 e0 02             	and    $0x2,%eax
    686f:	85 c0                	test   %eax,%eax
    6871:	74 3c                	je     68af <get_kernel_map+0xbf>
    6873:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6876:	8b 40 0c             	mov    0xc(%eax),%eax
    6879:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    687c:	8b 45 e8             	mov    -0x18(%ebp),%eax
    687f:	8b 50 0c             	mov    0xc(%eax),%edx
    6882:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6885:	8b 40 14             	mov    0x14(%eax),%eax
    6888:	01 d0                	add    %edx,%eax
    688a:	89 45 e0             	mov    %eax,-0x20(%ebp)
    688d:	8b 45 08             	mov    0x8(%ebp),%eax
    6890:	8b 10                	mov    (%eax),%edx
    6892:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6895:	39 c2                	cmp    %eax,%edx
    6897:	76 08                	jbe    68a1 <get_kernel_map+0xb1>
    6899:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    689c:	8b 45 08             	mov    0x8(%ebp),%eax
    689f:	89 10                	mov    %edx,(%eax)
    68a1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    68a4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    68a7:	73 06                	jae    68af <get_kernel_map+0xbf>
    68a9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    68ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
    68af:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    68b3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    68b6:	0f b7 40 30          	movzwl 0x30(%eax),%eax
    68ba:	0f b7 c0             	movzwl %ax,%eax
    68bd:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    68c0:	7c 86                	jl     6848 <get_kernel_map+0x58>
    68c2:	8b 45 08             	mov    0x8(%ebp),%eax
    68c5:	8b 00                	mov    (%eax),%eax
    68c7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    68ca:	77 19                	ja     68e5 <get_kernel_map+0xf5>
    68cc:	6a 62                	push   $0x62
    68ce:	68 8c dd 00 00       	push   $0xdd8c
    68d3:	68 8c dd 00 00       	push   $0xdd8c
    68d8:	68 ef dd 00 00       	push   $0xddef
    68dd:	e8 1b 5e 00 00       	call   c6fd <assertion_failure>
    68e2:	83 c4 10             	add    $0x10,%esp
    68e5:	8b 45 08             	mov    0x8(%ebp),%eax
    68e8:	8b 00                	mov    (%eax),%eax
    68ea:	8b 55 f4             	mov    -0xc(%ebp),%edx
    68ed:	29 c2                	sub    %eax,%edx
    68ef:	89 d0                	mov    %edx,%eax
    68f1:	8d 50 ff             	lea    -0x1(%eax),%edx
    68f4:	8b 45 0c             	mov    0xc(%ebp),%eax
    68f7:	89 10                	mov    %edx,(%eax)
    68f9:	b8 00 00 00 00       	mov    $0x0,%eax
    68fe:	c9                   	leave  
    68ff:	c3                   	ret    

00006900 <itoa>:
    6900:	55                   	push   %ebp
    6901:	89 e5                	mov    %esp,%ebp
    6903:	83 ec 10             	sub    $0x10,%esp
    6906:	8b 45 08             	mov    0x8(%ebp),%eax
    6909:	89 45 fc             	mov    %eax,-0x4(%ebp)
    690c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    6913:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6916:	8d 50 01             	lea    0x1(%eax),%edx
    6919:	89 55 fc             	mov    %edx,-0x4(%ebp)
    691c:	c6 00 30             	movb   $0x30,(%eax)
    691f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6922:	8d 50 01             	lea    0x1(%eax),%edx
    6925:	89 55 fc             	mov    %edx,-0x4(%ebp)
    6928:	c6 00 78             	movb   $0x78,(%eax)
    692b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    692f:	75 0e                	jne    693f <itoa+0x3f>
    6931:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6934:	8d 50 01             	lea    0x1(%eax),%edx
    6937:	89 55 fc             	mov    %edx,-0x4(%ebp)
    693a:	c6 00 30             	movb   $0x30,(%eax)
    693d:	eb 61                	jmp    69a0 <itoa+0xa0>
    693f:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
    6946:	eb 52                	jmp    699a <itoa+0x9a>
    6948:	8b 45 f4             	mov    -0xc(%ebp),%eax
    694b:	8b 55 0c             	mov    0xc(%ebp),%edx
    694e:	89 c1                	mov    %eax,%ecx
    6950:	d3 fa                	sar    %cl,%edx
    6952:	89 d0                	mov    %edx,%eax
    6954:	83 e0 0f             	and    $0xf,%eax
    6957:	88 45 fb             	mov    %al,-0x5(%ebp)
    695a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    695e:	75 06                	jne    6966 <itoa+0x66>
    6960:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
    6964:	7e 30                	jle    6996 <itoa+0x96>
    6966:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    696d:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    6971:	83 c0 30             	add    $0x30,%eax
    6974:	88 45 fb             	mov    %al,-0x5(%ebp)
    6977:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
    697b:	7e 0a                	jle    6987 <itoa+0x87>
    697d:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    6981:	83 c0 07             	add    $0x7,%eax
    6984:	88 45 fb             	mov    %al,-0x5(%ebp)
    6987:	8b 45 fc             	mov    -0x4(%ebp),%eax
    698a:	8d 50 01             	lea    0x1(%eax),%edx
    698d:	89 55 fc             	mov    %edx,-0x4(%ebp)
    6990:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
    6994:	88 10                	mov    %dl,(%eax)
    6996:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
    699a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    699e:	79 a8                	jns    6948 <itoa+0x48>
    69a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    69a3:	c6 00 00             	movb   $0x0,(%eax)
    69a6:	8b 45 08             	mov    0x8(%ebp),%eax
    69a9:	c9                   	leave  
    69aa:	c3                   	ret    

000069ab <disp_int>:
    69ab:	55                   	push   %ebp
    69ac:	89 e5                	mov    %esp,%ebp
    69ae:	83 ec 18             	sub    $0x18,%esp
    69b1:	ff 75 08             	pushl  0x8(%ebp)
    69b4:	8d 45 e8             	lea    -0x18(%ebp),%eax
    69b7:	50                   	push   %eax
    69b8:	e8 43 ff ff ff       	call   6900 <itoa>
    69bd:	83 c4 08             	add    $0x8,%esp
    69c0:	83 ec 0c             	sub    $0xc,%esp
    69c3:	8d 45 e8             	lea    -0x18(%ebp),%eax
    69c6:	50                   	push   %eax
    69c7:	e8 04 fc ff ff       	call   65d0 <disp_str>
    69cc:	83 c4 10             	add    $0x10,%esp
    69cf:	90                   	nop
    69d0:	c9                   	leave  
    69d1:	c3                   	ret    

000069d2 <delay>:
    69d2:	55                   	push   %ebp
    69d3:	89 e5                	mov    %esp,%ebp
    69d5:	83 ec 10             	sub    $0x10,%esp
    69d8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    69df:	eb 2d                	jmp    6a0e <delay+0x3c>
    69e1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    69e8:	eb 1a                	jmp    6a04 <delay+0x32>
    69ea:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    69f1:	eb 04                	jmp    69f7 <delay+0x25>
    69f3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    69f7:	81 7d f8 0f 27 00 00 	cmpl   $0x270f,-0x8(%ebp)
    69fe:	7e f3                	jle    69f3 <delay+0x21>
    6a00:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    6a04:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
    6a08:	7e e0                	jle    69ea <delay+0x18>
    6a0a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6a0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6a11:	3b 45 08             	cmp    0x8(%ebp),%eax
    6a14:	7c cb                	jl     69e1 <delay+0xf>
    6a16:	90                   	nop
    6a17:	c9                   	leave  
    6a18:	c3                   	ret    

00006a19 <syslog>:
    6a19:	55                   	push   %ebp
    6a1a:	89 e5                	mov    %esp,%ebp
    6a1c:	81 ec 18 04 00 00    	sub    $0x418,%esp
    6a22:	8d 45 0c             	lea    0xc(%ebp),%eax
    6a25:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6a28:	8b 45 08             	mov    0x8(%ebp),%eax
    6a2b:	83 ec 04             	sub    $0x4,%esp
    6a2e:	ff 75 f4             	pushl  -0xc(%ebp)
    6a31:	50                   	push   %eax
    6a32:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6a38:	50                   	push   %eax
    6a39:	e8 86 57 00 00       	call   c1c4 <vsprintf>
    6a3e:	83 c4 10             	add    $0x10,%esp
    6a41:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6a44:	83 ec 0c             	sub    $0xc,%esp
    6a47:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6a4d:	50                   	push   %eax
    6a4e:	e8 7f 5a 00 00       	call   c4d2 <strlen>
    6a53:	83 c4 10             	add    $0x10,%esp
    6a56:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6a59:	74 19                	je     6a74 <syslog+0x5b>
    6a5b:	6a 2b                	push   $0x2b
    6a5d:	68 f6 dd 00 00       	push   $0xddf6
    6a62:	68 f6 dd 00 00       	push   $0xddf6
    6a67:	68 03 de 00 00       	push   $0xde03
    6a6c:	e8 8c 5c 00 00       	call   c6fd <assertion_failure>
    6a71:	83 c4 10             	add    $0x10,%esp
    6a74:	83 ec 0c             	sub    $0xc,%esp
    6a77:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6a7d:	50                   	push   %eax
    6a7e:	e8 85 36 00 00       	call   a108 <disklog>
    6a83:	83 c4 10             	add    $0x10,%esp
    6a86:	c9                   	leave  
    6a87:	c3                   	ret    

00006a88 <task_mm>:
    6a88:	55                   	push   %ebp
    6a89:	89 e5                	mov    %esp,%ebp
    6a8b:	83 ec 18             	sub    $0x18,%esp
    6a8e:	e8 ea 00 00 00       	call   6b7d <init_mm>
    6a93:	83 ec 04             	sub    $0x4,%esp
    6a96:	68 c0 99 03 00       	push   $0x399c0
    6a9b:	6a 2f                	push   $0x2f
    6a9d:	6a 02                	push   $0x2
    6a9f:	e8 44 5a 00 00       	call   c4e8 <send_recv>
    6aa4:	83 c4 10             	add    $0x10,%esp
    6aa7:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6aac:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6aaf:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
    6ab6:	a1 c4 99 03 00       	mov    0x399c4,%eax
    6abb:	89 45 ec             	mov    %eax,-0x14(%ebp)
    6abe:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
    6ac2:	74 4e                	je     6b12 <task_mm+0x8a>
    6ac4:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
    6ac8:	7f 08                	jg     6ad2 <task_mm+0x4a>
    6aca:	83 7d ec 0e          	cmpl   $0xe,-0x14(%ebp)
    6ace:	74 36                	je     6b06 <task_mm+0x7e>
    6ad0:	eb 4e                	jmp    6b20 <task_mm+0x98>
    6ad2:	83 7d ec 10          	cmpl   $0x10,-0x14(%ebp)
    6ad6:	74 08                	je     6ae0 <task_mm+0x58>
    6ad8:	83 7d ec 11          	cmpl   $0x11,-0x14(%ebp)
    6adc:	74 0e                	je     6aec <task_mm+0x64>
    6ade:	eb 40                	jmp    6b20 <task_mm+0x98>
    6ae0:	e8 61 01 00 00       	call   6c46 <do_fork>
    6ae5:	a3 c8 99 03 00       	mov    %eax,0x399c8
    6aea:	eb 63                	jmp    6b4f <task_mm+0xc7>
    6aec:	a1 c8 99 03 00       	mov    0x399c8,%eax
    6af1:	83 ec 0c             	sub    $0xc,%esp
    6af4:	50                   	push   %eax
    6af5:	e8 a5 04 00 00       	call   6f9f <do_exit>
    6afa:	83 c4 10             	add    $0x10,%esp
    6afd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6b04:	eb 49                	jmp    6b4f <task_mm+0xc7>
    6b06:	e8 11 07 00 00       	call   721c <do_exec>
    6b0b:	a3 c8 99 03 00       	mov    %eax,0x399c8
    6b10:	eb 3d                	jmp    6b4f <task_mm+0xc7>
    6b12:	e8 4f 06 00 00       	call   7166 <do_wait>
    6b17:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6b1e:	eb 2f                	jmp    6b4f <task_mm+0xc7>
    6b20:	83 ec 08             	sub    $0x8,%esp
    6b23:	68 c0 99 03 00       	push   $0x399c0
    6b28:	68 14 de 00 00       	push   $0xde14
    6b2d:	e8 b2 e8 ff ff       	call   53e4 <dump_msg>
    6b32:	83 c4 10             	add    $0x10,%esp
    6b35:	6a 3f                	push   $0x3f
    6b37:	68 24 de 00 00       	push   $0xde24
    6b3c:	68 24 de 00 00       	push   $0xde24
    6b41:	68 2e de 00 00       	push   $0xde2e
    6b46:	e8 b2 5b 00 00       	call   c6fd <assertion_failure>
    6b4b:	83 c4 10             	add    $0x10,%esp
    6b4e:	90                   	nop
    6b4f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    6b53:	0f 84 3a ff ff ff    	je     6a93 <task_mm+0xb>
    6b59:	c7 05 c4 99 03 00 12 	movl   $0x12,0x399c4
    6b60:	00 00 00 
    6b63:	83 ec 04             	sub    $0x4,%esp
    6b66:	68 c0 99 03 00       	push   $0x399c0
    6b6b:	ff 75 f0             	pushl  -0x10(%ebp)
    6b6e:	6a 01                	push   $0x1
    6b70:	e8 73 59 00 00       	call   c4e8 <send_recv>
    6b75:	83 c4 10             	add    $0x10,%esp
    6b78:	e9 16 ff ff ff       	jmp    6a93 <task_mm+0xb>

00006b7d <init_mm>:
    6b7d:	55                   	push   %ebp
    6b7e:	89 e5                	mov    %esp,%ebp
    6b80:	83 ec 18             	sub    $0x18,%esp
    6b83:	83 ec 0c             	sub    $0xc,%esp
    6b86:	8d 45 f0             	lea    -0x10(%ebp),%eax
    6b89:	50                   	push   %eax
    6b8a:	e8 db fb ff ff       	call   676a <get_boot_params>
    6b8f:	83 c4 10             	add    $0x10,%esp
    6b92:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6b95:	a3 90 95 03 00       	mov    %eax,0x39590
    6b9a:	a1 90 95 03 00       	mov    0x39590,%eax
    6b9f:	8d 90 ff ff 0f 00    	lea    0xfffff(%eax),%edx
    6ba5:	85 c0                	test   %eax,%eax
    6ba7:	0f 48 c2             	cmovs  %edx,%eax
    6baa:	c1 f8 14             	sar    $0x14,%eax
    6bad:	83 ec 08             	sub    $0x8,%esp
    6bb0:	50                   	push   %eax
    6bb1:	68 30 de 00 00       	push   $0xde30
    6bb6:	e8 61 55 00 00       	call   c11c <printl>
    6bbb:	83 c4 10             	add    $0x10,%esp
    6bbe:	90                   	nop
    6bbf:	c9                   	leave  
    6bc0:	c3                   	ret    

00006bc1 <alloc_mem>:
    6bc1:	55                   	push   %ebp
    6bc2:	89 e5                	mov    %esp,%ebp
    6bc4:	83 ec 18             	sub    $0x18,%esp
    6bc7:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
    6bcb:	7f 19                	jg     6be6 <alloc_mem+0x25>
    6bcd:	6a 6a                	push   $0x6a
    6bcf:	68 24 de 00 00       	push   $0xde24
    6bd4:	68 24 de 00 00       	push   $0xde24
    6bd9:	68 44 de 00 00       	push   $0xde44
    6bde:	e8 1a 5b 00 00       	call   c6fd <assertion_failure>
    6be3:	83 c4 10             	add    $0x10,%esp
    6be6:	81 7d 0c 00 00 10 00 	cmpl   $0x100000,0xc(%ebp)
    6bed:	7e 18                	jle    6c07 <alloc_mem+0x46>
    6bef:	83 ec 04             	sub    $0x4,%esp
    6bf2:	68 00 00 10 00       	push   $0x100000
    6bf7:	ff 75 0c             	pushl  0xc(%ebp)
    6bfa:	68 68 de 00 00       	push   $0xde68
    6bff:	e8 42 b1 ff ff       	call   1d46 <panic>
    6c04:	83 c4 10             	add    $0x10,%esp
    6c07:	8b 45 08             	mov    0x8(%ebp),%eax
    6c0a:	83 c0 01             	add    $0x1,%eax
    6c0d:	c1 e0 14             	shl    $0x14,%eax
    6c10:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6c13:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6c16:	8b 45 0c             	mov    0xc(%ebp),%eax
    6c19:	01 c2                	add    %eax,%edx
    6c1b:	a1 90 95 03 00       	mov    0x39590,%eax
    6c20:	39 c2                	cmp    %eax,%edx
    6c22:	7c 13                	jl     6c37 <alloc_mem+0x76>
    6c24:	83 ec 08             	sub    $0x8,%esp
    6c27:	ff 75 08             	pushl  0x8(%ebp)
    6c2a:	68 a4 de 00 00       	push   $0xdea4
    6c2f:	e8 12 b1 ff ff       	call   1d46 <panic>
    6c34:	83 c4 10             	add    $0x10,%esp
    6c37:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6c3a:	c9                   	leave  
    6c3b:	c3                   	ret    

00006c3c <free_mem>:
    6c3c:	55                   	push   %ebp
    6c3d:	89 e5                	mov    %esp,%ebp
    6c3f:	b8 00 00 00 00       	mov    $0x0,%eax
    6c44:	5d                   	pop    %ebp
    6c45:	c3                   	ret    

00006c46 <do_fork>:
    6c46:	55                   	push   %ebp
    6c47:	89 e5                	mov    %esp,%ebp
    6c49:	57                   	push   %edi
    6c4a:	56                   	push   %esi
    6c4b:	53                   	push   %ebx
    6c4c:	81 ec ac 00 00 00    	sub    $0xac,%esp
    6c52:	c7 45 e4 a0 a4 03 00 	movl   $0x3a4a0,-0x1c(%ebp)
    6c59:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    6c60:	eb 16                	jmp    6c78 <do_fork+0x32>
    6c62:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6c65:	8b 40 74             	mov    0x74(%eax),%eax
    6c68:	83 f8 20             	cmp    $0x20,%eax
    6c6b:	74 13                	je     6c80 <do_fork+0x3a>
    6c6d:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    6c71:	81 45 e4 98 01 00 00 	addl   $0x198,-0x1c(%ebp)
    6c78:	83 7d e0 24          	cmpl   $0x24,-0x20(%ebp)
    6c7c:	7e e4                	jle    6c62 <do_fork+0x1c>
    6c7e:	eb 01                	jmp    6c81 <do_fork+0x3b>
    6c80:	90                   	nop
    6c81:	8b 45 e0             	mov    -0x20(%ebp),%eax
    6c84:	89 45 dc             	mov    %eax,-0x24(%ebp)
    6c87:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6c8a:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6c90:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6c95:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    6c98:	74 19                	je     6cb3 <do_fork+0x6d>
    6c9a:	6a 2d                	push   $0x2d
    6c9c:	68 c8 de 00 00       	push   $0xdec8
    6ca1:	68 c8 de 00 00       	push   $0xdec8
    6ca6:	68 d6 de 00 00       	push   $0xded6
    6cab:	e8 4d 5a 00 00       	call   c6fd <assertion_failure>
    6cb0:	83 c4 10             	add    $0x10,%esp
    6cb3:	83 7d dc 08          	cmpl   $0x8,-0x24(%ebp)
    6cb7:	7f 19                	jg     6cd2 <do_fork+0x8c>
    6cb9:	6a 33                	push   $0x33
    6cbb:	68 c8 de 00 00       	push   $0xdec8
    6cc0:	68 c8 de 00 00       	push   $0xdec8
    6cc5:	68 f4 de 00 00       	push   $0xdef4
    6cca:	e8 2e 5a 00 00       	call   c6fd <assertion_failure>
    6ccf:	83 c4 10             	add    $0x10,%esp
    6cd2:	83 7d e0 25          	cmpl   $0x25,-0x20(%ebp)
    6cd6:	75 0a                	jne    6ce2 <do_fork+0x9c>
    6cd8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6cdd:	e9 b5 02 00 00       	jmp    6f97 <do_fork+0x351>
    6ce2:	83 7d e0 24          	cmpl   $0x24,-0x20(%ebp)
    6ce6:	7e 19                	jle    6d01 <do_fork+0xbb>
    6ce8:	6a 3c                	push   $0x3c
    6cea:	68 c8 de 00 00       	push   $0xdec8
    6cef:	68 c8 de 00 00       	push   $0xdec8
    6cf4:	68 1c df 00 00       	push   $0xdf1c
    6cf9:	e8 ff 59 00 00       	call   c6fd <assertion_failure>
    6cfe:	83 c4 10             	add    $0x10,%esp
    6d01:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6d06:	89 45 d8             	mov    %eax,-0x28(%ebp)
    6d09:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d0c:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    6d10:	66 89 45 d6          	mov    %ax,-0x2a(%ebp)
    6d14:	c7 45 d0 05 00 00 00 	movl   $0x5,-0x30(%ebp)
    6d1b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d1e:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6d21:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    6d27:	8d 8a a0 a4 03 00    	lea    0x3a4a0(%edx),%ecx
    6d2d:	89 c2                	mov    %eax,%edx
    6d2f:	89 cb                	mov    %ecx,%ebx
    6d31:	b8 66 00 00 00       	mov    $0x66,%eax
    6d36:	89 d7                	mov    %edx,%edi
    6d38:	89 de                	mov    %ebx,%esi
    6d3a:	89 c1                	mov    %eax,%ecx
    6d3c:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    6d3e:	c7 45 cc 37 00 00 00 	movl   $0x37,-0x34(%ebp)
    6d45:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d48:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
    6d4c:	66 89 50 48          	mov    %dx,0x48(%eax)
    6d50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d53:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6d56:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    6d5c:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6d5f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d65:	83 c0 60             	add    $0x60,%eax
    6d68:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6d6d:	8d 50 04             	lea    0x4(%eax),%edx
    6d70:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d73:	83 c0 64             	add    $0x64,%eax
    6d76:	ff 75 dc             	pushl  -0x24(%ebp)
    6d79:	52                   	push   %edx
    6d7a:	68 34 df 00 00       	push   $0xdf34
    6d7f:	50                   	push   %eax
    6d80:	e8 bc 56 00 00       	call   c441 <sprintf>
    6d85:	83 c4 10             	add    $0x10,%esp
    6d88:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6d8b:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d91:	83 c0 40             	add    $0x40,%eax
    6d94:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6d99:	83 c0 0a             	add    $0xa,%eax
    6d9c:	89 45 c8             	mov    %eax,-0x38(%ebp)
    6d9f:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6da2:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6da6:	0f b6 c0             	movzbl %al,%eax
    6da9:	c1 e0 18             	shl    $0x18,%eax
    6dac:	89 c2                	mov    %eax,%edx
    6dae:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6db1:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6db5:	0f b6 c0             	movzbl %al,%eax
    6db8:	c1 e0 10             	shl    $0x10,%eax
    6dbb:	01 c2                	add    %eax,%edx
    6dbd:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6dc0:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6dc4:	0f b7 c0             	movzwl %ax,%eax
    6dc7:	01 d0                	add    %edx,%eax
    6dc9:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6dcc:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6dcf:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6dd3:	0f b6 c0             	movzbl %al,%eax
    6dd6:	c1 e0 10             	shl    $0x10,%eax
    6dd9:	25 00 00 0f 00       	and    $0xf0000,%eax
    6dde:	89 c2                	mov    %eax,%edx
    6de0:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6de3:	0f b7 00             	movzwl (%eax),%eax
    6de6:	0f b7 c0             	movzwl %ax,%eax
    6de9:	01 d0                	add    %edx,%eax
    6deb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    6dee:	8b 45 c0             	mov    -0x40(%ebp),%eax
    6df1:	8d 50 01             	lea    0x1(%eax),%edx
    6df4:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6df7:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6dfb:	84 c0                	test   %al,%al
    6dfd:	79 07                	jns    6e06 <do_fork+0x1c0>
    6dff:	b8 00 10 00 00       	mov    $0x1000,%eax
    6e04:	eb 05                	jmp    6e0b <do_fork+0x1c5>
    6e06:	b8 01 00 00 00       	mov    $0x1,%eax
    6e0b:	0f af c2             	imul   %edx,%eax
    6e0e:	89 45 bc             	mov    %eax,-0x44(%ebp)
    6e11:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6e14:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e1a:	83 c0 48             	add    $0x48,%eax
    6e1d:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6e22:	83 c0 0a             	add    $0xa,%eax
    6e25:	89 45 c8             	mov    %eax,-0x38(%ebp)
    6e28:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e2b:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6e2f:	0f b6 c0             	movzbl %al,%eax
    6e32:	c1 e0 18             	shl    $0x18,%eax
    6e35:	89 c2                	mov    %eax,%edx
    6e37:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e3a:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6e3e:	0f b6 c0             	movzbl %al,%eax
    6e41:	c1 e0 10             	shl    $0x10,%eax
    6e44:	01 c2                	add    %eax,%edx
    6e46:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e49:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6e4d:	0f b7 c0             	movzwl %ax,%eax
    6e50:	01 d0                	add    %edx,%eax
    6e52:	89 45 b8             	mov    %eax,-0x48(%ebp)
    6e55:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e58:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6e5c:	0f b6 c0             	movzbl %al,%eax
    6e5f:	c1 e0 10             	shl    $0x10,%eax
    6e62:	25 00 00 0f 00       	and    $0xf0000,%eax
    6e67:	89 c2                	mov    %eax,%edx
    6e69:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e6c:	0f b7 00             	movzwl (%eax),%eax
    6e6f:	0f b7 c0             	movzwl %ax,%eax
    6e72:	01 d0                	add    %edx,%eax
    6e74:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    6e77:	8b 45 c0             	mov    -0x40(%ebp),%eax
    6e7a:	8d 50 01             	lea    0x1(%eax),%edx
    6e7d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e80:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6e84:	84 c0                	test   %al,%al
    6e86:	79 07                	jns    6e8f <do_fork+0x249>
    6e88:	b8 00 10 00 00       	mov    $0x1000,%eax
    6e8d:	eb 05                	jmp    6e94 <do_fork+0x24e>
    6e8f:	b8 01 00 00 00       	mov    $0x1,%eax
    6e94:	0f af c2             	imul   %edx,%eax
    6e97:	89 45 b0             	mov    %eax,-0x50(%ebp)
    6e9a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    6e9d:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    6ea0:	75 10                	jne    6eb2 <do_fork+0x26c>
    6ea2:	8b 45 c0             	mov    -0x40(%ebp),%eax
    6ea5:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    6ea8:	75 08                	jne    6eb2 <do_fork+0x26c>
    6eaa:	8b 45 bc             	mov    -0x44(%ebp),%eax
    6ead:	3b 45 b0             	cmp    -0x50(%ebp),%eax
    6eb0:	74 1c                	je     6ece <do_fork+0x288>
    6eb2:	68 87 00 00 00       	push   $0x87
    6eb7:	68 c8 de 00 00       	push   $0xdec8
    6ebc:	68 c8 de 00 00       	push   $0xdec8
    6ec1:	68 3c df 00 00       	push   $0xdf3c
    6ec6:	e8 32 58 00 00       	call   c6fd <assertion_failure>
    6ecb:	83 c4 10             	add    $0x10,%esp
    6ece:	83 ec 08             	sub    $0x8,%esp
    6ed1:	ff 75 bc             	pushl  -0x44(%ebp)
    6ed4:	ff 75 dc             	pushl  -0x24(%ebp)
    6ed7:	e8 e5 fc ff ff       	call   6bc1 <alloc_mem>
    6edc:	83 c4 10             	add    $0x10,%esp
    6edf:	89 45 ac             	mov    %eax,-0x54(%ebp)
    6ee2:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    6ee5:	8b 45 ac             	mov    -0x54(%ebp),%eax
    6ee8:	83 ec 04             	sub    $0x4,%esp
    6eeb:	ff 75 bc             	pushl  -0x44(%ebp)
    6eee:	52                   	push   %edx
    6eef:	50                   	push   %eax
    6ef0:	e8 7b 55 00 00       	call   c470 <memcpy>
    6ef5:	83 c4 10             	add    $0x10,%esp
    6ef8:	8b 45 ac             	mov    -0x54(%ebp),%eax
    6efb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6efe:	83 c2 4a             	add    $0x4a,%edx
    6f01:	68 f8 c0 00 00       	push   $0xc0f8
    6f06:	68 ff 00 00 00       	push   $0xff
    6f0b:	50                   	push   %eax
    6f0c:	52                   	push   %edx
    6f0d:	e8 59 ce ff ff       	call   3d6b <init_desc>
    6f12:	83 c4 10             	add    $0x10,%esp
    6f15:	8b 45 ac             	mov    -0x54(%ebp),%eax
    6f18:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6f1b:	83 c2 52             	add    $0x52,%edx
    6f1e:	68 f2 c0 00 00       	push   $0xc0f2
    6f23:	68 ff 00 00 00       	push   $0xff
    6f28:	50                   	push   %eax
    6f29:	52                   	push   %edx
    6f2a:	e8 3c ce ff ff       	call   3d6b <init_desc>
    6f2f:	83 c4 10             	add    $0x10,%esp
    6f32:	c7 45 80 10 00 00 00 	movl   $0x10,-0x80(%ebp)
    6f39:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6f3c:	89 45 88             	mov    %eax,-0x78(%ebp)
    6f3f:	83 ec 04             	sub    $0x4,%esp
    6f42:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
    6f48:	50                   	push   %eax
    6f49:	6a 03                	push   $0x3
    6f4b:	6a 03                	push   $0x3
    6f4d:	e8 96 55 00 00       	call   c4e8 <send_recv>
    6f52:	83 c4 10             	add    $0x10,%esp
    6f55:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6f58:	a3 cc 99 03 00       	mov    %eax,0x399cc
    6f5d:	c7 85 50 ff ff ff 12 	movl   $0x12,-0xb0(%ebp)
    6f64:	00 00 00 
    6f67:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
    6f6e:	00 00 00 
    6f71:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
    6f78:	00 00 00 
    6f7b:	83 ec 04             	sub    $0x4,%esp
    6f7e:	8d 85 4c ff ff ff    	lea    -0xb4(%ebp),%eax
    6f84:	50                   	push   %eax
    6f85:	ff 75 dc             	pushl  -0x24(%ebp)
    6f88:	6a 01                	push   $0x1
    6f8a:	e8 59 55 00 00       	call   c4e8 <send_recv>
    6f8f:	83 c4 10             	add    $0x10,%esp
    6f92:	b8 00 00 00 00       	mov    $0x0,%eax
    6f97:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6f9a:	5b                   	pop    %ebx
    6f9b:	5e                   	pop    %esi
    6f9c:	5f                   	pop    %edi
    6f9d:	5d                   	pop    %ebp
    6f9e:	c3                   	ret    

00006f9f <do_exit>:
    6f9f:	55                   	push   %ebp
    6fa0:	89 e5                	mov    %esp,%ebp
    6fa2:	83 ec 48             	sub    $0x48,%esp
    6fa5:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6faa:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6fad:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fb0:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6fb6:	05 30 a5 03 00       	add    $0x3a530,%eax
    6fbb:	8b 00                	mov    (%eax),%eax
    6fbd:	89 45 ec             	mov    %eax,-0x14(%ebp)
    6fc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fc3:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6fc9:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6fce:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6fd1:	c7 45 bc 11 00 00 00 	movl   $0x11,-0x44(%ebp)
    6fd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fdb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6fde:	83 ec 04             	sub    $0x4,%esp
    6fe1:	8d 45 b8             	lea    -0x48(%ebp),%eax
    6fe4:	50                   	push   %eax
    6fe5:	6a 03                	push   $0x3
    6fe7:	6a 03                	push   $0x3
    6fe9:	e8 fa 54 00 00       	call   c4e8 <send_recv>
    6fee:	83 c4 10             	add    $0x10,%esp
    6ff1:	83 ec 0c             	sub    $0xc,%esp
    6ff4:	ff 75 f0             	pushl  -0x10(%ebp)
    6ff7:	e8 40 fc ff ff       	call   6c3c <free_mem>
    6ffc:	83 c4 10             	add    $0x10,%esp
    6fff:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7002:	8b 55 08             	mov    0x8(%ebp),%edx
    7005:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
    700b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    700e:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7014:	05 14 a5 03 00       	add    $0x3a514,%eax
    7019:	8b 00                	mov    (%eax),%eax
    701b:	83 e0 08             	and    $0x8,%eax
    701e:	85 c0                	test   %eax,%eax
    7020:	74 41                	je     7063 <do_exit+0xc4>
    7022:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7025:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    702b:	05 14 a5 03 00       	add    $0x3a514,%eax
    7030:	8b 00                	mov    (%eax),%eax
    7032:	83 e0 f7             	and    $0xfffffff7,%eax
    7035:	89 c2                	mov    %eax,%edx
    7037:	8b 45 ec             	mov    -0x14(%ebp),%eax
    703a:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7040:	05 14 a5 03 00       	add    $0x3a514,%eax
    7045:	89 10                	mov    %edx,(%eax)
    7047:	8b 45 f0             	mov    -0x10(%ebp),%eax
    704a:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7050:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    7055:	83 ec 0c             	sub    $0xc,%esp
    7058:	50                   	push   %eax
    7059:	e8 b3 00 00 00       	call   7111 <cleanup>
    705e:	83 c4 10             	add    $0x10,%esp
    7061:	eb 25                	jmp    7088 <do_exit+0xe9>
    7063:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7066:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    706c:	05 14 a5 03 00       	add    $0x3a514,%eax
    7071:	8b 00                	mov    (%eax),%eax
    7073:	83 c8 10             	or     $0x10,%eax
    7076:	89 c2                	mov    %eax,%edx
    7078:	8b 45 f0             	mov    -0x10(%ebp),%eax
    707b:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7081:	05 14 a5 03 00       	add    $0x3a514,%eax
    7086:	89 10                	mov    %edx,(%eax)
    7088:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    708f:	eb 77                	jmp    7108 <do_exit+0x169>
    7091:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7094:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    709a:	05 30 a5 03 00       	add    $0x3a530,%eax
    709f:	8b 00                	mov    (%eax),%eax
    70a1:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    70a4:	75 5e                	jne    7104 <do_exit+0x165>
    70a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    70a9:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    70af:	05 30 a5 03 00       	add    $0x3a530,%eax
    70b4:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    70ba:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    70bf:	83 e0 08             	and    $0x8,%eax
    70c2:	85 c0                	test   %eax,%eax
    70c4:	74 3e                	je     7104 <do_exit+0x165>
    70c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    70c9:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    70cf:	05 14 a5 03 00       	add    $0x3a514,%eax
    70d4:	8b 00                	mov    (%eax),%eax
    70d6:	83 e0 10             	and    $0x10,%eax
    70d9:	85 c0                	test   %eax,%eax
    70db:	74 27                	je     7104 <do_exit+0x165>
    70dd:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    70e2:	83 e0 f7             	and    $0xfffffff7,%eax
    70e5:	a3 0c ad 03 00       	mov    %eax,0x3ad0c
    70ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
    70ed:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    70f3:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    70f8:	83 ec 0c             	sub    $0xc,%esp
    70fb:	50                   	push   %eax
    70fc:	e8 10 00 00 00       	call   7111 <cleanup>
    7101:	83 c4 10             	add    $0x10,%esp
    7104:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7108:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    710c:	7e 83                	jle    7091 <do_exit+0xf2>
    710e:	90                   	nop
    710f:	c9                   	leave  
    7110:	c3                   	ret    

00007111 <cleanup>:
    7111:	55                   	push   %ebp
    7112:	89 e5                	mov    %esp,%ebp
    7114:	83 ec 38             	sub    $0x38,%esp
    7117:	c7 45 cc 12 00 00 00 	movl   $0x12,-0x34(%ebp)
    711e:	8b 45 08             	mov    0x8(%ebp),%eax
    7121:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    7126:	c1 f8 03             	sar    $0x3,%eax
    7129:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    712f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7132:	8b 45 08             	mov    0x8(%ebp),%eax
    7135:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
    713b:	89 45 d0             	mov    %eax,-0x30(%ebp)
    713e:	8b 45 08             	mov    0x8(%ebp),%eax
    7141:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    7147:	83 ec 04             	sub    $0x4,%esp
    714a:	8d 55 c8             	lea    -0x38(%ebp),%edx
    714d:	52                   	push   %edx
    714e:	50                   	push   %eax
    714f:	6a 01                	push   $0x1
    7151:	e8 92 53 00 00       	call   c4e8 <send_recv>
    7156:	83 c4 10             	add    $0x10,%esp
    7159:	8b 45 08             	mov    0x8(%ebp),%eax
    715c:	c7 40 74 20 00 00 00 	movl   $0x20,0x74(%eax)
    7163:	90                   	nop
    7164:	c9                   	leave  
    7165:	c3                   	ret    

00007166 <do_wait>:
    7166:	55                   	push   %ebp
    7167:	89 e5                	mov    %esp,%ebp
    7169:	83 ec 48             	sub    $0x48,%esp
    716c:	a1 c0 99 03 00       	mov    0x399c0,%eax
    7171:	89 45 e8             	mov    %eax,-0x18(%ebp)
    7174:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    717b:	c7 45 ec a0 a4 03 00 	movl   $0x3a4a0,-0x14(%ebp)
    7182:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7189:	eb 3a                	jmp    71c5 <do_wait+0x5f>
    718b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    718e:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    7194:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    7197:	75 21                	jne    71ba <do_wait+0x54>
    7199:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    719d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    71a0:	8b 40 74             	mov    0x74(%eax),%eax
    71a3:	83 e0 10             	and    $0x10,%eax
    71a6:	85 c0                	test   %eax,%eax
    71a8:	74 10                	je     71ba <do_wait+0x54>
    71aa:	83 ec 0c             	sub    $0xc,%esp
    71ad:	ff 75 ec             	pushl  -0x14(%ebp)
    71b0:	e8 5c ff ff ff       	call   7111 <cleanup>
    71b5:	83 c4 10             	add    $0x10,%esp
    71b8:	eb 60                	jmp    721a <do_wait+0xb4>
    71ba:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    71be:	81 45 ec 98 01 00 00 	addl   $0x198,-0x14(%ebp)
    71c5:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    71c9:	7e c0                	jle    718b <do_wait+0x25>
    71cb:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    71cf:	74 27                	je     71f8 <do_wait+0x92>
    71d1:	8b 45 e8             	mov    -0x18(%ebp),%eax
    71d4:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    71da:	05 14 a5 03 00       	add    $0x3a514,%eax
    71df:	8b 00                	mov    (%eax),%eax
    71e1:	83 c8 08             	or     $0x8,%eax
    71e4:	89 c2                	mov    %eax,%edx
    71e6:	8b 45 e8             	mov    -0x18(%ebp),%eax
    71e9:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    71ef:	05 14 a5 03 00       	add    $0x3a514,%eax
    71f4:	89 10                	mov    %edx,(%eax)
    71f6:	eb 22                	jmp    721a <do_wait+0xb4>
    71f8:	c7 45 bc 12 00 00 00 	movl   $0x12,-0x44(%ebp)
    71ff:	c7 45 c4 39 00 00 00 	movl   $0x39,-0x3c(%ebp)
    7206:	83 ec 04             	sub    $0x4,%esp
    7209:	8d 45 b8             	lea    -0x48(%ebp),%eax
    720c:	50                   	push   %eax
    720d:	ff 75 e8             	pushl  -0x18(%ebp)
    7210:	6a 01                	push   $0x1
    7212:	e8 d1 52 00 00       	call   c4e8 <send_recv>
    7217:	83 c4 10             	add    $0x10,%esp
    721a:	c9                   	leave  
    721b:	c3                   	ret    

0000721c <do_exec>:
    721c:	55                   	push   %ebp
    721d:	89 e5                	mov    %esp,%ebp
    721f:	56                   	push   %esi
    7220:	53                   	push   %ebx
    7221:	81 ec d0 04 00 00    	sub    $0x4d0,%esp
    7227:	a1 cc 99 03 00       	mov    0x399cc,%eax
    722c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    722f:	a1 c0 99 03 00       	mov    0x399c0,%eax
    7234:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7237:	83 7d e8 7f          	cmpl   $0x7f,-0x18(%ebp)
    723b:	7e 19                	jle    7256 <do_exec+0x3a>
    723d:	6a 26                	push   $0x26
    723f:	68 b0 df 00 00       	push   $0xdfb0
    7244:	68 b0 df 00 00       	push   $0xdfb0
    7249:	68 ba df 00 00       	push   $0xdfba
    724e:	e8 aa 54 00 00       	call   c6fd <assertion_failure>
    7253:	83 c4 10             	add    $0x10,%esp
    7256:	a1 e8 99 03 00       	mov    0x399e8,%eax
    725b:	83 ec 08             	sub    $0x8,%esp
    725e:	50                   	push   %eax
    725f:	ff 75 e4             	pushl  -0x1c(%ebp)
    7262:	e8 a0 ce ff ff       	call   4107 <va2la>
    7267:	83 c4 10             	add    $0x10,%esp
    726a:	89 c3                	mov    %eax,%ebx
    726c:	83 ec 08             	sub    $0x8,%esp
    726f:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    7275:	50                   	push   %eax
    7276:	6a 04                	push   $0x4
    7278:	e8 8a ce ff ff       	call   4107 <va2la>
    727d:	83 c4 10             	add    $0x10,%esp
    7280:	83 ec 04             	sub    $0x4,%esp
    7283:	ff 75 e8             	pushl  -0x18(%ebp)
    7286:	53                   	push   %ebx
    7287:	50                   	push   %eax
    7288:	e8 e3 51 00 00       	call   c470 <memcpy>
    728d:	83 c4 10             	add    $0x10,%esp
    7290:	8d 95 40 ff ff ff    	lea    -0xc0(%ebp),%edx
    7296:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7299:	01 d0                	add    %edx,%eax
    729b:	c6 00 00             	movb   $0x0,(%eax)
    729e:	83 ec 08             	sub    $0x8,%esp
    72a1:	8d 85 2c ff ff ff    	lea    -0xd4(%ebp),%eax
    72a7:	50                   	push   %eax
    72a8:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    72ae:	50                   	push   %eax
    72af:	e8 c4 55 00 00       	call   c878 <stat>
    72b4:	83 c4 10             	add    $0x10,%esp
    72b7:	89 45 e0             	mov    %eax,-0x20(%ebp)
    72ba:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    72be:	74 21                	je     72e1 <do_exec+0xc5>
    72c0:	83 ec 08             	sub    $0x8,%esp
    72c3:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    72c9:	50                   	push   %eax
    72ca:	68 d0 df 00 00       	push   $0xdfd0
    72cf:	e8 48 4e 00 00       	call   c11c <printl>
    72d4:	83 c4 10             	add    $0x10,%esp
    72d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    72dc:	e9 9e 02 00 00       	jmp    757f <do_exec+0x363>
    72e1:	83 ec 08             	sub    $0x8,%esp
    72e4:	6a 02                	push   $0x2
    72e6:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    72ec:	50                   	push   %eax
    72ed:	e8 44 54 00 00       	call   c736 <open>
    72f2:	83 c4 10             	add    $0x10,%esp
    72f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
    72f8:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    72fc:	75 0a                	jne    7308 <do_exec+0xec>
    72fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7303:	e9 77 02 00 00       	jmp    757f <do_exec+0x363>
    7308:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
    730e:	a1 1c d0 00 00       	mov    0xd01c,%eax
    7313:	39 c2                	cmp    %eax,%edx
    7315:	7c 19                	jl     7330 <do_exec+0x114>
    7317:	6a 3a                	push   $0x3a
    7319:	68 b0 df 00 00       	push   $0xdfb0
    731e:	68 b0 df 00 00       	push   $0xdfb0
    7323:	68 fd df 00 00       	push   $0xdffd
    7328:	e8 d0 53 00 00       	call   c6fd <assertion_failure>
    732d:	83 c4 10             	add    $0x10,%esp
    7330:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
    7336:	a1 08 28 01 00       	mov    0x12808,%eax
    733b:	83 ec 04             	sub    $0x4,%esp
    733e:	52                   	push   %edx
    733f:	50                   	push   %eax
    7340:	ff 75 dc             	pushl  -0x24(%ebp)
    7343:	e8 51 54 00 00       	call   c799 <read>
    7348:	83 c4 10             	add    $0x10,%esp
    734b:	83 ec 0c             	sub    $0xc,%esp
    734e:	ff 75 dc             	pushl  -0x24(%ebp)
    7351:	e8 b1 54 00 00       	call   c807 <close>
    7356:	83 c4 10             	add    $0x10,%esp
    7359:	a1 08 28 01 00       	mov    0x12808,%eax
    735e:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7361:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7368:	e9 a6 00 00 00       	jmp    7413 <do_exec+0x1f7>
    736d:	8b 15 08 28 01 00    	mov    0x12808,%edx
    7373:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7376:	8b 48 1c             	mov    0x1c(%eax),%ecx
    7379:	8b 45 d8             	mov    -0x28(%ebp),%eax
    737c:	0f b7 40 2a          	movzwl 0x2a(%eax),%eax
    7380:	0f b7 c0             	movzwl %ax,%eax
    7383:	0f af 45 f4          	imul   -0xc(%ebp),%eax
    7387:	01 c8                	add    %ecx,%eax
    7389:	01 d0                	add    %edx,%eax
    738b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    738e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7391:	8b 00                	mov    (%eax),%eax
    7393:	83 f8 01             	cmp    $0x1,%eax
    7396:	75 77                	jne    740f <do_exec+0x1f3>
    7398:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    739b:	8b 50 08             	mov    0x8(%eax),%edx
    739e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73a1:	8b 40 14             	mov    0x14(%eax),%eax
    73a4:	01 d0                	add    %edx,%eax
    73a6:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
    73ab:	76 19                	jbe    73c6 <do_exec+0x1aa>
    73ad:	6a 47                	push   $0x47
    73af:	68 b0 df 00 00       	push   $0xdfb0
    73b4:	68 b0 df 00 00       	push   $0xdfb0
    73b9:	68 14 e0 00 00       	push   $0xe014
    73be:	e8 3a 53 00 00       	call   c6fd <assertion_failure>
    73c3:	83 c4 10             	add    $0x10,%esp
    73c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73c9:	8b 40 10             	mov    0x10(%eax),%eax
    73cc:	89 c6                	mov    %eax,%esi
    73ce:	8b 15 08 28 01 00    	mov    0x12808,%edx
    73d4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73d7:	8b 40 04             	mov    0x4(%eax),%eax
    73da:	01 d0                	add    %edx,%eax
    73dc:	83 ec 08             	sub    $0x8,%esp
    73df:	50                   	push   %eax
    73e0:	6a 04                	push   $0x4
    73e2:	e8 20 cd ff ff       	call   4107 <va2la>
    73e7:	83 c4 10             	add    $0x10,%esp
    73ea:	89 c3                	mov    %eax,%ebx
    73ec:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73ef:	8b 40 08             	mov    0x8(%eax),%eax
    73f2:	83 ec 08             	sub    $0x8,%esp
    73f5:	50                   	push   %eax
    73f6:	ff 75 e4             	pushl  -0x1c(%ebp)
    73f9:	e8 09 cd ff ff       	call   4107 <va2la>
    73fe:	83 c4 10             	add    $0x10,%esp
    7401:	83 ec 04             	sub    $0x4,%esp
    7404:	56                   	push   %esi
    7405:	53                   	push   %ebx
    7406:	50                   	push   %eax
    7407:	e8 64 50 00 00       	call   c470 <memcpy>
    740c:	83 c4 10             	add    $0x10,%esp
    740f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7413:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7416:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    741a:	0f b7 c0             	movzwl %ax,%eax
    741d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    7420:	0f 8c 47 ff ff ff    	jl     736d <do_exec+0x151>
    7426:	a1 d0 99 03 00       	mov    0x399d0,%eax
    742b:	89 45 d0             	mov    %eax,-0x30(%ebp)
    742e:	a1 ec 99 03 00       	mov    0x399ec,%eax
    7433:	83 ec 08             	sub    $0x8,%esp
    7436:	50                   	push   %eax
    7437:	ff 75 e4             	pushl  -0x1c(%ebp)
    743a:	e8 c8 cc ff ff       	call   4107 <va2la>
    743f:	83 c4 10             	add    $0x10,%esp
    7442:	89 c3                	mov    %eax,%ebx
    7444:	83 ec 08             	sub    $0x8,%esp
    7447:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    744d:	50                   	push   %eax
    744e:	6a 04                	push   $0x4
    7450:	e8 b2 cc ff ff       	call   4107 <va2la>
    7455:	83 c4 10             	add    $0x10,%esp
    7458:	83 ec 04             	sub    $0x4,%esp
    745b:	ff 75 d0             	pushl  -0x30(%ebp)
    745e:	53                   	push   %ebx
    745f:	50                   	push   %eax
    7460:	e8 0b 50 00 00       	call   c470 <memcpy>
    7465:	83 c4 10             	add    $0x10,%esp
    7468:	c7 45 cc 00 fc 0f 00 	movl   $0xffc00,-0x34(%ebp)
    746f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7472:	8b 15 ec 99 03 00    	mov    0x399ec,%edx
    7478:	29 d0                	sub    %edx,%eax
    747a:	89 45 c8             	mov    %eax,-0x38(%ebp)
    747d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7484:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    748b:	83 7d c4 00          	cmpl   $0x0,-0x3c(%ebp)
    748f:	75 38                	jne    74c9 <do_exec+0x2ad>
    7491:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
    7495:	74 32                	je     74c9 <do_exec+0x2ad>
    7497:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    749d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    74a0:	eb 17                	jmp    74b9 <do_exec+0x29d>
    74a2:	8b 45 ec             	mov    -0x14(%ebp),%eax
    74a5:	8b 10                	mov    (%eax),%edx
    74a7:	8b 45 c8             	mov    -0x38(%ebp),%eax
    74aa:	01 c2                	add    %eax,%edx
    74ac:	8b 45 ec             	mov    -0x14(%ebp),%eax
    74af:	89 10                	mov    %edx,(%eax)
    74b1:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
    74b5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    74b9:	8b 45 ec             	mov    -0x14(%ebp),%eax
    74bc:	8b 00                	mov    (%eax),%eax
    74be:	85 c0                	test   %eax,%eax
    74c0:	75 e0                	jne    74a2 <do_exec+0x286>
    74c2:	c7 45 c0 05 00 00 00 	movl   $0x5,-0x40(%ebp)
    74c9:	83 ec 08             	sub    $0x8,%esp
    74cc:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    74d2:	50                   	push   %eax
    74d3:	6a 04                	push   $0x4
    74d5:	e8 2d cc ff ff       	call   4107 <va2la>
    74da:	83 c4 10             	add    $0x10,%esp
    74dd:	89 c3                	mov    %eax,%ebx
    74df:	83 ec 08             	sub    $0x8,%esp
    74e2:	ff 75 cc             	pushl  -0x34(%ebp)
    74e5:	ff 75 e4             	pushl  -0x1c(%ebp)
    74e8:	e8 1a cc ff ff       	call   4107 <va2la>
    74ed:	83 c4 10             	add    $0x10,%esp
    74f0:	83 ec 04             	sub    $0x4,%esp
    74f3:	ff 75 d0             	pushl  -0x30(%ebp)
    74f6:	53                   	push   %ebx
    74f7:	50                   	push   %eax
    74f8:	e8 73 4f 00 00       	call   c470 <memcpy>
    74fd:	83 c4 10             	add    $0x10,%esp
    7500:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7503:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7506:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    750c:	81 c2 c8 a4 03 00    	add    $0x3a4c8,%edx
    7512:	89 02                	mov    %eax,(%edx)
    7514:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7517:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    751a:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    7520:	81 c2 cc a4 03 00    	add    $0x3a4cc,%edx
    7526:	89 02                	mov    %eax,(%edx)
    7528:	8b 45 d8             	mov    -0x28(%ebp),%eax
    752b:	8b 40 18             	mov    0x18(%eax),%eax
    752e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7531:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    7537:	81 c2 d4 a4 03 00    	add    $0x3a4d4,%edx
    753d:	89 02                	mov    %eax,(%edx)
    753f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7542:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7548:	05 e0 a4 03 00       	add    $0x3a4e0,%eax
    754d:	c7 00 00 fc 0f 00    	movl   $0xffc00,(%eax)
    7553:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7556:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    755c:	83 c0 60             	add    $0x60,%eax
    755f:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    7564:	8d 50 04             	lea    0x4(%eax),%edx
    7567:	83 ec 08             	sub    $0x8,%esp
    756a:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    7570:	50                   	push   %eax
    7571:	52                   	push   %edx
    7572:	e8 43 4f 00 00       	call   c4ba <strcpy>
    7577:	83 c4 10             	add    $0x10,%esp
    757a:	b8 00 00 00 00       	mov    $0x0,%eax
    757f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    7582:	5b                   	pop    %ebx
    7583:	5e                   	pop    %esi
    7584:	5d                   	pop    %ebp
    7585:	c3                   	ret    

00007586 <task_fs>:
    7586:	55                   	push   %ebp
    7587:	89 e5                	mov    %esp,%ebp
    7589:	81 ec 18 02 00 00    	sub    $0x218,%esp
    758f:	83 ec 0c             	sub    $0xc,%esp
    7592:	68 54 e0 00 00       	push   $0xe054
    7597:	e8 80 4b 00 00       	call   c11c <printl>
    759c:	83 c4 10             	add    $0x10,%esp
    759f:	e8 99 01 00 00       	call   773d <init_fs>
    75a4:	83 ec 04             	sub    $0x4,%esp
    75a7:	68 60 95 03 00       	push   $0x39560
    75ac:	6a 2f                	push   $0x2f
    75ae:	6a 02                	push   $0x2
    75b0:	e8 33 4f 00 00       	call   c4e8 <send_recv>
    75b5:	83 c4 10             	add    $0x10,%esp
    75b8:	a1 64 95 03 00       	mov    0x39564,%eax
    75bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
    75c0:	a1 60 95 03 00       	mov    0x39560,%eax
    75c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    75c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    75cb:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    75d1:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    75d6:	a3 44 88 03 00       	mov    %eax,0x38844
    75db:	8b 45 f0             	mov    -0x10(%ebp),%eax
    75de:	83 e8 05             	sub    $0x5,%eax
    75e1:	83 f8 0c             	cmp    $0xc,%eax
    75e4:	77 6a                	ja     7650 <task_fs+0xca>
    75e6:	8b 04 85 cc e0 00 00 	mov    0xe0cc(,%eax,4),%eax
    75ed:	ff e0                	jmp    *%eax
    75ef:	e8 18 10 00 00       	call   860c <do_open>
    75f4:	a3 68 95 03 00       	mov    %eax,0x39568
    75f9:	e9 81 00 00 00       	jmp    767f <task_fs+0xf9>
    75fe:	e8 45 14 00 00       	call   8a48 <do_close>
    7603:	a3 68 95 03 00       	mov    %eax,0x39568
    7608:	eb 75                	jmp    767f <task_fs+0xf9>
    760a:	e8 51 1e 00 00       	call   9460 <do_rdwt>
    760f:	a3 6c 95 03 00       	mov    %eax,0x3956c
    7614:	eb 69                	jmp    767f <task_fs+0xf9>
    7616:	e8 db 22 00 00       	call   98f6 <do_unlink>
    761b:	a3 68 95 03 00       	mov    %eax,0x39568
    7620:	eb 5d                	jmp    767f <task_fs+0xf9>
    7622:	a1 70 95 03 00       	mov    0x39570,%eax
    7627:	89 45 f4             	mov    %eax,-0xc(%ebp)
    762a:	eb 53                	jmp    767f <task_fs+0xf9>
    762c:	e8 c9 0e 00 00       	call   84fa <fs_fork>
    7631:	a3 68 95 03 00       	mov    %eax,0x39568
    7636:	eb 47                	jmp    767f <task_fs+0xf9>
    7638:	e8 30 0f 00 00       	call   856d <fs_exit>
    763d:	a3 68 95 03 00       	mov    %eax,0x39568
    7642:	eb 3b                	jmp    767f <task_fs+0xf9>
    7644:	e8 69 1a 00 00       	call   90b2 <do_stat>
    7649:	a3 68 95 03 00       	mov    %eax,0x39568
    764e:	eb 2f                	jmp    767f <task_fs+0xf9>
    7650:	83 ec 08             	sub    $0x8,%esp
    7653:	68 60 95 03 00       	push   $0x39560
    7658:	68 6a e0 00 00       	push   $0xe06a
    765d:	e8 82 dd ff ff       	call   53e4 <dump_msg>
    7662:	83 c4 10             	add    $0x10,%esp
    7665:	6a 52                	push   $0x52
    7667:	68 7f e0 00 00       	push   $0xe07f
    766c:	68 7f e0 00 00       	push   $0xe07f
    7671:	68 89 e0 00 00       	push   $0xe089
    7676:	e8 82 50 00 00       	call   c6fd <assertion_failure>
    767b:	83 c4 10             	add    $0x10,%esp
    767e:	90                   	nop
    767f:	c7 85 04 fe ff ff 8b 	movl   $0xe08b,-0x1fc(%ebp)
    7686:	e0 00 00 
    7689:	c7 85 08 fe ff ff 90 	movl   $0xe090,-0x1f8(%ebp)
    7690:	e0 00 00 
    7693:	c7 85 0c fe ff ff 96 	movl   $0xe096,-0x1f4(%ebp)
    769a:	e0 00 00 
    769d:	c7 85 10 fe ff ff 9b 	movl   $0xe09b,-0x1f0(%ebp)
    76a4:	e0 00 00 
    76a7:	c7 85 14 fe ff ff a1 	movl   $0xe0a1,-0x1ec(%ebp)
    76ae:	e0 00 00 
    76b1:	c7 85 1c fe ff ff a7 	movl   $0xe0a7,-0x1e4(%ebp)
    76b8:	e0 00 00 
    76bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76be:	83 e8 05             	sub    $0x5,%eax
    76c1:	83 f8 0c             	cmp    $0xc,%eax
    76c4:	77 29                	ja     76ef <task_fs+0x169>
    76c6:	8b 04 85 00 e1 00 00 	mov    0xe100(,%eax,4),%eax
    76cd:	ff e0                	jmp    *%eax
    76cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76d2:	8b 84 85 f0 fd ff ff 	mov    -0x210(%ebp,%eax,4),%eax
    76d9:	83 ec 04             	sub    $0x4,%esp
    76dc:	ff 75 f4             	pushl  -0xc(%ebp)
    76df:	50                   	push   %eax
    76e0:	68 ae e0 00 00       	push   $0xe0ae
    76e5:	e8 8c 2f 00 00       	call   a676 <dump_fd_graph>
    76ea:	83 c4 10             	add    $0x10,%esp
    76ed:	eb 1b                	jmp    770a <task_fs+0x184>
    76ef:	6a 73                	push   $0x73
    76f1:	68 7f e0 00 00       	push   $0xe07f
    76f6:	68 7f e0 00 00       	push   $0xe07f
    76fb:	68 89 e0 00 00       	push   $0xe089
    7700:	e8 f8 4f 00 00       	call   c6fd <assertion_failure>
    7705:	83 c4 10             	add    $0x10,%esp
    7708:	eb 01                	jmp    770b <task_fs+0x185>
    770a:	90                   	nop
    770b:	a1 64 95 03 00       	mov    0x39564,%eax
    7710:	83 f8 0c             	cmp    $0xc,%eax
    7713:	0f 84 8b fe ff ff    	je     75a4 <task_fs+0x1e>
    7719:	c7 05 64 95 03 00 12 	movl   $0x12,0x39564
    7720:	00 00 00 
    7723:	83 ec 04             	sub    $0x4,%esp
    7726:	68 60 95 03 00       	push   $0x39560
    772b:	ff 75 f4             	pushl  -0xc(%ebp)
    772e:	6a 01                	push   $0x1
    7730:	e8 b3 4d 00 00       	call   c4e8 <send_recv>
    7735:	83 c4 10             	add    $0x10,%esp
    7738:	e9 67 fe ff ff       	jmp    75a4 <task_fs+0x1e>

0000773d <init_fs>:
    773d:	55                   	push   %ebp
    773e:	89 e5                	mov    %esp,%ebp
    7740:	83 ec 48             	sub    $0x48,%esp
    7743:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    774a:	eb 1f                	jmp    776b <init_fs+0x2e>
    774c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    774f:	c1 e0 04             	shl    $0x4,%eax
    7752:	05 a0 95 03 00       	add    $0x395a0,%eax
    7757:	83 ec 04             	sub    $0x4,%esp
    775a:	6a 10                	push   $0x10
    775c:	6a 00                	push   $0x0
    775e:	50                   	push   %eax
    775f:	e8 35 4d 00 00       	call   c499 <memset>
    7764:	83 c4 10             	add    $0x10,%esp
    7767:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    776b:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    776f:	7e db                	jle    774c <init_fs+0xf>
    7771:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7778:	eb 1f                	jmp    7799 <init_fs+0x5c>
    777a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    777d:	6b c0 2c             	imul   $0x2c,%eax,%eax
    7780:	05 20 39 01 00       	add    $0x13920,%eax
    7785:	83 ec 04             	sub    $0x4,%esp
    7788:	6a 2c                	push   $0x2c
    778a:	6a 00                	push   $0x0
    778c:	50                   	push   %eax
    778d:	e8 07 4d 00 00       	call   c499 <memset>
    7792:	83 c4 10             	add    $0x10,%esp
    7795:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7799:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    779d:	7e db                	jle    777a <init_fs+0x3d>
    779f:	c7 45 f0 00 a2 03 00 	movl   $0x3a200,-0x10(%ebp)
    77a6:	eb 0e                	jmp    77b6 <init_fs+0x79>
    77a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    77ab:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
    77b2:	83 45 f0 3c          	addl   $0x3c,-0x10(%ebp)
    77b6:	81 7d f0 e0 a3 03 00 	cmpl   $0x3a3e0,-0x10(%ebp)
    77bd:	72 e9                	jb     77a8 <init_fs+0x6b>
    77bf:	c7 45 c4 e9 03 00 00 	movl   $0x3e9,-0x3c(%ebp)
    77c6:	c7 45 d4 20 00 00 00 	movl   $0x20,-0x2c(%ebp)
    77cd:	a1 f8 27 01 00       	mov    0x127f8,%eax
    77d2:	83 f8 ec             	cmp    $0xffffffec,%eax
    77d5:	75 1c                	jne    77f3 <init_fs+0xb6>
    77d7:	68 9c 00 00 00       	push   $0x9c
    77dc:	68 7f e0 00 00       	push   $0xe07f
    77e1:	68 7f e0 00 00       	push   $0xe07f
    77e6:	68 34 e1 00 00       	push   $0xe134
    77eb:	e8 0d 4f 00 00       	call   c6fd <assertion_failure>
    77f0:	83 c4 10             	add    $0x10,%esp
    77f3:	a1 f8 27 01 00       	mov    0x127f8,%eax
    77f8:	83 ec 04             	sub    $0x4,%esp
    77fb:	8d 55 c0             	lea    -0x40(%ebp),%edx
    77fe:	52                   	push   %edx
    77ff:	50                   	push   %eax
    7800:	6a 03                	push   $0x3
    7802:	e8 e1 4c 00 00       	call   c4e8 <send_recv>
    7807:	83 c4 10             	add    $0x10,%esp
    780a:	e8 65 00 00 00       	call   7874 <mkfs>
    780f:	83 ec 0c             	sub    $0xc,%esp
    7812:	68 20 03 00 00       	push   $0x320
    7817:	e8 89 08 00 00       	call   80a5 <read_super_block>
    781c:	83 c4 10             	add    $0x10,%esp
    781f:	83 ec 0c             	sub    $0xc,%esp
    7822:	68 20 03 00 00       	push   $0x320
    7827:	e8 e8 09 00 00       	call   8214 <get_super_block>
    782c:	83 c4 10             	add    $0x10,%esp
    782f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7832:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7835:	8b 00                	mov    (%eax),%eax
    7837:	3d 11 01 00 00       	cmp    $0x111,%eax
    783c:	74 1c                	je     785a <init_fs+0x11d>
    783e:	68 a6 00 00 00       	push   $0xa6
    7843:	68 7f e0 00 00       	push   $0xe07f
    7848:	68 7f e0 00 00       	push   $0xe07f
    784d:	68 68 e1 00 00       	push   $0xe168
    7852:	e8 a6 4e 00 00       	call   c6fd <assertion_failure>
    7857:	83 c4 10             	add    $0x10,%esp
    785a:	83 ec 08             	sub    $0x8,%esp
    785d:	6a 01                	push   $0x1
    785f:	68 20 03 00 00       	push   $0x320
    7864:	e8 f1 09 00 00       	call   825a <get_inode>
    7869:	83 c4 10             	add    $0x10,%esp
    786c:	a3 a0 99 03 00       	mov    %eax,0x399a0
    7871:	90                   	nop
    7872:	c9                   	leave  
    7873:	c3                   	ret    

00007874 <mkfs>:
    7874:	55                   	push   %ebp
    7875:	89 e5                	mov    %esp,%ebp
    7877:	57                   	push   %edi
    7878:	56                   	push   %esi
    7879:	53                   	push   %ebx
    787a:	81 ec ec 00 00 00    	sub    $0xec,%esp
    7880:	c7 45 90 ed 03 00 00 	movl   $0x3ed,-0x70(%ebp)
    7887:	c7 45 a0 20 00 00 00 	movl   $0x20,-0x60(%ebp)
    788e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
    7895:	8d 45 84             	lea    -0x7c(%ebp),%eax
    7898:	89 45 b8             	mov    %eax,-0x48(%ebp)
    789b:	c7 45 9c 03 00 00 00 	movl   $0x3,-0x64(%ebp)
    78a2:	a1 f8 27 01 00       	mov    0x127f8,%eax
    78a7:	83 f8 ec             	cmp    $0xffffffec,%eax
    78aa:	75 1c                	jne    78c8 <mkfs+0x54>
    78ac:	68 c8 00 00 00       	push   $0xc8
    78b1:	68 7f e0 00 00       	push   $0xe07f
    78b6:	68 7f e0 00 00       	push   $0xe07f
    78bb:	68 34 e1 00 00       	push   $0xe134
    78c0:	e8 38 4e 00 00       	call   c6fd <assertion_failure>
    78c5:	83 c4 10             	add    $0x10,%esp
    78c8:	a1 f8 27 01 00       	mov    0x127f8,%eax
    78cd:	83 ec 04             	sub    $0x4,%esp
    78d0:	8d 55 8c             	lea    -0x74(%ebp),%edx
    78d3:	52                   	push   %edx
    78d4:	50                   	push   %eax
    78d5:	6a 03                	push   $0x3
    78d7:	e8 0c 4c 00 00       	call   c4e8 <send_recv>
    78dc:	83 c4 10             	add    $0x10,%esp
    78df:	8b 45 88             	mov    -0x78(%ebp),%eax
    78e2:	83 ec 08             	sub    $0x8,%esp
    78e5:	50                   	push   %eax
    78e6:	68 7e e1 00 00       	push   $0xe17e
    78eb:	e8 2c 48 00 00       	call   c11c <printl>
    78f0:	83 c4 10             	add    $0x10,%esp
    78f3:	c7 45 cc 00 10 00 00 	movl   $0x1000,-0x34(%ebp)
    78fa:	c7 85 48 ff ff ff 11 	movl   $0x111,-0xb8(%ebp)
    7901:	01 00 00 
    7904:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7907:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
    790d:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
    7913:	c1 e0 05             	shl    $0x5,%eax
    7916:	c1 e8 09             	shr    $0x9,%eax
    7919:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    791f:	8b 45 88             	mov    -0x78(%ebp),%eax
    7922:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
    7928:	c7 85 54 ff ff ff 01 	movl   $0x1,-0xac(%ebp)
    792f:	00 00 00 
    7932:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7938:	8b 75 cc             	mov    -0x34(%ebp),%esi
    793b:	ba 00 00 00 00       	mov    $0x0,%edx
    7940:	f7 f6                	div    %esi
    7942:	83 c0 01             	add    $0x1,%eax
    7945:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
    794b:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7951:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7957:	01 c2                	add    %eax,%edx
    7959:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    795f:	01 d0                	add    %edx,%eax
    7961:	83 c0 02             	add    $0x2,%eax
    7964:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
    796a:	c7 85 64 ff ff ff 01 	movl   $0x1,-0x9c(%ebp)
    7971:	00 00 00 
    7974:	c7 85 68 ff ff ff 20 	movl   $0x20,-0x98(%ebp)
    797b:	00 00 00 
    797e:	c7 85 6c ff ff ff 04 	movl   $0x4,-0x94(%ebp)
    7985:	00 00 00 
    7988:	c7 85 70 ff ff ff 08 	movl   $0x8,-0x90(%ebp)
    798f:	00 00 00 
    7992:	c7 85 74 ff ff ff 10 	movl   $0x10,-0x8c(%ebp)
    7999:	00 00 00 
    799c:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
    79a3:	00 00 00 
    79a6:	c7 85 7c ff ff ff 04 	movl   $0x4,-0x84(%ebp)
    79ad:	00 00 00 
    79b0:	a1 04 28 01 00       	mov    0x12804,%eax
    79b5:	83 ec 04             	sub    $0x4,%esp
    79b8:	68 00 02 00 00       	push   $0x200
    79bd:	6a 90                	push   $0xffffff90
    79bf:	50                   	push   %eax
    79c0:	e8 d4 4a 00 00       	call   c499 <memset>
    79c5:	83 c4 10             	add    $0x10,%esp
    79c8:	a1 04 28 01 00       	mov    0x12804,%eax
    79cd:	83 ec 04             	sub    $0x4,%esp
    79d0:	6a 38                	push   $0x38
    79d2:	8d 95 48 ff ff ff    	lea    -0xb8(%ebp),%edx
    79d8:	52                   	push   %edx
    79d9:	50                   	push   %eax
    79da:	e8 91 4a 00 00       	call   c470 <memcpy>
    79df:	83 c4 10             	add    $0x10,%esp
    79e2:	a1 04 28 01 00       	mov    0x12804,%eax
    79e7:	83 ec 04             	sub    $0x4,%esp
    79ea:	50                   	push   %eax
    79eb:	6a 03                	push   $0x3
    79ed:	68 00 02 00 00       	push   $0x200
    79f2:	6a 00                	push   $0x0
    79f4:	68 00 02 00 00       	push   $0x200
    79f9:	68 20 03 00 00       	push   $0x320
    79fe:	68 ec 03 00 00       	push   $0x3ec
    7a03:	e8 04 06 00 00       	call   800c <rw_sector>
    7a08:	83 c4 20             	add    $0x20,%esp
    7a0b:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7a0e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7a14:	01 d0                	add    %edx,%eax
    7a16:	8d 3c 00             	lea    (%eax,%eax,1),%edi
    7a19:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7a1c:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7a22:	01 c2                	add    %eax,%edx
    7a24:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7a2a:	01 d0                	add    %edx,%eax
    7a2c:	83 c0 02             	add    $0x2,%eax
    7a2f:	8d 34 00             	lea    (%eax,%eax,1),%esi
    7a32:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7a35:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7a3b:	01 d0                	add    %edx,%eax
    7a3d:	83 c0 02             	add    $0x2,%eax
    7a40:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
    7a43:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a46:	83 c0 02             	add    $0x2,%eax
    7a49:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    7a4c:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a4f:	83 c0 01             	add    $0x1,%eax
    7a52:	8d 14 00             	lea    (%eax,%eax,1),%edx
    7a55:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a58:	01 c0                	add    %eax,%eax
    7a5a:	83 ec 04             	sub    $0x4,%esp
    7a5d:	57                   	push   %edi
    7a5e:	56                   	push   %esi
    7a5f:	53                   	push   %ebx
    7a60:	51                   	push   %ecx
    7a61:	52                   	push   %edx
    7a62:	50                   	push   %eax
    7a63:	68 9c e1 00 00       	push   $0xe19c
    7a68:	e8 af 46 00 00       	call   c11c <printl>
    7a6d:	83 c4 20             	add    $0x20,%esp
    7a70:	a1 04 28 01 00       	mov    0x12804,%eax
    7a75:	83 ec 04             	sub    $0x4,%esp
    7a78:	68 00 02 00 00       	push   $0x200
    7a7d:	6a 00                	push   $0x0
    7a7f:	50                   	push   %eax
    7a80:	e8 14 4a 00 00       	call   c499 <memset>
    7a85:	83 c4 10             	add    $0x10,%esp
    7a88:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7a8f:	eb 27                	jmp    7ab8 <mkfs+0x244>
    7a91:	a1 04 28 01 00       	mov    0x12804,%eax
    7a96:	0f b6 00             	movzbl (%eax),%eax
    7a99:	89 c3                	mov    %eax,%ebx
    7a9b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7a9e:	ba 01 00 00 00       	mov    $0x1,%edx
    7aa3:	89 c1                	mov    %eax,%ecx
    7aa5:	d3 e2                	shl    %cl,%edx
    7aa7:	89 d0                	mov    %edx,%eax
    7aa9:	09 c3                	or     %eax,%ebx
    7aab:	89 da                	mov    %ebx,%edx
    7aad:	a1 04 28 01 00       	mov    0x12804,%eax
    7ab2:	88 10                	mov    %dl,(%eax)
    7ab4:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7ab8:	83 7d e4 05          	cmpl   $0x5,-0x1c(%ebp)
    7abc:	7e d3                	jle    7a91 <mkfs+0x21d>
    7abe:	a1 04 28 01 00       	mov    0x12804,%eax
    7ac3:	0f b6 00             	movzbl (%eax),%eax
    7ac6:	3c 3f                	cmp    $0x3f,%al
    7ac8:	74 1c                	je     7ae6 <mkfs+0x272>
    7aca:	68 f8 00 00 00       	push   $0xf8
    7acf:	68 7f e0 00 00       	push   $0xe07f
    7ad4:	68 7f e0 00 00       	push   $0xe07f
    7ad9:	68 ff e1 00 00       	push   $0xe1ff
    7ade:	e8 1a 4c 00 00       	call   c6fd <assertion_failure>
    7ae3:	83 c4 10             	add    $0x10,%esp
    7ae6:	a1 04 28 01 00       	mov    0x12804,%eax
    7aeb:	83 ec 04             	sub    $0x4,%esp
    7aee:	50                   	push   %eax
    7aef:	6a 03                	push   $0x3
    7af1:	68 00 02 00 00       	push   $0x200
    7af6:	6a 00                	push   $0x0
    7af8:	68 00 04 00 00       	push   $0x400
    7afd:	68 20 03 00 00       	push   $0x320
    7b02:	68 ec 03 00 00       	push   $0x3ec
    7b07:	e8 00 05 00 00       	call   800c <rw_sector>
    7b0c:	83 c4 20             	add    $0x20,%esp
    7b0f:	a1 04 28 01 00       	mov    0x12804,%eax
    7b14:	83 ec 04             	sub    $0x4,%esp
    7b17:	68 00 02 00 00       	push   $0x200
    7b1c:	6a 00                	push   $0x0
    7b1e:	50                   	push   %eax
    7b1f:	e8 75 49 00 00       	call   c499 <memset>
    7b24:	83 c4 10             	add    $0x10,%esp
    7b27:	c7 45 c8 01 08 00 00 	movl   $0x801,-0x38(%ebp)
    7b2e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7b35:	eb 12                	jmp    7b49 <mkfs+0x2d5>
    7b37:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b3d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b40:	01 d0                	add    %edx,%eax
    7b42:	c6 00 ff             	movb   $0xff,(%eax)
    7b45:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7b49:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7b4c:	8d 50 07             	lea    0x7(%eax),%edx
    7b4f:	85 c0                	test   %eax,%eax
    7b51:	0f 48 c2             	cmovs  %edx,%eax
    7b54:	c1 f8 03             	sar    $0x3,%eax
    7b57:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    7b5a:	7c db                	jl     7b37 <mkfs+0x2c3>
    7b5c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    7b63:	eb 35                	jmp    7b9a <mkfs+0x326>
    7b65:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b6e:	01 d0                	add    %edx,%eax
    7b70:	0f b6 00             	movzbl (%eax),%eax
    7b73:	89 c3                	mov    %eax,%ebx
    7b75:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7b78:	ba 01 00 00 00       	mov    $0x1,%edx
    7b7d:	89 c1                	mov    %eax,%ecx
    7b7f:	d3 e2                	shl    %cl,%edx
    7b81:	89 d0                	mov    %edx,%eax
    7b83:	09 c3                	or     %eax,%ebx
    7b85:	89 d9                	mov    %ebx,%ecx
    7b87:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b8d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b90:	01 d0                	add    %edx,%eax
    7b92:	89 ca                	mov    %ecx,%edx
    7b94:	88 10                	mov    %dl,(%eax)
    7b96:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    7b9a:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7b9d:	99                   	cltd   
    7b9e:	c1 ea 1d             	shr    $0x1d,%edx
    7ba1:	01 d0                	add    %edx,%eax
    7ba3:	83 e0 07             	and    $0x7,%eax
    7ba6:	29 d0                	sub    %edx,%eax
    7ba8:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    7bab:	7c b8                	jl     7b65 <mkfs+0x2f1>
    7bad:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7bb3:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7bb9:	83 c0 02             	add    $0x2,%eax
    7bbc:	c1 e0 09             	shl    $0x9,%eax
    7bbf:	ba 00 00 00 00       	mov    $0x0,%edx
    7bc4:	83 ec 04             	sub    $0x4,%esp
    7bc7:	51                   	push   %ecx
    7bc8:	6a 03                	push   $0x3
    7bca:	68 00 02 00 00       	push   $0x200
    7bcf:	52                   	push   %edx
    7bd0:	50                   	push   %eax
    7bd1:	68 20 03 00 00       	push   $0x320
    7bd6:	68 ec 03 00 00       	push   $0x3ec
    7bdb:	e8 2c 04 00 00       	call   800c <rw_sector>
    7be0:	83 c4 20             	add    $0x20,%esp
    7be3:	a1 04 28 01 00       	mov    0x12804,%eax
    7be8:	83 ec 04             	sub    $0x4,%esp
    7beb:	68 00 02 00 00       	push   $0x200
    7bf0:	6a 00                	push   $0x0
    7bf2:	50                   	push   %eax
    7bf3:	e8 a1 48 00 00       	call   c499 <memset>
    7bf8:	83 c4 10             	add    $0x10,%esp
    7bfb:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    7c02:	eb 3f                	jmp    7c43 <mkfs+0x3cf>
    7c04:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7c0a:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7c10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7c13:	01 d0                	add    %edx,%eax
    7c15:	83 c0 02             	add    $0x2,%eax
    7c18:	c1 e0 09             	shl    $0x9,%eax
    7c1b:	ba 00 00 00 00       	mov    $0x0,%edx
    7c20:	83 ec 04             	sub    $0x4,%esp
    7c23:	51                   	push   %ecx
    7c24:	6a 03                	push   $0x3
    7c26:	68 00 02 00 00       	push   $0x200
    7c2b:	52                   	push   %edx
    7c2c:	50                   	push   %eax
    7c2d:	68 20 03 00 00       	push   $0x320
    7c32:	68 ec 03 00 00       	push   $0x3ec
    7c37:	e8 d0 03 00 00       	call   800c <rw_sector>
    7c3c:	83 c4 20             	add    $0x20,%esp
    7c3f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7c43:	8b 95 58 ff ff ff    	mov    -0xa8(%ebp),%edx
    7c49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7c4c:	39 c2                	cmp    %eax,%edx
    7c4e:	77 b4                	ja     7c04 <mkfs+0x390>
    7c50:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7c56:	2d 00 08 00 00       	sub    $0x800,%eax
    7c5b:	3d 00 88 00 00       	cmp    $0x8800,%eax
    7c60:	77 1c                	ja     7c7e <mkfs+0x40a>
    7c62:	68 1d 01 00 00       	push   $0x11d
    7c67:	68 7f e0 00 00       	push   $0xe07f
    7c6c:	68 7f e0 00 00       	push   $0xe07f
    7c71:	68 10 e2 00 00       	push   $0xe210
    7c76:	e8 82 4a 00 00       	call   c6fd <assertion_failure>
    7c7b:	83 c4 10             	add    $0x10,%esp
    7c7e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7c84:	ba 01 80 00 00       	mov    $0x8001,%edx
    7c89:	29 c2                	sub    %eax,%edx
    7c8b:	89 d0                	mov    %edx,%eax
    7c8d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    7c90:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7c93:	99                   	cltd   
    7c94:	c1 ea 14             	shr    $0x14,%edx
    7c97:	01 d0                	add    %edx,%eax
    7c99:	25 ff 0f 00 00       	and    $0xfff,%eax
    7c9e:	29 d0                	sub    %edx,%eax
    7ca0:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7ca3:	c7 45 d8 00 08 00 00 	movl   $0x800,-0x28(%ebp)
    7caa:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7cad:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
    7cb3:	85 c0                	test   %eax,%eax
    7cb5:	0f 48 c2             	cmovs  %edx,%eax
    7cb8:	c1 f8 0c             	sar    $0xc,%eax
    7cbb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7cbe:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7cc4:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7cca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7ccd:	01 d0                	add    %edx,%eax
    7ccf:	83 c0 02             	add    $0x2,%eax
    7cd2:	c1 e0 09             	shl    $0x9,%eax
    7cd5:	ba 00 00 00 00       	mov    $0x0,%edx
    7cda:	83 ec 04             	sub    $0x4,%esp
    7cdd:	51                   	push   %ecx
    7cde:	6a 03                	push   $0x3
    7ce0:	68 00 02 00 00       	push   $0x200
    7ce5:	52                   	push   %edx
    7ce6:	50                   	push   %eax
    7ce7:	68 20 03 00 00       	push   $0x320
    7cec:	68 eb 03 00 00       	push   $0x3eb
    7cf1:	e8 16 03 00 00       	call   800c <rw_sector>
    7cf6:	83 c4 20             	add    $0x20,%esp
    7cf9:	e9 e3 00 00 00       	jmp    7de1 <mkfs+0x56d>
    7cfe:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7d01:	8d 50 07             	lea    0x7(%eax),%edx
    7d04:	85 c0                	test   %eax,%eax
    7d06:	0f 48 c2             	cmovs  %edx,%eax
    7d09:	c1 f8 03             	sar    $0x3,%eax
    7d0c:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7d0f:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7d15:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7d18:	01 d0                	add    %edx,%eax
    7d1a:	0f b6 00             	movzbl (%eax),%eax
    7d1d:	89 c3                	mov    %eax,%ebx
    7d1f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7d22:	99                   	cltd   
    7d23:	c1 ea 1d             	shr    $0x1d,%edx
    7d26:	01 d0                	add    %edx,%eax
    7d28:	83 e0 07             	and    $0x7,%eax
    7d2b:	29 d0                	sub    %edx,%eax
    7d2d:	ba 01 00 00 00       	mov    $0x1,%edx
    7d32:	89 c1                	mov    %eax,%ecx
    7d34:	d3 e2                	shl    %cl,%edx
    7d36:	89 d0                	mov    %edx,%eax
    7d38:	09 c3                	or     %eax,%ebx
    7d3a:	89 d9                	mov    %ebx,%ecx
    7d3c:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7d42:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7d45:	01 d0                	add    %edx,%eax
    7d47:	89 ca                	mov    %ecx,%edx
    7d49:	88 10                	mov    %dl,(%eax)
    7d4b:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
    7d4f:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    7d53:	81 7d dc 00 10 00 00 	cmpl   $0x1000,-0x24(%ebp)
    7d5a:	0f 85 81 00 00 00    	jne    7de1 <mkfs+0x56d>
    7d60:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7d66:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7d6c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d6f:	01 d0                	add    %edx,%eax
    7d71:	83 c0 02             	add    $0x2,%eax
    7d74:	c1 e0 09             	shl    $0x9,%eax
    7d77:	ba 00 00 00 00       	mov    $0x0,%edx
    7d7c:	83 ec 04             	sub    $0x4,%esp
    7d7f:	51                   	push   %ecx
    7d80:	6a 03                	push   $0x3
    7d82:	68 00 02 00 00       	push   $0x200
    7d87:	52                   	push   %edx
    7d88:	50                   	push   %eax
    7d89:	68 20 03 00 00       	push   $0x320
    7d8e:	68 ec 03 00 00       	push   $0x3ec
    7d93:	e8 74 02 00 00       	call   800c <rw_sector>
    7d98:	83 c4 20             	add    $0x20,%esp
    7d9b:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    7d9f:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7da5:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7dab:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7dae:	01 d0                	add    %edx,%eax
    7db0:	83 c0 02             	add    $0x2,%eax
    7db3:	c1 e0 09             	shl    $0x9,%eax
    7db6:	ba 00 00 00 00       	mov    $0x0,%edx
    7dbb:	83 ec 04             	sub    $0x4,%esp
    7dbe:	51                   	push   %ecx
    7dbf:	6a 03                	push   $0x3
    7dc1:	68 00 02 00 00       	push   $0x200
    7dc6:	52                   	push   %edx
    7dc7:	50                   	push   %eax
    7dc8:	68 20 03 00 00       	push   $0x320
    7dcd:	68 eb 03 00 00       	push   $0x3eb
    7dd2:	e8 35 02 00 00       	call   800c <rw_sector>
    7dd7:	83 c4 20             	add    $0x20,%esp
    7dda:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    7de1:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
    7de5:	0f 85 13 ff ff ff    	jne    7cfe <mkfs+0x48a>
    7deb:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7df1:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7df7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7dfa:	01 d0                	add    %edx,%eax
    7dfc:	83 c0 02             	add    $0x2,%eax
    7dff:	c1 e0 09             	shl    $0x9,%eax
    7e02:	ba 00 00 00 00       	mov    $0x0,%edx
    7e07:	83 ec 04             	sub    $0x4,%esp
    7e0a:	51                   	push   %ecx
    7e0b:	6a 03                	push   $0x3
    7e0d:	68 00 02 00 00       	push   $0x200
    7e12:	52                   	push   %edx
    7e13:	50                   	push   %eax
    7e14:	68 20 03 00 00       	push   $0x320
    7e19:	68 ec 03 00 00       	push   $0x3ec
    7e1e:	e8 e9 01 00 00       	call   800c <rw_sector>
    7e23:	83 c4 20             	add    $0x20,%esp
    7e26:	a1 04 28 01 00       	mov    0x12804,%eax
    7e2b:	83 ec 04             	sub    $0x4,%esp
    7e2e:	68 00 02 00 00       	push   $0x200
    7e33:	6a 00                	push   $0x0
    7e35:	50                   	push   %eax
    7e36:	e8 5e 46 00 00       	call   c499 <memset>
    7e3b:	83 c4 10             	add    $0x10,%esp
    7e3e:	a1 04 28 01 00       	mov    0x12804,%eax
    7e43:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7e46:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e49:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
    7e4f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e52:	c7 40 04 50 00 00 00 	movl   $0x50,0x4(%eax)
    7e59:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
    7e5f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e62:	89 50 08             	mov    %edx,0x8(%eax)
    7e65:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e68:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7e6f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7e76:	eb 42                	jmp    7eba <mkfs+0x646>
    7e78:	a1 04 28 01 00       	mov    0x12804,%eax
    7e7d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7e80:	83 c2 01             	add    $0x1,%edx
    7e83:	c1 e2 05             	shl    $0x5,%edx
    7e86:	01 d0                	add    %edx,%eax
    7e88:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7e8b:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e8e:	c7 00 00 20 00 00    	movl   $0x2000,(%eax)
    7e94:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e97:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    7e9e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7ea1:	80 cc 04             	or     $0x4,%ah
    7ea4:	89 c2                	mov    %eax,%edx
    7ea6:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ea9:	89 50 08             	mov    %edx,0x8(%eax)
    7eac:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7eaf:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    7eb6:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7eba:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7ebe:	7e b8                	jle    7e78 <mkfs+0x604>
    7ec0:	a1 04 28 01 00       	mov    0x12804,%eax
    7ec5:	83 e8 80             	sub    $0xffffff80,%eax
    7ec8:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7ecb:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ece:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    7ed4:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ed7:	c7 40 04 00 00 10 00 	movl   $0x100000,0x4(%eax)
    7ede:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ee1:	c7 40 08 00 80 00 00 	movl   $0x8000,0x8(%eax)
    7ee8:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7eeb:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7ef2:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7ef8:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7efe:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7f04:	01 d0                	add    %edx,%eax
    7f06:	83 c0 02             	add    $0x2,%eax
    7f09:	c1 e0 09             	shl    $0x9,%eax
    7f0c:	ba 00 00 00 00       	mov    $0x0,%edx
    7f11:	83 ec 04             	sub    $0x4,%esp
    7f14:	51                   	push   %ecx
    7f15:	6a 03                	push   $0x3
    7f17:	68 00 02 00 00       	push   $0x200
    7f1c:	52                   	push   %edx
    7f1d:	50                   	push   %eax
    7f1e:	68 20 03 00 00       	push   $0x320
    7f23:	68 ec 03 00 00       	push   $0x3ec
    7f28:	e8 df 00 00 00       	call   800c <rw_sector>
    7f2d:	83 c4 20             	add    $0x20,%esp
    7f30:	a1 04 28 01 00       	mov    0x12804,%eax
    7f35:	83 ec 04             	sub    $0x4,%esp
    7f38:	68 00 02 00 00       	push   $0x200
    7f3d:	6a 00                	push   $0x0
    7f3f:	50                   	push   %eax
    7f40:	e8 54 45 00 00       	call   c499 <memset>
    7f45:	83 c4 10             	add    $0x10,%esp
    7f48:	a1 04 28 01 00       	mov    0x12804,%eax
    7f4d:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7f50:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f53:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    7f59:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f5c:	83 c0 04             	add    $0x4,%eax
    7f5f:	83 ec 08             	sub    $0x8,%esp
    7f62:	68 57 e2 00 00       	push   $0xe257
    7f67:	50                   	push   %eax
    7f68:	e8 4d 45 00 00       	call   c4ba <strcpy>
    7f6d:	83 c4 10             	add    $0x10,%esp
    7f70:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7f77:	eb 2d                	jmp    7fa6 <mkfs+0x732>
    7f79:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7f7d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7f80:	8d 50 02             	lea    0x2(%eax),%edx
    7f83:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f86:	89 10                	mov    %edx,(%eax)
    7f88:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f8b:	83 c0 04             	add    $0x4,%eax
    7f8e:	83 ec 04             	sub    $0x4,%esp
    7f91:	ff 75 e4             	pushl  -0x1c(%ebp)
    7f94:	68 59 e2 00 00       	push   $0xe259
    7f99:	50                   	push   %eax
    7f9a:	e8 a2 44 00 00       	call   c441 <sprintf>
    7f9f:	83 c4 10             	add    $0x10,%esp
    7fa2:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7fa6:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7faa:	7e cd                	jle    7f79 <mkfs+0x705>
    7fac:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7fb0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7fb3:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    7fb9:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7fbc:	83 c0 04             	add    $0x4,%eax
    7fbf:	83 ec 08             	sub    $0x8,%esp
    7fc2:	68 63 e2 00 00       	push   $0xe263
    7fc7:	50                   	push   %eax
    7fc8:	e8 ed 44 00 00       	call   c4ba <strcpy>
    7fcd:	83 c4 10             	add    $0x10,%esp
    7fd0:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7fd6:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7fdc:	c1 e0 09             	shl    $0x9,%eax
    7fdf:	ba 00 00 00 00       	mov    $0x0,%edx
    7fe4:	83 ec 04             	sub    $0x4,%esp
    7fe7:	51                   	push   %ecx
    7fe8:	6a 03                	push   $0x3
    7fea:	68 00 02 00 00       	push   $0x200
    7fef:	52                   	push   %edx
    7ff0:	50                   	push   %eax
    7ff1:	68 20 03 00 00       	push   $0x320
    7ff6:	68 ec 03 00 00       	push   $0x3ec
    7ffb:	e8 0c 00 00 00       	call   800c <rw_sector>
    8000:	83 c4 20             	add    $0x20,%esp
    8003:	90                   	nop
    8004:	8d 65 f4             	lea    -0xc(%ebp),%esp
    8007:	5b                   	pop    %ebx
    8008:	5e                   	pop    %esi
    8009:	5f                   	pop    %edi
    800a:	5d                   	pop    %ebp
    800b:	c3                   	ret    

0000800c <rw_sector>:
    800c:	55                   	push   %ebp
    800d:	89 e5                	mov    %esp,%ebp
    800f:	83 ec 48             	sub    $0x48,%esp
    8012:	8b 45 10             	mov    0x10(%ebp),%eax
    8015:	89 45 c0             	mov    %eax,-0x40(%ebp)
    8018:	8b 45 14             	mov    0x14(%ebp),%eax
    801b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    801e:	8b 45 08             	mov    0x8(%ebp),%eax
    8021:	89 45 cc             	mov    %eax,-0x34(%ebp)
    8024:	8b 45 0c             	mov    0xc(%ebp),%eax
    8027:	0f b6 c0             	movzbl %al,%eax
    802a:	89 45 dc             	mov    %eax,-0x24(%ebp)
    802d:	8b 45 c0             	mov    -0x40(%ebp),%eax
    8030:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    8033:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8036:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    8039:	8b 45 20             	mov    0x20(%ebp),%eax
    803c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    803f:	8b 45 18             	mov    0x18(%ebp),%eax
    8042:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    8045:	8b 45 1c             	mov    0x1c(%ebp),%eax
    8048:	89 45 d8             	mov    %eax,-0x28(%ebp)
    804b:	8b 45 0c             	mov    0xc(%ebp),%eax
    804e:	c1 f8 08             	sar    $0x8,%eax
    8051:	0f b6 c0             	movzbl %al,%eax
    8054:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    805b:	83 f8 ec             	cmp    $0xffffffec,%eax
    805e:	75 1c                	jne    807c <rw_sector+0x70>
    8060:	68 8e 01 00 00       	push   $0x18e
    8065:	68 7f e0 00 00       	push   $0xe07f
    806a:	68 7f e0 00 00       	push   $0xe07f
    806f:	68 6c e2 00 00       	push   $0xe26c
    8074:	e8 84 46 00 00       	call   c6fd <assertion_failure>
    8079:	83 c4 10             	add    $0x10,%esp
    807c:	8b 45 0c             	mov    0xc(%ebp),%eax
    807f:	c1 f8 08             	sar    $0x8,%eax
    8082:	0f b6 c0             	movzbl %al,%eax
    8085:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    808c:	83 ec 04             	sub    $0x4,%esp
    808f:	8d 55 c8             	lea    -0x38(%ebp),%edx
    8092:	52                   	push   %edx
    8093:	50                   	push   %eax
    8094:	6a 03                	push   $0x3
    8096:	e8 4d 44 00 00       	call   c4e8 <send_recv>
    809b:	83 c4 10             	add    $0x10,%esp
    809e:	b8 00 00 00 00       	mov    $0x0,%eax
    80a3:	c9                   	leave  
    80a4:	c3                   	ret    

000080a5 <read_super_block>:
    80a5:	55                   	push   %ebp
    80a6:	89 e5                	mov    %esp,%ebp
    80a8:	83 ec 48             	sub    $0x48,%esp
    80ab:	c7 45 c4 eb 03 00 00 	movl   $0x3eb,-0x3c(%ebp)
    80b2:	8b 45 08             	mov    0x8(%ebp),%eax
    80b5:	0f b6 c0             	movzbl %al,%eax
    80b8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    80bb:	c7 45 d8 00 02 00 00 	movl   $0x200,-0x28(%ebp)
    80c2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    80c9:	a1 04 28 01 00       	mov    0x12804,%eax
    80ce:	89 45 ec             	mov    %eax,-0x14(%ebp)
    80d1:	c7 45 cc 00 02 00 00 	movl   $0x200,-0x34(%ebp)
    80d8:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    80df:	8b 45 08             	mov    0x8(%ebp),%eax
    80e2:	c1 f8 08             	sar    $0x8,%eax
    80e5:	0f b6 c0             	movzbl %al,%eax
    80e8:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    80ef:	83 f8 ec             	cmp    $0xffffffec,%eax
    80f2:	75 1c                	jne    8110 <read_super_block+0x6b>
    80f4:	68 a9 01 00 00       	push   $0x1a9
    80f9:	68 7f e0 00 00       	push   $0xe07f
    80fe:	68 7f e0 00 00       	push   $0xe07f
    8103:	68 6c e2 00 00       	push   $0xe26c
    8108:	e8 f0 45 00 00       	call   c6fd <assertion_failure>
    810d:	83 c4 10             	add    $0x10,%esp
    8110:	8b 45 08             	mov    0x8(%ebp),%eax
    8113:	c1 f8 08             	sar    $0x8,%eax
    8116:	0f b6 c0             	movzbl %al,%eax
    8119:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    8120:	83 ec 04             	sub    $0x4,%esp
    8123:	8d 55 c0             	lea    -0x40(%ebp),%edx
    8126:	52                   	push   %edx
    8127:	50                   	push   %eax
    8128:	6a 03                	push   $0x3
    812a:	e8 b9 43 00 00       	call   c4e8 <send_recv>
    812f:	83 c4 10             	add    $0x10,%esp
    8132:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8139:	eb 15                	jmp    8150 <read_super_block+0xab>
    813b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    813e:	6b c0 3c             	imul   $0x3c,%eax,%eax
    8141:	05 38 a2 03 00       	add    $0x3a238,%eax
    8146:	8b 00                	mov    (%eax),%eax
    8148:	85 c0                	test   %eax,%eax
    814a:	74 0c                	je     8158 <read_super_block+0xb3>
    814c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8150:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
    8154:	7e e5                	jle    813b <read_super_block+0x96>
    8156:	eb 01                	jmp    8159 <read_super_block+0xb4>
    8158:	90                   	nop
    8159:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    815d:	75 10                	jne    816f <read_super_block+0xca>
    815f:	83 ec 0c             	sub    $0xc,%esp
    8162:	68 9b e2 00 00       	push   $0xe29b
    8167:	e8 da 9b ff ff       	call   1d46 <panic>
    816c:	83 c4 10             	add    $0x10,%esp
    816f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    8173:	74 1c                	je     8191 <read_super_block+0xec>
    8175:	68 b3 01 00 00       	push   $0x1b3
    817a:	68 7f e0 00 00       	push   $0xe07f
    817f:	68 7f e0 00 00       	push   $0xe07f
    8184:	68 b5 e2 00 00       	push   $0xe2b5
    8189:	e8 6f 45 00 00       	call   c6fd <assertion_failure>
    818e:	83 c4 10             	add    $0x10,%esp
    8191:	a1 04 28 01 00       	mov    0x12804,%eax
    8196:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8199:	8b 45 f4             	mov    -0xc(%ebp),%eax
    819c:	6b c0 3c             	imul   $0x3c,%eax,%eax
    819f:	8d 90 00 a2 03 00    	lea    0x3a200(%eax),%edx
    81a5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81a8:	8b 08                	mov    (%eax),%ecx
    81aa:	89 0a                	mov    %ecx,(%edx)
    81ac:	8b 48 04             	mov    0x4(%eax),%ecx
    81af:	89 4a 04             	mov    %ecx,0x4(%edx)
    81b2:	8b 48 08             	mov    0x8(%eax),%ecx
    81b5:	89 4a 08             	mov    %ecx,0x8(%edx)
    81b8:	8b 48 0c             	mov    0xc(%eax),%ecx
    81bb:	89 4a 0c             	mov    %ecx,0xc(%edx)
    81be:	8b 48 10             	mov    0x10(%eax),%ecx
    81c1:	89 4a 10             	mov    %ecx,0x10(%edx)
    81c4:	8b 48 14             	mov    0x14(%eax),%ecx
    81c7:	89 4a 14             	mov    %ecx,0x14(%edx)
    81ca:	8b 48 18             	mov    0x18(%eax),%ecx
    81cd:	89 4a 18             	mov    %ecx,0x18(%edx)
    81d0:	8b 48 1c             	mov    0x1c(%eax),%ecx
    81d3:	89 4a 1c             	mov    %ecx,0x1c(%edx)
    81d6:	8b 48 20             	mov    0x20(%eax),%ecx
    81d9:	89 4a 20             	mov    %ecx,0x20(%edx)
    81dc:	8b 48 24             	mov    0x24(%eax),%ecx
    81df:	89 4a 24             	mov    %ecx,0x24(%edx)
    81e2:	8b 48 28             	mov    0x28(%eax),%ecx
    81e5:	89 4a 28             	mov    %ecx,0x28(%edx)
    81e8:	8b 48 2c             	mov    0x2c(%eax),%ecx
    81eb:	89 4a 2c             	mov    %ecx,0x2c(%edx)
    81ee:	8b 48 30             	mov    0x30(%eax),%ecx
    81f1:	89 4a 30             	mov    %ecx,0x30(%edx)
    81f4:	8b 48 34             	mov    0x34(%eax),%ecx
    81f7:	89 4a 34             	mov    %ecx,0x34(%edx)
    81fa:	8b 40 38             	mov    0x38(%eax),%eax
    81fd:	89 42 38             	mov    %eax,0x38(%edx)
    8200:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8203:	6b c0 3c             	imul   $0x3c,%eax,%eax
    8206:	8d 90 38 a2 03 00    	lea    0x3a238(%eax),%edx
    820c:	8b 45 08             	mov    0x8(%ebp),%eax
    820f:	89 02                	mov    %eax,(%edx)
    8211:	90                   	nop
    8212:	c9                   	leave  
    8213:	c3                   	ret    

00008214 <get_super_block>:
    8214:	55                   	push   %ebp
    8215:	89 e5                	mov    %esp,%ebp
    8217:	83 ec 18             	sub    $0x18,%esp
    821a:	c7 45 f4 00 a2 03 00 	movl   $0x3a200,-0xc(%ebp)
    8221:	eb 14                	jmp    8237 <get_super_block+0x23>
    8223:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8226:	8b 40 38             	mov    0x38(%eax),%eax
    8229:	39 45 08             	cmp    %eax,0x8(%ebp)
    822c:	75 05                	jne    8233 <get_super_block+0x1f>
    822e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8231:	eb 25                	jmp    8258 <get_super_block+0x44>
    8233:	83 45 f4 3c          	addl   $0x3c,-0xc(%ebp)
    8237:	81 7d f4 e0 a3 03 00 	cmpl   $0x3a3e0,-0xc(%ebp)
    823e:	72 e3                	jb     8223 <get_super_block+0xf>
    8240:	83 ec 08             	sub    $0x8,%esp
    8243:	ff 75 08             	pushl  0x8(%ebp)
    8246:	68 bc e2 00 00       	push   $0xe2bc
    824b:	e8 f6 9a ff ff       	call   1d46 <panic>
    8250:	83 c4 10             	add    $0x10,%esp
    8253:	b8 00 00 00 00       	mov    $0x0,%eax
    8258:	c9                   	leave  
    8259:	c3                   	ret    

0000825a <get_inode>:
    825a:	55                   	push   %ebp
    825b:	89 e5                	mov    %esp,%ebp
    825d:	83 ec 28             	sub    $0x28,%esp
    8260:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8264:	75 0a                	jne    8270 <get_inode+0x16>
    8266:	b8 00 00 00 00       	mov    $0x0,%eax
    826b:	e9 4b 01 00 00       	jmp    83bb <get_inode+0x161>
    8270:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8277:	c7 45 f4 20 39 01 00 	movl   $0x13920,-0xc(%ebp)
    827e:	eb 47                	jmp    82c7 <get_inode+0x6d>
    8280:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8283:	8b 40 24             	mov    0x24(%eax),%eax
    8286:	85 c0                	test   %eax,%eax
    8288:	74 2d                	je     82b7 <get_inode+0x5d>
    828a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    828d:	8b 40 20             	mov    0x20(%eax),%eax
    8290:	39 45 08             	cmp    %eax,0x8(%ebp)
    8293:	75 2e                	jne    82c3 <get_inode+0x69>
    8295:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8298:	8b 40 28             	mov    0x28(%eax),%eax
    829b:	39 45 0c             	cmp    %eax,0xc(%ebp)
    829e:	75 23                	jne    82c3 <get_inode+0x69>
    82a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82a3:	8b 40 24             	mov    0x24(%eax),%eax
    82a6:	8d 50 01             	lea    0x1(%eax),%edx
    82a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82ac:	89 50 24             	mov    %edx,0x24(%eax)
    82af:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82b2:	e9 04 01 00 00       	jmp    83bb <get_inode+0x161>
    82b7:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    82bb:	75 06                	jne    82c3 <get_inode+0x69>
    82bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82c0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    82c3:	83 45 f4 2c          	addl   $0x2c,-0xc(%ebp)
    82c7:	81 7d f4 20 44 01 00 	cmpl   $0x14420,-0xc(%ebp)
    82ce:	72 b0                	jb     8280 <get_inode+0x26>
    82d0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    82d4:	75 10                	jne    82e6 <get_inode+0x8c>
    82d6:	83 ec 0c             	sub    $0xc,%esp
    82d9:	68 e0 e2 00 00       	push   $0xe2e0
    82de:	e8 63 9a ff ff       	call   1d46 <panic>
    82e3:	83 c4 10             	add    $0x10,%esp
    82e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82e9:	8b 55 08             	mov    0x8(%ebp),%edx
    82ec:	89 50 20             	mov    %edx,0x20(%eax)
    82ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82f2:	8b 55 0c             	mov    0xc(%ebp),%edx
    82f5:	89 50 28             	mov    %edx,0x28(%eax)
    82f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82fb:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8302:	83 ec 0c             	sub    $0xc,%esp
    8305:	ff 75 08             	pushl  0x8(%ebp)
    8308:	e8 07 ff ff ff       	call   8214 <get_super_block>
    830d:	83 c4 10             	add    $0x10,%esp
    8310:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8313:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8316:	8b 50 0c             	mov    0xc(%eax),%edx
    8319:	8b 45 ec             	mov    -0x14(%ebp),%eax
    831c:	8b 40 10             	mov    0x10(%eax),%eax
    831f:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8322:	8b 45 0c             	mov    0xc(%ebp),%eax
    8325:	83 e8 01             	sub    $0x1,%eax
    8328:	8d 50 0f             	lea    0xf(%eax),%edx
    832b:	85 c0                	test   %eax,%eax
    832d:	0f 48 c2             	cmovs  %edx,%eax
    8330:	c1 f8 04             	sar    $0x4,%eax
    8333:	01 c8                	add    %ecx,%eax
    8335:	83 c0 02             	add    $0x2,%eax
    8338:	89 45 e8             	mov    %eax,-0x18(%ebp)
    833b:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8341:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8344:	c1 e0 09             	shl    $0x9,%eax
    8347:	99                   	cltd   
    8348:	83 ec 04             	sub    $0x4,%esp
    834b:	51                   	push   %ecx
    834c:	6a 03                	push   $0x3
    834e:	68 00 02 00 00       	push   $0x200
    8353:	52                   	push   %edx
    8354:	50                   	push   %eax
    8355:	ff 75 08             	pushl  0x8(%ebp)
    8358:	68 eb 03 00 00       	push   $0x3eb
    835d:	e8 aa fc ff ff       	call   800c <rw_sector>
    8362:	83 c4 20             	add    $0x20,%esp
    8365:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    836b:	8b 45 0c             	mov    0xc(%ebp),%eax
    836e:	8d 50 ff             	lea    -0x1(%eax),%edx
    8371:	89 d0                	mov    %edx,%eax
    8373:	c1 f8 1f             	sar    $0x1f,%eax
    8376:	c1 e8 1c             	shr    $0x1c,%eax
    8379:	01 c2                	add    %eax,%edx
    837b:	83 e2 0f             	and    $0xf,%edx
    837e:	29 c2                	sub    %eax,%edx
    8380:	89 d0                	mov    %edx,%eax
    8382:	c1 e0 05             	shl    $0x5,%eax
    8385:	01 c8                	add    %ecx,%eax
    8387:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    838a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    838d:	8b 10                	mov    (%eax),%edx
    838f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8392:	89 10                	mov    %edx,(%eax)
    8394:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8397:	8b 50 04             	mov    0x4(%eax),%edx
    839a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    839d:	89 50 04             	mov    %edx,0x4(%eax)
    83a0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    83a3:	8b 50 08             	mov    0x8(%eax),%edx
    83a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83a9:	89 50 08             	mov    %edx,0x8(%eax)
    83ac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    83af:	8b 50 0c             	mov    0xc(%eax),%edx
    83b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83b5:	89 50 0c             	mov    %edx,0xc(%eax)
    83b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83bb:	c9                   	leave  
    83bc:	c3                   	ret    

000083bd <put_inode>:
    83bd:	55                   	push   %ebp
    83be:	89 e5                	mov    %esp,%ebp
    83c0:	83 ec 08             	sub    $0x8,%esp
    83c3:	8b 45 08             	mov    0x8(%ebp),%eax
    83c6:	8b 40 24             	mov    0x24(%eax),%eax
    83c9:	85 c0                	test   %eax,%eax
    83cb:	7f 1c                	jg     83e9 <put_inode+0x2c>
    83cd:	68 17 02 00 00       	push   $0x217
    83d2:	68 7f e0 00 00       	push   $0xe07f
    83d7:	68 7f e0 00 00       	push   $0xe07f
    83dc:	68 f8 e2 00 00       	push   $0xe2f8
    83e1:	e8 17 43 00 00       	call   c6fd <assertion_failure>
    83e6:	83 c4 10             	add    $0x10,%esp
    83e9:	8b 45 08             	mov    0x8(%ebp),%eax
    83ec:	8b 40 24             	mov    0x24(%eax),%eax
    83ef:	8d 50 ff             	lea    -0x1(%eax),%edx
    83f2:	8b 45 08             	mov    0x8(%ebp),%eax
    83f5:	89 50 24             	mov    %edx,0x24(%eax)
    83f8:	90                   	nop
    83f9:	c9                   	leave  
    83fa:	c3                   	ret    

000083fb <sync_inode>:
    83fb:	55                   	push   %ebp
    83fc:	89 e5                	mov    %esp,%ebp
    83fe:	53                   	push   %ebx
    83ff:	83 ec 14             	sub    $0x14,%esp
    8402:	8b 45 08             	mov    0x8(%ebp),%eax
    8405:	8b 40 20             	mov    0x20(%eax),%eax
    8408:	83 ec 0c             	sub    $0xc,%esp
    840b:	50                   	push   %eax
    840c:	e8 03 fe ff ff       	call   8214 <get_super_block>
    8411:	83 c4 10             	add    $0x10,%esp
    8414:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8417:	8b 45 f4             	mov    -0xc(%ebp),%eax
    841a:	8b 50 0c             	mov    0xc(%eax),%edx
    841d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8420:	8b 40 10             	mov    0x10(%eax),%eax
    8423:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8426:	8b 45 08             	mov    0x8(%ebp),%eax
    8429:	8b 40 28             	mov    0x28(%eax),%eax
    842c:	83 e8 01             	sub    $0x1,%eax
    842f:	8d 50 0f             	lea    0xf(%eax),%edx
    8432:	85 c0                	test   %eax,%eax
    8434:	0f 48 c2             	cmovs  %edx,%eax
    8437:	c1 f8 04             	sar    $0x4,%eax
    843a:	01 c8                	add    %ecx,%eax
    843c:	83 c0 02             	add    $0x2,%eax
    843f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8442:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8448:	8b 45 f0             	mov    -0x10(%ebp),%eax
    844b:	c1 e0 09             	shl    $0x9,%eax
    844e:	99                   	cltd   
    844f:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8452:	8b 49 20             	mov    0x20(%ecx),%ecx
    8455:	83 ec 04             	sub    $0x4,%esp
    8458:	53                   	push   %ebx
    8459:	6a 03                	push   $0x3
    845b:	68 00 02 00 00       	push   $0x200
    8460:	52                   	push   %edx
    8461:	50                   	push   %eax
    8462:	51                   	push   %ecx
    8463:	68 eb 03 00 00       	push   $0x3eb
    8468:	e8 9f fb ff ff       	call   800c <rw_sector>
    846d:	83 c4 20             	add    $0x20,%esp
    8470:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8476:	8b 45 08             	mov    0x8(%ebp),%eax
    8479:	8b 40 28             	mov    0x28(%eax),%eax
    847c:	8d 50 ff             	lea    -0x1(%eax),%edx
    847f:	89 d0                	mov    %edx,%eax
    8481:	c1 f8 1f             	sar    $0x1f,%eax
    8484:	c1 e8 1c             	shr    $0x1c,%eax
    8487:	01 c2                	add    %eax,%edx
    8489:	83 e2 0f             	and    $0xf,%edx
    848c:	29 c2                	sub    %eax,%edx
    848e:	89 d0                	mov    %edx,%eax
    8490:	c1 e0 05             	shl    $0x5,%eax
    8493:	01 c8                	add    %ecx,%eax
    8495:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8498:	8b 45 08             	mov    0x8(%ebp),%eax
    849b:	8b 10                	mov    (%eax),%edx
    849d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84a0:	89 10                	mov    %edx,(%eax)
    84a2:	8b 45 08             	mov    0x8(%ebp),%eax
    84a5:	8b 50 04             	mov    0x4(%eax),%edx
    84a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84ab:	89 50 04             	mov    %edx,0x4(%eax)
    84ae:	8b 45 08             	mov    0x8(%ebp),%eax
    84b1:	8b 50 08             	mov    0x8(%eax),%edx
    84b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84b7:	89 50 08             	mov    %edx,0x8(%eax)
    84ba:	8b 45 08             	mov    0x8(%ebp),%eax
    84bd:	8b 50 0c             	mov    0xc(%eax),%edx
    84c0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84c3:	89 50 0c             	mov    %edx,0xc(%eax)
    84c6:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    84cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    84cf:	c1 e0 09             	shl    $0x9,%eax
    84d2:	99                   	cltd   
    84d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    84d6:	8b 49 20             	mov    0x20(%ecx),%ecx
    84d9:	83 ec 04             	sub    $0x4,%esp
    84dc:	53                   	push   %ebx
    84dd:	6a 03                	push   $0x3
    84df:	68 00 02 00 00       	push   $0x200
    84e4:	52                   	push   %edx
    84e5:	50                   	push   %eax
    84e6:	51                   	push   %ecx
    84e7:	68 ec 03 00 00       	push   $0x3ec
    84ec:	e8 1b fb ff ff       	call   800c <rw_sector>
    84f1:	83 c4 20             	add    $0x20,%esp
    84f4:	90                   	nop
    84f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    84f8:	c9                   	leave  
    84f9:	c3                   	ret    

000084fa <fs_fork>:
    84fa:	55                   	push   %ebp
    84fb:	89 e5                	mov    %esp,%ebp
    84fd:	83 ec 10             	sub    $0x10,%esp
    8500:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8505:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    850b:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    8510:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8513:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    851a:	eb 44                	jmp    8560 <fs_fork+0x66>
    851c:	8b 45 f8             	mov    -0x8(%ebp),%eax
    851f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8522:	83 c2 24             	add    $0x24,%edx
    8525:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8529:	85 c0                	test   %eax,%eax
    852b:	74 2f                	je     855c <fs_fork+0x62>
    852d:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8530:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8533:	83 c2 24             	add    $0x24,%edx
    8536:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    853a:	8b 50 08             	mov    0x8(%eax),%edx
    853d:	83 c2 01             	add    $0x1,%edx
    8540:	89 50 08             	mov    %edx,0x8(%eax)
    8543:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8546:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8549:	83 c2 24             	add    $0x24,%edx
    854c:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8550:	8b 40 0c             	mov    0xc(%eax),%eax
    8553:	8b 50 24             	mov    0x24(%eax),%edx
    8556:	83 c2 01             	add    $0x1,%edx
    8559:	89 50 24             	mov    %edx,0x24(%eax)
    855c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    8560:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    8564:	7e b6                	jle    851c <fs_fork+0x22>
    8566:	b8 00 00 00 00       	mov    $0x0,%eax
    856b:	c9                   	leave  
    856c:	c3                   	ret    

0000856d <fs_exit>:
    856d:	55                   	push   %ebp
    856e:	89 e5                	mov    %esp,%ebp
    8570:	83 ec 10             	sub    $0x10,%esp
    8573:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8578:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    857e:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    8583:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8586:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    858d:	eb 70                	jmp    85ff <fs_exit+0x92>
    858f:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8592:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8595:	83 c2 24             	add    $0x24,%edx
    8598:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    859c:	85 c0                	test   %eax,%eax
    859e:	74 5b                	je     85fb <fs_exit+0x8e>
    85a0:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85a3:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85a6:	83 c2 24             	add    $0x24,%edx
    85a9:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    85ad:	8b 40 0c             	mov    0xc(%eax),%eax
    85b0:	8b 50 24             	mov    0x24(%eax),%edx
    85b3:	83 ea 01             	sub    $0x1,%edx
    85b6:	89 50 24             	mov    %edx,0x24(%eax)
    85b9:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85bc:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85bf:	83 c2 24             	add    $0x24,%edx
    85c2:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    85c6:	8b 50 08             	mov    0x8(%eax),%edx
    85c9:	83 ea 01             	sub    $0x1,%edx
    85cc:	89 50 08             	mov    %edx,0x8(%eax)
    85cf:	8b 40 08             	mov    0x8(%eax),%eax
    85d2:	85 c0                	test   %eax,%eax
    85d4:	75 14                	jne    85ea <fs_exit+0x7d>
    85d6:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85d9:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85dc:	83 c2 24             	add    $0x24,%edx
    85df:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    85e3:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    85ea:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85ed:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85f0:	83 c2 24             	add    $0x24,%edx
    85f3:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    85fa:	00 
    85fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    85ff:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    8603:	7e 8a                	jle    858f <fs_exit+0x22>
    8605:	b8 00 00 00 00       	mov    $0x0,%eax
    860a:	c9                   	leave  
    860b:	c3                   	ret    

0000860c <do_open>:
    860c:	55                   	push   %ebp
    860d:	89 e5                	mov    %esp,%ebp
    860f:	53                   	push   %ebx
    8610:	81 ec 34 01 00 00    	sub    $0x134,%esp
    8616:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
    861d:	a1 68 95 03 00       	mov    0x39568,%eax
    8622:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8625:	a1 6c 95 03 00       	mov    0x3956c,%eax
    862a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    862d:	a1 60 95 03 00       	mov    0x39560,%eax
    8632:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8635:	83 7d e4 7f          	cmpl   $0x7f,-0x1c(%ebp)
    8639:	7e 19                	jle    8654 <do_open+0x48>
    863b:	6a 33                	push   $0x33
    863d:	68 0c e3 00 00       	push   $0xe30c
    8642:	68 0c e3 00 00       	push   $0xe30c
    8647:	68 16 e3 00 00       	push   $0xe316
    864c:	e8 ac 40 00 00       	call   c6fd <assertion_failure>
    8651:	83 c4 10             	add    $0x10,%esp
    8654:	a1 88 95 03 00       	mov    0x39588,%eax
    8659:	83 ec 08             	sub    $0x8,%esp
    865c:	50                   	push   %eax
    865d:	ff 75 e0             	pushl  -0x20(%ebp)
    8660:	e8 a2 ba ff ff       	call   4107 <va2la>
    8665:	83 c4 10             	add    $0x10,%esp
    8668:	89 c3                	mov    %eax,%ebx
    866a:	83 ec 08             	sub    $0x8,%esp
    866d:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8673:	50                   	push   %eax
    8674:	6a 03                	push   $0x3
    8676:	e8 8c ba ff ff       	call   4107 <va2la>
    867b:	83 c4 10             	add    $0x10,%esp
    867e:	83 ec 04             	sub    $0x4,%esp
    8681:	ff 75 e4             	pushl  -0x1c(%ebp)
    8684:	53                   	push   %ebx
    8685:	50                   	push   %eax
    8686:	e8 e5 3d 00 00       	call   c470 <memcpy>
    868b:	83 c4 10             	add    $0x10,%esp
    868e:	8d 95 54 ff ff ff    	lea    -0xac(%ebp),%edx
    8694:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8697:	01 d0                	add    %edx,%eax
    8699:	c6 00 00             	movb   $0x0,(%eax)
    869c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    86a3:	eb 1f                	jmp    86c4 <do_open+0xb8>
    86a5:	a1 44 88 03 00       	mov    0x38844,%eax
    86aa:	8b 55 f0             	mov    -0x10(%ebp),%edx
    86ad:	83 c2 24             	add    $0x24,%edx
    86b0:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    86b4:	85 c0                	test   %eax,%eax
    86b6:	75 08                	jne    86c0 <do_open+0xb4>
    86b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    86bb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    86be:	eb 0a                	jmp    86ca <do_open+0xbe>
    86c0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    86c4:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    86c8:	7e db                	jle    86a5 <do_open+0x99>
    86ca:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    86ce:	78 06                	js     86d6 <do_open+0xca>
    86d0:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    86d4:	7e 24                	jle    86fa <do_open+0xee>
    86d6:	a1 44 88 03 00       	mov    0x38844,%eax
    86db:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    86e0:	c1 f8 03             	sar    $0x3,%eax
    86e3:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    86e9:	83 ec 08             	sub    $0x8,%esp
    86ec:	50                   	push   %eax
    86ed:	68 2a e3 00 00       	push   $0xe32a
    86f2:	e8 4f 96 ff ff       	call   1d46 <panic>
    86f7:	83 c4 10             	add    $0x10,%esp
    86fa:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8701:	eb 15                	jmp    8718 <do_open+0x10c>
    8703:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8706:	c1 e0 04             	shl    $0x4,%eax
    8709:	05 ac 95 03 00       	add    $0x395ac,%eax
    870e:	8b 00                	mov    (%eax),%eax
    8710:	85 c0                	test   %eax,%eax
    8712:	74 0c                	je     8720 <do_open+0x114>
    8714:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8718:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    871c:	7e e5                	jle    8703 <do_open+0xf7>
    871e:	eb 01                	jmp    8721 <do_open+0x115>
    8720:	90                   	nop
    8721:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    8725:	7e 24                	jle    874b <do_open+0x13f>
    8727:	a1 44 88 03 00       	mov    0x38844,%eax
    872c:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    8731:	c1 f8 03             	sar    $0x3,%eax
    8734:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    873a:	83 ec 08             	sub    $0x8,%esp
    873d:	50                   	push   %eax
    873e:	68 44 e3 00 00       	push   $0xe344
    8743:	e8 fe 95 ff ff       	call   1d46 <panic>
    8748:	83 c4 10             	add    $0x10,%esp
    874b:	83 ec 0c             	sub    $0xc,%esp
    874e:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8754:	50                   	push   %eax
    8755:	e8 29 0b 00 00       	call   9283 <search_file>
    875a:	83 c4 10             	add    $0x10,%esp
    875d:	89 45 dc             	mov    %eax,-0x24(%ebp)
    8760:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8767:	8b 45 e8             	mov    -0x18(%ebp),%eax
    876a:	83 e0 01             	and    $0x1,%eax
    876d:	85 c0                	test   %eax,%eax
    876f:	74 3a                	je     87ab <do_open+0x19f>
    8771:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    8775:	74 1a                	je     8791 <do_open+0x185>
    8777:	83 ec 0c             	sub    $0xc,%esp
    877a:	68 64 e3 00 00       	push   $0xe364
    877f:	e8 98 39 00 00       	call   c11c <printl>
    8784:	83 c4 10             	add    $0x10,%esp
    8787:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    878c:	e9 0a 02 00 00       	jmp    899b <do_open+0x38f>
    8791:	83 ec 08             	sub    $0x8,%esp
    8794:	ff 75 e8             	pushl  -0x18(%ebp)
    8797:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    879d:	50                   	push   %eax
    879e:	e8 fd 01 00 00       	call   89a0 <create_file>
    87a3:	83 c4 10             	add    $0x10,%esp
    87a6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    87a9:	eb 6c                	jmp    8817 <do_open+0x20b>
    87ab:	8b 45 e8             	mov    -0x18(%ebp),%eax
    87ae:	83 e0 02             	and    $0x2,%eax
    87b1:	85 c0                	test   %eax,%eax
    87b3:	75 19                	jne    87ce <do_open+0x1c2>
    87b5:	6a 58                	push   $0x58
    87b7:	68 0c e3 00 00       	push   $0xe30c
    87bc:	68 0c e3 00 00       	push   $0xe30c
    87c1:	68 77 e3 00 00       	push   $0xe377
    87c6:	e8 32 3f 00 00       	call   c6fd <assertion_failure>
    87cb:	83 c4 10             	add    $0x10,%esp
    87ce:	83 ec 04             	sub    $0x4,%esp
    87d1:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    87d7:	50                   	push   %eax
    87d8:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    87de:	50                   	push   %eax
    87df:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    87e5:	50                   	push   %eax
    87e6:	e8 ee 0b 00 00       	call   93d9 <strip_path>
    87eb:	83 c4 10             	add    $0x10,%esp
    87ee:	85 c0                	test   %eax,%eax
    87f0:	74 0a                	je     87fc <do_open+0x1f0>
    87f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    87f7:	e9 9f 01 00 00       	jmp    899b <do_open+0x38f>
    87fc:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    8802:	8b 40 20             	mov    0x20(%eax),%eax
    8805:	83 ec 08             	sub    $0x8,%esp
    8808:	ff 75 dc             	pushl  -0x24(%ebp)
    880b:	50                   	push   %eax
    880c:	e8 49 fa ff ff       	call   825a <get_inode>
    8811:	83 c4 10             	add    $0x10,%esp
    8814:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8817:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    881b:	0f 84 70 01 00 00    	je     8991 <do_open+0x385>
    8821:	a1 44 88 03 00       	mov    0x38844,%eax
    8826:	8b 55 f0             	mov    -0x10(%ebp),%edx
    8829:	c1 e2 04             	shl    $0x4,%edx
    882c:	8d 8a a0 95 03 00    	lea    0x395a0(%edx),%ecx
    8832:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8835:	83 c2 24             	add    $0x24,%edx
    8838:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
    883c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    883f:	c1 e0 04             	shl    $0x4,%eax
    8842:	8d 90 ac 95 03 00    	lea    0x395ac(%eax),%edx
    8848:	8b 45 ec             	mov    -0x14(%ebp),%eax
    884b:	89 02                	mov    %eax,(%edx)
    884d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8850:	c1 e0 04             	shl    $0x4,%eax
    8853:	8d 90 a0 95 03 00    	lea    0x395a0(%eax),%edx
    8859:	8b 45 e8             	mov    -0x18(%ebp),%eax
    885c:	89 02                	mov    %eax,(%edx)
    885e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8861:	c1 e0 04             	shl    $0x4,%eax
    8864:	05 a8 95 03 00       	add    $0x395a8,%eax
    8869:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    886f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8872:	c1 e0 04             	shl    $0x4,%eax
    8875:	05 a4 95 03 00       	add    $0x395a4,%eax
    887a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    8880:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8883:	8b 00                	mov    (%eax),%eax
    8885:	25 00 f0 00 00       	and    $0xf000,%eax
    888a:	89 45 d8             	mov    %eax,-0x28(%ebp)
    888d:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
    8894:	0f 85 9b 00 00 00    	jne    8935 <do_open+0x329>
    889a:	c7 85 d4 fe ff ff e9 	movl   $0x3e9,-0x12c(%ebp)
    88a1:	03 00 00 
    88a4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    88a7:	8b 40 08             	mov    0x8(%eax),%eax
    88aa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    88ad:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    88b0:	0f b6 c0             	movzbl %al,%eax
    88b3:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
    88b9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    88bc:	c1 f8 08             	sar    $0x8,%eax
    88bf:	0f b6 c0             	movzbl %al,%eax
    88c2:	83 f8 04             	cmp    $0x4,%eax
    88c5:	74 19                	je     88e0 <do_open+0x2d4>
    88c7:	6a 73                	push   $0x73
    88c9:	68 0c e3 00 00       	push   $0xe30c
    88ce:	68 0c e3 00 00       	push   $0xe30c
    88d3:	68 86 e3 00 00       	push   $0xe386
    88d8:	e8 20 3e 00 00       	call   c6fd <assertion_failure>
    88dd:	83 c4 10             	add    $0x10,%esp
    88e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    88e3:	c1 f8 08             	sar    $0x8,%eax
    88e6:	0f b6 c0             	movzbl %al,%eax
    88e9:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    88f0:	83 f8 ec             	cmp    $0xffffffec,%eax
    88f3:	75 19                	jne    890e <do_open+0x302>
    88f5:	6a 7b                	push   $0x7b
    88f7:	68 0c e3 00 00       	push   $0xe30c
    88fc:	68 0c e3 00 00       	push   $0xe30c
    8901:	68 98 e3 00 00       	push   $0xe398
    8906:	e8 f2 3d 00 00       	call   c6fd <assertion_failure>
    890b:	83 c4 10             	add    $0x10,%esp
    890e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    8911:	c1 f8 08             	sar    $0x8,%eax
    8914:	0f b6 c0             	movzbl %al,%eax
    8917:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    891e:	83 ec 04             	sub    $0x4,%esp
    8921:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
    8927:	52                   	push   %edx
    8928:	50                   	push   %eax
    8929:	6a 03                	push   $0x3
    892b:	e8 b8 3b 00 00       	call   c4e8 <send_recv>
    8930:	83 c4 10             	add    $0x10,%esp
    8933:	eb 63                	jmp    8998 <do_open+0x38c>
    8935:	81 7d d8 00 40 00 00 	cmpl   $0x4000,-0x28(%ebp)
    893c:	75 29                	jne    8967 <do_open+0x35b>
    893e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8941:	8b 40 28             	mov    0x28(%eax),%eax
    8944:	83 f8 01             	cmp    $0x1,%eax
    8947:	74 4f                	je     8998 <do_open+0x38c>
    8949:	68 81 00 00 00       	push   $0x81
    894e:	68 0c e3 00 00       	push   $0xe30c
    8953:	68 0c e3 00 00       	push   $0xe30c
    8958:	68 c7 e3 00 00       	push   $0xe3c7
    895d:	e8 9b 3d 00 00       	call   c6fd <assertion_failure>
    8962:	83 c4 10             	add    $0x10,%esp
    8965:	eb 31                	jmp    8998 <do_open+0x38c>
    8967:	8b 45 ec             	mov    -0x14(%ebp),%eax
    896a:	8b 00                	mov    (%eax),%eax
    896c:	3d 00 80 00 00       	cmp    $0x8000,%eax
    8971:	74 25                	je     8998 <do_open+0x38c>
    8973:	68 84 00 00 00       	push   $0x84
    8978:	68 0c e3 00 00       	push   $0xe30c
    897d:	68 0c e3 00 00       	push   $0xe30c
    8982:	68 e0 e3 00 00       	push   $0xe3e0
    8987:	e8 71 3d 00 00       	call   c6fd <assertion_failure>
    898c:	83 c4 10             	add    $0x10,%esp
    898f:	eb 07                	jmp    8998 <do_open+0x38c>
    8991:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8996:	eb 03                	jmp    899b <do_open+0x38f>
    8998:	8b 45 f4             	mov    -0xc(%ebp),%eax
    899b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    899e:	c9                   	leave  
    899f:	c3                   	ret    

000089a0 <create_file>:
    89a0:	55                   	push   %ebp
    89a1:	89 e5                	mov    %esp,%ebp
    89a3:	81 ec 98 00 00 00    	sub    $0x98,%esp
    89a9:	83 ec 04             	sub    $0x4,%esp
    89ac:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    89b2:	50                   	push   %eax
    89b3:	ff 75 08             	pushl  0x8(%ebp)
    89b6:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
    89bc:	50                   	push   %eax
    89bd:	e8 17 0a 00 00       	call   93d9 <strip_path>
    89c2:	83 c4 10             	add    $0x10,%esp
    89c5:	85 c0                	test   %eax,%eax
    89c7:	74 07                	je     89d0 <create_file+0x30>
    89c9:	b8 00 00 00 00       	mov    $0x0,%eax
    89ce:	eb 76                	jmp    8a46 <create_file+0xa6>
    89d0:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    89d6:	8b 40 20             	mov    0x20(%eax),%eax
    89d9:	83 ec 0c             	sub    $0xc,%esp
    89dc:	50                   	push   %eax
    89dd:	e8 91 01 00 00       	call   8b73 <alloc_imap_bit>
    89e2:	83 c4 10             	add    $0x10,%esp
    89e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    89e8:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    89ee:	8b 40 20             	mov    0x20(%eax),%eax
    89f1:	83 ec 08             	sub    $0x8,%esp
    89f4:	68 00 08 00 00       	push   $0x800
    89f9:	50                   	push   %eax
    89fa:	e8 e1 02 00 00       	call   8ce0 <alloc_smap_bit>
    89ff:	83 c4 10             	add    $0x10,%esp
    8a02:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8a05:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    8a0b:	8b 40 20             	mov    0x20(%eax),%eax
    8a0e:	83 ec 04             	sub    $0x4,%esp
    8a11:	ff 75 f0             	pushl  -0x10(%ebp)
    8a14:	ff 75 f4             	pushl  -0xc(%ebp)
    8a17:	50                   	push   %eax
    8a18:	e8 ce 04 00 00       	call   8eeb <new_inode>
    8a1d:	83 c4 10             	add    $0x10,%esp
    8a20:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8a23:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a26:	8b 50 28             	mov    0x28(%eax),%edx
    8a29:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    8a2f:	83 ec 04             	sub    $0x4,%esp
    8a32:	8d 8d 6c ff ff ff    	lea    -0x94(%ebp),%ecx
    8a38:	51                   	push   %ecx
    8a39:	52                   	push   %edx
    8a3a:	50                   	push   %eax
    8a3b:	e8 1a 05 00 00       	call   8f5a <new_dir_entry>
    8a40:	83 c4 10             	add    $0x10,%esp
    8a43:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a46:	c9                   	leave  
    8a47:	c3                   	ret    

00008a48 <do_close>:
    8a48:	55                   	push   %ebp
    8a49:	89 e5                	mov    %esp,%ebp
    8a4b:	83 ec 18             	sub    $0x18,%esp
    8a4e:	a1 68 95 03 00       	mov    0x39568,%eax
    8a53:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8a56:	a1 44 88 03 00       	mov    0x38844,%eax
    8a5b:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a5e:	83 c2 24             	add    $0x24,%edx
    8a61:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8a65:	8b 40 0c             	mov    0xc(%eax),%eax
    8a68:	83 ec 0c             	sub    $0xc,%esp
    8a6b:	50                   	push   %eax
    8a6c:	e8 4c f9 ff ff       	call   83bd <put_inode>
    8a71:	83 c4 10             	add    $0x10,%esp
    8a74:	a1 44 88 03 00       	mov    0x38844,%eax
    8a79:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a7c:	83 c2 24             	add    $0x24,%edx
    8a7f:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8a83:	8b 50 08             	mov    0x8(%eax),%edx
    8a86:	83 ea 01             	sub    $0x1,%edx
    8a89:	89 50 08             	mov    %edx,0x8(%eax)
    8a8c:	8b 40 08             	mov    0x8(%eax),%eax
    8a8f:	85 c0                	test   %eax,%eax
    8a91:	75 16                	jne    8aa9 <do_close+0x61>
    8a93:	a1 44 88 03 00       	mov    0x38844,%eax
    8a98:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a9b:	83 c2 24             	add    $0x24,%edx
    8a9e:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8aa2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    8aa9:	a1 44 88 03 00       	mov    0x38844,%eax
    8aae:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8ab1:	83 c2 24             	add    $0x24,%edx
    8ab4:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    8abb:	00 
    8abc:	b8 00 00 00 00       	mov    $0x0,%eax
    8ac1:	c9                   	leave  
    8ac2:	c3                   	ret    

00008ac3 <do_lseek>:
    8ac3:	55                   	push   %ebp
    8ac4:	89 e5                	mov    %esp,%ebp
    8ac6:	83 ec 20             	sub    $0x20,%esp
    8ac9:	a1 68 95 03 00       	mov    0x39568,%eax
    8ace:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8ad1:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8ad6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8ad9:	a1 70 95 03 00       	mov    0x39570,%eax
    8ade:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8ae1:	a1 44 88 03 00       	mov    0x38844,%eax
    8ae6:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8ae9:	83 c2 24             	add    $0x24,%edx
    8aec:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8af0:	8b 40 04             	mov    0x4(%eax),%eax
    8af3:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8af6:	a1 44 88 03 00       	mov    0x38844,%eax
    8afb:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8afe:	83 c2 24             	add    $0x24,%edx
    8b01:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8b05:	8b 40 0c             	mov    0xc(%eax),%eax
    8b08:	8b 40 04             	mov    0x4(%eax),%eax
    8b0b:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8b0e:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    8b12:	74 14                	je     8b28 <do_lseek+0x65>
    8b14:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
    8b18:	74 16                	je     8b30 <do_lseek+0x6d>
    8b1a:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    8b1e:	75 1d                	jne    8b3d <do_lseek+0x7a>
    8b20:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b23:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8b26:	eb 1c                	jmp    8b44 <do_lseek+0x81>
    8b28:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b2b:	01 45 fc             	add    %eax,-0x4(%ebp)
    8b2e:	eb 14                	jmp    8b44 <do_lseek+0x81>
    8b30:	8b 55 ec             	mov    -0x14(%ebp),%edx
    8b33:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b36:	01 d0                	add    %edx,%eax
    8b38:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8b3b:	eb 07                	jmp    8b44 <do_lseek+0x81>
    8b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b42:	eb 2d                	jmp    8b71 <do_lseek+0xae>
    8b44:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8b47:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    8b4a:	7f 06                	jg     8b52 <do_lseek+0x8f>
    8b4c:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    8b50:	79 07                	jns    8b59 <do_lseek+0x96>
    8b52:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b57:	eb 18                	jmp    8b71 <do_lseek+0xae>
    8b59:	a1 44 88 03 00       	mov    0x38844,%eax
    8b5e:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8b61:	83 c2 24             	add    $0x24,%edx
    8b64:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8b68:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8b6b:	89 50 04             	mov    %edx,0x4(%eax)
    8b6e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8b71:	c9                   	leave  
    8b72:	c3                   	ret    

00008b73 <alloc_imap_bit>:
    8b73:	55                   	push   %ebp
    8b74:	89 e5                	mov    %esp,%ebp
    8b76:	53                   	push   %ebx
    8b77:	83 ec 24             	sub    $0x24,%esp
    8b7a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8b81:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%ebp)
    8b88:	83 ec 0c             	sub    $0xc,%esp
    8b8b:	ff 75 08             	pushl  0x8(%ebp)
    8b8e:	e8 81 f6 ff ff       	call   8214 <get_super_block>
    8b93:	83 c4 10             	add    $0x10,%esp
    8b96:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8b99:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    8ba0:	90                   	nop
    8ba1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ba4:	8b 50 0c             	mov    0xc(%eax),%edx
    8ba7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8baa:	39 c2                	cmp    %eax,%edx
    8bac:	0f 86 14 01 00 00    	jbe    8cc6 <alloc_imap_bit+0x153>
    8bb2:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8bb8:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8bbb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8bbe:	01 d0                	add    %edx,%eax
    8bc0:	c1 e0 09             	shl    $0x9,%eax
    8bc3:	99                   	cltd   
    8bc4:	83 ec 04             	sub    $0x4,%esp
    8bc7:	51                   	push   %ecx
    8bc8:	6a 03                	push   $0x3
    8bca:	68 00 02 00 00       	push   $0x200
    8bcf:	52                   	push   %edx
    8bd0:	50                   	push   %eax
    8bd1:	ff 75 08             	pushl  0x8(%ebp)
    8bd4:	68 eb 03 00 00       	push   $0x3eb
    8bd9:	e8 2e f4 ff ff       	call   800c <rw_sector>
    8bde:	83 c4 20             	add    $0x20,%esp
    8be1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8be8:	e9 c7 00 00 00       	jmp    8cb4 <alloc_imap_bit+0x141>
    8bed:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8bf3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8bf6:	01 d0                	add    %edx,%eax
    8bf8:	0f b6 00             	movzbl (%eax),%eax
    8bfb:	3c ff                	cmp    $0xff,%al
    8bfd:	75 09                	jne    8c08 <alloc_imap_bit+0x95>
    8bff:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8c03:	e9 ac 00 00 00       	jmp    8cb4 <alloc_imap_bit+0x141>
    8c08:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8c0f:	eb 04                	jmp    8c15 <alloc_imap_bit+0xa2>
    8c11:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8c15:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c1b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c1e:	01 d0                	add    %edx,%eax
    8c20:	0f b6 00             	movzbl (%eax),%eax
    8c23:	0f b6 d0             	movzbl %al,%edx
    8c26:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c29:	89 c1                	mov    %eax,%ecx
    8c2b:	d3 fa                	sar    %cl,%edx
    8c2d:	89 d0                	mov    %edx,%eax
    8c2f:	83 e0 01             	and    $0x1,%eax
    8c32:	85 c0                	test   %eax,%eax
    8c34:	75 db                	jne    8c11 <alloc_imap_bit+0x9e>
    8c36:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8c39:	c1 e0 09             	shl    $0x9,%eax
    8c3c:	89 c2                	mov    %eax,%edx
    8c3e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c41:	01 d0                	add    %edx,%eax
    8c43:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8c4a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c4d:	01 d0                	add    %edx,%eax
    8c4f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8c52:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c58:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c5b:	01 d0                	add    %edx,%eax
    8c5d:	0f b6 00             	movzbl (%eax),%eax
    8c60:	89 c3                	mov    %eax,%ebx
    8c62:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c65:	ba 01 00 00 00       	mov    $0x1,%edx
    8c6a:	89 c1                	mov    %eax,%ecx
    8c6c:	d3 e2                	shl    %cl,%edx
    8c6e:	89 d0                	mov    %edx,%eax
    8c70:	09 c3                	or     %eax,%ebx
    8c72:	89 d9                	mov    %ebx,%ecx
    8c74:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c7a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c7d:	01 d0                	add    %edx,%eax
    8c7f:	89 ca                	mov    %ecx,%edx
    8c81:	88 10                	mov    %dl,(%eax)
    8c83:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8c89:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8c8c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8c8f:	01 d0                	add    %edx,%eax
    8c91:	c1 e0 09             	shl    $0x9,%eax
    8c94:	99                   	cltd   
    8c95:	83 ec 04             	sub    $0x4,%esp
    8c98:	51                   	push   %ecx
    8c99:	6a 03                	push   $0x3
    8c9b:	68 00 02 00 00       	push   $0x200
    8ca0:	52                   	push   %edx
    8ca1:	50                   	push   %eax
    8ca2:	ff 75 08             	pushl  0x8(%ebp)
    8ca5:	68 ec 03 00 00       	push   $0x3ec
    8caa:	e8 5d f3 ff ff       	call   800c <rw_sector>
    8caf:	83 c4 20             	add    $0x20,%esp
    8cb2:	eb 0d                	jmp    8cc1 <alloc_imap_bit+0x14e>
    8cb4:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8cbb:	0f 8e 2c ff ff ff    	jle    8bed <alloc_imap_bit+0x7a>
    8cc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8cc4:	eb 15                	jmp    8cdb <alloc_imap_bit+0x168>
    8cc6:	83 ec 0c             	sub    $0xc,%esp
    8cc9:	68 f9 e3 00 00       	push   $0xe3f9
    8cce:	e8 73 90 ff ff       	call   1d46 <panic>
    8cd3:	83 c4 10             	add    $0x10,%esp
    8cd6:	b8 00 00 00 00       	mov    $0x0,%eax
    8cdb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8cde:	c9                   	leave  
    8cdf:	c3                   	ret    

00008ce0 <alloc_smap_bit>:
    8ce0:	55                   	push   %ebp
    8ce1:	89 e5                	mov    %esp,%ebp
    8ce3:	53                   	push   %ebx
    8ce4:	83 ec 24             	sub    $0x24,%esp
    8ce7:	83 ec 0c             	sub    $0xc,%esp
    8cea:	ff 75 08             	pushl  0x8(%ebp)
    8ced:	e8 22 f5 ff ff       	call   8214 <get_super_block>
    8cf2:	83 c4 10             	add    $0x10,%esp
    8cf5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8cf8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8cfb:	8b 40 0c             	mov    0xc(%eax),%eax
    8cfe:	83 c0 02             	add    $0x2,%eax
    8d01:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8d04:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8d0b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8d12:	e9 96 01 00 00       	jmp    8ead <alloc_smap_bit+0x1cd>
    8d17:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8d1d:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8d20:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d23:	01 d0                	add    %edx,%eax
    8d25:	c1 e0 09             	shl    $0x9,%eax
    8d28:	99                   	cltd   
    8d29:	83 ec 04             	sub    $0x4,%esp
    8d2c:	51                   	push   %ecx
    8d2d:	6a 03                	push   $0x3
    8d2f:	68 00 02 00 00       	push   $0x200
    8d34:	52                   	push   %edx
    8d35:	50                   	push   %eax
    8d36:	ff 75 08             	pushl  0x8(%ebp)
    8d39:	68 eb 03 00 00       	push   $0x3eb
    8d3e:	e8 c9 f2 ff ff       	call   800c <rw_sector>
    8d43:	83 c4 20             	add    $0x20,%esp
    8d46:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8d4d:	e9 09 01 00 00       	jmp    8e5b <alloc_smap_bit+0x17b>
    8d52:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8d59:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8d5d:	0f 85 e4 00 00 00    	jne    8e47 <alloc_smap_bit+0x167>
    8d63:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8d69:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8d6c:	01 d0                	add    %edx,%eax
    8d6e:	0f b6 00             	movzbl (%eax),%eax
    8d71:	3c ff                	cmp    $0xff,%al
    8d73:	0f 84 da 00 00 00    	je     8e53 <alloc_smap_bit+0x173>
    8d79:	eb 04                	jmp    8d7f <alloc_smap_bit+0x9f>
    8d7b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8d7f:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8d85:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8d88:	01 d0                	add    %edx,%eax
    8d8a:	0f b6 00             	movzbl (%eax),%eax
    8d8d:	0f b6 d0             	movzbl %al,%edx
    8d90:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8d93:	89 c1                	mov    %eax,%ecx
    8d95:	d3 fa                	sar    %cl,%edx
    8d97:	89 d0                	mov    %edx,%eax
    8d99:	83 e0 01             	and    $0x1,%eax
    8d9c:	85 c0                	test   %eax,%eax
    8d9e:	75 db                	jne    8d7b <alloc_smap_bit+0x9b>
    8da0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8da3:	c1 e0 09             	shl    $0x9,%eax
    8da6:	89 c2                	mov    %eax,%edx
    8da8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8dab:	01 d0                	add    %edx,%eax
    8dad:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8db4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8db7:	01 d0                	add    %edx,%eax
    8db9:	89 c2                	mov    %eax,%edx
    8dbb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8dbe:	8b 40 14             	mov    0x14(%eax),%eax
    8dc1:	01 d0                	add    %edx,%eax
    8dc3:	83 e8 01             	sub    $0x1,%eax
    8dc6:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8dc9:	eb 7c                	jmp    8e47 <alloc_smap_bit+0x167>
    8dcb:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8dd1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8dd4:	01 d0                	add    %edx,%eax
    8dd6:	0f b6 00             	movzbl (%eax),%eax
    8dd9:	0f b6 d0             	movzbl %al,%edx
    8ddc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8ddf:	89 c1                	mov    %eax,%ecx
    8de1:	d3 fa                	sar    %cl,%edx
    8de3:	89 d0                	mov    %edx,%eax
    8de5:	83 e0 01             	and    $0x1,%eax
    8de8:	85 c0                	test   %eax,%eax
    8dea:	74 1c                	je     8e08 <alloc_smap_bit+0x128>
    8dec:	68 3c 01 00 00       	push   $0x13c
    8df1:	68 0c e3 00 00       	push   $0xe30c
    8df6:	68 0c e3 00 00       	push   $0xe30c
    8dfb:	68 16 e4 00 00       	push   $0xe416
    8e00:	e8 f8 38 00 00       	call   c6fd <assertion_failure>
    8e05:	83 c4 10             	add    $0x10,%esp
    8e08:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8e0e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8e11:	01 d0                	add    %edx,%eax
    8e13:	0f b6 00             	movzbl (%eax),%eax
    8e16:	89 c3                	mov    %eax,%ebx
    8e18:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8e1b:	ba 01 00 00 00       	mov    $0x1,%edx
    8e20:	89 c1                	mov    %eax,%ecx
    8e22:	d3 e2                	shl    %cl,%edx
    8e24:	89 d0                	mov    %edx,%eax
    8e26:	09 c3                	or     %eax,%ebx
    8e28:	89 d9                	mov    %ebx,%ecx
    8e2a:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8e30:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8e33:	01 d0                	add    %edx,%eax
    8e35:	89 ca                	mov    %ecx,%edx
    8e37:	88 10                	mov    %dl,(%eax)
    8e39:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    8e3d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8e41:	74 13                	je     8e56 <alloc_smap_bit+0x176>
    8e43:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8e47:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8e4b:	0f 8e 7a ff ff ff    	jle    8dcb <alloc_smap_bit+0xeb>
    8e51:	eb 04                	jmp    8e57 <alloc_smap_bit+0x177>
    8e53:	90                   	nop
    8e54:	eb 01                	jmp    8e57 <alloc_smap_bit+0x177>
    8e56:	90                   	nop
    8e57:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8e5b:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8e62:	7f 0a                	jg     8e6e <alloc_smap_bit+0x18e>
    8e64:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8e68:	0f 8f e4 fe ff ff    	jg     8d52 <alloc_smap_bit+0x72>
    8e6e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8e72:	74 2f                	je     8ea3 <alloc_smap_bit+0x1c3>
    8e74:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8e7a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8e7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e80:	01 d0                	add    %edx,%eax
    8e82:	c1 e0 09             	shl    $0x9,%eax
    8e85:	99                   	cltd   
    8e86:	83 ec 04             	sub    $0x4,%esp
    8e89:	51                   	push   %ecx
    8e8a:	6a 03                	push   $0x3
    8e8c:	68 00 02 00 00       	push   $0x200
    8e91:	52                   	push   %edx
    8e92:	50                   	push   %eax
    8e93:	ff 75 08             	pushl  0x8(%ebp)
    8e96:	68 ec 03 00 00       	push   $0x3ec
    8e9b:	e8 6c f1 ff ff       	call   800c <rw_sector>
    8ea0:	83 c4 20             	add    $0x20,%esp
    8ea3:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8ea7:	74 17                	je     8ec0 <alloc_smap_bit+0x1e0>
    8ea9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8ead:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8eb0:	8b 50 10             	mov    0x10(%eax),%edx
    8eb3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8eb6:	39 c2                	cmp    %eax,%edx
    8eb8:	0f 87 59 fe ff ff    	ja     8d17 <alloc_smap_bit+0x37>
    8ebe:	eb 01                	jmp    8ec1 <alloc_smap_bit+0x1e1>
    8ec0:	90                   	nop
    8ec1:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8ec5:	74 1c                	je     8ee3 <alloc_smap_bit+0x203>
    8ec7:	68 4a 01 00 00       	push   $0x14a
    8ecc:	68 0c e3 00 00       	push   $0xe30c
    8ed1:	68 0c e3 00 00       	push   $0xe30c
    8ed6:	68 31 e4 00 00       	push   $0xe431
    8edb:	e8 1d 38 00 00       	call   c6fd <assertion_failure>
    8ee0:	83 c4 10             	add    $0x10,%esp
    8ee3:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8ee6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8ee9:	c9                   	leave  
    8eea:	c3                   	ret    

00008eeb <new_inode>:
    8eeb:	55                   	push   %ebp
    8eec:	89 e5                	mov    %esp,%ebp
    8eee:	83 ec 18             	sub    $0x18,%esp
    8ef1:	83 ec 08             	sub    $0x8,%esp
    8ef4:	ff 75 0c             	pushl  0xc(%ebp)
    8ef7:	ff 75 08             	pushl  0x8(%ebp)
    8efa:	e8 5b f3 ff ff       	call   825a <get_inode>
    8eff:	83 c4 10             	add    $0x10,%esp
    8f02:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8f05:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f08:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    8f0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f11:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    8f18:	8b 55 10             	mov    0x10(%ebp),%edx
    8f1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f1e:	89 50 08             	mov    %edx,0x8(%eax)
    8f21:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f24:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    8f2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f2e:	8b 55 08             	mov    0x8(%ebp),%edx
    8f31:	89 50 20             	mov    %edx,0x20(%eax)
    8f34:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f37:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8f3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f41:	8b 55 0c             	mov    0xc(%ebp),%edx
    8f44:	89 50 28             	mov    %edx,0x28(%eax)
    8f47:	83 ec 0c             	sub    $0xc,%esp
    8f4a:	ff 75 f4             	pushl  -0xc(%ebp)
    8f4d:	e8 a9 f4 ff ff       	call   83fb <sync_inode>
    8f52:	83 c4 10             	add    $0x10,%esp
    8f55:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f58:	c9                   	leave  
    8f59:	c3                   	ret    

00008f5a <new_dir_entry>:
    8f5a:	55                   	push   %ebp
    8f5b:	89 e5                	mov    %esp,%ebp
    8f5d:	53                   	push   %ebx
    8f5e:	83 ec 24             	sub    $0x24,%esp
    8f61:	8b 45 08             	mov    0x8(%ebp),%eax
    8f64:	8b 40 08             	mov    0x8(%eax),%eax
    8f67:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8f6a:	8b 45 08             	mov    0x8(%ebp),%eax
    8f6d:	8b 40 04             	mov    0x4(%eax),%eax
    8f70:	05 00 02 00 00       	add    $0x200,%eax
    8f75:	c1 e8 09             	shr    $0x9,%eax
    8f78:	89 45 dc             	mov    %eax,-0x24(%ebp)
    8f7b:	8b 45 08             	mov    0x8(%ebp),%eax
    8f7e:	8b 40 04             	mov    0x4(%eax),%eax
    8f81:	c1 e8 04             	shr    $0x4,%eax
    8f84:	89 45 d8             	mov    %eax,-0x28(%ebp)
    8f87:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8f8e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8f95:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8f9c:	e9 86 00 00 00       	jmp    9027 <new_dir_entry+0xcd>
    8fa1:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8fa7:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8faa:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fad:	01 d0                	add    %edx,%eax
    8faf:	c1 e0 09             	shl    $0x9,%eax
    8fb2:	99                   	cltd   
    8fb3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8fb6:	8b 49 20             	mov    0x20(%ecx),%ecx
    8fb9:	83 ec 04             	sub    $0x4,%esp
    8fbc:	53                   	push   %ebx
    8fbd:	6a 03                	push   $0x3
    8fbf:	68 00 02 00 00       	push   $0x200
    8fc4:	52                   	push   %edx
    8fc5:	50                   	push   %eax
    8fc6:	51                   	push   %ecx
    8fc7:	68 eb 03 00 00       	push   $0x3eb
    8fcc:	e8 3b f0 ff ff       	call   800c <rw_sector>
    8fd1:	83 c4 20             	add    $0x20,%esp
    8fd4:	a1 04 28 01 00       	mov    0x12804,%eax
    8fd9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8fdc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    8fe3:	eb 25                	jmp    900a <new_dir_entry+0xb0>
    8fe5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8fe9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8fec:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8fef:	7f 23                	jg     9014 <new_dir_entry+0xba>
    8ff1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8ff4:	8b 00                	mov    (%eax),%eax
    8ff6:	85 c0                	test   %eax,%eax
    8ff8:	75 08                	jne    9002 <new_dir_entry+0xa8>
    8ffa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8ffd:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9000:	eb 13                	jmp    9015 <new_dir_entry+0xbb>
    9002:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9006:	83 45 f0 10          	addl   $0x10,-0x10(%ebp)
    900a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    900d:	83 f8 1f             	cmp    $0x1f,%eax
    9010:	76 d3                	jbe    8fe5 <new_dir_entry+0x8b>
    9012:	eb 01                	jmp    9015 <new_dir_entry+0xbb>
    9014:	90                   	nop
    9015:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9018:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    901b:	7f 16                	jg     9033 <new_dir_entry+0xd9>
    901d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9021:	75 10                	jne    9033 <new_dir_entry+0xd9>
    9023:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    9027:	8b 45 e8             	mov    -0x18(%ebp),%eax
    902a:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    902d:	0f 8c 6e ff ff ff    	jl     8fa1 <new_dir_entry+0x47>
    9033:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9037:	75 15                	jne    904e <new_dir_entry+0xf4>
    9039:	8b 45 f0             	mov    -0x10(%ebp),%eax
    903c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    903f:	8b 45 08             	mov    0x8(%ebp),%eax
    9042:	8b 40 04             	mov    0x4(%eax),%eax
    9045:	8d 50 10             	lea    0x10(%eax),%edx
    9048:	8b 45 08             	mov    0x8(%ebp),%eax
    904b:	89 50 04             	mov    %edx,0x4(%eax)
    904e:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9051:	8b 55 0c             	mov    0xc(%ebp),%edx
    9054:	89 10                	mov    %edx,(%eax)
    9056:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9059:	83 c0 04             	add    $0x4,%eax
    905c:	83 ec 08             	sub    $0x8,%esp
    905f:	ff 75 10             	pushl  0x10(%ebp)
    9062:	50                   	push   %eax
    9063:	e8 52 34 00 00       	call   c4ba <strcpy>
    9068:	83 c4 10             	add    $0x10,%esp
    906b:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9071:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9074:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9077:	01 d0                	add    %edx,%eax
    9079:	c1 e0 09             	shl    $0x9,%eax
    907c:	99                   	cltd   
    907d:	8b 4d 08             	mov    0x8(%ebp),%ecx
    9080:	8b 49 20             	mov    0x20(%ecx),%ecx
    9083:	83 ec 04             	sub    $0x4,%esp
    9086:	53                   	push   %ebx
    9087:	6a 03                	push   $0x3
    9089:	68 00 02 00 00       	push   $0x200
    908e:	52                   	push   %edx
    908f:	50                   	push   %eax
    9090:	51                   	push   %ecx
    9091:	68 ec 03 00 00       	push   $0x3ec
    9096:	e8 71 ef ff ff       	call   800c <rw_sector>
    909b:	83 c4 20             	add    $0x20,%esp
    909e:	83 ec 0c             	sub    $0xc,%esp
    90a1:	ff 75 08             	pushl  0x8(%ebp)
    90a4:	e8 52 f3 ff ff       	call   83fb <sync_inode>
    90a9:	83 c4 10             	add    $0x10,%esp
    90ac:	90                   	nop
    90ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    90b0:	c9                   	leave  
    90b1:	c3                   	ret    

000090b2 <do_stat>:
    90b2:	55                   	push   %ebp
    90b3:	89 e5                	mov    %esp,%ebp
    90b5:	53                   	push   %ebx
    90b6:	81 ec 34 01 00 00    	sub    $0x134,%esp
    90bc:	a1 6c 95 03 00       	mov    0x3956c,%eax
    90c1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    90c4:	a1 60 95 03 00       	mov    0x39560,%eax
    90c9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    90cc:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
    90d0:	7e 19                	jle    90eb <do_stat+0x39>
    90d2:	6a 2a                	push   $0x2a
    90d4:	68 48 e4 00 00       	push   $0xe448
    90d9:	68 48 e4 00 00       	push   $0xe448
    90de:	68 52 e4 00 00       	push   $0xe452
    90e3:	e8 15 36 00 00       	call   c6fd <assertion_failure>
    90e8:	83 c4 10             	add    $0x10,%esp
    90eb:	a1 88 95 03 00       	mov    0x39588,%eax
    90f0:	83 ec 08             	sub    $0x8,%esp
    90f3:	50                   	push   %eax
    90f4:	ff 75 f0             	pushl  -0x10(%ebp)
    90f7:	e8 0b b0 ff ff       	call   4107 <va2la>
    90fc:	83 c4 10             	add    $0x10,%esp
    90ff:	89 c3                	mov    %eax,%ebx
    9101:	83 ec 08             	sub    $0x8,%esp
    9104:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    910a:	50                   	push   %eax
    910b:	6a 03                	push   $0x3
    910d:	e8 f5 af ff ff       	call   4107 <va2la>
    9112:	83 c4 10             	add    $0x10,%esp
    9115:	83 ec 04             	sub    $0x4,%esp
    9118:	ff 75 f4             	pushl  -0xc(%ebp)
    911b:	53                   	push   %ebx
    911c:	50                   	push   %eax
    911d:	e8 4e 33 00 00       	call   c470 <memcpy>
    9122:	83 c4 10             	add    $0x10,%esp
    9125:	8d 95 68 ff ff ff    	lea    -0x98(%ebp),%edx
    912b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    912e:	01 d0                	add    %edx,%eax
    9130:	c6 00 00             	movb   $0x0,(%eax)
    9133:	83 ec 0c             	sub    $0xc,%esp
    9136:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    913c:	50                   	push   %eax
    913d:	e8 41 01 00 00       	call   9283 <search_file>
    9142:	83 c4 10             	add    $0x10,%esp
    9145:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9148:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    914c:	75 21                	jne    916f <do_stat+0xbd>
    914e:	83 ec 08             	sub    $0x8,%esp
    9151:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    9157:	50                   	push   %eax
    9158:	68 68 e4 00 00       	push   $0xe468
    915d:	e8 ba 2f 00 00       	call   c11c <printl>
    9162:	83 c4 10             	add    $0x10,%esp
    9165:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    916a:	e9 0f 01 00 00       	jmp    927e <do_stat+0x1cc>
    916f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    9176:	83 ec 04             	sub    $0x4,%esp
    9179:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
    917f:	50                   	push   %eax
    9180:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    9186:	50                   	push   %eax
    9187:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
    918d:	50                   	push   %eax
    918e:	e8 46 02 00 00       	call   93d9 <strip_path>
    9193:	83 c4 10             	add    $0x10,%esp
    9196:	85 c0                	test   %eax,%eax
    9198:	74 19                	je     91b3 <do_stat+0x101>
    919a:	6a 3f                	push   $0x3f
    919c:	68 48 e4 00 00       	push   $0xe448
    91a1:	68 48 e4 00 00       	push   $0xe448
    91a6:	68 a6 e4 00 00       	push   $0xe4a6
    91ab:	e8 4d 35 00 00       	call   c6fd <assertion_failure>
    91b0:	83 c4 10             	add    $0x10,%esp
    91b3:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
    91b9:	8b 40 20             	mov    0x20(%eax),%eax
    91bc:	83 ec 08             	sub    $0x8,%esp
    91bf:	ff 75 ec             	pushl  -0x14(%ebp)
    91c2:	50                   	push   %eax
    91c3:	e8 92 f0 ff ff       	call   825a <get_inode>
    91c8:	83 c4 10             	add    $0x10,%esp
    91cb:	89 45 e8             	mov    %eax,-0x18(%ebp)
    91ce:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91d1:	8b 40 20             	mov    0x20(%eax),%eax
    91d4:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
    91da:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91dd:	8b 40 28             	mov    0x28(%eax),%eax
    91e0:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
    91e6:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91e9:	8b 00                	mov    (%eax),%eax
    91eb:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%ebp)
    91f1:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91f4:	8b 00                	mov    (%eax),%eax
    91f6:	25 00 f0 00 00       	and    $0xf000,%eax
    91fb:	3d 00 60 00 00       	cmp    $0x6000,%eax
    9200:	74 11                	je     9213 <do_stat+0x161>
    9202:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9205:	8b 00                	mov    (%eax),%eax
    9207:	25 00 f0 00 00       	and    $0xf000,%eax
    920c:	3d 00 20 00 00       	cmp    $0x2000,%eax
    9211:	75 08                	jne    921b <do_stat+0x169>
    9213:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9216:	8b 40 08             	mov    0x8(%eax),%eax
    9219:	eb 05                	jmp    9220 <do_stat+0x16e>
    921b:	b8 00 00 00 00       	mov    $0x0,%eax
    9220:	89 85 dc fe ff ff    	mov    %eax,-0x124(%ebp)
    9226:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9229:	8b 40 04             	mov    0x4(%eax),%eax
    922c:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%ebp)
    9232:	83 ec 0c             	sub    $0xc,%esp
    9235:	ff 75 e8             	pushl  -0x18(%ebp)
    9238:	e8 80 f1 ff ff       	call   83bd <put_inode>
    923d:	83 c4 10             	add    $0x10,%esp
    9240:	83 ec 08             	sub    $0x8,%esp
    9243:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    9249:	50                   	push   %eax
    924a:	6a 03                	push   $0x3
    924c:	e8 b6 ae ff ff       	call   4107 <va2la>
    9251:	83 c4 10             	add    $0x10,%esp
    9254:	89 c3                	mov    %eax,%ebx
    9256:	a1 8c 95 03 00       	mov    0x3958c,%eax
    925b:	83 ec 08             	sub    $0x8,%esp
    925e:	50                   	push   %eax
    925f:	ff 75 f0             	pushl  -0x10(%ebp)
    9262:	e8 a0 ae ff ff       	call   4107 <va2la>
    9267:	83 c4 10             	add    $0x10,%esp
    926a:	83 ec 04             	sub    $0x4,%esp
    926d:	6a 14                	push   $0x14
    926f:	53                   	push   %ebx
    9270:	50                   	push   %eax
    9271:	e8 fa 31 00 00       	call   c470 <memcpy>
    9276:	83 c4 10             	add    $0x10,%esp
    9279:	b8 00 00 00 00       	mov    $0x0,%eax
    927e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    9281:	c9                   	leave  
    9282:	c3                   	ret    

00009283 <search_file>:
    9283:	55                   	push   %ebp
    9284:	89 e5                	mov    %esp,%ebp
    9286:	53                   	push   %ebx
    9287:	81 ec a4 00 00 00    	sub    $0xa4,%esp
    928d:	83 ec 04             	sub    $0x4,%esp
    9290:	6a 0c                	push   $0xc
    9292:	6a 00                	push   $0x0
    9294:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    929a:	50                   	push   %eax
    929b:	e8 f9 31 00 00       	call   c499 <memset>
    92a0:	83 c4 10             	add    $0x10,%esp
    92a3:	83 ec 04             	sub    $0x4,%esp
    92a6:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    92ac:	50                   	push   %eax
    92ad:	ff 75 08             	pushl  0x8(%ebp)
    92b0:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    92b6:	50                   	push   %eax
    92b7:	e8 1d 01 00 00       	call   93d9 <strip_path>
    92bc:	83 c4 10             	add    $0x10,%esp
    92bf:	85 c0                	test   %eax,%eax
    92c1:	74 0a                	je     92cd <search_file+0x4a>
    92c3:	b8 00 00 00 00       	mov    $0x0,%eax
    92c8:	e9 07 01 00 00       	jmp    93d4 <search_file+0x151>
    92cd:	0f b6 85 5c ff ff ff 	movzbl -0xa4(%ebp),%eax
    92d4:	84 c0                	test   %al,%al
    92d6:	75 0e                	jne    92e6 <search_file+0x63>
    92d8:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92de:	8b 40 28             	mov    0x28(%eax),%eax
    92e1:	e9 ee 00 00 00       	jmp    93d4 <search_file+0x151>
    92e6:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92ec:	8b 40 08             	mov    0x8(%eax),%eax
    92ef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    92f2:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92f8:	8b 40 04             	mov    0x4(%eax),%eax
    92fb:	05 ff 01 00 00       	add    $0x1ff,%eax
    9300:	c1 e8 09             	shr    $0x9,%eax
    9303:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9306:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    930c:	8b 40 04             	mov    0x4(%eax),%eax
    930f:	c1 e8 04             	shr    $0x4,%eax
    9312:	89 45 dc             	mov    %eax,-0x24(%ebp)
    9315:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    931c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    9323:	e9 98 00 00 00       	jmp    93c0 <search_file+0x13d>
    9328:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    932e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    9331:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9334:	01 d0                	add    %edx,%eax
    9336:	c1 e0 09             	shl    $0x9,%eax
    9339:	99                   	cltd   
    933a:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
    9340:	8b 49 20             	mov    0x20(%ecx),%ecx
    9343:	83 ec 04             	sub    $0x4,%esp
    9346:	53                   	push   %ebx
    9347:	6a 03                	push   $0x3
    9349:	68 00 02 00 00       	push   $0x200
    934e:	52                   	push   %edx
    934f:	50                   	push   %eax
    9350:	51                   	push   %ecx
    9351:	68 eb 03 00 00       	push   $0x3eb
    9356:	e8 b1 ec ff ff       	call   800c <rw_sector>
    935b:	83 c4 20             	add    $0x20,%esp
    935e:	a1 04 28 01 00       	mov    0x12804,%eax
    9363:	89 45 e8             	mov    %eax,-0x18(%ebp)
    9366:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    936d:	eb 3a                	jmp    93a9 <search_file+0x126>
    936f:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9372:	83 c0 04             	add    $0x4,%eax
    9375:	83 ec 04             	sub    $0x4,%esp
    9378:	6a 0c                	push   $0xc
    937a:	50                   	push   %eax
    937b:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    9381:	50                   	push   %eax
    9382:	e8 1b 32 00 00       	call   c5a2 <memcmp>
    9387:	83 c4 10             	add    $0x10,%esp
    938a:	85 c0                	test   %eax,%eax
    938c:	75 07                	jne    9395 <search_file+0x112>
    938e:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9391:	8b 00                	mov    (%eax),%eax
    9393:	eb 3f                	jmp    93d4 <search_file+0x151>
    9395:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9399:	8b 45 ec             	mov    -0x14(%ebp),%eax
    939c:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    939f:	7f 12                	jg     93b3 <search_file+0x130>
    93a1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    93a5:	83 45 e8 10          	addl   $0x10,-0x18(%ebp)
    93a9:	8b 45 f0             	mov    -0x10(%ebp),%eax
    93ac:	83 f8 1f             	cmp    $0x1f,%eax
    93af:	76 be                	jbe    936f <search_file+0xec>
    93b1:	eb 01                	jmp    93b4 <search_file+0x131>
    93b3:	90                   	nop
    93b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    93b7:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    93ba:	7f 12                	jg     93ce <search_file+0x14b>
    93bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    93c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    93c3:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    93c6:	0f 8c 5c ff ff ff    	jl     9328 <search_file+0xa5>
    93cc:	eb 01                	jmp    93cf <search_file+0x14c>
    93ce:	90                   	nop
    93cf:	b8 00 00 00 00       	mov    $0x0,%eax
    93d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    93d7:	c9                   	leave  
    93d8:	c3                   	ret    

000093d9 <strip_path>:
    93d9:	55                   	push   %ebp
    93da:	89 e5                	mov    %esp,%ebp
    93dc:	83 ec 10             	sub    $0x10,%esp
    93df:	8b 45 0c             	mov    0xc(%ebp),%eax
    93e2:	89 45 fc             	mov    %eax,-0x4(%ebp)
    93e5:	8b 45 08             	mov    0x8(%ebp),%eax
    93e8:	89 45 f8             	mov    %eax,-0x8(%ebp)
    93eb:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    93ef:	75 07                	jne    93f8 <strip_path+0x1f>
    93f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    93f6:	eb 66                	jmp    945e <strip_path+0x85>
    93f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
    93fb:	0f b6 00             	movzbl (%eax),%eax
    93fe:	3c 2f                	cmp    $0x2f,%al
    9400:	75 39                	jne    943b <strip_path+0x62>
    9402:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    9406:	eb 33                	jmp    943b <strip_path+0x62>
    9408:	8b 45 fc             	mov    -0x4(%ebp),%eax
    940b:	0f b6 00             	movzbl (%eax),%eax
    940e:	3c 2f                	cmp    $0x2f,%al
    9410:	75 07                	jne    9419 <strip_path+0x40>
    9412:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9417:	eb 45                	jmp    945e <strip_path+0x85>
    9419:	8b 55 fc             	mov    -0x4(%ebp),%edx
    941c:	8d 42 01             	lea    0x1(%edx),%eax
    941f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    9422:	8b 45 f8             	mov    -0x8(%ebp),%eax
    9425:	8d 48 01             	lea    0x1(%eax),%ecx
    9428:	89 4d f8             	mov    %ecx,-0x8(%ebp)
    942b:	0f b6 12             	movzbl (%edx),%edx
    942e:	88 10                	mov    %dl,(%eax)
    9430:	8b 45 f8             	mov    -0x8(%ebp),%eax
    9433:	2b 45 08             	sub    0x8(%ebp),%eax
    9436:	83 f8 0b             	cmp    $0xb,%eax
    9439:	7f 0c                	jg     9447 <strip_path+0x6e>
    943b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    943e:	0f b6 00             	movzbl (%eax),%eax
    9441:	84 c0                	test   %al,%al
    9443:	75 c3                	jne    9408 <strip_path+0x2f>
    9445:	eb 01                	jmp    9448 <strip_path+0x6f>
    9447:	90                   	nop
    9448:	8b 45 f8             	mov    -0x8(%ebp),%eax
    944b:	c6 00 00             	movb   $0x0,(%eax)
    944e:	8b 15 a0 99 03 00    	mov    0x399a0,%edx
    9454:	8b 45 10             	mov    0x10(%ebp),%eax
    9457:	89 10                	mov    %edx,(%eax)
    9459:	b8 00 00 00 00       	mov    $0x0,%eax
    945e:	c9                   	leave  
    945f:	c3                   	ret    

00009460 <do_rdwt>:
    9460:	55                   	push   %ebp
    9461:	89 e5                	mov    %esp,%ebp
    9463:	56                   	push   %esi
    9464:	53                   	push   %ebx
    9465:	83 ec 50             	sub    $0x50,%esp
    9468:	a1 68 95 03 00       	mov    0x39568,%eax
    946d:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9470:	a1 8c 95 03 00       	mov    0x3958c,%eax
    9475:	89 45 dc             	mov    %eax,-0x24(%ebp)
    9478:	a1 6c 95 03 00       	mov    0x3956c,%eax
    947d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    9480:	a1 60 95 03 00       	mov    0x39560,%eax
    9485:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    9488:	a1 44 88 03 00       	mov    0x38844,%eax
    948d:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9490:	83 c2 24             	add    $0x24,%edx
    9493:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9497:	3d a0 95 03 00       	cmp    $0x395a0,%eax
    949c:	72 16                	jb     94b4 <do_rdwt+0x54>
    949e:	a1 44 88 03 00       	mov    0x38844,%eax
    94a3:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94a6:	83 c2 24             	add    $0x24,%edx
    94a9:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94ad:	3d a0 99 03 00       	cmp    $0x399a0,%eax
    94b2:	72 19                	jb     94cd <do_rdwt+0x6d>
    94b4:	6a 2c                	push   $0x2c
    94b6:	68 a8 e4 00 00       	push   $0xe4a8
    94bb:	68 a8 e4 00 00       	push   $0xe4a8
    94c0:	68 b8 e4 00 00       	push   $0xe4b8
    94c5:	e8 33 32 00 00       	call   c6fd <assertion_failure>
    94ca:	83 c4 10             	add    $0x10,%esp
    94cd:	a1 44 88 03 00       	mov    0x38844,%eax
    94d2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94d5:	83 c2 24             	add    $0x24,%edx
    94d8:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94dc:	8b 00                	mov    (%eax),%eax
    94de:	83 e0 02             	and    $0x2,%eax
    94e1:	85 c0                	test   %eax,%eax
    94e3:	75 0a                	jne    94ef <do_rdwt+0x8f>
    94e5:	b8 00 00 00 00       	mov    $0x0,%eax
    94ea:	e9 00 04 00 00       	jmp    98ef <do_rdwt+0x48f>
    94ef:	a1 44 88 03 00       	mov    0x38844,%eax
    94f4:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94f7:	83 c2 24             	add    $0x24,%edx
    94fa:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94fe:	8b 40 04             	mov    0x4(%eax),%eax
    9501:	89 45 d0             	mov    %eax,-0x30(%ebp)
    9504:	a1 44 88 03 00       	mov    0x38844,%eax
    9509:	8b 55 e0             	mov    -0x20(%ebp),%edx
    950c:	83 c2 24             	add    $0x24,%edx
    950f:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9513:	8b 40 0c             	mov    0xc(%eax),%eax
    9516:	89 45 cc             	mov    %eax,-0x34(%ebp)
    9519:	81 7d cc 20 39 01 00 	cmpl   $0x13920,-0x34(%ebp)
    9520:	72 09                	jb     952b <do_rdwt+0xcb>
    9522:	81 7d cc 20 44 01 00 	cmpl   $0x14420,-0x34(%ebp)
    9529:	72 19                	jb     9544 <do_rdwt+0xe4>
    952b:	6a 35                	push   $0x35
    952d:	68 a8 e4 00 00       	push   $0xe4a8
    9532:	68 a8 e4 00 00       	push   $0xe4a8
    9537:	68 18 e5 00 00       	push   $0xe518
    953c:	e8 bc 31 00 00       	call   c6fd <assertion_failure>
    9541:	83 c4 10             	add    $0x10,%esp
    9544:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9547:	8b 00                	mov    (%eax),%eax
    9549:	25 00 f0 00 00       	and    $0xf000,%eax
    954e:	89 45 c8             	mov    %eax,-0x38(%ebp)
    9551:	81 7d c8 00 20 00 00 	cmpl   $0x2000,-0x38(%ebp)
    9558:	0f 85 f2 00 00 00    	jne    9650 <do_rdwt+0x1f0>
    955e:	a1 64 95 03 00       	mov    0x39564,%eax
    9563:	83 f8 07             	cmp    $0x7,%eax
    9566:	75 07                	jne    956f <do_rdwt+0x10f>
    9568:	b8 eb 03 00 00       	mov    $0x3eb,%eax
    956d:	eb 05                	jmp    9574 <do_rdwt+0x114>
    956f:	b8 ec 03 00 00       	mov    $0x3ec,%eax
    9574:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9577:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    957a:	a3 64 95 03 00       	mov    %eax,0x39564
    957f:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9582:	8b 40 08             	mov    0x8(%eax),%eax
    9585:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9588:	8b 45 c0             	mov    -0x40(%ebp),%eax
    958b:	c1 f8 08             	sar    $0x8,%eax
    958e:	0f b6 c0             	movzbl %al,%eax
    9591:	83 f8 04             	cmp    $0x4,%eax
    9594:	74 19                	je     95af <do_rdwt+0x14f>
    9596:	6a 3e                	push   $0x3e
    9598:	68 a8 e4 00 00       	push   $0xe4a8
    959d:	68 a8 e4 00 00       	push   $0xe4a8
    95a2:	68 4f e5 00 00       	push   $0xe54f
    95a7:	e8 51 31 00 00       	call   c6fd <assertion_failure>
    95ac:	83 c4 10             	add    $0x10,%esp
    95af:	8b 45 c0             	mov    -0x40(%ebp),%eax
    95b2:	0f b6 c0             	movzbl %al,%eax
    95b5:	a3 74 95 03 00       	mov    %eax,0x39574
    95ba:	8b 45 dc             	mov    -0x24(%ebp),%eax
    95bd:	a3 8c 95 03 00       	mov    %eax,0x3958c
    95c2:	8b 45 d8             	mov    -0x28(%ebp),%eax
    95c5:	a3 6c 95 03 00       	mov    %eax,0x3956c
    95ca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    95cd:	a3 70 95 03 00       	mov    %eax,0x39570
    95d2:	8b 45 c0             	mov    -0x40(%ebp),%eax
    95d5:	c1 f8 08             	sar    $0x8,%eax
    95d8:	0f b6 c0             	movzbl %al,%eax
    95db:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    95e2:	83 f8 ec             	cmp    $0xffffffec,%eax
    95e5:	75 19                	jne    9600 <do_rdwt+0x1a0>
    95e7:	6a 44                	push   $0x44
    95e9:	68 a8 e4 00 00       	push   $0xe4a8
    95ee:	68 a8 e4 00 00       	push   $0xe4a8
    95f3:	68 60 e5 00 00       	push   $0xe560
    95f8:	e8 00 31 00 00       	call   c6fd <assertion_failure>
    95fd:	83 c4 10             	add    $0x10,%esp
    9600:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9603:	c1 f8 08             	sar    $0x8,%eax
    9606:	0f b6 c0             	movzbl %al,%eax
    9609:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    9610:	83 ec 04             	sub    $0x4,%esp
    9613:	68 60 95 03 00       	push   $0x39560
    9618:	50                   	push   %eax
    9619:	6a 03                	push   $0x3
    961b:	e8 c8 2e 00 00       	call   c4e8 <send_recv>
    9620:	83 c4 10             	add    $0x10,%esp
    9623:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9628:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    962b:	74 19                	je     9646 <do_rdwt+0x1e6>
    962d:	6a 46                	push   $0x46
    962f:	68 a8 e4 00 00       	push   $0xe4a8
    9634:	68 a8 e4 00 00       	push   $0xe4a8
    9639:	68 8f e5 00 00       	push   $0xe58f
    963e:	e8 ba 30 00 00       	call   c6fd <assertion_failure>
    9643:	83 c4 10             	add    $0x10,%esp
    9646:	a1 6c 95 03 00       	mov    0x3956c,%eax
    964b:	e9 9f 02 00 00       	jmp    98ef <do_rdwt+0x48f>
    9650:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9653:	8b 00                	mov    (%eax),%eax
    9655:	3d 00 80 00 00       	cmp    $0x8000,%eax
    965a:	74 25                	je     9681 <do_rdwt+0x221>
    965c:	8b 45 cc             	mov    -0x34(%ebp),%eax
    965f:	8b 00                	mov    (%eax),%eax
    9661:	3d 00 40 00 00       	cmp    $0x4000,%eax
    9666:	74 19                	je     9681 <do_rdwt+0x221>
    9668:	6a 4b                	push   $0x4b
    966a:	68 a8 e4 00 00       	push   $0xe4a8
    966f:	68 a8 e4 00 00       	push   $0xe4a8
    9674:	68 a4 e5 00 00       	push   $0xe5a4
    9679:	e8 7f 30 00 00       	call   c6fd <assertion_failure>
    967e:	83 c4 10             	add    $0x10,%esp
    9681:	a1 64 95 03 00       	mov    0x39564,%eax
    9686:	83 f8 07             	cmp    $0x7,%eax
    9689:	74 23                	je     96ae <do_rdwt+0x24e>
    968b:	a1 64 95 03 00       	mov    0x39564,%eax
    9690:	83 f8 08             	cmp    $0x8,%eax
    9693:	74 19                	je     96ae <do_rdwt+0x24e>
    9695:	6a 4c                	push   $0x4c
    9697:	68 a8 e4 00 00       	push   $0xe4a8
    969c:	68 a8 e4 00 00       	push   $0xe4a8
    96a1:	68 dc e5 00 00       	push   $0xe5dc
    96a6:	e8 52 30 00 00       	call   c6fd <assertion_failure>
    96ab:	83 c4 10             	add    $0x10,%esp
    96ae:	a1 64 95 03 00       	mov    0x39564,%eax
    96b3:	83 f8 07             	cmp    $0x7,%eax
    96b6:	75 18                	jne    96d0 <do_rdwt+0x270>
    96b8:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96bb:	8b 40 04             	mov    0x4(%eax),%eax
    96be:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    96c1:	8b 55 d8             	mov    -0x28(%ebp),%edx
    96c4:	01 ca                	add    %ecx,%edx
    96c6:	39 d0                	cmp    %edx,%eax
    96c8:	0f 47 c2             	cmova  %edx,%eax
    96cb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    96ce:	eb 19                	jmp    96e9 <do_rdwt+0x289>
    96d0:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96d3:	8b 40 0c             	mov    0xc(%eax),%eax
    96d6:	c1 e0 09             	shl    $0x9,%eax
    96d9:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    96dc:	8b 55 d8             	mov    -0x28(%ebp),%edx
    96df:	01 ca                	add    %ecx,%edx
    96e1:	39 d0                	cmp    %edx,%eax
    96e3:	0f 47 c2             	cmova  %edx,%eax
    96e6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    96e9:	8b 45 d0             	mov    -0x30(%ebp),%eax
    96ec:	99                   	cltd   
    96ed:	c1 ea 17             	shr    $0x17,%edx
    96f0:	01 d0                	add    %edx,%eax
    96f2:	25 ff 01 00 00       	and    $0x1ff,%eax
    96f7:	29 d0                	sub    %edx,%eax
    96f9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    96fc:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96ff:	8b 40 08             	mov    0x8(%eax),%eax
    9702:	8b 55 d0             	mov    -0x30(%ebp),%edx
    9705:	c1 fa 09             	sar    $0x9,%edx
    9708:	01 d0                	add    %edx,%eax
    970a:	89 45 bc             	mov    %eax,-0x44(%ebp)
    970d:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9710:	8b 40 08             	mov    0x8(%eax),%eax
    9713:	8b 55 f4             	mov    -0xc(%ebp),%edx
    9716:	c1 fa 09             	sar    $0x9,%edx
    9719:	01 d0                	add    %edx,%eax
    971b:	89 45 b8             	mov    %eax,-0x48(%ebp)
    971e:	a1 18 d0 00 00       	mov    0xd018,%eax
    9723:	c1 f8 09             	sar    $0x9,%eax
    9726:	89 c2                	mov    %eax,%edx
    9728:	8b 45 b8             	mov    -0x48(%ebp),%eax
    972b:	2b 45 bc             	sub    -0x44(%ebp),%eax
    972e:	83 c0 01             	add    $0x1,%eax
    9731:	39 c2                	cmp    %eax,%edx
    9733:	0f 4e c2             	cmovle %edx,%eax
    9736:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9739:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9740:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9743:	89 45 e8             	mov    %eax,-0x18(%ebp)
    9746:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9749:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    974c:	e9 49 01 00 00       	jmp    989a <do_rdwt+0x43a>
    9751:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9754:	c1 e0 09             	shl    $0x9,%eax
    9757:	2b 45 f0             	sub    -0x10(%ebp),%eax
    975a:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    975d:	0f 4e 45 e8          	cmovle -0x18(%ebp),%eax
    9761:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9764:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    976a:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    976d:	c1 e0 09             	shl    $0x9,%eax
    9770:	89 c6                	mov    %eax,%esi
    9772:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9775:	c1 e0 09             	shl    $0x9,%eax
    9778:	99                   	cltd   
    9779:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    977c:	8b 49 20             	mov    0x20(%ecx),%ecx
    977f:	83 ec 04             	sub    $0x4,%esp
    9782:	53                   	push   %ebx
    9783:	6a 03                	push   $0x3
    9785:	56                   	push   %esi
    9786:	52                   	push   %edx
    9787:	50                   	push   %eax
    9788:	51                   	push   %ecx
    9789:	68 eb 03 00 00       	push   $0x3eb
    978e:	e8 79 e8 ff ff       	call   800c <rw_sector>
    9793:	83 c4 20             	add    $0x20,%esp
    9796:	a1 64 95 03 00       	mov    0x39564,%eax
    979b:	83 f8 07             	cmp    $0x7,%eax
    979e:	75 44                	jne    97e4 <do_rdwt+0x384>
    97a0:	8b 15 04 28 01 00    	mov    0x12804,%edx
    97a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    97a9:	01 d0                	add    %edx,%eax
    97ab:	83 ec 08             	sub    $0x8,%esp
    97ae:	50                   	push   %eax
    97af:	6a 03                	push   $0x3
    97b1:	e8 51 a9 ff ff       	call   4107 <va2la>
    97b6:	83 c4 10             	add    $0x10,%esp
    97b9:	89 c3                	mov    %eax,%ebx
    97bb:	8b 55 ec             	mov    -0x14(%ebp),%edx
    97be:	8b 45 dc             	mov    -0x24(%ebp),%eax
    97c1:	01 d0                	add    %edx,%eax
    97c3:	83 ec 08             	sub    $0x8,%esp
    97c6:	50                   	push   %eax
    97c7:	ff 75 d4             	pushl  -0x2c(%ebp)
    97ca:	e8 38 a9 ff ff       	call   4107 <va2la>
    97cf:	83 c4 10             	add    $0x10,%esp
    97d2:	83 ec 04             	sub    $0x4,%esp
    97d5:	ff 75 b0             	pushl  -0x50(%ebp)
    97d8:	53                   	push   %ebx
    97d9:	50                   	push   %eax
    97da:	e8 91 2c 00 00       	call   c470 <memcpy>
    97df:	83 c4 10             	add    $0x10,%esp
    97e2:	eb 74                	jmp    9858 <do_rdwt+0x3f8>
    97e4:	8b 55 ec             	mov    -0x14(%ebp),%edx
    97e7:	8b 45 dc             	mov    -0x24(%ebp),%eax
    97ea:	01 d0                	add    %edx,%eax
    97ec:	83 ec 08             	sub    $0x8,%esp
    97ef:	50                   	push   %eax
    97f0:	ff 75 d4             	pushl  -0x2c(%ebp)
    97f3:	e8 0f a9 ff ff       	call   4107 <va2la>
    97f8:	83 c4 10             	add    $0x10,%esp
    97fb:	89 c3                	mov    %eax,%ebx
    97fd:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9803:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9806:	01 d0                	add    %edx,%eax
    9808:	83 ec 08             	sub    $0x8,%esp
    980b:	50                   	push   %eax
    980c:	6a 03                	push   $0x3
    980e:	e8 f4 a8 ff ff       	call   4107 <va2la>
    9813:	83 c4 10             	add    $0x10,%esp
    9816:	83 ec 04             	sub    $0x4,%esp
    9819:	ff 75 b0             	pushl  -0x50(%ebp)
    981c:	53                   	push   %ebx
    981d:	50                   	push   %eax
    981e:	e8 4d 2c 00 00       	call   c470 <memcpy>
    9823:	83 c4 10             	add    $0x10,%esp
    9826:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    982c:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    982f:	c1 e0 09             	shl    $0x9,%eax
    9832:	89 c6                	mov    %eax,%esi
    9834:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9837:	c1 e0 09             	shl    $0x9,%eax
    983a:	99                   	cltd   
    983b:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    983e:	8b 49 20             	mov    0x20(%ecx),%ecx
    9841:	83 ec 04             	sub    $0x4,%esp
    9844:	53                   	push   %ebx
    9845:	6a 03                	push   $0x3
    9847:	56                   	push   %esi
    9848:	52                   	push   %edx
    9849:	50                   	push   %eax
    984a:	51                   	push   %ecx
    984b:	68 ec 03 00 00       	push   $0x3ec
    9850:	e8 b7 e7 ff ff       	call   800c <rw_sector>
    9855:	83 c4 20             	add    $0x20,%esp
    9858:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    985f:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9862:	01 45 ec             	add    %eax,-0x14(%ebp)
    9865:	a1 44 88 03 00       	mov    0x38844,%eax
    986a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    986d:	83 c2 24             	add    $0x24,%edx
    9870:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9874:	8b 48 04             	mov    0x4(%eax),%ecx
    9877:	a1 44 88 03 00       	mov    0x38844,%eax
    987c:	8b 55 e0             	mov    -0x20(%ebp),%edx
    987f:	83 c2 24             	add    $0x24,%edx
    9882:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9886:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9889:	01 ca                	add    %ecx,%edx
    988b:	89 50 04             	mov    %edx,0x4(%eax)
    988e:	8b 45 b0             	mov    -0x50(%ebp),%eax
    9891:	29 45 e8             	sub    %eax,-0x18(%ebp)
    9894:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9897:	01 45 e4             	add    %eax,-0x1c(%ebp)
    989a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    989d:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    98a0:	0f 8e ab fe ff ff    	jle    9751 <do_rdwt+0x2f1>
    98a6:	a1 44 88 03 00       	mov    0x38844,%eax
    98ab:	8b 55 e0             	mov    -0x20(%ebp),%edx
    98ae:	83 c2 24             	add    $0x24,%edx
    98b1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    98b5:	8b 40 04             	mov    0x4(%eax),%eax
    98b8:	89 c2                	mov    %eax,%edx
    98ba:	8b 45 cc             	mov    -0x34(%ebp),%eax
    98bd:	8b 40 04             	mov    0x4(%eax),%eax
    98c0:	39 c2                	cmp    %eax,%edx
    98c2:	76 28                	jbe    98ec <do_rdwt+0x48c>
    98c4:	a1 44 88 03 00       	mov    0x38844,%eax
    98c9:	8b 55 e0             	mov    -0x20(%ebp),%edx
    98cc:	83 c2 24             	add    $0x24,%edx
    98cf:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    98d3:	8b 40 04             	mov    0x4(%eax),%eax
    98d6:	89 c2                	mov    %eax,%edx
    98d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
    98db:	89 50 04             	mov    %edx,0x4(%eax)
    98de:	83 ec 0c             	sub    $0xc,%esp
    98e1:	ff 75 cc             	pushl  -0x34(%ebp)
    98e4:	e8 12 eb ff ff       	call   83fb <sync_inode>
    98e9:	83 c4 10             	add    $0x10,%esp
    98ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
    98ef:	8d 65 f8             	lea    -0x8(%ebp),%esp
    98f2:	5b                   	pop    %ebx
    98f3:	5e                   	pop    %esi
    98f4:	5d                   	pop    %ebp
    98f5:	c3                   	ret    

000098f6 <do_unlink>:
    98f6:	55                   	push   %ebp
    98f7:	89 e5                	mov    %esp,%ebp
    98f9:	56                   	push   %esi
    98fa:	53                   	push   %ebx
    98fb:	81 ec 60 01 00 00    	sub    $0x160,%esp
    9901:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9906:	89 45 d0             	mov    %eax,-0x30(%ebp)
    9909:	a1 60 95 03 00       	mov    0x39560,%eax
    990e:	89 45 cc             	mov    %eax,-0x34(%ebp)
    9911:	83 7d d0 7f          	cmpl   $0x7f,-0x30(%ebp)
    9915:	7e 19                	jle    9930 <do_unlink+0x3a>
    9917:	6a 2a                	push   $0x2a
    9919:	68 0c e6 00 00       	push   $0xe60c
    991e:	68 0c e6 00 00       	push   $0xe60c
    9923:	68 16 e6 00 00       	push   $0xe616
    9928:	e8 d0 2d 00 00       	call   c6fd <assertion_failure>
    992d:	83 c4 10             	add    $0x10,%esp
    9930:	a1 88 95 03 00       	mov    0x39588,%eax
    9935:	83 ec 08             	sub    $0x8,%esp
    9938:	50                   	push   %eax
    9939:	ff 75 cc             	pushl  -0x34(%ebp)
    993c:	e8 c6 a7 ff ff       	call   4107 <va2la>
    9941:	83 c4 10             	add    $0x10,%esp
    9944:	89 c3                	mov    %eax,%ebx
    9946:	83 ec 08             	sub    $0x8,%esp
    9949:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    994f:	50                   	push   %eax
    9950:	6a 03                	push   $0x3
    9952:	e8 b0 a7 ff ff       	call   4107 <va2la>
    9957:	83 c4 10             	add    $0x10,%esp
    995a:	83 ec 04             	sub    $0x4,%esp
    995d:	ff 75 d0             	pushl  -0x30(%ebp)
    9960:	53                   	push   %ebx
    9961:	50                   	push   %eax
    9962:	e8 09 2b 00 00       	call   c470 <memcpy>
    9967:	83 c4 10             	add    $0x10,%esp
    996a:	8d 95 24 ff ff ff    	lea    -0xdc(%ebp),%edx
    9970:	8b 45 d0             	mov    -0x30(%ebp),%eax
    9973:	01 d0                	add    %edx,%eax
    9975:	c6 00 00             	movb   $0x0,(%eax)
    9978:	83 ec 08             	sub    $0x8,%esp
    997b:	68 2a e6 00 00       	push   $0xe62a
    9980:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9986:	50                   	push   %eax
    9987:	e8 88 2c 00 00       	call   c614 <strcmp>
    998c:	83 c4 10             	add    $0x10,%esp
    998f:	85 c0                	test   %eax,%eax
    9991:	75 1a                	jne    99ad <do_unlink+0xb7>
    9993:	83 ec 0c             	sub    $0xc,%esp
    9996:	68 2c e6 00 00       	push   $0xe62c
    999b:	e8 7c 27 00 00       	call   c11c <printl>
    99a0:	83 c4 10             	add    $0x10,%esp
    99a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    99a8:	e9 54 07 00 00       	jmp    a101 <do_unlink+0x80b>
    99ad:	83 ec 0c             	sub    $0xc,%esp
    99b0:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    99b6:	50                   	push   %eax
    99b7:	e8 c7 f8 ff ff       	call   9283 <search_file>
    99bc:	83 c4 10             	add    $0x10,%esp
    99bf:	89 45 c8             	mov    %eax,-0x38(%ebp)
    99c2:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
    99c6:	75 21                	jne    99e9 <do_unlink+0xf3>
    99c8:	83 ec 08             	sub    $0x8,%esp
    99cb:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    99d1:	50                   	push   %eax
    99d2:	68 5c e6 00 00       	push   $0xe65c
    99d7:	e8 40 27 00 00       	call   c11c <printl>
    99dc:	83 c4 10             	add    $0x10,%esp
    99df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    99e4:	e9 18 07 00 00       	jmp    a101 <do_unlink+0x80b>
    99e9:	83 ec 04             	sub    $0x4,%esp
    99ec:	8d 85 a0 fe ff ff    	lea    -0x160(%ebp),%eax
    99f2:	50                   	push   %eax
    99f3:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    99f9:	50                   	push   %eax
    99fa:	8d 85 a4 fe ff ff    	lea    -0x15c(%ebp),%eax
    9a00:	50                   	push   %eax
    9a01:	e8 d3 f9 ff ff       	call   93d9 <strip_path>
    9a06:	83 c4 10             	add    $0x10,%esp
    9a09:	85 c0                	test   %eax,%eax
    9a0b:	74 0a                	je     9a17 <do_unlink+0x121>
    9a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9a12:	e9 ea 06 00 00       	jmp    a101 <do_unlink+0x80b>
    9a17:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9a1d:	8b 40 20             	mov    0x20(%eax),%eax
    9a20:	83 ec 08             	sub    $0x8,%esp
    9a23:	ff 75 c8             	pushl  -0x38(%ebp)
    9a26:	50                   	push   %eax
    9a27:	e8 2e e8 ff ff       	call   825a <get_inode>
    9a2c:	83 c4 10             	add    $0x10,%esp
    9a2f:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9a32:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a35:	8b 00                	mov    (%eax),%eax
    9a37:	3d 00 80 00 00       	cmp    $0x8000,%eax
    9a3c:	74 21                	je     9a5f <do_unlink+0x169>
    9a3e:	83 ec 08             	sub    $0x8,%esp
    9a41:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9a47:	50                   	push   %eax
    9a48:	68 9c e6 00 00       	push   $0xe69c
    9a4d:	e8 ca 26 00 00       	call   c11c <printl>
    9a52:	83 c4 10             	add    $0x10,%esp
    9a55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9a5a:	e9 a2 06 00 00       	jmp    a101 <do_unlink+0x80b>
    9a5f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a62:	8b 40 24             	mov    0x24(%eax),%eax
    9a65:	83 f8 01             	cmp    $0x1,%eax
    9a68:	7e 28                	jle    9a92 <do_unlink+0x19c>
    9a6a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a6d:	8b 40 24             	mov    0x24(%eax),%eax
    9a70:	83 ec 04             	sub    $0x4,%esp
    9a73:	50                   	push   %eax
    9a74:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9a7a:	50                   	push   %eax
    9a7b:	68 dc e6 00 00       	push   $0xe6dc
    9a80:	e8 97 26 00 00       	call   c11c <printl>
    9a85:	83 c4 10             	add    $0x10,%esp
    9a88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9a8d:	e9 6f 06 00 00       	jmp    a101 <do_unlink+0x80b>
    9a92:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a95:	8b 40 20             	mov    0x20(%eax),%eax
    9a98:	83 ec 0c             	sub    $0xc,%esp
    9a9b:	50                   	push   %eax
    9a9c:	e8 73 e7 ff ff       	call   8214 <get_super_block>
    9aa1:	83 c4 10             	add    $0x10,%esp
    9aa4:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9aa7:	8b 45 c8             	mov    -0x38(%ebp),%eax
    9aaa:	8d 50 07             	lea    0x7(%eax),%edx
    9aad:	85 c0                	test   %eax,%eax
    9aaf:	0f 48 c2             	cmovs  %edx,%eax
    9ab2:	c1 f8 03             	sar    $0x3,%eax
    9ab5:	89 45 bc             	mov    %eax,-0x44(%ebp)
    9ab8:	8b 45 c8             	mov    -0x38(%ebp),%eax
    9abb:	99                   	cltd   
    9abc:	c1 ea 1d             	shr    $0x1d,%edx
    9abf:	01 d0                	add    %edx,%eax
    9ac1:	83 e0 07             	and    $0x7,%eax
    9ac4:	29 d0                	sub    %edx,%eax
    9ac6:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9ac9:	81 7d bc ff 01 00 00 	cmpl   $0x1ff,-0x44(%ebp)
    9ad0:	7e 19                	jle    9aeb <do_unlink+0x1f5>
    9ad2:	6a 57                	push   $0x57
    9ad4:	68 0c e6 00 00       	push   $0xe60c
    9ad9:	68 0c e6 00 00       	push   $0xe60c
    9ade:	68 13 e7 00 00       	push   $0xe713
    9ae3:	e8 15 2c 00 00       	call   c6fd <assertion_failure>
    9ae8:	83 c4 10             	add    $0x10,%esp
    9aeb:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9af1:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9af4:	8b 40 20             	mov    0x20(%eax),%eax
    9af7:	83 ec 04             	sub    $0x4,%esp
    9afa:	52                   	push   %edx
    9afb:	6a 03                	push   $0x3
    9afd:	68 00 02 00 00       	push   $0x200
    9b02:	6a 00                	push   $0x0
    9b04:	68 00 04 00 00       	push   $0x400
    9b09:	50                   	push   %eax
    9b0a:	68 eb 03 00 00       	push   $0x3eb
    9b0f:	e8 f8 e4 ff ff       	call   800c <rw_sector>
    9b14:	83 c4 20             	add    $0x20,%esp
    9b17:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9b1d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9b20:	99                   	cltd   
    9b21:	c1 ea 17             	shr    $0x17,%edx
    9b24:	01 d0                	add    %edx,%eax
    9b26:	25 ff 01 00 00       	and    $0x1ff,%eax
    9b2b:	29 d0                	sub    %edx,%eax
    9b2d:	01 c8                	add    %ecx,%eax
    9b2f:	0f b6 00             	movzbl (%eax),%eax
    9b32:	0f b6 d0             	movzbl %al,%edx
    9b35:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9b38:	89 c1                	mov    %eax,%ecx
    9b3a:	d3 fa                	sar    %cl,%edx
    9b3c:	89 d0                	mov    %edx,%eax
    9b3e:	83 e0 01             	and    $0x1,%eax
    9b41:	85 c0                	test   %eax,%eax
    9b43:	75 19                	jne    9b5e <do_unlink+0x268>
    9b45:	6a 5a                	push   $0x5a
    9b47:	68 0c e6 00 00       	push   $0xe60c
    9b4c:	68 0c e6 00 00       	push   $0xe60c
    9b51:	68 2c e7 00 00       	push   $0xe72c
    9b56:	e8 a2 2b 00 00       	call   c6fd <assertion_failure>
    9b5b:	83 c4 10             	add    $0x10,%esp
    9b5e:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9b64:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9b67:	99                   	cltd   
    9b68:	c1 ea 17             	shr    $0x17,%edx
    9b6b:	01 d0                	add    %edx,%eax
    9b6d:	25 ff 01 00 00       	and    $0x1ff,%eax
    9b72:	29 d0                	sub    %edx,%eax
    9b74:	89 c2                	mov    %eax,%edx
    9b76:	89 d0                	mov    %edx,%eax
    9b78:	01 c8                	add    %ecx,%eax
    9b7a:	0f b6 00             	movzbl (%eax),%eax
    9b7d:	89 c3                	mov    %eax,%ebx
    9b7f:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9b82:	be 01 00 00 00       	mov    $0x1,%esi
    9b87:	89 c1                	mov    %eax,%ecx
    9b89:	d3 e6                	shl    %cl,%esi
    9b8b:	89 f0                	mov    %esi,%eax
    9b8d:	f7 d0                	not    %eax
    9b8f:	21 c3                	and    %eax,%ebx
    9b91:	89 d9                	mov    %ebx,%ecx
    9b93:	a1 04 28 01 00       	mov    0x12804,%eax
    9b98:	01 d0                	add    %edx,%eax
    9b9a:	89 ca                	mov    %ecx,%edx
    9b9c:	88 10                	mov    %dl,(%eax)
    9b9e:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ba4:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9ba7:	8b 40 20             	mov    0x20(%eax),%eax
    9baa:	83 ec 04             	sub    $0x4,%esp
    9bad:	52                   	push   %edx
    9bae:	6a 03                	push   $0x3
    9bb0:	68 00 02 00 00       	push   $0x200
    9bb5:	6a 00                	push   $0x0
    9bb7:	68 00 04 00 00       	push   $0x400
    9bbc:	50                   	push   %eax
    9bbd:	68 ec 03 00 00       	push   $0x3ec
    9bc2:	e8 45 e4 ff ff       	call   800c <rw_sector>
    9bc7:	83 c4 20             	add    $0x20,%esp
    9bca:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9bcd:	8b 50 08             	mov    0x8(%eax),%edx
    9bd0:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9bd3:	8b 40 14             	mov    0x14(%eax),%eax
    9bd6:	29 c2                	sub    %eax,%edx
    9bd8:	89 d0                	mov    %edx,%eax
    9bda:	83 c0 01             	add    $0x1,%eax
    9bdd:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9be0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9be3:	8d 50 07             	lea    0x7(%eax),%edx
    9be6:	85 c0                	test   %eax,%eax
    9be8:	0f 48 c2             	cmovs  %edx,%eax
    9beb:	c1 f8 03             	sar    $0x3,%eax
    9bee:	89 45 bc             	mov    %eax,-0x44(%ebp)
    9bf1:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9bf4:	8b 40 0c             	mov    0xc(%eax),%eax
    9bf7:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9bfa:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9bfd:	99                   	cltd   
    9bfe:	c1 ea 1d             	shr    $0x1d,%edx
    9c01:	01 d0                	add    %edx,%eax
    9c03:	83 e0 07             	and    $0x7,%eax
    9c06:	29 d0                	sub    %edx,%eax
    9c08:	ba 08 00 00 00       	mov    $0x8,%edx
    9c0d:	29 c2                	sub    %eax,%edx
    9c0f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9c12:	29 d0                	sub    %edx,%eax
    9c14:	8d 50 07             	lea    0x7(%eax),%edx
    9c17:	85 c0                	test   %eax,%eax
    9c19:	0f 48 c2             	cmovs  %edx,%eax
    9c1c:	c1 f8 03             	sar    $0x3,%eax
    9c1f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9c22:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9c25:	8b 50 0c             	mov    0xc(%eax),%edx
    9c28:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9c2b:	8d 88 ff 01 00 00    	lea    0x1ff(%eax),%ecx
    9c31:	85 c0                	test   %eax,%eax
    9c33:	0f 48 c1             	cmovs  %ecx,%eax
    9c36:	c1 f8 09             	sar    $0x9,%eax
    9c39:	01 d0                	add    %edx,%eax
    9c3b:	83 c0 02             	add    $0x2,%eax
    9c3e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    9c41:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9c47:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9c4a:	c1 e0 09             	shl    $0x9,%eax
    9c4d:	99                   	cltd   
    9c4e:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9c51:	8b 49 20             	mov    0x20(%ecx),%ecx
    9c54:	83 ec 04             	sub    $0x4,%esp
    9c57:	53                   	push   %ebx
    9c58:	6a 03                	push   $0x3
    9c5a:	68 00 02 00 00       	push   $0x200
    9c5f:	52                   	push   %edx
    9c60:	50                   	push   %eax
    9c61:	51                   	push   %ecx
    9c62:	68 eb 03 00 00       	push   $0x3eb
    9c67:	e8 a0 e3 ff ff       	call   800c <rw_sector>
    9c6c:	83 c4 20             	add    $0x20,%esp
    9c6f:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9c72:	99                   	cltd   
    9c73:	c1 ea 1d             	shr    $0x1d,%edx
    9c76:	01 d0                	add    %edx,%eax
    9c78:	83 e0 07             	and    $0x7,%eax
    9c7b:	29 d0                	sub    %edx,%eax
    9c7d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9c80:	e9 8f 00 00 00       	jmp    9d14 <do_unlink+0x41e>
    9c85:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9c8b:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9c8e:	99                   	cltd   
    9c8f:	c1 ea 17             	shr    $0x17,%edx
    9c92:	01 d0                	add    %edx,%eax
    9c94:	25 ff 01 00 00       	and    $0x1ff,%eax
    9c99:	29 d0                	sub    %edx,%eax
    9c9b:	01 c8                	add    %ecx,%eax
    9c9d:	0f b6 00             	movzbl (%eax),%eax
    9ca0:	0f b6 d0             	movzbl %al,%edx
    9ca3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ca6:	89 c1                	mov    %eax,%ecx
    9ca8:	d3 fa                	sar    %cl,%edx
    9caa:	89 d0                	mov    %edx,%eax
    9cac:	83 e0 01             	and    $0x1,%eax
    9caf:	85 c0                	test   %eax,%eax
    9cb1:	75 19                	jne    9ccc <do_unlink+0x3d6>
    9cb3:	6a 7b                	push   $0x7b
    9cb5:	68 0c e6 00 00       	push   $0xe60c
    9cba:	68 0c e6 00 00       	push   $0xe60c
    9cbf:	68 5c e7 00 00       	push   $0xe75c
    9cc4:	e8 34 2a 00 00       	call   c6fd <assertion_failure>
    9cc9:	83 c4 10             	add    $0x10,%esp
    9ccc:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9cd2:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9cd5:	99                   	cltd   
    9cd6:	c1 ea 17             	shr    $0x17,%edx
    9cd9:	01 d0                	add    %edx,%eax
    9cdb:	25 ff 01 00 00       	and    $0x1ff,%eax
    9ce0:	29 d0                	sub    %edx,%eax
    9ce2:	89 c2                	mov    %eax,%edx
    9ce4:	89 d0                	mov    %edx,%eax
    9ce6:	01 c8                	add    %ecx,%eax
    9ce8:	0f b6 00             	movzbl (%eax),%eax
    9ceb:	89 c3                	mov    %eax,%ebx
    9ced:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9cf0:	be 01 00 00 00       	mov    $0x1,%esi
    9cf5:	89 c1                	mov    %eax,%ecx
    9cf7:	d3 e6                	shl    %cl,%esi
    9cf9:	89 f0                	mov    %esi,%eax
    9cfb:	f7 d0                	not    %eax
    9cfd:	21 c3                	and    %eax,%ebx
    9cff:	89 d9                	mov    %ebx,%ecx
    9d01:	a1 04 28 01 00       	mov    0x12804,%eax
    9d06:	01 d0                	add    %edx,%eax
    9d08:	89 ca                	mov    %ecx,%edx
    9d0a:	88 10                	mov    %dl,(%eax)
    9d0c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9d10:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    9d14:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    9d18:	7f 0a                	jg     9d24 <do_unlink+0x42e>
    9d1a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    9d1e:	0f 85 61 ff ff ff    	jne    9c85 <do_unlink+0x38f>
    9d24:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9d27:	99                   	cltd   
    9d28:	c1 ea 17             	shr    $0x17,%edx
    9d2b:	01 d0                	add    %edx,%eax
    9d2d:	25 ff 01 00 00       	and    $0x1ff,%eax
    9d32:	29 d0                	sub    %edx,%eax
    9d34:	83 c0 01             	add    $0x1,%eax
    9d37:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9d3a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    9d41:	e9 b8 00 00 00       	jmp    9dfe <do_unlink+0x508>
    9d46:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9d4d:	75 67                	jne    9db6 <do_unlink+0x4c0>
    9d4f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9d56:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9d5c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9d5f:	c1 e0 09             	shl    $0x9,%eax
    9d62:	99                   	cltd   
    9d63:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9d66:	8b 49 20             	mov    0x20(%ecx),%ecx
    9d69:	83 ec 04             	sub    $0x4,%esp
    9d6c:	53                   	push   %ebx
    9d6d:	6a 03                	push   $0x3
    9d6f:	68 00 02 00 00       	push   $0x200
    9d74:	52                   	push   %edx
    9d75:	50                   	push   %eax
    9d76:	51                   	push   %ecx
    9d77:	68 ec 03 00 00       	push   $0x3ec
    9d7c:	e8 8b e2 ff ff       	call   800c <rw_sector>
    9d81:	83 c4 20             	add    $0x20,%esp
    9d84:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9d8a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9d8e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9d91:	c1 e0 09             	shl    $0x9,%eax
    9d94:	99                   	cltd   
    9d95:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9d98:	8b 49 20             	mov    0x20(%ecx),%ecx
    9d9b:	83 ec 04             	sub    $0x4,%esp
    9d9e:	53                   	push   %ebx
    9d9f:	6a 03                	push   $0x3
    9da1:	68 00 02 00 00       	push   $0x200
    9da6:	52                   	push   %edx
    9da7:	50                   	push   %eax
    9da8:	51                   	push   %ecx
    9da9:	68 eb 03 00 00       	push   $0x3eb
    9dae:	e8 59 e2 ff ff       	call   800c <rw_sector>
    9db3:	83 c4 20             	add    $0x20,%esp
    9db6:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9dbc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9dbf:	01 d0                	add    %edx,%eax
    9dc1:	0f b6 00             	movzbl (%eax),%eax
    9dc4:	3c ff                	cmp    $0xff,%al
    9dc6:	74 1c                	je     9de4 <do_unlink+0x4ee>
    9dc8:	68 88 00 00 00       	push   $0x88
    9dcd:	68 0c e6 00 00       	push   $0xe60c
    9dd2:	68 0c e6 00 00       	push   $0xe60c
    9dd7:	68 8a e7 00 00       	push   $0xe78a
    9ddc:	e8 1c 29 00 00       	call   c6fd <assertion_failure>
    9de1:	83 c4 10             	add    $0x10,%esp
    9de4:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9dea:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ded:	01 d0                	add    %edx,%eax
    9def:	c6 00 00             	movb   $0x0,(%eax)
    9df2:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    9df6:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9dfa:	83 6d f4 08          	subl   $0x8,-0xc(%ebp)
    9dfe:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9e01:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    9e04:	0f 8c 3c ff ff ff    	jl     9d46 <do_unlink+0x450>
    9e0a:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9e11:	75 67                	jne    9e7a <do_unlink+0x584>
    9e13:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9e1a:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9e20:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9e23:	c1 e0 09             	shl    $0x9,%eax
    9e26:	99                   	cltd   
    9e27:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9e2a:	8b 49 20             	mov    0x20(%ecx),%ecx
    9e2d:	83 ec 04             	sub    $0x4,%esp
    9e30:	53                   	push   %ebx
    9e31:	6a 03                	push   $0x3
    9e33:	68 00 02 00 00       	push   $0x200
    9e38:	52                   	push   %edx
    9e39:	50                   	push   %eax
    9e3a:	51                   	push   %ecx
    9e3b:	68 ec 03 00 00       	push   $0x3ec
    9e40:	e8 c7 e1 ff ff       	call   800c <rw_sector>
    9e45:	83 c4 20             	add    $0x20,%esp
    9e48:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9e4e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9e52:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9e55:	c1 e0 09             	shl    $0x9,%eax
    9e58:	99                   	cltd   
    9e59:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9e5c:	8b 49 20             	mov    0x20(%ecx),%ecx
    9e5f:	83 ec 04             	sub    $0x4,%esp
    9e62:	53                   	push   %ebx
    9e63:	6a 03                	push   $0x3
    9e65:	68 00 02 00 00       	push   $0x200
    9e6a:	52                   	push   %edx
    9e6b:	50                   	push   %eax
    9e6c:	51                   	push   %ecx
    9e6d:	68 eb 03 00 00       	push   $0x3eb
    9e72:	e8 95 e1 ff ff       	call   800c <rw_sector>
    9e77:	83 c4 20             	add    $0x20,%esp
    9e7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9e7d:	ba ff 00 00 00       	mov    $0xff,%edx
    9e82:	89 c1                	mov    %eax,%ecx
    9e84:	d3 e2                	shl    %cl,%edx
    9e86:	89 d0                	mov    %edx,%eax
    9e88:	f7 d0                	not    %eax
    9e8a:	88 45 b3             	mov    %al,-0x4d(%ebp)
    9e8d:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9e93:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9e96:	01 d0                	add    %edx,%eax
    9e98:	0f b6 00             	movzbl (%eax),%eax
    9e9b:	22 45 b3             	and    -0x4d(%ebp),%al
    9e9e:	38 45 b3             	cmp    %al,-0x4d(%ebp)
    9ea1:	74 1c                	je     9ebf <do_unlink+0x5c9>
    9ea3:	68 93 00 00 00       	push   $0x93
    9ea8:	68 0c e6 00 00       	push   $0xe60c
    9ead:	68 0c e6 00 00       	push   $0xe60c
    9eb2:	68 9b e7 00 00       	push   $0xe79b
    9eb7:	e8 41 28 00 00       	call   c6fd <assertion_failure>
    9ebc:	83 c4 10             	add    $0x10,%esp
    9ebf:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ec5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ec8:	01 d0                	add    %edx,%eax
    9eca:	0f b6 00             	movzbl (%eax),%eax
    9ecd:	89 c2                	mov    %eax,%edx
    9ecf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9ed2:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    9ed7:	89 c1                	mov    %eax,%ecx
    9ed9:	d3 e3                	shl    %cl,%ebx
    9edb:	89 d8                	mov    %ebx,%eax
    9edd:	89 d1                	mov    %edx,%ecx
    9edf:	21 c1                	and    %eax,%ecx
    9ee1:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ee7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9eea:	01 d0                	add    %edx,%eax
    9eec:	89 ca                	mov    %ecx,%edx
    9eee:	88 10                	mov    %dl,(%eax)
    9ef0:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9ef6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9ef9:	c1 e0 09             	shl    $0x9,%eax
    9efc:	99                   	cltd   
    9efd:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9f00:	8b 49 20             	mov    0x20(%ecx),%ecx
    9f03:	83 ec 04             	sub    $0x4,%esp
    9f06:	53                   	push   %ebx
    9f07:	6a 03                	push   $0x3
    9f09:	68 00 02 00 00       	push   $0x200
    9f0e:	52                   	push   %edx
    9f0f:	50                   	push   %eax
    9f10:	51                   	push   %ecx
    9f11:	68 ec 03 00 00       	push   $0x3ec
    9f16:	e8 f1 e0 ff ff       	call   800c <rw_sector>
    9f1b:	83 c4 20             	add    $0x20,%esp
    9f1e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f21:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    9f27:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f2a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    9f31:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f34:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    9f3b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f3e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    9f45:	83 ec 0c             	sub    $0xc,%esp
    9f48:	ff 75 c4             	pushl  -0x3c(%ebp)
    9f4b:	e8 ab e4 ff ff       	call   83fb <sync_inode>
    9f50:	83 c4 10             	add    $0x10,%esp
    9f53:	83 ec 0c             	sub    $0xc,%esp
    9f56:	ff 75 c4             	pushl  -0x3c(%ebp)
    9f59:	e8 5f e4 ff ff       	call   83bd <put_inode>
    9f5e:	83 c4 10             	add    $0x10,%esp
    9f61:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f67:	8b 40 08             	mov    0x8(%eax),%eax
    9f6a:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9f6d:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f73:	8b 40 04             	mov    0x4(%eax),%eax
    9f76:	05 00 02 00 00       	add    $0x200,%eax
    9f7b:	c1 e8 09             	shr    $0x9,%eax
    9f7e:	89 45 a8             	mov    %eax,-0x58(%ebp)
    9f81:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f87:	8b 40 04             	mov    0x4(%eax),%eax
    9f8a:	c1 e8 04             	shr    $0x4,%eax
    9f8d:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    9f90:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9f97:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    9f9e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    9fa5:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9fac:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9fb3:	e9 f0 00 00 00       	jmp    a0a8 <do_unlink+0x7b2>
    9fb8:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9fbe:	8b 55 ac             	mov    -0x54(%ebp),%edx
    9fc1:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9fc4:	01 d0                	add    %edx,%eax
    9fc6:	c1 e0 09             	shl    $0x9,%eax
    9fc9:	99                   	cltd   
    9fca:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9fd0:	8b 49 20             	mov    0x20(%ecx),%ecx
    9fd3:	83 ec 04             	sub    $0x4,%esp
    9fd6:	53                   	push   %ebx
    9fd7:	6a 03                	push   $0x3
    9fd9:	68 00 02 00 00       	push   $0x200
    9fde:	52                   	push   %edx
    9fdf:	50                   	push   %eax
    9fe0:	51                   	push   %ecx
    9fe1:	68 eb 03 00 00       	push   $0x3eb
    9fe6:	e8 21 e0 ff ff       	call   800c <rw_sector>
    9feb:	83 c4 20             	add    $0x20,%esp
    9fee:	a1 04 28 01 00       	mov    0x12804,%eax
    9ff3:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9ff6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    9ffd:	e9 85 00 00 00       	jmp    a087 <do_unlink+0x791>
    a002:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a006:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a009:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    a00c:	0f 8f 83 00 00 00    	jg     a095 <do_unlink+0x79f>
    a012:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a015:	8b 00                	mov    (%eax),%eax
    a017:	39 45 c8             	cmp    %eax,-0x38(%ebp)
    a01a:	75 51                	jne    a06d <do_unlink+0x777>
    a01c:	83 ec 04             	sub    $0x4,%esp
    a01f:	6a 10                	push   $0x10
    a021:	6a 00                	push   $0x0
    a023:	ff 75 e0             	pushl  -0x20(%ebp)
    a026:	e8 6e 24 00 00       	call   c499 <memset>
    a02b:	83 c4 10             	add    $0x10,%esp
    a02e:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    a034:	8b 55 ac             	mov    -0x54(%ebp),%edx
    a037:	8b 45 ec             	mov    -0x14(%ebp),%eax
    a03a:	01 d0                	add    %edx,%eax
    a03c:	c1 e0 09             	shl    $0x9,%eax
    a03f:	99                   	cltd   
    a040:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    a046:	8b 49 20             	mov    0x20(%ecx),%ecx
    a049:	83 ec 04             	sub    $0x4,%esp
    a04c:	53                   	push   %ebx
    a04d:	6a 03                	push   $0x3
    a04f:	68 00 02 00 00       	push   $0x200
    a054:	52                   	push   %edx
    a055:	50                   	push   %eax
    a056:	51                   	push   %ecx
    a057:	68 ec 03 00 00       	push   $0x3ec
    a05c:	e8 ab df ff ff       	call   800c <rw_sector>
    a061:	83 c4 20             	add    $0x20,%esp
    a064:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    a06b:	eb 29                	jmp    a096 <do_unlink+0x7a0>
    a06d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a070:	8b 00                	mov    (%eax),%eax
    a072:	85 c0                	test   %eax,%eax
    a074:	74 09                	je     a07f <do_unlink+0x789>
    a076:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a079:	83 c0 10             	add    $0x10,%eax
    a07c:	89 45 d8             	mov    %eax,-0x28(%ebp)
    a07f:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    a083:	83 45 e0 10          	addl   $0x10,-0x20(%ebp)
    a087:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    a08a:	83 f8 1f             	cmp    $0x1f,%eax
    a08d:	0f 86 6f ff ff ff    	jbe    a002 <do_unlink+0x70c>
    a093:	eb 01                	jmp    a096 <do_unlink+0x7a0>
    a095:	90                   	nop
    a096:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a099:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    a09c:	7f 16                	jg     a0b4 <do_unlink+0x7be>
    a09e:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a0a2:	75 10                	jne    a0b4 <do_unlink+0x7be>
    a0a4:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    a0a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    a0ab:	3b 45 a8             	cmp    -0x58(%ebp),%eax
    a0ae:	0f 8c 04 ff ff ff    	jl     9fb8 <do_unlink+0x6c2>
    a0b4:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a0b8:	75 1c                	jne    a0d6 <do_unlink+0x7e0>
    a0ba:	68 cb 00 00 00       	push   $0xcb
    a0bf:	68 0c e6 00 00       	push   $0xe60c
    a0c4:	68 0c e6 00 00       	push   $0xe60c
    a0c9:	68 b5 e7 00 00       	push   $0xe7b5
    a0ce:	e8 2a 26 00 00       	call   c6fd <assertion_failure>
    a0d3:	83 c4 10             	add    $0x10,%esp
    a0d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a0d9:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    a0dc:	75 1e                	jne    a0fc <do_unlink+0x806>
    a0de:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    a0e4:	8b 55 d8             	mov    -0x28(%ebp),%edx
    a0e7:	89 50 04             	mov    %edx,0x4(%eax)
    a0ea:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    a0f0:	83 ec 0c             	sub    $0xc,%esp
    a0f3:	50                   	push   %eax
    a0f4:	e8 02 e3 ff ff       	call   83fb <sync_inode>
    a0f9:	83 c4 10             	add    $0x10,%esp
    a0fc:	b8 00 00 00 00       	mov    $0x0,%eax
    a101:	8d 65 f8             	lea    -0x8(%ebp),%esp
    a104:	5b                   	pop    %ebx
    a105:	5e                   	pop    %esi
    a106:	5d                   	pop    %ebp
    a107:	c3                   	ret    

0000a108 <disklog>:
    a108:	55                   	push   %ebp
    a109:	89 e5                	mov    %esp,%ebp
    a10b:	57                   	push   %edi
    a10c:	56                   	push   %esi
    a10d:	53                   	push   %ebx
    a10e:	81 ec ac 00 00 00    	sub    $0xac,%esp
    a114:	a1 a0 99 03 00       	mov    0x399a0,%eax
    a119:	8b 40 20             	mov    0x20(%eax),%eax
    a11c:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    a11f:	83 ec 0c             	sub    $0xc,%esp
    a122:	ff 75 c4             	pushl  -0x3c(%ebp)
    a125:	e8 ea e0 ff ff       	call   8214 <get_super_block>
    a12a:	83 c4 10             	add    $0x10,%esp
    a12d:	89 45 c0             	mov    %eax,-0x40(%ebp)
    a130:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a133:	8b 40 08             	mov    0x8(%eax),%eax
    a136:	2d 00 08 00 00       	sub    $0x800,%eax
    a13b:	89 45 bc             	mov    %eax,-0x44(%ebp)
    a13e:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a143:	85 c0                	test   %eax,%eax
    a145:	0f 85 9c 02 00 00    	jne    a3e7 <disklog+0x2df>
    a14b:	c7 45 b8 00 10 00 00 	movl   $0x1000,-0x48(%ebp)
    a152:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a155:	8b 40 0c             	mov    0xc(%eax),%eax
    a158:	83 c0 02             	add    $0x2,%eax
    a15b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    a15e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a161:	99                   	cltd   
    a162:	f7 7d b8             	idivl  -0x48(%ebp)
    a165:	89 c2                	mov    %eax,%edx
    a167:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    a16a:	01 d0                	add    %edx,%eax
    a16c:	89 45 b0             	mov    %eax,-0x50(%ebp)
    a16f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a172:	99                   	cltd   
    a173:	f7 7d b8             	idivl  -0x48(%ebp)
    a176:	89 d0                	mov    %edx,%eax
    a178:	8d 50 07             	lea    0x7(%eax),%edx
    a17b:	85 c0                	test   %eax,%eax
    a17d:	0f 48 c2             	cmovs  %edx,%eax
    a180:	c1 f8 03             	sar    $0x3,%eax
    a183:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a186:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a189:	99                   	cltd   
    a18a:	f7 7d b8             	idivl  -0x48(%ebp)
    a18d:	89 d0                	mov    %edx,%eax
    a18f:	c1 f8 1f             	sar    $0x1f,%eax
    a192:	c1 e8 1d             	shr    $0x1d,%eax
    a195:	01 c2                	add    %eax,%edx
    a197:	83 e2 07             	and    $0x7,%edx
    a19a:	29 c2                	sub    %eax,%edx
    a19c:	89 d0                	mov    %edx,%eax
    a19e:	89 45 e0             	mov    %eax,-0x20(%ebp)
    a1a1:	b8 00 08 00 00       	mov    $0x800,%eax
    a1a6:	99                   	cltd   
    a1a7:	f7 7d b8             	idivl  -0x48(%ebp)
    a1aa:	83 c0 02             	add    $0x2,%eax
    a1ad:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a1b0:	c7 45 dc 00 08 00 00 	movl   $0x800,-0x24(%ebp)
    a1b7:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a1be:	e9 21 01 00 00       	jmp    a2e4 <disklog+0x1dc>
    a1c3:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a1c9:	e8 64 26 00 00       	call   c832 <getpid>
    a1ce:	89 c1                	mov    %eax,%ecx
    a1d0:	8b 55 b0             	mov    -0x50(%ebp),%edx
    a1d3:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a1d6:	01 d0                	add    %edx,%eax
    a1d8:	c1 e0 09             	shl    $0x9,%eax
    a1db:	99                   	cltd   
    a1dc:	83 ec 04             	sub    $0x4,%esp
    a1df:	53                   	push   %ebx
    a1e0:	51                   	push   %ecx
    a1e1:	68 00 02 00 00       	push   $0x200
    a1e6:	52                   	push   %edx
    a1e7:	50                   	push   %eax
    a1e8:	ff 75 c4             	pushl  -0x3c(%ebp)
    a1eb:	68 eb 03 00 00       	push   $0x3eb
    a1f0:	e8 17 de ff ff       	call   800c <rw_sector>
    a1f5:	83 c4 20             	add    $0x20,%esp
    a1f8:	e9 8b 00 00 00       	jmp    a288 <disklog+0x180>
    a1fd:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a203:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a206:	01 d0                	add    %edx,%eax
    a208:	0f b6 00             	movzbl (%eax),%eax
    a20b:	0f be d0             	movsbl %al,%edx
    a20e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a211:	89 c1                	mov    %eax,%ecx
    a213:	d3 fa                	sar    %cl,%edx
    a215:	89 d0                	mov    %edx,%eax
    a217:	83 e0 01             	and    $0x1,%eax
    a21a:	85 c0                	test   %eax,%eax
    a21c:	74 19                	je     a237 <disklog+0x12f>
    a21e:	6a 65                	push   $0x65
    a220:	68 bc e7 00 00       	push   $0xe7bc
    a225:	68 bc e7 00 00       	push   $0xe7bc
    a22a:	68 cc e7 00 00       	push   $0xe7cc
    a22f:	e8 c9 24 00 00       	call   c6fd <assertion_failure>
    a234:	83 c4 10             	add    $0x10,%esp
    a237:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a23d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a240:	01 d0                	add    %edx,%eax
    a242:	0f b6 18             	movzbl (%eax),%ebx
    a245:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a248:	ba 01 00 00 00       	mov    $0x1,%edx
    a24d:	89 c1                	mov    %eax,%ecx
    a24f:	d3 e2                	shl    %cl,%edx
    a251:	89 d0                	mov    %edx,%eax
    a253:	89 c1                	mov    %eax,%ecx
    a255:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a25b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a25e:	01 d0                	add    %edx,%eax
    a260:	09 cb                	or     %ecx,%ebx
    a262:	89 da                	mov    %ebx,%edx
    a264:	88 10                	mov    %dl,(%eax)
    a266:	83 6d dc 01          	subl   $0x1,-0x24(%ebp)
    a26a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a26e:	74 0c                	je     a27c <disklog+0x174>
    a270:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    a274:	83 7d e0 07          	cmpl   $0x7,-0x20(%ebp)
    a278:	7e 83                	jle    a1fd <disklog+0xf5>
    a27a:	eb 01                	jmp    a27d <disklog+0x175>
    a27c:	90                   	nop
    a27d:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a284:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a288:	81 7d e4 ff 01 00 00 	cmpl   $0x1ff,-0x1c(%ebp)
    a28f:	7f 06                	jg     a297 <disklog+0x18f>
    a291:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a295:	7f dd                	jg     a274 <disklog+0x16c>
    a297:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a29e:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a2a5:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a2ab:	e8 82 25 00 00       	call   c832 <getpid>
    a2b0:	89 c1                	mov    %eax,%ecx
    a2b2:	8b 55 b0             	mov    -0x50(%ebp),%edx
    a2b5:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a2b8:	01 d0                	add    %edx,%eax
    a2ba:	c1 e0 09             	shl    $0x9,%eax
    a2bd:	99                   	cltd   
    a2be:	83 ec 04             	sub    $0x4,%esp
    a2c1:	53                   	push   %ebx
    a2c2:	51                   	push   %ecx
    a2c3:	68 00 02 00 00       	push   $0x200
    a2c8:	52                   	push   %edx
    a2c9:	50                   	push   %eax
    a2ca:	ff 75 c4             	pushl  -0x3c(%ebp)
    a2cd:	68 ec 03 00 00       	push   $0x3ec
    a2d2:	e8 35 dd ff ff       	call   800c <rw_sector>
    a2d7:	83 c4 20             	add    $0x20,%esp
    a2da:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a2de:	74 12                	je     a2f2 <disklog+0x1ea>
    a2e0:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a2e4:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a2e7:	3b 45 ac             	cmp    -0x54(%ebp),%eax
    a2ea:	0f 8c d3 fe ff ff    	jl     a1c3 <disklog+0xbb>
    a2f0:	eb 01                	jmp    a2f3 <disklog+0x1eb>
    a2f2:	90                   	nop
    a2f3:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a2f7:	74 19                	je     a312 <disklog+0x20a>
    a2f9:	6a 74                	push   $0x74
    a2fb:	68 bc e7 00 00       	push   $0xe7bc
    a300:	68 bc e7 00 00       	push   $0xe7bc
    a305:	68 f9 e7 00 00       	push   $0xe7f9
    a30a:	e8 ee 23 00 00       	call   c6fd <assertion_failure>
    a30f:	83 c4 10             	add    $0x10,%esp
    a312:	c7 05 e0 38 01 00 40 	movl   $0x40,0x138e0
    a319:	00 00 00 
    a31c:	a1 24 d0 00 00       	mov    0xd024,%eax
    a321:	c1 f8 09             	sar    $0x9,%eax
    a324:	ba 00 01 00 00       	mov    $0x100,%edx
    a329:	3d 00 01 00 00       	cmp    $0x100,%eax
    a32e:	0f 4f c2             	cmovg  %edx,%eax
    a331:	89 45 a8             	mov    %eax,-0x58(%ebp)
    a334:	81 7d a8 00 01 00 00 	cmpl   $0x100,-0x58(%ebp)
    a33b:	74 19                	je     a356 <disklog+0x24e>
    a33d:	6a 7c                	push   $0x7c
    a33f:	68 bc e7 00 00       	push   $0xe7bc
    a344:	68 bc e7 00 00       	push   $0xe7bc
    a349:	68 08 e8 00 00       	push   $0xe808
    a34e:	e8 aa 23 00 00       	call   c6fd <assertion_failure>
    a353:	83 c4 10             	add    $0x10,%esp
    a356:	c7 45 d4 00 08 00 00 	movl   $0x800,-0x2c(%ebp)
    a35d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a360:	89 45 d8             	mov    %eax,-0x28(%ebp)
    a363:	eb 5c                	jmp    a3c1 <disklog+0x2b9>
    a365:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a368:	c1 e0 09             	shl    $0x9,%eax
    a36b:	89 c2                	mov    %eax,%edx
    a36d:	a1 10 28 01 00       	mov    0x12810,%eax
    a372:	83 ec 04             	sub    $0x4,%esp
    a375:	52                   	push   %edx
    a376:	6a 20                	push   $0x20
    a378:	50                   	push   %eax
    a379:	e8 1b 21 00 00       	call   c499 <memset>
    a37e:	83 c4 10             	add    $0x10,%esp
    a381:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a387:	e8 a6 24 00 00       	call   c832 <getpid>
    a38c:	89 c6                	mov    %eax,%esi
    a38e:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a391:	c1 e0 09             	shl    $0x9,%eax
    a394:	89 c1                	mov    %eax,%ecx
    a396:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a399:	c1 e0 09             	shl    $0x9,%eax
    a39c:	99                   	cltd   
    a39d:	83 ec 04             	sub    $0x4,%esp
    a3a0:	53                   	push   %ebx
    a3a1:	56                   	push   %esi
    a3a2:	51                   	push   %ecx
    a3a3:	52                   	push   %edx
    a3a4:	50                   	push   %eax
    a3a5:	ff 75 c4             	pushl  -0x3c(%ebp)
    a3a8:	68 ec 03 00 00       	push   $0x3ec
    a3ad:	e8 5a dc ff ff       	call   800c <rw_sector>
    a3b2:	83 c4 20             	add    $0x20,%esp
    a3b5:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a3b8:	29 45 d4             	sub    %eax,-0x2c(%ebp)
    a3bb:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a3be:	01 45 d8             	add    %eax,-0x28(%ebp)
    a3c1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a3c4:	05 ff 07 00 00       	add    $0x7ff,%eax
    a3c9:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    a3cc:	7e 97                	jle    a365 <disklog+0x25d>
    a3ce:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    a3d2:	74 13                	je     a3e7 <disklog+0x2df>
    a3d4:	83 ec 08             	sub    $0x8,%esp
    a3d7:	ff 75 d4             	pushl  -0x2c(%ebp)
    a3da:	68 18 e8 00 00       	push   $0xe818
    a3df:	e8 62 79 ff ff       	call   1d46 <panic>
    a3e4:	83 c4 10             	add    $0x10,%esp
    a3e7:	8b 45 08             	mov    0x8(%ebp),%eax
    a3ea:	89 45 d0             	mov    %eax,-0x30(%ebp)
    a3ed:	83 ec 0c             	sub    $0xc,%esp
    a3f0:	ff 75 08             	pushl  0x8(%ebp)
    a3f3:	e8 da 20 00 00       	call   c4d2 <strlen>
    a3f8:	83 c4 10             	add    $0x10,%esp
    a3fb:	89 45 cc             	mov    %eax,-0x34(%ebp)
    a3fe:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a403:	c1 f8 09             	sar    $0x9,%eax
    a406:	89 c2                	mov    %eax,%edx
    a408:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a40b:	01 d0                	add    %edx,%eax
    a40d:	89 45 c8             	mov    %eax,-0x38(%ebp)
    a410:	e9 ca 00 00 00       	jmp    a4df <disklog+0x3d7>
    a415:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a41b:	e8 12 24 00 00       	call   c832 <getpid>
    a420:	89 c1                	mov    %eax,%ecx
    a422:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a425:	c1 e0 09             	shl    $0x9,%eax
    a428:	99                   	cltd   
    a429:	83 ec 04             	sub    $0x4,%esp
    a42c:	53                   	push   %ebx
    a42d:	51                   	push   %ecx
    a42e:	68 00 02 00 00       	push   $0x200
    a433:	52                   	push   %edx
    a434:	50                   	push   %eax
    a435:	ff 75 c4             	pushl  -0x3c(%ebp)
    a438:	68 eb 03 00 00       	push   $0x3eb
    a43d:	e8 ca db ff ff       	call   800c <rw_sector>
    a442:	83 c4 20             	add    $0x20,%esp
    a445:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a44a:	99                   	cltd   
    a44b:	c1 ea 17             	shr    $0x17,%edx
    a44e:	01 d0                	add    %edx,%eax
    a450:	25 ff 01 00 00       	and    $0x1ff,%eax
    a455:	29 d0                	sub    %edx,%eax
    a457:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a45a:	b8 00 02 00 00       	mov    $0x200,%eax
    a45f:	2b 45 a4             	sub    -0x5c(%ebp),%eax
    a462:	39 45 cc             	cmp    %eax,-0x34(%ebp)
    a465:	0f 4e 45 cc          	cmovle -0x34(%ebp),%eax
    a469:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a46c:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a472:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    a475:	01 d0                	add    %edx,%eax
    a477:	83 ec 04             	sub    $0x4,%esp
    a47a:	ff 75 a0             	pushl  -0x60(%ebp)
    a47d:	ff 75 d0             	pushl  -0x30(%ebp)
    a480:	50                   	push   %eax
    a481:	e8 ea 1f 00 00       	call   c470 <memcpy>
    a486:	83 c4 10             	add    $0x10,%esp
    a489:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a48c:	01 45 a4             	add    %eax,-0x5c(%ebp)
    a48f:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a492:	29 45 cc             	sub    %eax,-0x34(%ebp)
    a495:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a49b:	e8 92 23 00 00       	call   c832 <getpid>
    a4a0:	89 c1                	mov    %eax,%ecx
    a4a2:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a4a5:	c1 e0 09             	shl    $0x9,%eax
    a4a8:	99                   	cltd   
    a4a9:	83 ec 04             	sub    $0x4,%esp
    a4ac:	53                   	push   %ebx
    a4ad:	51                   	push   %ecx
    a4ae:	68 00 02 00 00       	push   $0x200
    a4b3:	52                   	push   %edx
    a4b4:	50                   	push   %eax
    a4b5:	ff 75 c4             	pushl  -0x3c(%ebp)
    a4b8:	68 ec 03 00 00       	push   $0x3ec
    a4bd:	e8 4a db ff ff       	call   800c <rw_sector>
    a4c2:	83 c4 20             	add    $0x20,%esp
    a4c5:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    a4c9:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a4cf:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a4d2:	01 d0                	add    %edx,%eax
    a4d4:	a3 e0 38 01 00       	mov    %eax,0x138e0
    a4d9:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a4dc:	01 45 d0             	add    %eax,-0x30(%ebp)
    a4df:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
    a4e3:	0f 85 2c ff ff ff    	jne    a415 <disklog+0x30d>
    a4e9:	c7 85 5c ff ff ff 04 	movl   $0x4,-0xa4(%ebp)
    a4f0:	00 00 00 
    a4f3:	8d 45 88             	lea    -0x78(%ebp),%eax
    a4f6:	89 45 84             	mov    %eax,-0x7c(%ebp)
    a4f9:	83 ec 04             	sub    $0x4,%esp
    a4fc:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    a502:	50                   	push   %eax
    a503:	6a 01                	push   $0x1
    a505:	6a 03                	push   $0x3
    a507:	e8 dc 1f 00 00       	call   c4e8 <send_recv>
    a50c:	83 c4 10             	add    $0x10,%esp
    a50f:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a515:	e8 18 23 00 00       	call   c832 <getpid>
    a51a:	89 c1                	mov    %eax,%ecx
    a51c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a51f:	c1 e0 09             	shl    $0x9,%eax
    a522:	99                   	cltd   
    a523:	83 ec 04             	sub    $0x4,%esp
    a526:	53                   	push   %ebx
    a527:	51                   	push   %ecx
    a528:	68 00 02 00 00       	push   $0x200
    a52d:	52                   	push   %edx
    a52e:	50                   	push   %eax
    a52f:	ff 75 c4             	pushl  -0x3c(%ebp)
    a532:	68 eb 03 00 00       	push   $0x3eb
    a537:	e8 d0 da ff ff       	call   800c <rw_sector>
    a53c:	83 c4 20             	add    $0x20,%esp
    a53f:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a545:	a1 10 28 01 00       	mov    0x12810,%eax
    a54a:	83 ec 04             	sub    $0x4,%esp
    a54d:	52                   	push   %edx
    a54e:	68 3d e8 00 00       	push   $0xe83d
    a553:	50                   	push   %eax
    a554:	e8 e8 1e 00 00       	call   c441 <sprintf>
    a559:	83 c4 10             	add    $0x10,%esp
    a55c:	a1 10 28 01 00       	mov    0x12810,%eax
    a561:	83 c0 09             	add    $0x9,%eax
    a564:	83 ec 04             	sub    $0x4,%esp
    a567:	6a 16                	push   $0x16
    a569:	6a 20                	push   $0x20
    a56b:	50                   	push   %eax
    a56c:	e8 28 1f 00 00       	call   c499 <memset>
    a571:	83 c4 10             	add    $0x10,%esp
    a574:	a1 10 28 01 00       	mov    0x12810,%eax
    a579:	83 c0 1f             	add    $0x1f,%eax
    a57c:	c6 00 0a             	movb   $0xa,(%eax)
    a57f:	8b 45 9c             	mov    -0x64(%ebp),%eax
    a582:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
    a588:	8b 7d 98             	mov    -0x68(%ebp),%edi
    a58b:	8b 75 94             	mov    -0x6c(%ebp),%esi
    a58e:	8b 5d 90             	mov    -0x70(%ebp),%ebx
    a591:	8b 4d 8c             	mov    -0x74(%ebp),%ecx
    a594:	8b 55 88             	mov    -0x78(%ebp),%edx
    a597:	a1 10 28 01 00       	mov    0x12810,%eax
    a59c:	83 c0 20             	add    $0x20,%eax
    a59f:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
    a5a5:	57                   	push   %edi
    a5a6:	56                   	push   %esi
    a5a7:	53                   	push   %ebx
    a5a8:	51                   	push   %ecx
    a5a9:	52                   	push   %edx
    a5aa:	68 44 e8 00 00       	push   $0xe844
    a5af:	50                   	push   %eax
    a5b0:	e8 8c 1e 00 00       	call   c441 <sprintf>
    a5b5:	83 c4 20             	add    $0x20,%esp
    a5b8:	a1 10 28 01 00       	mov    0x12810,%eax
    a5bd:	83 c0 36             	add    $0x36,%eax
    a5c0:	83 ec 04             	sub    $0x4,%esp
    a5c3:	6a 09                	push   $0x9
    a5c5:	6a 20                	push   $0x20
    a5c7:	50                   	push   %eax
    a5c8:	e8 cc 1e 00 00       	call   c499 <memset>
    a5cd:	83 c4 10             	add    $0x10,%esp
    a5d0:	a1 10 28 01 00       	mov    0x12810,%eax
    a5d5:	83 c0 3f             	add    $0x3f,%eax
    a5d8:	c6 00 0a             	movb   $0xa,(%eax)
    a5db:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a5e1:	e8 4c 22 00 00       	call   c832 <getpid>
    a5e6:	89 c1                	mov    %eax,%ecx
    a5e8:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5eb:	c1 e0 09             	shl    $0x9,%eax
    a5ee:	99                   	cltd   
    a5ef:	83 ec 04             	sub    $0x4,%esp
    a5f2:	53                   	push   %ebx
    a5f3:	51                   	push   %ecx
    a5f4:	68 00 02 00 00       	push   $0x200
    a5f9:	52                   	push   %edx
    a5fa:	50                   	push   %eax
    a5fb:	ff 75 c4             	pushl  -0x3c(%ebp)
    a5fe:	68 ec 03 00 00       	push   $0x3ec
    a603:	e8 04 da ff ff       	call   800c <rw_sector>
    a608:	83 c4 20             	add    $0x20,%esp
    a60b:	a1 10 28 01 00       	mov    0x12810,%eax
    a610:	83 c0 33             	add    $0x33,%eax
    a613:	0f b6 00             	movzbl (%eax),%eax
    a616:	0f be c0             	movsbl %al,%eax
    a619:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a61f:	83 c2 40             	add    $0x40,%edx
    a622:	83 ec 04             	sub    $0x4,%esp
    a625:	68 c0 01 00 00       	push   $0x1c0
    a62a:	50                   	push   %eax
    a62b:	52                   	push   %edx
    a62c:	e8 68 1e 00 00       	call   c499 <memset>
    a631:	83 c4 10             	add    $0x10,%esp
    a634:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a63a:	e8 f3 21 00 00       	call   c832 <getpid>
    a63f:	89 c1                	mov    %eax,%ecx
    a641:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a644:	05 ff 07 00 00       	add    $0x7ff,%eax
    a649:	c1 e0 09             	shl    $0x9,%eax
    a64c:	99                   	cltd   
    a64d:	83 ec 04             	sub    $0x4,%esp
    a650:	53                   	push   %ebx
    a651:	51                   	push   %ecx
    a652:	68 00 02 00 00       	push   $0x200
    a657:	52                   	push   %edx
    a658:	50                   	push   %eax
    a659:	ff 75 c4             	pushl  -0x3c(%ebp)
    a65c:	68 ec 03 00 00       	push   $0x3ec
    a661:	e8 a6 d9 ff ff       	call   800c <rw_sector>
    a666:	83 c4 20             	add    $0x20,%esp
    a669:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a66e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a671:	5b                   	pop    %ebx
    a672:	5e                   	pop    %esi
    a673:	5f                   	pop    %edi
    a674:	5d                   	pop    %ebp
    a675:	c3                   	ret    

0000a676 <dump_fd_graph>:
    a676:	55                   	push   %ebp
    a677:	89 e5                	mov    %esp,%ebp
    a679:	57                   	push   %edi
    a67a:	56                   	push   %esi
    a67b:	53                   	push   %ebx
    a67c:	81 ec 5c 30 00 00    	sub    $0x305c,%esp
    a682:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a689:	8d 45 0c             	lea    0xc(%ebp),%eax
    a68c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a68f:	8b 45 08             	mov    0x8(%ebp),%eax
    a692:	83 ec 04             	sub    $0x4,%esp
    a695:	ff 75 a4             	pushl  -0x5c(%ebp)
    a698:	50                   	push   %eax
    a699:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a69f:	50                   	push   %eax
    a6a0:	e8 1f 1b 00 00       	call   c1c4 <vsprintf>
    a6a5:	83 c4 10             	add    $0x10,%esp
    a6a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a6ab:	83 ec 0c             	sub    $0xc,%esp
    a6ae:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a6b4:	50                   	push   %eax
    a6b5:	e8 18 1e 00 00       	call   c4d2 <strlen>
    a6ba:	83 c4 10             	add    $0x10,%esp
    a6bd:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    a6c0:	74 1c                	je     a6de <dump_fd_graph+0x68>
    a6c2:	68 21 01 00 00       	push   $0x121
    a6c7:	68 bc e7 00 00       	push   $0xe7bc
    a6cc:	68 bc e7 00 00       	push   $0xe7bc
    a6d1:	68 63 e8 00 00       	push   $0xe863
    a6d6:	e8 22 20 00 00       	call   c6fd <assertion_failure>
    a6db:	83 c4 10             	add    $0x10,%esp
    a6de:	83 ec 08             	sub    $0x8,%esp
    a6e1:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a6e7:	50                   	push   %eax
    a6e8:	68 76 e8 00 00       	push   $0xe876
    a6ed:	e8 2a 1a 00 00       	call   c11c <printl>
    a6f2:	83 c4 10             	add    $0x10,%esp
    a6f5:	e8 38 21 00 00       	call   c832 <getpid>
    a6fa:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a6fd:	83 ec 0c             	sub    $0xc,%esp
    a700:	68 89 e8 00 00       	push   $0xe889
    a705:	e8 12 1a 00 00       	call   c11c <printl>
    a70a:	83 c4 10             	add    $0x10,%esp
    a70d:	e8 cb bf ff ff       	call   66dd <disable_int>
    a712:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a719:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a720:	eb 6a                	jmp    a78c <dump_fd_graph+0x116>
    a722:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a725:	8b 40 74             	mov    0x74(%eax),%eax
    a728:	83 f8 20             	cmp    $0x20,%eax
    a72b:	74 50                	je     a77d <dump_fd_graph+0x107>
    a72d:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    a731:	74 4d                	je     a780 <dump_fd_graph+0x10a>
    a733:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    a737:	74 47                	je     a780 <dump_fd_graph+0x10a>
    a739:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    a73d:	74 41                	je     a780 <dump_fd_graph+0x10a>
    a73f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a742:	3b 45 a0             	cmp    -0x60(%ebp),%eax
    a745:	74 39                	je     a780 <dump_fd_graph+0x10a>
    a747:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a74a:	8b 50 5c             	mov    0x5c(%eax),%edx
    a74d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a750:	89 94 85 cc fa ff ff 	mov    %edx,-0x534(%ebp,%eax,4)
    a757:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a75a:	8b 50 60             	mov    0x60(%eax),%edx
    a75d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a760:	89 94 85 38 fa ff ff 	mov    %edx,-0x5c8(%ebp,%eax,4)
    a767:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a76a:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
    a771:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a774:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
    a77b:	eb 04                	jmp    a781 <dump_fd_graph+0x10b>
    a77d:	90                   	nop
    a77e:	eb 01                	jmp    a781 <dump_fd_graph+0x10b>
    a780:	90                   	nop
    a781:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a785:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    a78c:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    a790:	7e 90                	jle    a722 <dump_fd_graph+0xac>
    a792:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a799:	eb 12                	jmp    a7ad <dump_fd_graph+0x137>
    a79b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a79e:	c7 84 85 a8 f9 ff ff 	movl   $0xe88c,-0x658(%ebp,%eax,4)
    a7a5:	8c e8 00 00 
    a7a9:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a7ad:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a7b0:	83 f8 1f             	cmp    $0x1f,%eax
    a7b3:	76 e6                	jbe    a79b <dump_fd_graph+0x125>
    a7b5:	c7 85 a8 f9 ff ff 9c 	movl   $0xe89c,-0x658(%ebp)
    a7bc:	e8 00 00 
    a7bf:	c7 85 b0 f9 ff ff a4 	movl   $0xe8a4,-0x650(%ebp)
    a7c6:	e8 00 00 
    a7c9:	c7 85 b8 f9 ff ff ac 	movl   $0xe8ac,-0x648(%ebp)
    a7d0:	e8 00 00 
    a7d3:	c7 85 c8 f9 ff ff b6 	movl   $0xe8b6,-0x638(%ebp)
    a7da:	e8 00 00 
    a7dd:	c7 85 e8 f9 ff ff be 	movl   $0xe8be,-0x618(%ebp)
    a7e4:	e8 00 00 
    a7e7:	c7 85 28 fa ff ff c6 	movl   $0xe8c6,-0x5d8(%ebp)
    a7ee:	e8 00 00 
    a7f1:	c7 85 d0 f9 ff ff d0 	movl   $0xe8d0,-0x630(%ebp)
    a7f8:	e8 00 00 
    a7fb:	c7 85 d8 f9 ff ff e1 	movl   $0xe8e1,-0x628(%ebp)
    a802:	e8 00 00 
    a805:	c7 85 f8 f9 ff ff f4 	movl   $0xe8f4,-0x608(%ebp)
    a80c:	e8 00 00 
    a80f:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a816:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    a81d:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    a824:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    a82b:	83 ec 0c             	sub    $0xc,%esp
    a82e:	68 07 e9 00 00       	push   $0xe907
    a833:	e8 e4 18 00 00       	call   c11c <printl>
    a838:	83 c4 10             	add    $0x10,%esp
    a83b:	a1 e4 38 01 00       	mov    0x138e4,%eax
    a840:	8d 50 01             	lea    0x1(%eax),%edx
    a843:	89 15 e4 38 01 00    	mov    %edx,0x138e4
    a849:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    a84f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    a852:	01 ca                	add    %ecx,%edx
    a854:	83 ec 04             	sub    $0x4,%esp
    a857:	50                   	push   %eax
    a858:	68 0b e9 00 00       	push   $0xe90b
    a85d:	52                   	push   %edx
    a85e:	e8 de 1b 00 00       	call   c441 <sprintf>
    a863:	83 c4 10             	add    $0x10,%esp
    a866:	01 45 e0             	add    %eax,-0x20(%ebp)
    a869:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a86f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a872:	01 d0                	add    %edx,%eax
    a874:	83 ec 08             	sub    $0x8,%esp
    a877:	68 23 e9 00 00       	push   $0xe923
    a87c:	50                   	push   %eax
    a87d:	e8 bf 1b 00 00       	call   c441 <sprintf>
    a882:	83 c4 10             	add    $0x10,%esp
    a885:	01 45 e0             	add    %eax,-0x20(%ebp)
    a888:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a88e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a891:	01 d0                	add    %edx,%eax
    a893:	83 ec 08             	sub    $0x8,%esp
    a896:	68 2d e9 00 00       	push   $0xe92d
    a89b:	50                   	push   %eax
    a89c:	e8 a0 1b 00 00       	call   c441 <sprintf>
    a8a1:	83 c4 10             	add    $0x10,%esp
    a8a4:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8a7:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8ad:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8b0:	01 d0                	add    %edx,%eax
    a8b2:	83 ec 08             	sub    $0x8,%esp
    a8b5:	68 3f e9 00 00       	push   $0xe93f
    a8ba:	50                   	push   %eax
    a8bb:	e8 81 1b 00 00       	call   c441 <sprintf>
    a8c0:	83 c4 10             	add    $0x10,%esp
    a8c3:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8c6:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8cc:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8cf:	01 d0                	add    %edx,%eax
    a8d1:	83 ec 08             	sub    $0x8,%esp
    a8d4:	68 44 e9 00 00       	push   $0xe944
    a8d9:	50                   	push   %eax
    a8da:	e8 62 1b 00 00       	call   c441 <sprintf>
    a8df:	83 c4 10             	add    $0x10,%esp
    a8e2:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8e5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8ee:	01 d0                	add    %edx,%eax
    a8f0:	83 ec 08             	sub    $0x8,%esp
    a8f3:	68 4d e9 00 00       	push   $0xe94d
    a8f8:	50                   	push   %eax
    a8f9:	e8 43 1b 00 00       	call   c441 <sprintf>
    a8fe:	83 c4 10             	add    $0x10,%esp
    a901:	01 45 e0             	add    %eax,-0x20(%ebp)
    a904:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a90a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a90d:	01 d0                	add    %edx,%eax
    a90f:	83 ec 08             	sub    $0x8,%esp
    a912:	68 60 e9 00 00       	push   $0xe960
    a917:	50                   	push   %eax
    a918:	e8 24 1b 00 00       	call   c441 <sprintf>
    a91d:	83 c4 10             	add    $0x10,%esp
    a920:	01 45 e0             	add    %eax,-0x20(%ebp)
    a923:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a929:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a92c:	01 d0                	add    %edx,%eax
    a92e:	83 ec 08             	sub    $0x8,%esp
    a931:	68 3f e9 00 00       	push   $0xe93f
    a936:	50                   	push   %eax
    a937:	e8 05 1b 00 00       	call   c441 <sprintf>
    a93c:	83 c4 10             	add    $0x10,%esp
    a93f:	01 45 e0             	add    %eax,-0x20(%ebp)
    a942:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a948:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a94b:	01 d0                	add    %edx,%eax
    a94d:	83 ec 08             	sub    $0x8,%esp
    a950:	68 75 e9 00 00       	push   $0xe975
    a955:	50                   	push   %eax
    a956:	e8 e6 1a 00 00       	call   c441 <sprintf>
    a95b:	83 c4 10             	add    $0x10,%esp
    a95e:	01 45 e0             	add    %eax,-0x20(%ebp)
    a961:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a967:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a96a:	01 d0                	add    %edx,%eax
    a96c:	83 ec 08             	sub    $0x8,%esp
    a96f:	68 3f e9 00 00       	push   $0xe93f
    a974:	50                   	push   %eax
    a975:	e8 c7 1a 00 00       	call   c441 <sprintf>
    a97a:	83 c4 10             	add    $0x10,%esp
    a97d:	01 45 e0             	add    %eax,-0x20(%ebp)
    a980:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a987:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a98d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a990:	01 d0                	add    %edx,%eax
    a992:	83 ec 08             	sub    $0x8,%esp
    a995:	68 7e e9 00 00       	push   $0xe97e
    a99a:	50                   	push   %eax
    a99b:	e8 a1 1a 00 00       	call   c441 <sprintf>
    a9a0:	83 c4 10             	add    $0x10,%esp
    a9a3:	01 45 e0             	add    %eax,-0x20(%ebp)
    a9a6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a9ad:	e9 f7 02 00 00       	jmp    aca9 <dump_fd_graph+0x633>
    a9b2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9b5:	8b 40 74             	mov    0x74(%eax),%eax
    a9b8:	83 f8 20             	cmp    $0x20,%eax
    a9bb:	0f 84 dc 02 00 00    	je     ac9d <dump_fd_graph+0x627>
    a9c1:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9c4:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    a9ca:	83 f8 39             	cmp    $0x39,%eax
    a9cd:	74 24                	je     a9f3 <dump_fd_graph+0x37d>
    a9cf:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a9d2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a9d5:	89 94 c5 a8 f1 ff ff 	mov    %edx,-0xe58(%ebp,%eax,8)
    a9dc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9df:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    a9e5:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a9e8:	89 94 c5 ac f1 ff ff 	mov    %edx,-0xe54(%ebp,%eax,8)
    a9ef:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a9f3:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9f6:	8b 40 74             	mov    0x74(%eax),%eax
    a9f9:	83 e0 04             	and    $0x4,%eax
    a9fc:	85 c0                	test   %eax,%eax
    a9fe:	74 69                	je     aa69 <dump_fd_graph+0x3f3>
    aa00:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa03:	8b 48 7c             	mov    0x7c(%eax),%ecx
    aa06:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa09:	89 d0                	mov    %edx,%eax
    aa0b:	01 c0                	add    %eax,%eax
    aa0d:	01 d0                	add    %edx,%eax
    aa0f:	c1 e0 02             	shl    $0x2,%eax
    aa12:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa15:	01 f8                	add    %edi,%eax
    aa17:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    aa1c:	89 08                	mov    %ecx,(%eax)
    aa1e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa21:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    aa26:	c1 f8 03             	sar    $0x3,%eax
    aa29:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    aa2f:	89 c1                	mov    %eax,%ecx
    aa31:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa34:	89 d0                	mov    %edx,%eax
    aa36:	01 c0                	add    %eax,%eax
    aa38:	01 d0                	add    %edx,%eax
    aa3a:	c1 e0 02             	shl    $0x2,%eax
    aa3d:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa40:	01 f8                	add    %edi,%eax
    aa42:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    aa47:	89 08                	mov    %ecx,(%eax)
    aa49:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa4c:	89 d0                	mov    %edx,%eax
    aa4e:	01 c0                	add    %eax,%eax
    aa50:	01 d0                	add    %edx,%eax
    aa52:	c1 e0 02             	shl    $0x2,%eax
    aa55:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa58:	01 f8                	add    %edi,%eax
    aa5a:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    aa5f:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
    aa65:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    aa69:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa6c:	8b 40 74             	mov    0x74(%eax),%eax
    aa6f:	83 e0 02             	and    $0x2,%eax
    aa72:	85 c0                	test   %eax,%eax
    aa74:	74 6c                	je     aae2 <dump_fd_graph+0x46c>
    aa76:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa79:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    aa7e:	c1 f8 03             	sar    $0x3,%eax
    aa81:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    aa87:	89 c1                	mov    %eax,%ecx
    aa89:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa8c:	89 d0                	mov    %edx,%eax
    aa8e:	01 c0                	add    %eax,%eax
    aa90:	01 d0                	add    %edx,%eax
    aa92:	c1 e0 02             	shl    $0x2,%eax
    aa95:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa98:	01 f8                	add    %edi,%eax
    aa9a:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    aa9f:	89 08                	mov    %ecx,(%eax)
    aaa1:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aaa4:	8b 88 80 00 00 00    	mov    0x80(%eax),%ecx
    aaaa:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aaad:	89 d0                	mov    %edx,%eax
    aaaf:	01 c0                	add    %eax,%eax
    aab1:	01 d0                	add    %edx,%eax
    aab3:	c1 e0 02             	shl    $0x2,%eax
    aab6:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aab9:	01 f8                	add    %edi,%eax
    aabb:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    aac0:	89 08                	mov    %ecx,(%eax)
    aac2:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aac5:	89 d0                	mov    %edx,%eax
    aac7:	01 c0                	add    %eax,%eax
    aac9:	01 d0                	add    %edx,%eax
    aacb:	c1 e0 02             	shl    $0x2,%eax
    aace:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aad1:	01 f8                	add    %edi,%eax
    aad3:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    aad8:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
    aade:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    aae2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aae5:	8b 78 34             	mov    0x34(%eax),%edi
    aae8:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aaeb:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    aaf1:	83 f8 39             	cmp    $0x39,%eax
    aaf4:	75 0c                	jne    ab02 <dump_fd_graph+0x48c>
    aaf6:	c7 85 a4 cf ff ff 96 	movl   $0xe996,-0x305c(%ebp)
    aafd:	e9 00 00 
    ab00:	eb 0a                	jmp    ab0c <dump_fd_graph+0x496>
    ab02:	c7 85 a4 cf ff ff a0 	movl   $0xe9a0,-0x305c(%ebp)
    ab09:	e9 00 00 
    ab0c:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab0f:	8b b0 90 00 00 00    	mov    0x90(%eax),%esi
    ab15:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab18:	8b 40 74             	mov    0x74(%eax),%eax
    ab1b:	8b 9c 85 a8 f9 ff ff 	mov    -0x658(%ebp,%eax,4),%ebx
    ab22:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab25:	8b 48 74             	mov    0x74(%eax),%ecx
    ab28:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab2b:	83 c0 64             	add    $0x64,%eax
    ab2e:	89 85 a0 cf ff ff    	mov    %eax,-0x3060(%ebp)
    ab34:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab3a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab3d:	01 d0                	add    %edx,%eax
    ab3f:	83 ec 08             	sub    $0x8,%esp
    ab42:	57                   	push   %edi
    ab43:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    ab49:	56                   	push   %esi
    ab4a:	53                   	push   %ebx
    ab4b:	51                   	push   %ecx
    ab4c:	ff 75 e4             	pushl  -0x1c(%ebp)
    ab4f:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    ab55:	ff 75 e4             	pushl  -0x1c(%ebp)
    ab58:	68 a4 e9 00 00       	push   $0xe9a4
    ab5d:	50                   	push   %eax
    ab5e:	e8 de 18 00 00       	call   c441 <sprintf>
    ab63:	83 c4 30             	add    $0x30,%esp
    ab66:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab69:	c7 45 c4 03 00 00 00 	movl   $0x3,-0x3c(%ebp)
    ab70:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    ab77:	e9 b8 00 00 00       	jmp    ac34 <dump_fd_graph+0x5be>
    ab7c:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab7f:	8b 55 c8             	mov    -0x38(%ebp),%edx
    ab82:	83 c2 24             	add    $0x24,%edx
    ab85:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    ab89:	85 c0                	test   %eax,%eax
    ab8b:	0f 84 9e 00 00 00    	je     ac2f <dump_fd_graph+0x5b9>
    ab91:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab94:	8b 55 c8             	mov    -0x38(%ebp),%edx
    ab97:	83 c2 24             	add    $0x24,%edx
    ab9a:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    ab9e:	2d a0 95 03 00       	sub    $0x395a0,%eax
    aba3:	c1 f8 04             	sar    $0x4,%eax
    aba6:	89 45 9c             	mov    %eax,-0x64(%ebp)
    aba9:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    abaf:	8b 45 e0             	mov    -0x20(%ebp),%eax
    abb2:	01 d0                	add    %edx,%eax
    abb4:	83 ec 0c             	sub    $0xc,%esp
    abb7:	ff 75 9c             	pushl  -0x64(%ebp)
    abba:	ff 75 c8             	pushl  -0x38(%ebp)
    abbd:	ff 75 c4             	pushl  -0x3c(%ebp)
    abc0:	68 ff e9 00 00       	push   $0xe9ff
    abc5:	50                   	push   %eax
    abc6:	e8 76 18 00 00       	call   c441 <sprintf>
    abcb:	83 c4 20             	add    $0x20,%esp
    abce:	01 45 e0             	add    %eax,-0x20(%ebp)
    abd1:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    abd4:	89 d0                	mov    %edx,%eax
    abd6:	01 c0                	add    %eax,%eax
    abd8:	01 d0                	add    %edx,%eax
    abda:	c1 e0 02             	shl    $0x2,%eax
    abdd:	8d 75 e8             	lea    -0x18(%ebp),%esi
    abe0:	01 f0                	add    %esi,%eax
    abe2:	8d 90 c0 e5 ff ff    	lea    -0x1a40(%eax),%edx
    abe8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    abeb:	89 02                	mov    %eax,(%edx)
    abed:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    abf0:	89 d0                	mov    %edx,%eax
    abf2:	01 c0                	add    %eax,%eax
    abf4:	01 d0                	add    %edx,%eax
    abf6:	c1 e0 02             	shl    $0x2,%eax
    abf9:	8d 7d e8             	lea    -0x18(%ebp),%edi
    abfc:	01 f8                	add    %edi,%eax
    abfe:	8d 90 c4 e5 ff ff    	lea    -0x1a3c(%eax),%edx
    ac04:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    ac07:	89 02                	mov    %eax,(%edx)
    ac09:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    ac0c:	89 d0                	mov    %edx,%eax
    ac0e:	01 c0                	add    %eax,%eax
    ac10:	01 d0                	add    %edx,%eax
    ac12:	c1 e0 02             	shl    $0x2,%eax
    ac15:	8d 75 e8             	lea    -0x18(%ebp),%esi
    ac18:	01 f0                	add    %esi,%eax
    ac1a:	8d 90 c8 e5 ff ff    	lea    -0x1a38(%eax),%edx
    ac20:	8b 45 9c             	mov    -0x64(%ebp),%eax
    ac23:	89 02                	mov    %eax,(%edx)
    ac25:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    ac29:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    ac2d:	eb 01                	jmp    ac30 <dump_fd_graph+0x5ba>
    ac2f:	90                   	nop
    ac30:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    ac34:	83 7d c8 3f          	cmpl   $0x3f,-0x38(%ebp)
    ac38:	0f 8e 3e ff ff ff    	jle    ab7c <dump_fd_graph+0x506>
    ac3e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac44:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac47:	01 d0                	add    %edx,%eax
    ac49:	83 ec 08             	sub    $0x8,%esp
    ac4c:	68 14 ea 00 00       	push   $0xea14
    ac51:	50                   	push   %eax
    ac52:	e8 ea 17 00 00       	call   c441 <sprintf>
    ac57:	83 c4 10             	add    $0x10,%esp
    ac5a:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac5d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac63:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac66:	01 d0                	add    %edx,%eax
    ac68:	83 ec 08             	sub    $0x8,%esp
    ac6b:	68 18 ea 00 00       	push   $0xea18
    ac70:	50                   	push   %eax
    ac71:	e8 cb 17 00 00       	call   c441 <sprintf>
    ac76:	83 c4 10             	add    $0x10,%esp
    ac79:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac7c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac82:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac85:	01 d0                	add    %edx,%eax
    ac87:	83 ec 08             	sub    $0x8,%esp
    ac8a:	68 2d ea 00 00       	push   $0xea2d
    ac8f:	50                   	push   %eax
    ac90:	e8 ac 17 00 00       	call   c441 <sprintf>
    ac95:	83 c4 10             	add    $0x10,%esp
    ac98:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac9b:	eb 01                	jmp    ac9e <dump_fd_graph+0x628>
    ac9d:	90                   	nop
    ac9e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    aca2:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    aca9:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    acad:	0f 8e ff fc ff ff    	jle    a9b2 <dump_fd_graph+0x33c>
    acb3:	c7 45 e4 2f 00 00 00 	movl   $0x2f,-0x1c(%ebp)
    acba:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    acc0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    acc3:	01 d0                	add    %edx,%eax
    acc5:	83 ec 04             	sub    $0x4,%esp
    acc8:	ff 75 e4             	pushl  -0x1c(%ebp)
    accb:	68 33 ea 00 00       	push   $0xea33
    acd0:	50                   	push   %eax
    acd1:	e8 6b 17 00 00       	call   c441 <sprintf>
    acd6:	83 c4 10             	add    $0x10,%esp
    acd9:	01 45 e0             	add    %eax,-0x20(%ebp)
    acdc:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ace2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ace5:	01 d0                	add    %edx,%eax
    ace7:	83 ec 08             	sub    $0x8,%esp
    acea:	68 41 ea 00 00       	push   $0xea41
    acef:	50                   	push   %eax
    acf0:	e8 4c 17 00 00       	call   c441 <sprintf>
    acf5:	83 c4 10             	add    $0x10,%esp
    acf8:	01 45 e0             	add    %eax,-0x20(%ebp)
    acfb:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad01:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad04:	01 d0                	add    %edx,%eax
    ad06:	83 ec 08             	sub    $0x8,%esp
    ad09:	68 14 ea 00 00       	push   $0xea14
    ad0e:	50                   	push   %eax
    ad0f:	e8 2d 17 00 00       	call   c441 <sprintf>
    ad14:	83 c4 10             	add    $0x10,%esp
    ad17:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad1a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad20:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad23:	01 d0                	add    %edx,%eax
    ad25:	83 ec 08             	sub    $0x8,%esp
    ad28:	68 18 ea 00 00       	push   $0xea18
    ad2d:	50                   	push   %eax
    ad2e:	e8 0e 17 00 00       	call   c441 <sprintf>
    ad33:	83 c4 10             	add    $0x10,%esp
    ad36:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad39:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad3f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad42:	01 d0                	add    %edx,%eax
    ad44:	83 ec 08             	sub    $0x8,%esp
    ad47:	68 2d ea 00 00       	push   $0xea2d
    ad4c:	50                   	push   %eax
    ad4d:	e8 ef 16 00 00       	call   c441 <sprintf>
    ad52:	83 c4 10             	add    $0x10,%esp
    ad55:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad58:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad5e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad61:	01 d0                	add    %edx,%eax
    ad63:	83 ec 08             	sub    $0x8,%esp
    ad66:	68 5c ea 00 00       	push   $0xea5c
    ad6b:	50                   	push   %eax
    ad6c:	e8 d0 16 00 00       	call   c441 <sprintf>
    ad71:	83 c4 10             	add    $0x10,%esp
    ad74:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad77:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad7d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad80:	01 d0                	add    %edx,%eax
    ad82:	83 ec 08             	sub    $0x8,%esp
    ad85:	68 70 ea 00 00       	push   $0xea70
    ad8a:	50                   	push   %eax
    ad8b:	e8 b1 16 00 00       	call   c441 <sprintf>
    ad90:	83 c4 10             	add    $0x10,%esp
    ad93:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad96:	83 ec 0c             	sub    $0xc,%esp
    ad99:	68 74 ea 00 00       	push   $0xea74
    ad9e:	e8 79 13 00 00       	call   c11c <printl>
    ada3:	83 c4 10             	add    $0x10,%esp
    ada6:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    adac:	8b 45 e0             	mov    -0x20(%ebp),%eax
    adaf:	01 d0                	add    %edx,%eax
    adb1:	83 ec 08             	sub    $0x8,%esp
    adb4:	68 76 ea 00 00       	push   $0xea76
    adb9:	50                   	push   %eax
    adba:	e8 82 16 00 00       	call   c441 <sprintf>
    adbf:	83 c4 10             	add    $0x10,%esp
    adc2:	01 45 e0             	add    %eax,-0x20(%ebp)
    adc5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    adcc:	e9 26 01 00 00       	jmp    aef7 <dump_fd_graph+0x881>
    add1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    add4:	c1 e0 04             	shl    $0x4,%eax
    add7:	05 ac 95 03 00       	add    $0x395ac,%eax
    addc:	8b 00                	mov    (%eax),%eax
    adde:	85 c0                	test   %eax,%eax
    ade0:	0f 84 0c 01 00 00    	je     aef2 <dump_fd_graph+0x87c>
    ade6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ade9:	c1 e0 04             	shl    $0x4,%eax
    adec:	05 ac 95 03 00       	add    $0x395ac,%eax
    adf1:	8b 00                	mov    (%eax),%eax
    adf3:	2d 20 39 01 00       	sub    $0x13920,%eax
    adf8:	c1 f8 02             	sar    $0x2,%eax
    adfb:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
    ae01:	89 45 98             	mov    %eax,-0x68(%ebp)
    ae04:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae0d:	01 d0                	add    %edx,%eax
    ae0f:	83 ec 04             	sub    $0x4,%esp
    ae12:	ff 75 e4             	pushl  -0x1c(%ebp)
    ae15:	68 8e ea 00 00       	push   $0xea8e
    ae1a:	50                   	push   %eax
    ae1b:	e8 21 16 00 00       	call   c441 <sprintf>
    ae20:	83 c4 10             	add    $0x10,%esp
    ae23:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae26:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae29:	c1 e0 04             	shl    $0x4,%eax
    ae2c:	05 a8 95 03 00       	add    $0x395a8,%eax
    ae31:	8b 08                	mov    (%eax),%ecx
    ae33:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae36:	c1 e0 04             	shl    $0x4,%eax
    ae39:	05 a4 95 03 00       	add    $0x395a4,%eax
    ae3e:	8b 10                	mov    (%eax),%edx
    ae40:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae43:	c1 e0 04             	shl    $0x4,%eax
    ae46:	05 a0 95 03 00       	add    $0x395a0,%eax
    ae4b:	8b 00                	mov    (%eax),%eax
    ae4d:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    ae53:	8b 5d e0             	mov    -0x20(%ebp),%ebx
    ae56:	01 f3                	add    %esi,%ebx
    ae58:	83 ec 04             	sub    $0x4,%esp
    ae5b:	ff 75 98             	pushl  -0x68(%ebp)
    ae5e:	51                   	push   %ecx
    ae5f:	52                   	push   %edx
    ae60:	50                   	push   %eax
    ae61:	ff 75 e4             	pushl  -0x1c(%ebp)
    ae64:	68 a0 ea 00 00       	push   $0xeaa0
    ae69:	53                   	push   %ebx
    ae6a:	e8 d2 15 00 00       	call   c441 <sprintf>
    ae6f:	83 c4 20             	add    $0x20,%esp
    ae72:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae75:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ae78:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    ae7b:	89 94 c5 a8 dd ff ff 	mov    %edx,-0x2258(%ebp,%eax,8)
    ae82:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ae85:	8b 55 98             	mov    -0x68(%ebp),%edx
    ae88:	89 94 c5 ac dd ff ff 	mov    %edx,-0x2254(%ebp,%eax,8)
    ae8f:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
    ae93:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae99:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae9c:	01 d0                	add    %edx,%eax
    ae9e:	83 ec 08             	sub    $0x8,%esp
    aea1:	68 14 ea 00 00       	push   $0xea14
    aea6:	50                   	push   %eax
    aea7:	e8 95 15 00 00       	call   c441 <sprintf>
    aeac:	83 c4 10             	add    $0x10,%esp
    aeaf:	01 45 e0             	add    %eax,-0x20(%ebp)
    aeb2:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aeb8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aebb:	01 d0                	add    %edx,%eax
    aebd:	83 ec 08             	sub    $0x8,%esp
    aec0:	68 18 ea 00 00       	push   $0xea18
    aec5:	50                   	push   %eax
    aec6:	e8 76 15 00 00       	call   c441 <sprintf>
    aecb:	83 c4 10             	add    $0x10,%esp
    aece:	01 45 e0             	add    %eax,-0x20(%ebp)
    aed1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aed7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aeda:	01 d0                	add    %edx,%eax
    aedc:	83 ec 08             	sub    $0x8,%esp
    aedf:	68 2d ea 00 00       	push   $0xea2d
    aee4:	50                   	push   %eax
    aee5:	e8 57 15 00 00       	call   c441 <sprintf>
    aeea:	83 c4 10             	add    $0x10,%esp
    aeed:	01 45 e0             	add    %eax,-0x20(%ebp)
    aef0:	eb 01                	jmp    aef3 <dump_fd_graph+0x87d>
    aef2:	90                   	nop
    aef3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    aef7:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    aefb:	0f 8e d0 fe ff ff    	jle    add1 <dump_fd_graph+0x75b>
    af01:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af07:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af0a:	01 d0                	add    %edx,%eax
    af0c:	83 ec 08             	sub    $0x8,%esp
    af0f:	68 fb ea 00 00       	push   $0xeafb
    af14:	50                   	push   %eax
    af15:	e8 27 15 00 00       	call   c441 <sprintf>
    af1a:	83 c4 10             	add    $0x10,%esp
    af1d:	01 45 e0             	add    %eax,-0x20(%ebp)
    af20:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af26:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af29:	01 d0                	add    %edx,%eax
    af2b:	83 ec 08             	sub    $0x8,%esp
    af2e:	68 70 ea 00 00       	push   $0xea70
    af33:	50                   	push   %eax
    af34:	e8 08 15 00 00       	call   c441 <sprintf>
    af39:	83 c4 10             	add    $0x10,%esp
    af3c:	01 45 e0             	add    %eax,-0x20(%ebp)
    af3f:	83 ec 0c             	sub    $0xc,%esp
    af42:	68 13 eb 00 00       	push   $0xeb13
    af47:	e8 d0 11 00 00       	call   c11c <printl>
    af4c:	83 c4 10             	add    $0x10,%esp
    af4f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af55:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af58:	01 d0                	add    %edx,%eax
    af5a:	83 ec 08             	sub    $0x8,%esp
    af5d:	68 15 eb 00 00       	push   $0xeb15
    af62:	50                   	push   %eax
    af63:	e8 d9 14 00 00       	call   c441 <sprintf>
    af68:	83 c4 10             	add    $0x10,%esp
    af6b:	01 45 e0             	add    %eax,-0x20(%ebp)
    af6e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    af75:	e9 40 01 00 00       	jmp    b0ba <dump_fd_graph+0xa44>
    af7a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    af7d:	6b c0 2c             	imul   $0x2c,%eax,%eax
    af80:	05 44 39 01 00       	add    $0x13944,%eax
    af85:	8b 00                	mov    (%eax),%eax
    af87:	85 c0                	test   %eax,%eax
    af89:	0f 84 26 01 00 00    	je     b0b5 <dump_fd_graph+0xa3f>
    af8f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af95:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af98:	01 d0                	add    %edx,%eax
    af9a:	83 ec 04             	sub    $0x4,%esp
    af9d:	ff 75 e4             	pushl  -0x1c(%ebp)
    afa0:	68 2d eb 00 00       	push   $0xeb2d
    afa5:	50                   	push   %eax
    afa6:	e8 96 14 00 00       	call   c441 <sprintf>
    afab:	83 c4 10             	add    $0x10,%esp
    afae:	01 45 e0             	add    %eax,-0x20(%ebp)
    afb1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afb4:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afb7:	05 48 39 01 00       	add    $0x13948,%eax
    afbc:	8b 18                	mov    (%eax),%ebx
    afbe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afc1:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afc4:	05 44 39 01 00       	add    $0x13944,%eax
    afc9:	8b 00                	mov    (%eax),%eax
    afcb:	89 85 a4 cf ff ff    	mov    %eax,-0x305c(%ebp)
    afd1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afd4:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afd7:	05 40 39 01 00       	add    $0x13940,%eax
    afdc:	8b 38                	mov    (%eax),%edi
    afde:	89 bd a0 cf ff ff    	mov    %edi,-0x3060(%ebp)
    afe4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afe7:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afea:	05 2c 39 01 00       	add    $0x1392c,%eax
    afef:	8b 30                	mov    (%eax),%esi
    aff1:	89 b5 9c cf ff ff    	mov    %esi,-0x3064(%ebp)
    aff7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    affa:	6b c0 2c             	imul   $0x2c,%eax,%eax
    affd:	05 28 39 01 00       	add    $0x13928,%eax
    b002:	8b 38                	mov    (%eax),%edi
    b004:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b007:	6b c0 2c             	imul   $0x2c,%eax,%eax
    b00a:	05 24 39 01 00       	add    $0x13924,%eax
    b00f:	8b 30                	mov    (%eax),%esi
    b011:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b014:	6b c0 2c             	imul   $0x2c,%eax,%eax
    b017:	05 20 39 01 00       	add    $0x13920,%eax
    b01c:	8b 08                	mov    (%eax),%ecx
    b01e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b024:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b027:	01 d0                	add    %edx,%eax
    b029:	83 ec 08             	sub    $0x8,%esp
    b02c:	53                   	push   %ebx
    b02d:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    b033:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    b039:	ff b5 9c cf ff ff    	pushl  -0x3064(%ebp)
    b03f:	57                   	push   %edi
    b040:	56                   	push   %esi
    b041:	51                   	push   %ecx
    b042:	ff 75 e4             	pushl  -0x1c(%ebp)
    b045:	68 3c eb 00 00       	push   $0xeb3c
    b04a:	50                   	push   %eax
    b04b:	e8 f1 13 00 00       	call   c441 <sprintf>
    b050:	83 c4 30             	add    $0x30,%esp
    b053:	01 45 e0             	add    %eax,-0x20(%ebp)
    b056:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b05c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b05f:	01 d0                	add    %edx,%eax
    b061:	83 ec 08             	sub    $0x8,%esp
    b064:	68 14 ea 00 00       	push   $0xea14
    b069:	50                   	push   %eax
    b06a:	e8 d2 13 00 00       	call   c441 <sprintf>
    b06f:	83 c4 10             	add    $0x10,%esp
    b072:	01 45 e0             	add    %eax,-0x20(%ebp)
    b075:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b07b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b07e:	01 d0                	add    %edx,%eax
    b080:	83 ec 08             	sub    $0x8,%esp
    b083:	68 18 ea 00 00       	push   $0xea18
    b088:	50                   	push   %eax
    b089:	e8 b3 13 00 00       	call   c441 <sprintf>
    b08e:	83 c4 10             	add    $0x10,%esp
    b091:	01 45 e0             	add    %eax,-0x20(%ebp)
    b094:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b09a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b09d:	01 d0                	add    %edx,%eax
    b09f:	83 ec 08             	sub    $0x8,%esp
    b0a2:	68 2d ea 00 00       	push   $0xea2d
    b0a7:	50                   	push   %eax
    b0a8:	e8 94 13 00 00       	call   c441 <sprintf>
    b0ad:	83 c4 10             	add    $0x10,%esp
    b0b0:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0b3:	eb 01                	jmp    b0b6 <dump_fd_graph+0xa40>
    b0b5:	90                   	nop
    b0b6:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b0ba:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    b0be:	0f 8e b6 fe ff ff    	jle    af7a <dump_fd_graph+0x904>
    b0c4:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0ca:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0cd:	01 d0                	add    %edx,%eax
    b0cf:	83 ec 08             	sub    $0x8,%esp
    b0d2:	68 cf eb 00 00       	push   $0xebcf
    b0d7:	50                   	push   %eax
    b0d8:	e8 64 13 00 00       	call   c441 <sprintf>
    b0dd:	83 c4 10             	add    $0x10,%esp
    b0e0:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0e3:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0ec:	01 d0                	add    %edx,%eax
    b0ee:	83 ec 08             	sub    $0x8,%esp
    b0f1:	68 70 ea 00 00       	push   $0xea70
    b0f6:	50                   	push   %eax
    b0f7:	e8 45 13 00 00       	call   c441 <sprintf>
    b0fc:	83 c4 10             	add    $0x10,%esp
    b0ff:	01 45 e0             	add    %eax,-0x20(%ebp)
    b102:	83 ec 0c             	sub    $0xc,%esp
    b105:	68 e4 eb 00 00       	push   $0xebe4
    b10a:	e8 0d 10 00 00       	call   c11c <printl>
    b10f:	83 c4 10             	add    $0x10,%esp
    b112:	e8 c8 b5 ff ff       	call   66df <enable_int>
    b117:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b11d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b120:	01 d0                	add    %edx,%eax
    b122:	83 ec 08             	sub    $0x8,%esp
    b125:	68 e6 eb 00 00       	push   $0xebe6
    b12a:	50                   	push   %eax
    b12b:	e8 11 13 00 00       	call   c441 <sprintf>
    b130:	83 c4 10             	add    $0x10,%esp
    b133:	01 45 e0             	add    %eax,-0x20(%ebp)
    b136:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b13c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b13f:	01 d0                	add    %edx,%eax
    b141:	83 ec 08             	sub    $0x8,%esp
    b144:	68 fe eb 00 00       	push   $0xebfe
    b149:	50                   	push   %eax
    b14a:	e8 f2 12 00 00       	call   c441 <sprintf>
    b14f:	83 c4 10             	add    $0x10,%esp
    b152:	01 45 e0             	add    %eax,-0x20(%ebp)
    b155:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b15b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b15e:	01 d0                	add    %edx,%eax
    b160:	83 ec 08             	sub    $0x8,%esp
    b163:	68 10 ec 00 00       	push   $0xec10
    b168:	50                   	push   %eax
    b169:	e8 d3 12 00 00       	call   c441 <sprintf>
    b16e:	83 c4 10             	add    $0x10,%esp
    b171:	01 45 e0             	add    %eax,-0x20(%ebp)
    b174:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    b17b:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    b182:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b187:	8b 40 20             	mov    0x20(%eax),%eax
    b18a:	83 ec 0c             	sub    $0xc,%esp
    b18d:	50                   	push   %eax
    b18e:	e8 81 d0 ff ff       	call   8214 <get_super_block>
    b193:	83 c4 10             	add    $0x10,%esp
    b196:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b199:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b19c:	8b 40 0c             	mov    0xc(%eax),%eax
    b19f:	83 c0 02             	add    $0x2,%eax
    b1a2:	89 45 90             	mov    %eax,-0x70(%ebp)
    b1a5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b1ac:	e9 d1 01 00 00       	jmp    b382 <dump_fd_graph+0xd0c>
    b1b1:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b1b7:	e8 76 16 00 00       	call   c832 <getpid>
    b1bc:	89 c6                	mov    %eax,%esi
    b1be:	8b 55 90             	mov    -0x70(%ebp),%edx
    b1c1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b1c4:	01 d0                	add    %edx,%eax
    b1c6:	c1 e0 09             	shl    $0x9,%eax
    b1c9:	99                   	cltd   
    b1ca:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b1d0:	8b 49 20             	mov    0x20(%ecx),%ecx
    b1d3:	83 ec 04             	sub    $0x4,%esp
    b1d6:	53                   	push   %ebx
    b1d7:	56                   	push   %esi
    b1d8:	68 00 02 00 00       	push   $0x200
    b1dd:	52                   	push   %edx
    b1de:	50                   	push   %eax
    b1df:	51                   	push   %ecx
    b1e0:	68 eb 03 00 00       	push   $0x3eb
    b1e5:	e8 22 ce ff ff       	call   800c <rw_sector>
    b1ea:	83 c4 20             	add    $0x20,%esp
    b1ed:	a1 10 28 01 00       	mov    0x12810,%eax
    b1f2:	83 ec 04             	sub    $0x4,%esp
    b1f5:	68 00 02 00 00       	push   $0x200
    b1fa:	50                   	push   %eax
    b1fb:	68 e0 36 01 00       	push   $0x136e0
    b200:	e8 6b 12 00 00       	call   c470 <memcpy>
    b205:	83 c4 10             	add    $0x10,%esp
    b208:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b20f:	e9 5d 01 00 00       	jmp    b371 <dump_fd_graph+0xcfb>
    b214:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b21b:	e9 43 01 00 00       	jmp    b363 <dump_fd_graph+0xced>
    b220:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
    b224:	75 4a                	jne    b270 <dump_fd_graph+0xbfa>
    b226:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b229:	05 e0 36 01 00       	add    $0x136e0,%eax
    b22e:	0f b6 00             	movzbl (%eax),%eax
    b231:	0f be d0             	movsbl %al,%edx
    b234:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b237:	89 c1                	mov    %eax,%ecx
    b239:	d3 fa                	sar    %cl,%edx
    b23b:	89 d0                	mov    %edx,%eax
    b23d:	83 e0 01             	and    $0x1,%eax
    b240:	85 c0                	test   %eax,%eax
    b242:	0f 84 13 01 00 00    	je     b35b <dump_fd_graph+0xce5>
    b248:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    b24f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b252:	c1 e0 09             	shl    $0x9,%eax
    b255:	89 c2                	mov    %eax,%edx
    b257:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b25a:	01 d0                	add    %edx,%eax
    b25c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b263:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b266:	01 d0                	add    %edx,%eax
    b268:	89 45 bc             	mov    %eax,-0x44(%ebp)
    b26b:	e9 ef 00 00 00       	jmp    b35f <dump_fd_graph+0xce9>
    b270:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b273:	05 e0 36 01 00       	add    $0x136e0,%eax
    b278:	0f b6 00             	movzbl (%eax),%eax
    b27b:	0f be d0             	movsbl %al,%edx
    b27e:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b281:	89 c1                	mov    %eax,%ecx
    b283:	d3 fa                	sar    %cl,%edx
    b285:	89 d0                	mov    %edx,%eax
    b287:	83 e0 01             	and    $0x1,%eax
    b28a:	85 c0                	test   %eax,%eax
    b28c:	0f 85 cc 00 00 00    	jne    b35e <dump_fd_graph+0xce8>
    b292:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    b299:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b29c:	c1 e0 09             	shl    $0x9,%eax
    b29f:	89 c2                	mov    %eax,%edx
    b2a1:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b2a4:	01 d0                	add    %edx,%eax
    b2a6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b2ad:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b2b0:	01 d0                	add    %edx,%eax
    b2b2:	83 e8 01             	sub    $0x1,%eax
    b2b5:	89 45 8c             	mov    %eax,-0x74(%ebp)
    b2b8:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b2be:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b2c1:	01 d0                	add    %edx,%eax
    b2c3:	83 ec 04             	sub    $0x4,%esp
    b2c6:	ff 75 bc             	pushl  -0x44(%ebp)
    b2c9:	68 25 ec 00 00       	push   $0xec25
    b2ce:	50                   	push   %eax
    b2cf:	e8 6d 11 00 00       	call   c441 <sprintf>
    b2d4:	83 c4 10             	add    $0x10,%esp
    b2d7:	01 45 e0             	add    %eax,-0x20(%ebp)
    b2da:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b2e0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b2e3:	01 d0                	add    %edx,%eax
    b2e5:	ff 75 8c             	pushl  -0x74(%ebp)
    b2e8:	ff 75 bc             	pushl  -0x44(%ebp)
    b2eb:	68 37 ec 00 00       	push   $0xec37
    b2f0:	50                   	push   %eax
    b2f1:	e8 4b 11 00 00       	call   c441 <sprintf>
    b2f6:	83 c4 10             	add    $0x10,%esp
    b2f9:	01 45 e0             	add    %eax,-0x20(%ebp)
    b2fc:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b302:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b305:	01 d0                	add    %edx,%eax
    b307:	83 ec 08             	sub    $0x8,%esp
    b30a:	68 14 ea 00 00       	push   $0xea14
    b30f:	50                   	push   %eax
    b310:	e8 2c 11 00 00       	call   c441 <sprintf>
    b315:	83 c4 10             	add    $0x10,%esp
    b318:	01 45 e0             	add    %eax,-0x20(%ebp)
    b31b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b321:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b324:	01 d0                	add    %edx,%eax
    b326:	83 ec 08             	sub    $0x8,%esp
    b329:	68 18 ea 00 00       	push   $0xea18
    b32e:	50                   	push   %eax
    b32f:	e8 0d 11 00 00       	call   c441 <sprintf>
    b334:	83 c4 10             	add    $0x10,%esp
    b337:	01 45 e0             	add    %eax,-0x20(%ebp)
    b33a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b340:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b343:	01 d0                	add    %edx,%eax
    b345:	83 ec 08             	sub    $0x8,%esp
    b348:	68 2d ea 00 00       	push   $0xea2d
    b34d:	50                   	push   %eax
    b34e:	e8 ee 10 00 00       	call   c441 <sprintf>
    b353:	83 c4 10             	add    $0x10,%esp
    b356:	01 45 e0             	add    %eax,-0x20(%ebp)
    b359:	eb 04                	jmp    b35f <dump_fd_graph+0xce9>
    b35b:	90                   	nop
    b35c:	eb 01                	jmp    b35f <dump_fd_graph+0xce9>
    b35e:	90                   	nop
    b35f:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b363:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b367:	0f 8e b3 fe ff ff    	jle    b220 <dump_fd_graph+0xbaa>
    b36d:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b371:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b378:	0f 8e 96 fe ff ff    	jle    b214 <dump_fd_graph+0xb9e>
    b37e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b382:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b385:	8b 50 10             	mov    0x10(%eax),%edx
    b388:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b38b:	39 c2                	cmp    %eax,%edx
    b38d:	0f 87 1e fe ff ff    	ja     b1b1 <dump_fd_graph+0xb3b>
    b393:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b396:	8b 40 08             	mov    0x8(%eax),%eax
    b399:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b39f:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b3a2:	01 ca                	add    %ecx,%edx
    b3a4:	83 ec 04             	sub    $0x4,%esp
    b3a7:	50                   	push   %eax
    b3a8:	68 54 ec 00 00       	push   $0xec54
    b3ad:	52                   	push   %edx
    b3ae:	e8 8e 10 00 00       	call   c441 <sprintf>
    b3b3:	83 c4 10             	add    $0x10,%esp
    b3b6:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3b9:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3bf:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3c2:	01 d0                	add    %edx,%eax
    b3c4:	83 ec 08             	sub    $0x8,%esp
    b3c7:	68 70 ea 00 00       	push   $0xea70
    b3cc:	50                   	push   %eax
    b3cd:	e8 6f 10 00 00       	call   c441 <sprintf>
    b3d2:	83 c4 10             	add    $0x10,%esp
    b3d5:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3d8:	83 ec 0c             	sub    $0xc,%esp
    b3db:	68 7d ec 00 00       	push   $0xec7d
    b3e0:	e8 37 0d 00 00       	call   c11c <printl>
    b3e5:	83 c4 10             	add    $0x10,%esp
    b3e8:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3ee:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3f1:	01 d0                	add    %edx,%eax
    b3f3:	83 ec 08             	sub    $0x8,%esp
    b3f6:	68 7f ec 00 00       	push   $0xec7f
    b3fb:	50                   	push   %eax
    b3fc:	e8 40 10 00 00       	call   c441 <sprintf>
    b401:	83 c4 10             	add    $0x10,%esp
    b404:	01 45 e0             	add    %eax,-0x20(%ebp)
    b407:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b40d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b410:	01 d0                	add    %edx,%eax
    b412:	83 ec 08             	sub    $0x8,%esp
    b415:	68 fe eb 00 00       	push   $0xebfe
    b41a:	50                   	push   %eax
    b41b:	e8 21 10 00 00       	call   c441 <sprintf>
    b420:	83 c4 10             	add    $0x10,%esp
    b423:	01 45 e0             	add    %eax,-0x20(%ebp)
    b426:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b42c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b42f:	01 d0                	add    %edx,%eax
    b431:	83 ec 08             	sub    $0x8,%esp
    b434:	68 10 ec 00 00       	push   $0xec10
    b439:	50                   	push   %eax
    b43a:	e8 02 10 00 00       	call   c441 <sprintf>
    b43f:	83 c4 10             	add    $0x10,%esp
    b442:	01 45 e0             	add    %eax,-0x20(%ebp)
    b445:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b44b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b44e:	01 d0                	add    %edx,%eax
    b450:	83 ec 08             	sub    $0x8,%esp
    b453:	68 97 ec 00 00       	push   $0xec97
    b458:	50                   	push   %eax
    b459:	e8 e3 0f 00 00       	call   c441 <sprintf>
    b45e:	83 c4 10             	add    $0x10,%esp
    b461:	01 45 e0             	add    %eax,-0x20(%ebp)
    b464:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b46a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b46d:	01 d0                	add    %edx,%eax
    b46f:	83 ec 08             	sub    $0x8,%esp
    b472:	68 a3 ec 00 00       	push   $0xeca3
    b477:	50                   	push   %eax
    b478:	e8 c4 0f 00 00       	call   c441 <sprintf>
    b47d:	83 c4 10             	add    $0x10,%esp
    b480:	01 45 e0             	add    %eax,-0x20(%ebp)
    b483:	c7 45 88 02 00 00 00 	movl   $0x2,-0x78(%ebp)
    b48a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b491:	e9 e0 00 00 00       	jmp    b576 <dump_fd_graph+0xf00>
    b496:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b49c:	e8 91 13 00 00       	call   c832 <getpid>
    b4a1:	89 c6                	mov    %eax,%esi
    b4a3:	8b 55 88             	mov    -0x78(%ebp),%edx
    b4a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b4a9:	01 d0                	add    %edx,%eax
    b4ab:	c1 e0 09             	shl    $0x9,%eax
    b4ae:	99                   	cltd   
    b4af:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b4b5:	8b 49 20             	mov    0x20(%ecx),%ecx
    b4b8:	83 ec 04             	sub    $0x4,%esp
    b4bb:	53                   	push   %ebx
    b4bc:	56                   	push   %esi
    b4bd:	68 00 02 00 00       	push   $0x200
    b4c2:	52                   	push   %edx
    b4c3:	50                   	push   %eax
    b4c4:	51                   	push   %ecx
    b4c5:	68 eb 03 00 00       	push   $0x3eb
    b4ca:	e8 3d cb ff ff       	call   800c <rw_sector>
    b4cf:	83 c4 20             	add    $0x20,%esp
    b4d2:	a1 10 28 01 00       	mov    0x12810,%eax
    b4d7:	83 ec 04             	sub    $0x4,%esp
    b4da:	68 00 02 00 00       	push   $0x200
    b4df:	50                   	push   %eax
    b4e0:	68 e0 36 01 00       	push   $0x136e0
    b4e5:	e8 86 0f 00 00       	call   c470 <memcpy>
    b4ea:	83 c4 10             	add    $0x10,%esp
    b4ed:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b4f4:	eb 73                	jmp    b569 <dump_fd_graph+0xef3>
    b4f6:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b4fd:	eb 60                	jmp    b55f <dump_fd_graph+0xee9>
    b4ff:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b502:	05 e0 36 01 00       	add    $0x136e0,%eax
    b507:	0f b6 00             	movzbl (%eax),%eax
    b50a:	0f be d0             	movsbl %al,%edx
    b50d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b510:	89 c1                	mov    %eax,%ecx
    b512:	d3 fa                	sar    %cl,%edx
    b514:	89 d0                	mov    %edx,%eax
    b516:	83 e0 01             	and    $0x1,%eax
    b519:	85 c0                	test   %eax,%eax
    b51b:	74 3e                	je     b55b <dump_fd_graph+0xee5>
    b51d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b520:	c1 e0 09             	shl    $0x9,%eax
    b523:	89 c2                	mov    %eax,%edx
    b525:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b528:	01 d0                	add    %edx,%eax
    b52a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b531:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b534:	01 d0                	add    %edx,%eax
    b536:	89 45 84             	mov    %eax,-0x7c(%ebp)
    b539:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b53f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b542:	01 d0                	add    %edx,%eax
    b544:	83 ec 04             	sub    $0x4,%esp
    b547:	ff 75 84             	pushl  -0x7c(%ebp)
    b54a:	68 b8 ec 00 00       	push   $0xecb8
    b54f:	50                   	push   %eax
    b550:	e8 ec 0e 00 00       	call   c441 <sprintf>
    b555:	83 c4 10             	add    $0x10,%esp
    b558:	01 45 e0             	add    %eax,-0x20(%ebp)
    b55b:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b55f:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b563:	7e 9a                	jle    b4ff <dump_fd_graph+0xe89>
    b565:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b569:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b570:	7e 84                	jle    b4f6 <dump_fd_graph+0xe80>
    b572:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b576:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b579:	8b 50 0c             	mov    0xc(%eax),%edx
    b57c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b57f:	39 c2                	cmp    %eax,%edx
    b581:	0f 87 0f ff ff ff    	ja     b496 <dump_fd_graph+0xe20>
    b587:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b58d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b590:	01 d0                	add    %edx,%eax
    b592:	83 ec 08             	sub    $0x8,%esp
    b595:	68 14 ea 00 00       	push   $0xea14
    b59a:	50                   	push   %eax
    b59b:	e8 a1 0e 00 00       	call   c441 <sprintf>
    b5a0:	83 c4 10             	add    $0x10,%esp
    b5a3:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5a6:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5ac:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5af:	01 d0                	add    %edx,%eax
    b5b1:	83 ec 08             	sub    $0x8,%esp
    b5b4:	68 18 ea 00 00       	push   $0xea18
    b5b9:	50                   	push   %eax
    b5ba:	e8 82 0e 00 00       	call   c441 <sprintf>
    b5bf:	83 c4 10             	add    $0x10,%esp
    b5c2:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5c5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5cb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5ce:	01 d0                	add    %edx,%eax
    b5d0:	83 ec 08             	sub    $0x8,%esp
    b5d3:	68 2d ea 00 00       	push   $0xea2d
    b5d8:	50                   	push   %eax
    b5d9:	e8 63 0e 00 00       	call   c441 <sprintf>
    b5de:	83 c4 10             	add    $0x10,%esp
    b5e1:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5e4:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5ea:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5ed:	01 d0                	add    %edx,%eax
    b5ef:	83 ec 08             	sub    $0x8,%esp
    b5f2:	68 bf ec 00 00       	push   $0xecbf
    b5f7:	50                   	push   %eax
    b5f8:	e8 44 0e 00 00       	call   c441 <sprintf>
    b5fd:	83 c4 10             	add    $0x10,%esp
    b600:	01 45 e0             	add    %eax,-0x20(%ebp)
    b603:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b609:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b60c:	01 d0                	add    %edx,%eax
    b60e:	83 ec 08             	sub    $0x8,%esp
    b611:	68 70 ea 00 00       	push   $0xea70
    b616:	50                   	push   %eax
    b617:	e8 25 0e 00 00       	call   c441 <sprintf>
    b61c:	83 c4 10             	add    $0x10,%esp
    b61f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b622:	83 ec 0c             	sub    $0xc,%esp
    b625:	68 d7 ec 00 00       	push   $0xecd7
    b62a:	e8 ed 0a 00 00       	call   c11c <printl>
    b62f:	83 c4 10             	add    $0x10,%esp
    b632:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b638:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b63b:	01 d0                	add    %edx,%eax
    b63d:	83 ec 08             	sub    $0x8,%esp
    b640:	68 d9 ec 00 00       	push   $0xecd9
    b645:	50                   	push   %eax
    b646:	e8 f6 0d 00 00       	call   c441 <sprintf>
    b64b:	83 c4 10             	add    $0x10,%esp
    b64e:	01 45 e0             	add    %eax,-0x20(%ebp)
    b651:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b657:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b65a:	01 d0                	add    %edx,%eax
    b65c:	83 ec 08             	sub    $0x8,%esp
    b65f:	68 fe eb 00 00       	push   $0xebfe
    b664:	50                   	push   %eax
    b665:	e8 d7 0d 00 00       	call   c441 <sprintf>
    b66a:	83 c4 10             	add    $0x10,%esp
    b66d:	01 45 e0             	add    %eax,-0x20(%ebp)
    b670:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b676:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b679:	01 d0                	add    %edx,%eax
    b67b:	83 ec 08             	sub    $0x8,%esp
    b67e:	68 10 ec 00 00       	push   $0xec10
    b683:	50                   	push   %eax
    b684:	e8 b8 0d 00 00       	call   c441 <sprintf>
    b689:	83 c4 10             	add    $0x10,%esp
    b68c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b68f:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b694:	8b 40 20             	mov    0x20(%eax),%eax
    b697:	83 ec 0c             	sub    $0xc,%esp
    b69a:	50                   	push   %eax
    b69b:	e8 74 cb ff ff       	call   8214 <get_super_block>
    b6a0:	83 c4 10             	add    $0x10,%esp
    b6a3:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b6a6:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b6a9:	8b 50 0c             	mov    0xc(%eax),%edx
    b6ac:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b6af:	8b 40 10             	mov    0x10(%eax),%eax
    b6b2:	01 d0                	add    %edx,%eax
    b6b4:	83 c0 02             	add    $0x2,%eax
    b6b7:	89 45 80             	mov    %eax,-0x80(%ebp)
    b6ba:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b6c0:	e8 6d 11 00 00       	call   c832 <getpid>
    b6c5:	89 c6                	mov    %eax,%esi
    b6c7:	8b 45 80             	mov    -0x80(%ebp),%eax
    b6ca:	c1 e0 09             	shl    $0x9,%eax
    b6cd:	99                   	cltd   
    b6ce:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b6d4:	8b 49 20             	mov    0x20(%ecx),%ecx
    b6d7:	83 ec 04             	sub    $0x4,%esp
    b6da:	53                   	push   %ebx
    b6db:	56                   	push   %esi
    b6dc:	68 00 02 00 00       	push   $0x200
    b6e1:	52                   	push   %edx
    b6e2:	50                   	push   %eax
    b6e3:	51                   	push   %ecx
    b6e4:	68 eb 03 00 00       	push   $0x3eb
    b6e9:	e8 1e c9 ff ff       	call   800c <rw_sector>
    b6ee:	83 c4 20             	add    $0x20,%esp
    b6f1:	a1 10 28 01 00       	mov    0x12810,%eax
    b6f6:	83 ec 04             	sub    $0x4,%esp
    b6f9:	68 00 02 00 00       	push   $0x200
    b6fe:	50                   	push   %eax
    b6ff:	68 e0 36 01 00       	push   $0x136e0
    b704:	e8 67 0d 00 00       	call   c470 <memcpy>
    b709:	83 c4 10             	add    $0x10,%esp
    b70c:	c7 45 b4 e0 36 01 00 	movl   $0x136e0,-0x4c(%ebp)
    b713:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b71a:	e9 4d 02 00 00       	jmp    b96c <dump_fd_graph+0x12f6>
    b71f:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    b722:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
    b728:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b72e:	8b 40 08             	mov    0x8(%eax),%eax
    b731:	85 c0                	test   %eax,%eax
    b733:	0f 84 2a 02 00 00    	je     b963 <dump_fd_graph+0x12ed>
    b739:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b73f:	8b 00                	mov    (%eax),%eax
    b741:	85 c0                	test   %eax,%eax
    b743:	0f 84 2e 01 00 00    	je     b877 <dump_fd_graph+0x1201>
    b749:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b74f:	8b 50 08             	mov    0x8(%eax),%edx
    b752:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b755:	8b 40 14             	mov    0x14(%eax),%eax
    b758:	39 c2                	cmp    %eax,%edx
    b75a:	73 21                	jae    b77d <dump_fd_graph+0x1107>
    b75c:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b75f:	8b 50 14             	mov    0x14(%eax),%edx
    b762:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b768:	8b 40 08             	mov    0x8(%eax),%eax
    b76b:	83 ec 04             	sub    $0x4,%esp
    b76e:	52                   	push   %edx
    b76f:	50                   	push   %eax
    b770:	68 f1 ec 00 00       	push   $0xecf1
    b775:	e8 cc 65 ff ff       	call   1d46 <panic>
    b77a:	83 c4 10             	add    $0x10,%esp
    b77d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b783:	8b 50 08             	mov    0x8(%eax),%edx
    b786:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b789:	8b 40 14             	mov    0x14(%eax),%eax
    b78c:	29 c2                	sub    %eax,%edx
    b78e:	89 d0                	mov    %edx,%eax
    b790:	83 c0 01             	add    $0x1,%eax
    b793:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b799:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b79f:	8b 50 0c             	mov    0xc(%eax),%edx
    b7a2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
    b7a8:	01 d0                	add    %edx,%eax
    b7aa:	83 e8 01             	sub    $0x1,%eax
    b7ad:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b7b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b7b6:	8d 50 01             	lea    0x1(%eax),%edx
    b7b9:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b7bf:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b7c2:	01 c8                	add    %ecx,%eax
    b7c4:	83 ec 04             	sub    $0x4,%esp
    b7c7:	52                   	push   %edx
    b7c8:	68 0d ed 00 00       	push   $0xed0d
    b7cd:	50                   	push   %eax
    b7ce:	e8 6e 0c 00 00       	call   c441 <sprintf>
    b7d3:	83 c4 10             	add    $0x10,%esp
    b7d6:	01 45 e0             	add    %eax,-0x20(%ebp)
    b7d9:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b7df:	8b 40 04             	mov    0x4(%eax),%eax
    b7e2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b7e5:	8d 4a 01             	lea    0x1(%edx),%ecx
    b7e8:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b7ee:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b7f1:	01 da                	add    %ebx,%edx
    b7f3:	83 ec 08             	sub    $0x8,%esp
    b7f6:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b7fc:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b802:	50                   	push   %eax
    b803:	51                   	push   %ecx
    b804:	68 24 ed 00 00       	push   $0xed24
    b809:	52                   	push   %edx
    b80a:	e8 32 0c 00 00       	call   c441 <sprintf>
    b80f:	83 c4 20             	add    $0x20,%esp
    b812:	01 45 e0             	add    %eax,-0x20(%ebp)
    b815:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b81b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b81e:	01 d0                	add    %edx,%eax
    b820:	83 ec 08             	sub    $0x8,%esp
    b823:	68 14 ea 00 00       	push   $0xea14
    b828:	50                   	push   %eax
    b829:	e8 13 0c 00 00       	call   c441 <sprintf>
    b82e:	83 c4 10             	add    $0x10,%esp
    b831:	01 45 e0             	add    %eax,-0x20(%ebp)
    b834:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b83a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b83d:	01 d0                	add    %edx,%eax
    b83f:	83 ec 08             	sub    $0x8,%esp
    b842:	68 18 ea 00 00       	push   $0xea18
    b847:	50                   	push   %eax
    b848:	e8 f4 0b 00 00       	call   c441 <sprintf>
    b84d:	83 c4 10             	add    $0x10,%esp
    b850:	01 45 e0             	add    %eax,-0x20(%ebp)
    b853:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b859:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b85c:	01 d0                	add    %edx,%eax
    b85e:	83 ec 08             	sub    $0x8,%esp
    b861:	68 2d ea 00 00       	push   $0xea2d
    b866:	50                   	push   %eax
    b867:	e8 d5 0b 00 00       	call   c441 <sprintf>
    b86c:	83 c4 10             	add    $0x10,%esp
    b86f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b872:	e9 ed 00 00 00       	jmp    b964 <dump_fd_graph+0x12ee>
    b877:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b87d:	8b 40 08             	mov    0x8(%eax),%eax
    b880:	c1 e8 08             	shr    $0x8,%eax
    b883:	25 ff 00 00 00       	and    $0xff,%eax
    b888:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b88e:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b894:	8b 40 08             	mov    0x8(%eax),%eax
    b897:	25 ff 00 00 00       	and    $0xff,%eax
    b89c:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b8a2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b8a5:	8d 50 01             	lea    0x1(%eax),%edx
    b8a8:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b8ae:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b8b1:	01 c8                	add    %ecx,%eax
    b8b3:	83 ec 04             	sub    $0x4,%esp
    b8b6:	52                   	push   %edx
    b8b7:	68 0d ed 00 00       	push   $0xed0d
    b8bc:	50                   	push   %eax
    b8bd:	e8 7f 0b 00 00       	call   c441 <sprintf>
    b8c2:	83 c4 10             	add    $0x10,%esp
    b8c5:	01 45 e0             	add    %eax,-0x20(%ebp)
    b8c8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b8ce:	8b 40 04             	mov    0x4(%eax),%eax
    b8d1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b8d4:	8d 4a 01             	lea    0x1(%edx),%ecx
    b8d7:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b8dd:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b8e0:	01 da                	add    %ebx,%edx
    b8e2:	83 ec 08             	sub    $0x8,%esp
    b8e5:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b8eb:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b8f1:	50                   	push   %eax
    b8f2:	51                   	push   %ecx
    b8f3:	68 5c ed 00 00       	push   $0xed5c
    b8f8:	52                   	push   %edx
    b8f9:	e8 43 0b 00 00       	call   c441 <sprintf>
    b8fe:	83 c4 20             	add    $0x20,%esp
    b901:	01 45 e0             	add    %eax,-0x20(%ebp)
    b904:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b90a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b90d:	01 d0                	add    %edx,%eax
    b90f:	83 ec 08             	sub    $0x8,%esp
    b912:	68 14 ea 00 00       	push   $0xea14
    b917:	50                   	push   %eax
    b918:	e8 24 0b 00 00       	call   c441 <sprintf>
    b91d:	83 c4 10             	add    $0x10,%esp
    b920:	01 45 e0             	add    %eax,-0x20(%ebp)
    b923:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b929:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b92c:	01 d0                	add    %edx,%eax
    b92e:	83 ec 08             	sub    $0x8,%esp
    b931:	68 18 ea 00 00       	push   $0xea18
    b936:	50                   	push   %eax
    b937:	e8 05 0b 00 00       	call   c441 <sprintf>
    b93c:	83 c4 10             	add    $0x10,%esp
    b93f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b942:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b948:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b94b:	01 d0                	add    %edx,%eax
    b94d:	83 ec 08             	sub    $0x8,%esp
    b950:	68 2d ea 00 00       	push   $0xea2d
    b955:	50                   	push   %eax
    b956:	e8 e6 0a 00 00       	call   c441 <sprintf>
    b95b:	83 c4 10             	add    $0x10,%esp
    b95e:	01 45 e0             	add    %eax,-0x20(%ebp)
    b961:	eb 01                	jmp    b964 <dump_fd_graph+0x12ee>
    b963:	90                   	nop
    b964:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b968:	83 45 b4 20          	addl   $0x20,-0x4c(%ebp)
    b96c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b96f:	83 f8 0a             	cmp    $0xa,%eax
    b972:	0f 86 a7 fd ff ff    	jbe    b71f <dump_fd_graph+0x10a9>
    b978:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b97e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b981:	01 d0                	add    %edx,%eax
    b983:	83 ec 08             	sub    $0x8,%esp
    b986:	68 98 ed 00 00       	push   $0xed98
    b98b:	50                   	push   %eax
    b98c:	e8 b0 0a 00 00       	call   c441 <sprintf>
    b991:	83 c4 10             	add    $0x10,%esp
    b994:	01 45 e0             	add    %eax,-0x20(%ebp)
    b997:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b99d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9a0:	01 d0                	add    %edx,%eax
    b9a2:	83 ec 08             	sub    $0x8,%esp
    b9a5:	68 70 ea 00 00       	push   $0xea70
    b9aa:	50                   	push   %eax
    b9ab:	e8 91 0a 00 00       	call   c441 <sprintf>
    b9b0:	83 c4 10             	add    $0x10,%esp
    b9b3:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9b6:	83 ec 0c             	sub    $0xc,%esp
    b9b9:	68 b2 ed 00 00       	push   $0xedb2
    b9be:	e8 59 07 00 00       	call   c11c <printl>
    b9c3:	83 c4 10             	add    $0x10,%esp
    b9c6:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9cc:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9cf:	01 d0                	add    %edx,%eax
    b9d1:	83 ec 08             	sub    $0x8,%esp
    b9d4:	68 b4 ed 00 00       	push   $0xedb4
    b9d9:	50                   	push   %eax
    b9da:	e8 62 0a 00 00       	call   c441 <sprintf>
    b9df:	83 c4 10             	add    $0x10,%esp
    b9e2:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9e5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9ee:	01 d0                	add    %edx,%eax
    b9f0:	83 ec 08             	sub    $0x8,%esp
    b9f3:	68 fe eb 00 00       	push   $0xebfe
    b9f8:	50                   	push   %eax
    b9f9:	e8 43 0a 00 00       	call   c441 <sprintf>
    b9fe:	83 c4 10             	add    $0x10,%esp
    ba01:	01 45 e0             	add    %eax,-0x20(%ebp)
    ba04:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ba0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ba0d:	01 d0                	add    %edx,%eax
    ba0f:	83 ec 08             	sub    $0x8,%esp
    ba12:	68 10 ec 00 00       	push   $0xec10
    ba17:	50                   	push   %eax
    ba18:	e8 24 0a 00 00       	call   c441 <sprintf>
    ba1d:	83 c4 10             	add    $0x10,%esp
    ba20:	01 45 e0             	add    %eax,-0x20(%ebp)
    ba23:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba28:	8b 40 20             	mov    0x20(%eax),%eax
    ba2b:	83 ec 0c             	sub    $0xc,%esp
    ba2e:	50                   	push   %eax
    ba2f:	e8 e0 c7 ff ff       	call   8214 <get_super_block>
    ba34:	83 c4 10             	add    $0x10,%esp
    ba37:	89 45 94             	mov    %eax,-0x6c(%ebp)
    ba3a:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba3f:	8b 40 08             	mov    0x8(%eax),%eax
    ba42:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
    ba48:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba4d:	8b 40 04             	mov    0x4(%eax),%eax
    ba50:	05 ff 01 00 00       	add    $0x1ff,%eax
    ba55:	c1 e8 09             	shr    $0x9,%eax
    ba58:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    ba5e:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba63:	8b 40 04             	mov    0x4(%eax),%eax
    ba66:	c1 e8 04             	shr    $0x4,%eax
    ba69:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
    ba6f:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
    ba76:	00 00 00 
    ba79:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    ba80:	e9 a0 01 00 00       	jmp    bc25 <dump_fd_graph+0x15af>
    ba85:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    ba8b:	e8 a2 0d 00 00       	call   c832 <getpid>
    ba90:	89 c6                	mov    %eax,%esi
    ba92:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
    ba98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ba9b:	01 d0                	add    %edx,%eax
    ba9d:	c1 e0 09             	shl    $0x9,%eax
    baa0:	99                   	cltd   
    baa1:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    baa7:	8b 49 20             	mov    0x20(%ecx),%ecx
    baaa:	83 ec 04             	sub    $0x4,%esp
    baad:	53                   	push   %ebx
    baae:	56                   	push   %esi
    baaf:	68 00 02 00 00       	push   $0x200
    bab4:	52                   	push   %edx
    bab5:	50                   	push   %eax
    bab6:	51                   	push   %ecx
    bab7:	68 eb 03 00 00       	push   $0x3eb
    babc:	e8 4b c5 ff ff       	call   800c <rw_sector>
    bac1:	83 c4 20             	add    $0x20,%esp
    bac4:	a1 10 28 01 00       	mov    0x12810,%eax
    bac9:	83 ec 04             	sub    $0x4,%esp
    bacc:	68 00 02 00 00       	push   $0x200
    bad1:	50                   	push   %eax
    bad2:	68 e0 36 01 00       	push   $0x136e0
    bad7:	e8 94 09 00 00       	call   c470 <memcpy>
    badc:	83 c4 10             	add    $0x10,%esp
    badf:	c7 45 b0 e0 36 01 00 	movl   $0x136e0,-0x50(%ebp)
    bae6:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    baed:	e9 15 01 00 00       	jmp    bc07 <dump_fd_graph+0x1591>
    baf2:	8b 45 b0             	mov    -0x50(%ebp),%eax
    baf5:	8b 00                	mov    (%eax),%eax
    baf7:	85 c0                	test   %eax,%eax
    baf9:	0f 84 00 01 00 00    	je     bbff <dump_fd_graph+0x1589>
    baff:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bb02:	83 c0 04             	add    $0x4,%eax
    bb05:	83 ec 04             	sub    $0x4,%esp
    bb08:	6a 0c                	push   $0xc
    bb0a:	50                   	push   %eax
    bb0b:	8d 85 2b fa ff ff    	lea    -0x5d5(%ebp),%eax
    bb11:	50                   	push   %eax
    bb12:	e8 59 09 00 00       	call   c470 <memcpy>
    bb17:	83 c4 10             	add    $0x10,%esp
    bb1a:	0f b6 85 2b fa ff ff 	movzbl -0x5d5(%ebp),%eax
    bb21:	3c 2e                	cmp    $0x2e,%al
    bb23:	75 07                	jne    bb2c <dump_fd_graph+0x14b6>
    bb25:	c6 85 2b fa ff ff 2f 	movb   $0x2f,-0x5d5(%ebp)
    bb2c:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bb2f:	8b 00                	mov    (%eax),%eax
    bb31:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bb37:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bb3a:	01 ca                	add    %ecx,%edx
    bb3c:	83 ec 04             	sub    $0x4,%esp
    bb3f:	50                   	push   %eax
    bb40:	68 cc ed 00 00       	push   $0xedcc
    bb45:	52                   	push   %edx
    bb46:	e8 f6 08 00 00       	call   c441 <sprintf>
    bb4b:	83 c4 10             	add    $0x10,%esp
    bb4e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb51:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bb54:	8b 00                	mov    (%eax),%eax
    bb56:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bb5c:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bb5f:	01 d1                	add    %edx,%ecx
    bb61:	8d 95 2b fa ff ff    	lea    -0x5d5(%ebp),%edx
    bb67:	52                   	push   %edx
    bb68:	50                   	push   %eax
    bb69:	68 e0 ed 00 00       	push   $0xede0
    bb6e:	51                   	push   %ecx
    bb6f:	e8 cd 08 00 00       	call   c441 <sprintf>
    bb74:	83 c4 10             	add    $0x10,%esp
    bb77:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb7a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bb80:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bb83:	01 d0                	add    %edx,%eax
    bb85:	83 ec 08             	sub    $0x8,%esp
    bb88:	68 14 ea 00 00       	push   $0xea14
    bb8d:	50                   	push   %eax
    bb8e:	e8 ae 08 00 00       	call   c441 <sprintf>
    bb93:	83 c4 10             	add    $0x10,%esp
    bb96:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb99:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bb9f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bba2:	01 d0                	add    %edx,%eax
    bba4:	83 ec 08             	sub    $0x8,%esp
    bba7:	68 18 ea 00 00       	push   $0xea18
    bbac:	50                   	push   %eax
    bbad:	e8 8f 08 00 00       	call   c441 <sprintf>
    bbb2:	83 c4 10             	add    $0x10,%esp
    bbb5:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbb8:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bbbe:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bbc1:	01 d0                	add    %edx,%eax
    bbc3:	83 ec 08             	sub    $0x8,%esp
    bbc6:	68 2d ea 00 00       	push   $0xea2d
    bbcb:	50                   	push   %eax
    bbcc:	e8 70 08 00 00       	call   c441 <sprintf>
    bbd1:	83 c4 10             	add    $0x10,%esp
    bbd4:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbd7:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bbda:	8b 10                	mov    (%eax),%edx
    bbdc:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bbdf:	8b 00                	mov    (%eax),%eax
    bbe1:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bbe7:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bbea:	01 d9                	add    %ebx,%ecx
    bbec:	52                   	push   %edx
    bbed:	50                   	push   %eax
    bbee:	68 fc ed 00 00       	push   $0xedfc
    bbf3:	51                   	push   %ecx
    bbf4:	e8 48 08 00 00       	call   c441 <sprintf>
    bbf9:	83 c4 10             	add    $0x10,%esp
    bbfc:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbff:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    bc03:	83 45 b0 10          	addl   $0x10,-0x50(%ebp)
    bc07:	8b 45 b8             	mov    -0x48(%ebp),%eax
    bc0a:	83 f8 1f             	cmp    $0x1f,%eax
    bc0d:	0f 86 df fe ff ff    	jbe    baf2 <dump_fd_graph+0x147c>
    bc13:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
    bc19:	3b 85 68 ff ff ff    	cmp    -0x98(%ebp),%eax
    bc1f:	7f 15                	jg     bc36 <dump_fd_graph+0x15c0>
    bc21:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bc25:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc28:	3b 85 6c ff ff ff    	cmp    -0x94(%ebp),%eax
    bc2e:	0f 8c 51 fe ff ff    	jl     ba85 <dump_fd_graph+0x140f>
    bc34:	eb 01                	jmp    bc37 <dump_fd_graph+0x15c1>
    bc36:	90                   	nop
    bc37:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bc3d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bc40:	01 d0                	add    %edx,%eax
    bc42:	83 ec 08             	sub    $0x8,%esp
    bc45:	68 26 ee 00 00       	push   $0xee26
    bc4a:	50                   	push   %eax
    bc4b:	e8 f1 07 00 00       	call   c441 <sprintf>
    bc50:	83 c4 10             	add    $0x10,%esp
    bc53:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc56:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bc5c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bc5f:	01 d0                	add    %edx,%eax
    bc61:	83 ec 08             	sub    $0x8,%esp
    bc64:	68 70 ea 00 00       	push   $0xea70
    bc69:	50                   	push   %eax
    bc6a:	e8 d2 07 00 00       	call   c441 <sprintf>
    bc6f:	83 c4 10             	add    $0x10,%esp
    bc72:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc75:	83 ec 0c             	sub    $0xc,%esp
    bc78:	68 3d ee 00 00       	push   $0xee3d
    bc7d:	e8 9a 04 00 00       	call   c11c <printl>
    bc82:	83 c4 10             	add    $0x10,%esp
    bc85:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bc8c:	e9 09 01 00 00       	jmp    bd9a <dump_fd_graph+0x1724>
    bc91:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bc94:	89 d0                	mov    %edx,%eax
    bc96:	01 c0                	add    %eax,%eax
    bc98:	01 d0                	add    %edx,%eax
    bc9a:	c1 e0 02             	shl    $0x2,%eax
    bc9d:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bca0:	01 f8                	add    %edi,%eax
    bca2:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    bca7:	8b 00                	mov    (%eax),%eax
    bca9:	83 f8 04             	cmp    $0x4,%eax
    bcac:	75 59                	jne    bd07 <dump_fd_graph+0x1691>
    bcae:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bcb1:	89 d0                	mov    %edx,%eax
    bcb3:	01 c0                	add    %eax,%eax
    bcb5:	01 d0                	add    %edx,%eax
    bcb7:	c1 e0 02             	shl    $0x2,%eax
    bcba:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bcbd:	01 f0                	add    %esi,%eax
    bcbf:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    bcc4:	8b 08                	mov    (%eax),%ecx
    bcc6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bcc9:	89 d0                	mov    %edx,%eax
    bccb:	01 c0                	add    %eax,%eax
    bccd:	01 d0                	add    %edx,%eax
    bccf:	c1 e0 02             	shl    $0x2,%eax
    bcd2:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bcd5:	01 f8                	add    %edi,%eax
    bcd7:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bcdc:	8b 00                	mov    (%eax),%eax
    bcde:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bce4:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bce7:	01 da                	add    %ebx,%edx
    bce9:	83 ec 0c             	sub    $0xc,%esp
    bcec:	ff 75 e4             	pushl  -0x1c(%ebp)
    bcef:	51                   	push   %ecx
    bcf0:	50                   	push   %eax
    bcf1:	68 40 ee 00 00       	push   $0xee40
    bcf6:	52                   	push   %edx
    bcf7:	e8 45 07 00 00       	call   c441 <sprintf>
    bcfc:	83 c4 20             	add    $0x20,%esp
    bcff:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd02:	e9 8f 00 00 00       	jmp    bd96 <dump_fd_graph+0x1720>
    bd07:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bd0a:	89 d0                	mov    %edx,%eax
    bd0c:	01 c0                	add    %eax,%eax
    bd0e:	01 d0                	add    %edx,%eax
    bd10:	c1 e0 02             	shl    $0x2,%eax
    bd13:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bd16:	01 f0                	add    %esi,%eax
    bd18:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    bd1d:	8b 00                	mov    (%eax),%eax
    bd1f:	83 f8 02             	cmp    $0x2,%eax
    bd22:	75 56                	jne    bd7a <dump_fd_graph+0x1704>
    bd24:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bd27:	89 d0                	mov    %edx,%eax
    bd29:	01 c0                	add    %eax,%eax
    bd2b:	01 d0                	add    %edx,%eax
    bd2d:	c1 e0 02             	shl    $0x2,%eax
    bd30:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bd33:	01 f8                	add    %edi,%eax
    bd35:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bd3a:	8b 08                	mov    (%eax),%ecx
    bd3c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bd3f:	89 d0                	mov    %edx,%eax
    bd41:	01 c0                	add    %eax,%eax
    bd43:	01 d0                	add    %edx,%eax
    bd45:	c1 e0 02             	shl    $0x2,%eax
    bd48:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bd4b:	01 f0                	add    %esi,%eax
    bd4d:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    bd52:	8b 00                	mov    (%eax),%eax
    bd54:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bd5a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bd5d:	01 da                	add    %ebx,%edx
    bd5f:	83 ec 0c             	sub    $0xc,%esp
    bd62:	ff 75 e4             	pushl  -0x1c(%ebp)
    bd65:	51                   	push   %ecx
    bd66:	50                   	push   %eax
    bd67:	68 8c ee 00 00       	push   $0xee8c
    bd6c:	52                   	push   %edx
    bd6d:	e8 cf 06 00 00       	call   c441 <sprintf>
    bd72:	83 c4 20             	add    $0x20,%esp
    bd75:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd78:	eb 1c                	jmp    bd96 <dump_fd_graph+0x1720>
    bd7a:	68 f0 02 00 00       	push   $0x2f0
    bd7f:	68 bc e7 00 00       	push   $0xe7bc
    bd84:	68 bc e7 00 00       	push   $0xe7bc
    bd89:	68 74 ea 00 00       	push   $0xea74
    bd8e:	e8 6a 09 00 00       	call   c6fd <assertion_failure>
    bd93:	83 c4 10             	add    $0x10,%esp
    bd96:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bd9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bd9d:	3b 45 cc             	cmp    -0x34(%ebp),%eax
    bda0:	0f 8c eb fe ff ff    	jl     bc91 <dump_fd_graph+0x161b>
    bda6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bdad:	eb 36                	jmp    bde5 <dump_fd_graph+0x176f>
    bdaf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bdb2:	8b 94 c5 a8 f1 ff ff 	mov    -0xe58(%ebp,%eax,8),%edx
    bdb9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bdbc:	8b 84 c5 ac f1 ff ff 	mov    -0xe54(%ebp,%eax,8),%eax
    bdc3:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bdc9:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bdcc:	01 d9                	add    %ebx,%ecx
    bdce:	52                   	push   %edx
    bdcf:	50                   	push   %eax
    bdd0:	68 d8 ee 00 00       	push   $0xeed8
    bdd5:	51                   	push   %ecx
    bdd6:	e8 66 06 00 00       	call   c441 <sprintf>
    bddb:	83 c4 10             	add    $0x10,%esp
    bdde:	01 45 e0             	add    %eax,-0x20(%ebp)
    bde1:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bde5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bde8:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    bdeb:	7c c2                	jl     bdaf <dump_fd_graph+0x1739>
    bded:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bdf4:	eb 6e                	jmp    be64 <dump_fd_graph+0x17ee>
    bdf6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bdf9:	89 d0                	mov    %edx,%eax
    bdfb:	01 c0                	add    %eax,%eax
    bdfd:	01 d0                	add    %edx,%eax
    bdff:	c1 e0 02             	shl    $0x2,%eax
    be02:	8d 7d e8             	lea    -0x18(%ebp),%edi
    be05:	01 f8                	add    %edi,%eax
    be07:	2d 38 1a 00 00       	sub    $0x1a38,%eax
    be0c:	8b 18                	mov    (%eax),%ebx
    be0e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    be11:	89 d0                	mov    %edx,%eax
    be13:	01 c0                	add    %eax,%eax
    be15:	01 d0                	add    %edx,%eax
    be17:	c1 e0 02             	shl    $0x2,%eax
    be1a:	8d 75 e8             	lea    -0x18(%ebp),%esi
    be1d:	01 f0                	add    %esi,%eax
    be1f:	2d 3c 1a 00 00       	sub    $0x1a3c,%eax
    be24:	8b 08                	mov    (%eax),%ecx
    be26:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    be29:	89 d0                	mov    %edx,%eax
    be2b:	01 c0                	add    %eax,%eax
    be2d:	01 d0                	add    %edx,%eax
    be2f:	c1 e0 02             	shl    $0x2,%eax
    be32:	8d 7d e8             	lea    -0x18(%ebp),%edi
    be35:	01 f8                	add    %edi,%eax
    be37:	2d 40 1a 00 00       	sub    $0x1a40,%eax
    be3c:	8b 00                	mov    (%eax),%eax
    be3e:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    be44:	8b 55 e0             	mov    -0x20(%ebp),%edx
    be47:	01 f2                	add    %esi,%edx
    be49:	83 ec 0c             	sub    $0xc,%esp
    be4c:	53                   	push   %ebx
    be4d:	51                   	push   %ecx
    be4e:	50                   	push   %eax
    be4f:	68 18 ef 00 00       	push   $0xef18
    be54:	52                   	push   %edx
    be55:	e8 e7 05 00 00       	call   c441 <sprintf>
    be5a:	83 c4 20             	add    $0x20,%esp
    be5d:	01 45 e0             	add    %eax,-0x20(%ebp)
    be60:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    be64:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be67:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
    be6a:	7c 8a                	jl     bdf6 <dump_fd_graph+0x1780>
    be6c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    be73:	eb 36                	jmp    beab <dump_fd_graph+0x1835>
    be75:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be78:	8b 94 c5 ac dd ff ff 	mov    -0x2254(%ebp,%eax,8),%edx
    be7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be82:	8b 84 c5 a8 dd ff ff 	mov    -0x2258(%ebp,%eax,8),%eax
    be89:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    be8f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    be92:	01 d9                	add    %ebx,%ecx
    be94:	52                   	push   %edx
    be95:	50                   	push   %eax
    be96:	68 3c ef 00 00       	push   $0xef3c
    be9b:	51                   	push   %ecx
    be9c:	e8 a0 05 00 00       	call   c441 <sprintf>
    bea1:	83 c4 10             	add    $0x10,%esp
    bea4:	01 45 e0             	add    %eax,-0x20(%ebp)
    bea7:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    beab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    beae:	3b 45 d0             	cmp    -0x30(%ebp),%eax
    beb1:	7c c2                	jl     be75 <dump_fd_graph+0x17ff>
    beb3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    beba:	eb 42                	jmp    befe <dump_fd_graph+0x1888>
    bebc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bebf:	6b c0 2c             	imul   $0x2c,%eax,%eax
    bec2:	05 44 39 01 00       	add    $0x13944,%eax
    bec7:	8b 00                	mov    (%eax),%eax
    bec9:	85 c0                	test   %eax,%eax
    becb:	74 2d                	je     befa <dump_fd_graph+0x1884>
    becd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bed0:	6b c0 2c             	imul   $0x2c,%eax,%eax
    bed3:	05 48 39 01 00       	add    $0x13948,%eax
    bed8:	8b 00                	mov    (%eax),%eax
    beda:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bee0:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bee3:	01 ca                	add    %ecx,%edx
    bee5:	50                   	push   %eax
    bee6:	ff 75 e4             	pushl  -0x1c(%ebp)
    bee9:	68 60 ef 00 00       	push   $0xef60
    beee:	52                   	push   %edx
    beef:	e8 4d 05 00 00       	call   c441 <sprintf>
    bef4:	83 c4 10             	add    $0x10,%esp
    bef7:	01 45 e0             	add    %eax,-0x20(%ebp)
    befa:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    befe:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    bf02:	7e b8                	jle    bebc <dump_fd_graph+0x1846>
    bf04:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf0d:	01 c2                	add    %eax,%edx
    bf0f:	83 ec 04             	sub    $0x4,%esp
    bf12:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    bf18:	50                   	push   %eax
    bf19:	68 85 ef 00 00       	push   $0xef85
    bf1e:	52                   	push   %edx
    bf1f:	e8 1d 05 00 00       	call   c441 <sprintf>
    bf24:	83 c4 10             	add    $0x10,%esp
    bf27:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf2a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf30:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf33:	01 d0                	add    %edx,%eax
    bf35:	83 ec 08             	sub    $0x8,%esp
    bf38:	68 95 ef 00 00       	push   $0xef95
    bf3d:	50                   	push   %eax
    bf3e:	e8 fe 04 00 00       	call   c441 <sprintf>
    bf43:	83 c4 10             	add    $0x10,%esp
    bf46:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf49:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf4f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf52:	01 d0                	add    %edx,%eax
    bf54:	83 ec 08             	sub    $0x8,%esp
    bf57:	68 98 ef 00 00       	push   $0xef98
    bf5c:	50                   	push   %eax
    bf5d:	e8 df 04 00 00       	call   c441 <sprintf>
    bf62:	83 c4 10             	add    $0x10,%esp
    bf65:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf68:	a1 20 d0 00 00       	mov    0xd020,%eax
    bf6d:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    bf70:	7c 1c                	jl     bf8e <dump_fd_graph+0x1918>
    bf72:	68 22 03 00 00       	push   $0x322
    bf77:	68 bc e7 00 00       	push   $0xe7bc
    bf7c:	68 bc e7 00 00       	push   $0xe7bc
    bf81:	68 a7 ef 00 00       	push   $0xefa7
    bf86:	e8 72 07 00 00       	call   c6fd <assertion_failure>
    bf8b:	83 c4 10             	add    $0x10,%esp
    bf8e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf94:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf97:	01 d0                	add    %edx,%eax
    bf99:	c6 00 00             	movb   $0x0,(%eax)
    bf9c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf9f:	89 45 ac             	mov    %eax,-0x54(%ebp)
    bfa2:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
    bfa9:	eb 6f                	jmp    c01a <dump_fd_graph+0x19a4>
    bfab:	b8 ff 01 00 00       	mov    $0x1ff,%eax
    bfb0:	81 7d ac ff 01 00 00 	cmpl   $0x1ff,-0x54(%ebp)
    bfb7:	0f 4e 45 ac          	cmovle -0x54(%ebp),%eax
    bfbb:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    bfc1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bfc7:	8b 45 a8             	mov    -0x58(%ebp),%eax
    bfca:	01 d0                	add    %edx,%eax
    bfcc:	83 ec 04             	sub    $0x4,%esp
    bfcf:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
    bfd5:	50                   	push   %eax
    bfd6:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bfdc:	50                   	push   %eax
    bfdd:	e8 8e 04 00 00       	call   c470 <memcpy>
    bfe2:	83 c4 10             	add    $0x10,%esp
    bfe5:	8d 95 a8 cf ff ff    	lea    -0x3058(%ebp),%edx
    bfeb:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    bff1:	01 d0                	add    %edx,%eax
    bff3:	c6 00 00             	movb   $0x0,(%eax)
    bff6:	83 ec 0c             	sub    $0xc,%esp
    bff9:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bfff:	50                   	push   %eax
    c000:	e8 03 e1 ff ff       	call   a108 <disklog>
    c005:	83 c4 10             	add    $0x10,%esp
    c008:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    c00e:	01 45 a8             	add    %eax,-0x58(%ebp)
    c011:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    c017:	29 45 ac             	sub    %eax,-0x54(%ebp)
    c01a:	83 7d ac 00          	cmpl   $0x0,-0x54(%ebp)
    c01e:	75 8b                	jne    bfab <dump_fd_graph+0x1935>
    c020:	e8 b8 a6 ff ff       	call   66dd <disable_int>
    c025:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    c02c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    c033:	eb 58                	jmp    c08d <dump_fd_graph+0x1a17>
    c035:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c038:	8b 40 74             	mov    0x74(%eax),%eax
    c03b:	83 f8 20             	cmp    $0x20,%eax
    c03e:	74 3e                	je     c07e <dump_fd_graph+0x1a08>
    c040:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    c044:	74 3b                	je     c081 <dump_fd_graph+0x1a0b>
    c046:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    c04a:	74 35                	je     c081 <dump_fd_graph+0x1a0b>
    c04c:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    c050:	74 2f                	je     c081 <dump_fd_graph+0x1a0b>
    c052:	e8 db 07 00 00       	call   c832 <getpid>
    c057:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    c05a:	74 25                	je     c081 <dump_fd_graph+0x1a0b>
    c05c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c05f:	8b 94 85 cc fa ff ff 	mov    -0x534(%ebp,%eax,4),%edx
    c066:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c069:	89 50 5c             	mov    %edx,0x5c(%eax)
    c06c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c06f:	8b 94 85 38 fa ff ff 	mov    -0x5c8(%ebp,%eax,4),%edx
    c076:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c079:	89 50 60             	mov    %edx,0x60(%eax)
    c07c:	eb 04                	jmp    c082 <dump_fd_graph+0x1a0c>
    c07e:	90                   	nop
    c07f:	eb 01                	jmp    c082 <dump_fd_graph+0x1a0c>
    c081:	90                   	nop
    c082:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    c086:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    c08d:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    c091:	7e a2                	jle    c035 <dump_fd_graph+0x19bf>
    c093:	e8 47 a6 ff ff       	call   66df <enable_int>
    c098:	83 ec 0c             	sub    $0xc,%esp
    c09b:	68 bf ef 00 00       	push   $0xefbf
    c0a0:	e8 77 00 00 00       	call   c11c <printl>
    c0a5:	83 c4 10             	add    $0x10,%esp
    c0a8:	90                   	nop
    c0a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    c0ac:	5b                   	pop    %ebx
    c0ad:	5e                   	pop    %esi
    c0ae:	5f                   	pop    %edi
    c0af:	5d                   	pop    %ebp
    c0b0:	c3                   	ret    

0000c0b1 <printf>:
    c0b1:	55                   	push   %ebp
    c0b2:	89 e5                	mov    %esp,%ebp
    c0b4:	81 ec 18 04 00 00    	sub    $0x418,%esp
    c0ba:	8d 45 0c             	lea    0xc(%ebp),%eax
    c0bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c0c0:	8b 45 08             	mov    0x8(%ebp),%eax
    c0c3:	83 ec 04             	sub    $0x4,%esp
    c0c6:	ff 75 f4             	pushl  -0xc(%ebp)
    c0c9:	50                   	push   %eax
    c0ca:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c0d0:	50                   	push   %eax
    c0d1:	e8 ee 00 00 00       	call   c1c4 <vsprintf>
    c0d6:	83 c4 10             	add    $0x10,%esp
    c0d9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c0dc:	83 ec 04             	sub    $0x4,%esp
    c0df:	ff 75 f0             	pushl  -0x10(%ebp)
    c0e2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c0e8:	50                   	push   %eax
    c0e9:	6a 01                	push   $0x1
    c0eb:	e8 e0 06 00 00       	call   c7d0 <write>
    c0f0:	83 c4 10             	add    $0x10,%esp
    c0f3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c0f6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    c0f9:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    c0fc:	74 19                	je     c117 <printf+0x66>
    c0fe:	6a 50                	push   $0x50
    c100:	68 c2 ef 00 00       	push   $0xefc2
    c105:	68 c2 ef 00 00       	push   $0xefc2
    c10a:	68 cf ef 00 00       	push   $0xefcf
    c10f:	e8 e9 05 00 00       	call   c6fd <assertion_failure>
    c114:	83 c4 10             	add    $0x10,%esp
    c117:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c11a:	c9                   	leave  
    c11b:	c3                   	ret    

0000c11c <printl>:
    c11c:	55                   	push   %ebp
    c11d:	89 e5                	mov    %esp,%ebp
    c11f:	81 ec 18 04 00 00    	sub    $0x418,%esp
    c125:	8d 45 0c             	lea    0xc(%ebp),%eax
    c128:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c12b:	8b 45 08             	mov    0x8(%ebp),%eax
    c12e:	83 ec 04             	sub    $0x4,%esp
    c131:	ff 75 f4             	pushl  -0xc(%ebp)
    c134:	50                   	push   %eax
    c135:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    c13b:	50                   	push   %eax
    c13c:	e8 83 00 00 00       	call   c1c4 <vsprintf>
    c141:	83 c4 10             	add    $0x10,%esp
    c144:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c147:	83 ec 0c             	sub    $0xc,%esp
    c14a:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    c150:	50                   	push   %eax
    c151:	e8 84 0a 00 00       	call   cbda <printx>
    c156:	83 c4 10             	add    $0x10,%esp
    c159:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c15c:	c9                   	leave  
    c15d:	c3                   	ret    

0000c15e <i2a>:
    c15e:	55                   	push   %ebp
    c15f:	89 e5                	mov    %esp,%ebp
    c161:	53                   	push   %ebx
    c162:	83 ec 14             	sub    $0x14,%esp
    c165:	8b 45 08             	mov    0x8(%ebp),%eax
    c168:	99                   	cltd   
    c169:	f7 7d 0c             	idivl  0xc(%ebp)
    c16c:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c16f:	8b 45 08             	mov    0x8(%ebp),%eax
    c172:	99                   	cltd   
    c173:	f7 7d 0c             	idivl  0xc(%ebp)
    c176:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c179:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    c17d:	74 14                	je     c193 <i2a+0x35>
    c17f:	83 ec 04             	sub    $0x4,%esp
    c182:	ff 75 10             	pushl  0x10(%ebp)
    c185:	ff 75 0c             	pushl  0xc(%ebp)
    c188:	ff 75 f0             	pushl  -0x10(%ebp)
    c18b:	e8 ce ff ff ff       	call   c15e <i2a>
    c190:	83 c4 10             	add    $0x10,%esp
    c193:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    c197:	7f 0a                	jg     c1a3 <i2a+0x45>
    c199:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c19c:	83 c0 30             	add    $0x30,%eax
    c19f:	89 c3                	mov    %eax,%ebx
    c1a1:	eb 08                	jmp    c1ab <i2a+0x4d>
    c1a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c1a6:	83 c0 37             	add    $0x37,%eax
    c1a9:	89 c3                	mov    %eax,%ebx
    c1ab:	8b 45 10             	mov    0x10(%ebp),%eax
    c1ae:	8b 00                	mov    (%eax),%eax
    c1b0:	8d 48 01             	lea    0x1(%eax),%ecx
    c1b3:	8b 55 10             	mov    0x10(%ebp),%edx
    c1b6:	89 0a                	mov    %ecx,(%edx)
    c1b8:	88 18                	mov    %bl,(%eax)
    c1ba:	8b 45 10             	mov    0x10(%ebp),%eax
    c1bd:	8b 00                	mov    (%eax),%eax
    c1bf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    c1c2:	c9                   	leave  
    c1c3:	c3                   	ret    

0000c1c4 <vsprintf>:
    c1c4:	55                   	push   %ebp
    c1c5:	89 e5                	mov    %esp,%ebp
    c1c7:	81 ec 28 04 00 00    	sub    $0x428,%esp
    c1cd:	8b 45 10             	mov    0x10(%ebp),%eax
    c1d0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c1d3:	8b 45 08             	mov    0x8(%ebp),%eax
    c1d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c1d9:	e9 47 02 00 00       	jmp    c425 <vsprintf+0x261>
    c1de:	8b 45 0c             	mov    0xc(%ebp),%eax
    c1e1:	0f b6 00             	movzbl (%eax),%eax
    c1e4:	3c 25                	cmp    $0x25,%al
    c1e6:	74 16                	je     c1fe <vsprintf+0x3a>
    c1e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c1eb:	8d 50 01             	lea    0x1(%eax),%edx
    c1ee:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c1f1:	8b 55 0c             	mov    0xc(%ebp),%edx
    c1f4:	0f b6 12             	movzbl (%edx),%edx
    c1f7:	88 10                	mov    %dl,(%eax)
    c1f9:	e9 23 02 00 00       	jmp    c421 <vsprintf+0x25d>
    c1fe:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    c205:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c209:	8b 45 0c             	mov    0xc(%ebp),%eax
    c20c:	0f b6 00             	movzbl (%eax),%eax
    c20f:	3c 25                	cmp    $0x25,%al
    c211:	75 16                	jne    c229 <vsprintf+0x65>
    c213:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c216:	8d 50 01             	lea    0x1(%eax),%edx
    c219:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c21c:	8b 55 0c             	mov    0xc(%ebp),%edx
    c21f:	0f b6 12             	movzbl (%edx),%edx
    c222:	88 10                	mov    %dl,(%eax)
    c224:	e9 f8 01 00 00       	jmp    c421 <vsprintf+0x25d>
    c229:	8b 45 0c             	mov    0xc(%ebp),%eax
    c22c:	0f b6 00             	movzbl (%eax),%eax
    c22f:	3c 30                	cmp    $0x30,%al
    c231:	75 0a                	jne    c23d <vsprintf+0x79>
    c233:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
    c237:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c23b:	eb 28                	jmp    c265 <vsprintf+0xa1>
    c23d:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
    c241:	eb 22                	jmp    c265 <vsprintf+0xa1>
    c243:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    c246:	89 d0                	mov    %edx,%eax
    c248:	c1 e0 02             	shl    $0x2,%eax
    c24b:	01 d0                	add    %edx,%eax
    c24d:	01 c0                	add    %eax,%eax
    c24f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    c252:	8b 45 0c             	mov    0xc(%ebp),%eax
    c255:	0f b6 00             	movzbl (%eax),%eax
    c258:	0f be c0             	movsbl %al,%eax
    c25b:	83 e8 30             	sub    $0x30,%eax
    c25e:	01 45 e4             	add    %eax,-0x1c(%ebp)
    c261:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c265:	8b 45 0c             	mov    0xc(%ebp),%eax
    c268:	0f b6 00             	movzbl (%eax),%eax
    c26b:	3c 2f                	cmp    $0x2f,%al
    c26d:	76 0a                	jbe    c279 <vsprintf+0xb5>
    c26f:	8b 45 0c             	mov    0xc(%ebp),%eax
    c272:	0f b6 00             	movzbl (%eax),%eax
    c275:	3c 39                	cmp    $0x39,%al
    c277:	76 ca                	jbe    c243 <vsprintf+0x7f>
    c279:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c27f:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c285:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c28b:	83 ec 04             	sub    $0x4,%esp
    c28e:	68 00 04 00 00       	push   $0x400
    c293:	6a 00                	push   $0x0
    c295:	50                   	push   %eax
    c296:	e8 fe 01 00 00       	call   c499 <memset>
    c29b:	83 c4 10             	add    $0x10,%esp
    c29e:	8b 45 0c             	mov    0xc(%ebp),%eax
    c2a1:	0f b6 00             	movzbl (%eax),%eax
    c2a4:	0f be c0             	movsbl %al,%eax
    c2a7:	83 f8 64             	cmp    $0x64,%eax
    c2aa:	74 67                	je     c313 <vsprintf+0x14f>
    c2ac:	83 f8 64             	cmp    $0x64,%eax
    c2af:	7f 0a                	jg     c2bb <vsprintf+0xf7>
    c2b1:	83 f8 63             	cmp    $0x63,%eax
    c2b4:	74 18                	je     c2ce <vsprintf+0x10a>
    c2b6:	e9 d6 00 00 00       	jmp    c391 <vsprintf+0x1cd>
    c2bb:	83 f8 73             	cmp    $0x73,%eax
    c2be:	0f 84 8f 00 00 00    	je     c353 <vsprintf+0x18f>
    c2c4:	83 f8 78             	cmp    $0x78,%eax
    c2c7:	74 25                	je     c2ee <vsprintf+0x12a>
    c2c9:	e9 c3 00 00 00       	jmp    c391 <vsprintf+0x1cd>
    c2ce:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c2d4:	8d 50 01             	lea    0x1(%eax),%edx
    c2d7:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c2dd:	8b 55 f0             	mov    -0x10(%ebp),%edx
    c2e0:	0f b6 12             	movzbl (%edx),%edx
    c2e3:	88 10                	mov    %dl,(%eax)
    c2e5:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c2e9:	e9 a3 00 00 00       	jmp    c391 <vsprintf+0x1cd>
    c2ee:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c2f1:	8b 00                	mov    (%eax),%eax
    c2f3:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c2f6:	83 ec 04             	sub    $0x4,%esp
    c2f9:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c2ff:	50                   	push   %eax
    c300:	6a 10                	push   $0x10
    c302:	ff 75 ec             	pushl  -0x14(%ebp)
    c305:	e8 54 fe ff ff       	call   c15e <i2a>
    c30a:	83 c4 10             	add    $0x10,%esp
    c30d:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c311:	eb 7e                	jmp    c391 <vsprintf+0x1cd>
    c313:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c316:	8b 00                	mov    (%eax),%eax
    c318:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c31b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    c31f:	79 15                	jns    c336 <vsprintf+0x172>
    c321:	f7 5d ec             	negl   -0x14(%ebp)
    c324:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c32a:	8d 50 01             	lea    0x1(%eax),%edx
    c32d:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c333:	c6 00 2d             	movb   $0x2d,(%eax)
    c336:	83 ec 04             	sub    $0x4,%esp
    c339:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c33f:	50                   	push   %eax
    c340:	6a 0a                	push   $0xa
    c342:	ff 75 ec             	pushl  -0x14(%ebp)
    c345:	e8 14 fe ff ff       	call   c15e <i2a>
    c34a:	83 c4 10             	add    $0x10,%esp
    c34d:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c351:	eb 3e                	jmp    c391 <vsprintf+0x1cd>
    c353:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c356:	8b 10                	mov    (%eax),%edx
    c358:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c35e:	83 ec 08             	sub    $0x8,%esp
    c361:	52                   	push   %edx
    c362:	50                   	push   %eax
    c363:	e8 52 01 00 00       	call   c4ba <strcpy>
    c368:	83 c4 10             	add    $0x10,%esp
    c36b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c36e:	8b 00                	mov    (%eax),%eax
    c370:	83 ec 0c             	sub    $0xc,%esp
    c373:	50                   	push   %eax
    c374:	e8 59 01 00 00       	call   c4d2 <strlen>
    c379:	83 c4 10             	add    $0x10,%esp
    c37c:	89 c2                	mov    %eax,%edx
    c37e:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c384:	01 d0                	add    %edx,%eax
    c386:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c38c:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c390:	90                   	nop
    c391:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    c398:	eb 13                	jmp    c3ad <vsprintf+0x1e9>
    c39a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c39d:	8d 50 01             	lea    0x1(%eax),%edx
    c3a0:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c3a3:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
    c3a7:	88 10                	mov    %dl,(%eax)
    c3a9:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    c3ad:	83 ec 0c             	sub    $0xc,%esp
    c3b0:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c3b6:	50                   	push   %eax
    c3b7:	e8 16 01 00 00       	call   c4d2 <strlen>
    c3bc:	83 c4 10             	add    $0x10,%esp
    c3bf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    c3c2:	7e 1b                	jle    c3df <vsprintf+0x21b>
    c3c4:	83 ec 0c             	sub    $0xc,%esp
    c3c7:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c3cd:	50                   	push   %eax
    c3ce:	e8 ff 00 00 00       	call   c4d2 <strlen>
    c3d3:	83 c4 10             	add    $0x10,%esp
    c3d6:	89 c2                	mov    %eax,%edx
    c3d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c3db:	29 d0                	sub    %edx,%eax
    c3dd:	eb 05                	jmp    c3e4 <vsprintf+0x220>
    c3df:	b8 00 00 00 00       	mov    $0x0,%eax
    c3e4:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    c3e7:	7f b1                	jg     c39a <vsprintf+0x1d6>
    c3e9:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c3ef:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c3f5:	eb 1d                	jmp    c414 <vsprintf+0x250>
    c3f7:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    c3fd:	8d 42 01             	lea    0x1(%edx),%eax
    c400:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c406:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c409:	8d 48 01             	lea    0x1(%eax),%ecx
    c40c:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    c40f:	0f b6 12             	movzbl (%edx),%edx
    c412:	88 10                	mov    %dl,(%eax)
    c414:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c41a:	0f b6 00             	movzbl (%eax),%eax
    c41d:	84 c0                	test   %al,%al
    c41f:	75 d6                	jne    c3f7 <vsprintf+0x233>
    c421:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c425:	8b 45 0c             	mov    0xc(%ebp),%eax
    c428:	0f b6 00             	movzbl (%eax),%eax
    c42b:	84 c0                	test   %al,%al
    c42d:	0f 85 ab fd ff ff    	jne    c1de <vsprintf+0x1a>
    c433:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c436:	c6 00 00             	movb   $0x0,(%eax)
    c439:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c43c:	2b 45 08             	sub    0x8(%ebp),%eax
    c43f:	c9                   	leave  
    c440:	c3                   	ret    

0000c441 <sprintf>:
    c441:	55                   	push   %ebp
    c442:	89 e5                	mov    %esp,%ebp
    c444:	83 ec 18             	sub    $0x18,%esp
    c447:	8d 45 0c             	lea    0xc(%ebp),%eax
    c44a:	83 c0 04             	add    $0x4,%eax
    c44d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c450:	8b 45 0c             	mov    0xc(%ebp),%eax
    c453:	83 ec 04             	sub    $0x4,%esp
    c456:	ff 75 f4             	pushl  -0xc(%ebp)
    c459:	50                   	push   %eax
    c45a:	ff 75 08             	pushl  0x8(%ebp)
    c45d:	e8 62 fd ff ff       	call   c1c4 <vsprintf>
    c462:	83 c4 10             	add    $0x10,%esp
    c465:	c9                   	leave  
    c466:	c3                   	ret    
    c467:	66 90                	xchg   %ax,%ax
    c469:	66 90                	xchg   %ax,%ax
    c46b:	66 90                	xchg   %ax,%ax
    c46d:	66 90                	xchg   %ax,%ax
    c46f:	90                   	nop

0000c470 <memcpy>:
    c470:	55                   	push   %ebp
    c471:	89 e5                	mov    %esp,%ebp
    c473:	56                   	push   %esi
    c474:	57                   	push   %edi
    c475:	51                   	push   %ecx
    c476:	8b 7d 08             	mov    0x8(%ebp),%edi
    c479:	8b 75 0c             	mov    0xc(%ebp),%esi
    c47c:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c47f <memcpy.1>:
    c47f:	83 f9 00             	cmp    $0x0,%ecx
    c482:	74 0b                	je     c48f <memcpy.2>
    c484:	3e 8a 06             	mov    %ds:(%esi),%al
    c487:	46                   	inc    %esi
    c488:	26 88 07             	mov    %al,%es:(%edi)
    c48b:	47                   	inc    %edi
    c48c:	49                   	dec    %ecx
    c48d:	eb f0                	jmp    c47f <memcpy.1>

0000c48f <memcpy.2>:
    c48f:	8b 45 08             	mov    0x8(%ebp),%eax
    c492:	59                   	pop    %ecx
    c493:	5f                   	pop    %edi
    c494:	5e                   	pop    %esi
    c495:	89 ec                	mov    %ebp,%esp
    c497:	5d                   	pop    %ebp
    c498:	c3                   	ret    

0000c499 <memset>:
    c499:	55                   	push   %ebp
    c49a:	89 e5                	mov    %esp,%ebp
    c49c:	56                   	push   %esi
    c49d:	57                   	push   %edi
    c49e:	51                   	push   %ecx
    c49f:	8b 7d 08             	mov    0x8(%ebp),%edi
    c4a2:	8b 55 0c             	mov    0xc(%ebp),%edx
    c4a5:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c4a8 <memset.1>:
    c4a8:	83 f9 00             	cmp    $0x0,%ecx
    c4ab:	74 06                	je     c4b3 <memset.2>
    c4ad:	88 17                	mov    %dl,(%edi)
    c4af:	47                   	inc    %edi
    c4b0:	49                   	dec    %ecx
    c4b1:	eb f5                	jmp    c4a8 <memset.1>

0000c4b3 <memset.2>:
    c4b3:	59                   	pop    %ecx
    c4b4:	5f                   	pop    %edi
    c4b5:	5e                   	pop    %esi
    c4b6:	89 ec                	mov    %ebp,%esp
    c4b8:	5d                   	pop    %ebp
    c4b9:	c3                   	ret    

0000c4ba <strcpy>:
    c4ba:	55                   	push   %ebp
    c4bb:	89 e5                	mov    %esp,%ebp
    c4bd:	8b 75 0c             	mov    0xc(%ebp),%esi
    c4c0:	8b 7d 08             	mov    0x8(%ebp),%edi

0000c4c3 <strcpy.1>:
    c4c3:	8a 06                	mov    (%esi),%al
    c4c5:	46                   	inc    %esi
    c4c6:	88 07                	mov    %al,(%edi)
    c4c8:	47                   	inc    %edi
    c4c9:	3c 00                	cmp    $0x0,%al
    c4cb:	75 f6                	jne    c4c3 <strcpy.1>
    c4cd:	8b 45 08             	mov    0x8(%ebp),%eax
    c4d0:	5d                   	pop    %ebp
    c4d1:	c3                   	ret    

0000c4d2 <strlen>:
    c4d2:	55                   	push   %ebp
    c4d3:	89 e5                	mov    %esp,%ebp
    c4d5:	b8 00 00 00 00       	mov    $0x0,%eax
    c4da:	8b 75 08             	mov    0x8(%ebp),%esi

0000c4dd <strlen.1>:
    c4dd:	80 3e 00             	cmpb   $0x0,(%esi)
    c4e0:	74 04                	je     c4e6 <strlen.2>
    c4e2:	46                   	inc    %esi
    c4e3:	40                   	inc    %eax
    c4e4:	eb f7                	jmp    c4dd <strlen.1>

0000c4e6 <strlen.2>:
    c4e6:	5d                   	pop    %ebp
    c4e7:	c3                   	ret    

0000c4e8 <send_recv>:
    c4e8:	55                   	push   %ebp
    c4e9:	89 e5                	mov    %esp,%ebp
    c4eb:	83 ec 18             	sub    $0x18,%esp
    c4ee:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c4f5:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c4f9:	75 12                	jne    c50d <send_recv+0x25>
    c4fb:	83 ec 04             	sub    $0x4,%esp
    c4fe:	6a 30                	push   $0x30
    c500:	6a 00                	push   $0x0
    c502:	ff 75 10             	pushl  0x10(%ebp)
    c505:	e8 8f ff ff ff       	call   c499 <memset>
    c50a:	83 c4 10             	add    $0x10,%esp
    c50d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c511:	7e 59                	jle    c56c <send_recv+0x84>
    c513:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c517:	7e 3a                	jle    c553 <send_recv+0x6b>
    c519:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c51d:	75 4d                	jne    c56c <send_recv+0x84>
    c51f:	83 ec 04             	sub    $0x4,%esp
    c522:	ff 75 10             	pushl  0x10(%ebp)
    c525:	ff 75 0c             	pushl  0xc(%ebp)
    c528:	6a 01                	push   $0x1
    c52a:	e8 91 06 00 00       	call   cbc0 <sendrec>
    c52f:	83 c4 10             	add    $0x10,%esp
    c532:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c535:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    c539:	75 5e                	jne    c599 <send_recv+0xb1>
    c53b:	83 ec 04             	sub    $0x4,%esp
    c53e:	ff 75 10             	pushl  0x10(%ebp)
    c541:	ff 75 0c             	pushl  0xc(%ebp)
    c544:	6a 02                	push   $0x2
    c546:	e8 75 06 00 00       	call   cbc0 <sendrec>
    c54b:	83 c4 10             	add    $0x10,%esp
    c54e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c551:	eb 46                	jmp    c599 <send_recv+0xb1>
    c553:	83 ec 04             	sub    $0x4,%esp
    c556:	ff 75 10             	pushl  0x10(%ebp)
    c559:	ff 75 0c             	pushl  0xc(%ebp)
    c55c:	ff 75 08             	pushl  0x8(%ebp)
    c55f:	e8 5c 06 00 00       	call   cbc0 <sendrec>
    c564:	83 c4 10             	add    $0x10,%esp
    c567:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c56a:	eb 31                	jmp    c59d <send_recv+0xb5>
    c56c:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c570:	74 2a                	je     c59c <send_recv+0xb4>
    c572:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    c576:	74 24                	je     c59c <send_recv+0xb4>
    c578:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c57c:	74 1e                	je     c59c <send_recv+0xb4>
    c57e:	6a 39                	push   $0x39
    c580:	68 d8 ef 00 00       	push   $0xefd8
    c585:	68 d8 ef 00 00       	push   $0xefd8
    c58a:	68 e4 ef 00 00       	push   $0xefe4
    c58f:	e8 69 01 00 00       	call   c6fd <assertion_failure>
    c594:	83 c4 10             	add    $0x10,%esp
    c597:	eb 03                	jmp    c59c <send_recv+0xb4>
    c599:	90                   	nop
    c59a:	eb 01                	jmp    c59d <send_recv+0xb5>
    c59c:	90                   	nop
    c59d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c5a0:	c9                   	leave  
    c5a1:	c3                   	ret    

0000c5a2 <memcmp>:
    c5a2:	55                   	push   %ebp
    c5a3:	89 e5                	mov    %esp,%ebp
    c5a5:	83 ec 10             	sub    $0x10,%esp
    c5a8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c5ac:	74 06                	je     c5b4 <memcmp+0x12>
    c5ae:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c5b2:	75 08                	jne    c5bc <memcmp+0x1a>
    c5b4:	8b 45 08             	mov    0x8(%ebp),%eax
    c5b7:	2b 45 0c             	sub    0xc(%ebp),%eax
    c5ba:	eb 56                	jmp    c612 <memcmp+0x70>
    c5bc:	8b 45 08             	mov    0x8(%ebp),%eax
    c5bf:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c5c2:	8b 45 0c             	mov    0xc(%ebp),%eax
    c5c5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c5c8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c5cf:	eb 34                	jmp    c605 <memcmp+0x63>
    c5d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c5d4:	0f b6 10             	movzbl (%eax),%edx
    c5d7:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c5da:	0f b6 00             	movzbl (%eax),%eax
    c5dd:	38 c2                	cmp    %al,%dl
    c5df:	74 18                	je     c5f9 <memcmp+0x57>
    c5e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c5e4:	0f b6 00             	movzbl (%eax),%eax
    c5e7:	0f be d0             	movsbl %al,%edx
    c5ea:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c5ed:	0f b6 00             	movzbl (%eax),%eax
    c5f0:	0f be c0             	movsbl %al,%eax
    c5f3:	29 c2                	sub    %eax,%edx
    c5f5:	89 d0                	mov    %edx,%eax
    c5f7:	eb 19                	jmp    c612 <memcmp+0x70>
    c5f9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    c5fd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c601:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c605:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c608:	3b 45 10             	cmp    0x10(%ebp),%eax
    c60b:	7c c4                	jl     c5d1 <memcmp+0x2f>
    c60d:	b8 00 00 00 00       	mov    $0x0,%eax
    c612:	c9                   	leave  
    c613:	c3                   	ret    

0000c614 <strcmp>:
    c614:	55                   	push   %ebp
    c615:	89 e5                	mov    %esp,%ebp
    c617:	83 ec 10             	sub    $0x10,%esp
    c61a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c61e:	74 06                	je     c626 <strcmp+0x12>
    c620:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c624:	75 08                	jne    c62e <strcmp+0x1a>
    c626:	8b 45 08             	mov    0x8(%ebp),%eax
    c629:	2b 45 0c             	sub    0xc(%ebp),%eax
    c62c:	eb 53                	jmp    c681 <strcmp+0x6d>
    c62e:	8b 45 08             	mov    0x8(%ebp),%eax
    c631:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c634:	8b 45 0c             	mov    0xc(%ebp),%eax
    c637:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c63a:	eb 18                	jmp    c654 <strcmp+0x40>
    c63c:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c63f:	0f b6 10             	movzbl (%eax),%edx
    c642:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c645:	0f b6 00             	movzbl (%eax),%eax
    c648:	38 c2                	cmp    %al,%dl
    c64a:	75 1e                	jne    c66a <strcmp+0x56>
    c64c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c650:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c654:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c657:	0f b6 00             	movzbl (%eax),%eax
    c65a:	84 c0                	test   %al,%al
    c65c:	74 0d                	je     c66b <strcmp+0x57>
    c65e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c661:	0f b6 00             	movzbl (%eax),%eax
    c664:	84 c0                	test   %al,%al
    c666:	75 d4                	jne    c63c <strcmp+0x28>
    c668:	eb 01                	jmp    c66b <strcmp+0x57>
    c66a:	90                   	nop
    c66b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c66e:	0f b6 00             	movzbl (%eax),%eax
    c671:	0f be d0             	movsbl %al,%edx
    c674:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c677:	0f b6 00             	movzbl (%eax),%eax
    c67a:	0f be c0             	movsbl %al,%eax
    c67d:	29 c2                	sub    %eax,%edx
    c67f:	89 d0                	mov    %edx,%eax
    c681:	c9                   	leave  
    c682:	c3                   	ret    

0000c683 <strcat>:
    c683:	55                   	push   %ebp
    c684:	89 e5                	mov    %esp,%ebp
    c686:	83 ec 10             	sub    $0x10,%esp
    c689:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c68d:	74 06                	je     c695 <strcat+0x12>
    c68f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c693:	75 07                	jne    c69c <strcat+0x19>
    c695:	b8 00 00 00 00       	mov    $0x0,%eax
    c69a:	eb 44                	jmp    c6e0 <strcat+0x5d>
    c69c:	8b 45 08             	mov    0x8(%ebp),%eax
    c69f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c6a2:	eb 04                	jmp    c6a8 <strcat+0x25>
    c6a4:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c6a8:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c6ab:	0f b6 00             	movzbl (%eax),%eax
    c6ae:	84 c0                	test   %al,%al
    c6b0:	75 f2                	jne    c6a4 <strcat+0x21>
    c6b2:	8b 45 0c             	mov    0xc(%ebp),%eax
    c6b5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c6b8:	eb 13                	jmp    c6cd <strcat+0x4a>
    c6ba:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c6bd:	0f b6 10             	movzbl (%eax),%edx
    c6c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c6c3:	88 10                	mov    %dl,(%eax)
    c6c5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c6c9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c6cd:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c6d0:	0f b6 00             	movzbl (%eax),%eax
    c6d3:	84 c0                	test   %al,%al
    c6d5:	75 e3                	jne    c6ba <strcat+0x37>
    c6d7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c6da:	c6 00 00             	movb   $0x0,(%eax)
    c6dd:	8b 45 08             	mov    0x8(%ebp),%eax
    c6e0:	c9                   	leave  
    c6e1:	c3                   	ret    

0000c6e2 <spin>:
    c6e2:	55                   	push   %ebp
    c6e3:	89 e5                	mov    %esp,%ebp
    c6e5:	83 ec 08             	sub    $0x8,%esp
    c6e8:	83 ec 08             	sub    $0x8,%esp
    c6eb:	ff 75 08             	pushl  0x8(%ebp)
    c6ee:	68 26 f0 00 00       	push   $0xf026
    c6f3:	e8 24 fa ff ff       	call   c11c <printl>
    c6f8:	83 c4 10             	add    $0x10,%esp
    c6fb:	eb fe                	jmp    c6fb <spin+0x19>

0000c6fd <assertion_failure>:
    c6fd:	55                   	push   %ebp
    c6fe:	89 e5                	mov    %esp,%ebp
    c700:	83 ec 08             	sub    $0x8,%esp
    c703:	83 ec 08             	sub    $0x8,%esp
    c706:	ff 75 14             	pushl  0x14(%ebp)
    c709:	ff 75 10             	pushl  0x10(%ebp)
    c70c:	ff 75 0c             	pushl  0xc(%ebp)
    c70f:	ff 75 08             	pushl  0x8(%ebp)
    c712:	6a 03                	push   $0x3
    c714:	68 3c f0 00 00       	push   $0xf03c
    c719:	e8 fe f9 ff ff       	call   c11c <printl>
    c71e:	83 c4 20             	add    $0x20,%esp
    c721:	83 ec 0c             	sub    $0xc,%esp
    c724:	68 71 f0 00 00       	push   $0xf071
    c729:	e8 b4 ff ff ff       	call   c6e2 <spin>
    c72e:	83 c4 10             	add    $0x10,%esp
    c731:	0f 0b                	ud2    
    c733:	90                   	nop
    c734:	c9                   	leave  
    c735:	c3                   	ret    

0000c736 <open>:
    c736:	55                   	push   %ebp
    c737:	89 e5                	mov    %esp,%ebp
    c739:	83 ec 38             	sub    $0x38,%esp
    c73c:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%ebp)
    c743:	8b 45 08             	mov    0x8(%ebp),%eax
    c746:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c749:	8b 45 0c             	mov    0xc(%ebp),%eax
    c74c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c74f:	83 ec 0c             	sub    $0xc,%esp
    c752:	ff 75 08             	pushl  0x8(%ebp)
    c755:	e8 78 fd ff ff       	call   c4d2 <strlen>
    c75a:	83 c4 10             	add    $0x10,%esp
    c75d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c760:	83 ec 04             	sub    $0x4,%esp
    c763:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c766:	50                   	push   %eax
    c767:	6a 03                	push   $0x3
    c769:	6a 03                	push   $0x3
    c76b:	e8 78 fd ff ff       	call   c4e8 <send_recv>
    c770:	83 c4 10             	add    $0x10,%esp
    c773:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c776:	83 f8 12             	cmp    $0x12,%eax
    c779:	74 19                	je     c794 <open+0x5e>
    c77b:	6a 2c                	push   $0x2c
    c77d:	68 85 f0 00 00       	push   $0xf085
    c782:	68 85 f0 00 00       	push   $0xf085
    c787:	68 90 f0 00 00       	push   $0xf090
    c78c:	e8 6c ff ff ff       	call   c6fd <assertion_failure>
    c791:	83 c4 10             	add    $0x10,%esp
    c794:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c797:	c9                   	leave  
    c798:	c3                   	ret    

0000c799 <read>:
    c799:	55                   	push   %ebp
    c79a:	89 e5                	mov    %esp,%ebp
    c79c:	83 ec 38             	sub    $0x38,%esp
    c79f:	c7 45 cc 07 00 00 00 	movl   $0x7,-0x34(%ebp)
    c7a6:	8b 45 08             	mov    0x8(%ebp),%eax
    c7a9:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c7ac:	8b 45 0c             	mov    0xc(%ebp),%eax
    c7af:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c7b2:	8b 45 10             	mov    0x10(%ebp),%eax
    c7b5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c7b8:	83 ec 04             	sub    $0x4,%esp
    c7bb:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c7be:	50                   	push   %eax
    c7bf:	6a 03                	push   $0x3
    c7c1:	6a 03                	push   $0x3
    c7c3:	e8 20 fd ff ff       	call   c4e8 <send_recv>
    c7c8:	83 c4 10             	add    $0x10,%esp
    c7cb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c7ce:	c9                   	leave  
    c7cf:	c3                   	ret    

0000c7d0 <write>:
    c7d0:	55                   	push   %ebp
    c7d1:	89 e5                	mov    %esp,%ebp
    c7d3:	83 ec 38             	sub    $0x38,%esp
    c7d6:	c7 45 cc 08 00 00 00 	movl   $0x8,-0x34(%ebp)
    c7dd:	8b 45 08             	mov    0x8(%ebp),%eax
    c7e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c7e3:	8b 45 0c             	mov    0xc(%ebp),%eax
    c7e6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c7e9:	8b 45 10             	mov    0x10(%ebp),%eax
    c7ec:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c7ef:	83 ec 04             	sub    $0x4,%esp
    c7f2:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c7f5:	50                   	push   %eax
    c7f6:	6a 03                	push   $0x3
    c7f8:	6a 03                	push   $0x3
    c7fa:	e8 e9 fc ff ff       	call   c4e8 <send_recv>
    c7ff:	83 c4 10             	add    $0x10,%esp
    c802:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c805:	c9                   	leave  
    c806:	c3                   	ret    

0000c807 <close>:
    c807:	55                   	push   %ebp
    c808:	89 e5                	mov    %esp,%ebp
    c80a:	83 ec 38             	sub    $0x38,%esp
    c80d:	c7 45 cc 06 00 00 00 	movl   $0x6,-0x34(%ebp)
    c814:	8b 45 08             	mov    0x8(%ebp),%eax
    c817:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c81a:	83 ec 04             	sub    $0x4,%esp
    c81d:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c820:	50                   	push   %eax
    c821:	6a 03                	push   $0x3
    c823:	6a 03                	push   $0x3
    c825:	e8 be fc ff ff       	call   c4e8 <send_recv>
    c82a:	83 c4 10             	add    $0x10,%esp
    c82d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c830:	c9                   	leave  
    c831:	c3                   	ret    

0000c832 <getpid>:
    c832:	55                   	push   %ebp
    c833:	89 e5                	mov    %esp,%ebp
    c835:	83 ec 38             	sub    $0x38,%esp
    c838:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
    c83f:	83 ec 04             	sub    $0x4,%esp
    c842:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c845:	50                   	push   %eax
    c846:	6a 01                	push   $0x1
    c848:	6a 03                	push   $0x3
    c84a:	e8 99 fc ff ff       	call   c4e8 <send_recv>
    c84f:	83 c4 10             	add    $0x10,%esp
    c852:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c855:	83 f8 12             	cmp    $0x12,%eax
    c858:	74 19                	je     c873 <getpid+0x41>
    c85a:	6a 25                	push   $0x25
    c85c:	68 a8 f0 00 00       	push   $0xf0a8
    c861:	68 a8 f0 00 00       	push   $0xf0a8
    c866:	68 b5 f0 00 00       	push   $0xf0b5
    c86b:	e8 8d fe ff ff       	call   c6fd <assertion_failure>
    c870:	83 c4 10             	add    $0x10,%esp
    c873:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c876:	c9                   	leave  
    c877:	c3                   	ret    

0000c878 <stat>:
    c878:	55                   	push   %ebp
    c879:	89 e5                	mov    %esp,%ebp
    c87b:	83 ec 38             	sub    $0x38,%esp
    c87e:	c7 45 cc 0a 00 00 00 	movl   $0xa,-0x34(%ebp)
    c885:	8b 45 08             	mov    0x8(%ebp),%eax
    c888:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c88b:	8b 45 0c             	mov    0xc(%ebp),%eax
    c88e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c891:	83 ec 0c             	sub    $0xc,%esp
    c894:	ff 75 08             	pushl  0x8(%ebp)
    c897:	e8 36 fc ff ff       	call   c4d2 <strlen>
    c89c:	83 c4 10             	add    $0x10,%esp
    c89f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c8a2:	83 ec 04             	sub    $0x4,%esp
    c8a5:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c8a8:	50                   	push   %eax
    c8a9:	6a 03                	push   $0x3
    c8ab:	6a 03                	push   $0x3
    c8ad:	e8 36 fc ff ff       	call   c4e8 <send_recv>
    c8b2:	83 c4 10             	add    $0x10,%esp
    c8b5:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c8b8:	83 f8 12             	cmp    $0x12,%eax
    c8bb:	74 19                	je     c8d6 <stat+0x5e>
    c8bd:	6a 2c                	push   $0x2c
    c8bf:	68 cd f0 00 00       	push   $0xf0cd
    c8c4:	68 cd f0 00 00       	push   $0xf0cd
    c8c9:	68 d8 f0 00 00       	push   $0xf0d8
    c8ce:	e8 2a fe ff ff       	call   c6fd <assertion_failure>
    c8d3:	83 c4 10             	add    $0x10,%esp
    c8d6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c8d9:	c9                   	leave  
    c8da:	c3                   	ret    

0000c8db <fork>:
    c8db:	55                   	push   %ebp
    c8dc:	89 e5                	mov    %esp,%ebp
    c8de:	83 ec 38             	sub    $0x38,%esp
    c8e1:	c7 45 cc 10 00 00 00 	movl   $0x10,-0x34(%ebp)
    c8e8:	83 ec 04             	sub    $0x4,%esp
    c8eb:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c8ee:	50                   	push   %eax
    c8ef:	6a 04                	push   $0x4
    c8f1:	6a 03                	push   $0x3
    c8f3:	e8 f0 fb ff ff       	call   c4e8 <send_recv>
    c8f8:	83 c4 10             	add    $0x10,%esp
    c8fb:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c8fe:	83 f8 12             	cmp    $0x12,%eax
    c901:	74 19                	je     c91c <fork+0x41>
    c903:	6a 29                	push   $0x29
    c905:	68 f0 f0 00 00       	push   $0xf0f0
    c90a:	68 f0 f0 00 00       	push   $0xf0f0
    c90f:	68 fb f0 00 00       	push   $0xf0fb
    c914:	e8 e4 fd ff ff       	call   c6fd <assertion_failure>
    c919:	83 c4 10             	add    $0x10,%esp
    c91c:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c91f:	85 c0                	test   %eax,%eax
    c921:	74 19                	je     c93c <fork+0x61>
    c923:	6a 2a                	push   $0x2a
    c925:	68 f0 f0 00 00       	push   $0xf0f0
    c92a:	68 f0 f0 00 00       	push   $0xf0f0
    c92f:	68 13 f1 00 00       	push   $0xf113
    c934:	e8 c4 fd ff ff       	call   c6fd <assertion_failure>
    c939:	83 c4 10             	add    $0x10,%esp
    c93c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c93f:	c9                   	leave  
    c940:	c3                   	ret    

0000c941 <wait>:
    c941:	55                   	push   %ebp
    c942:	89 e5                	mov    %esp,%ebp
    c944:	83 ec 38             	sub    $0x38,%esp
    c947:	c7 45 cc 0f 00 00 00 	movl   $0xf,-0x34(%ebp)
    c94e:	83 ec 04             	sub    $0x4,%esp
    c951:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c954:	50                   	push   %eax
    c955:	6a 04                	push   $0x4
    c957:	6a 03                	push   $0x3
    c959:	e8 8a fb ff ff       	call   c4e8 <send_recv>
    c95e:	83 c4 10             	add    $0x10,%esp
    c961:	8b 55 d0             	mov    -0x30(%ebp),%edx
    c964:	8b 45 08             	mov    0x8(%ebp),%eax
    c967:	89 10                	mov    %edx,(%eax)
    c969:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c96c:	83 f8 39             	cmp    $0x39,%eax
    c96f:	74 05                	je     c976 <wait+0x35>
    c971:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c974:	eb 05                	jmp    c97b <wait+0x3a>
    c976:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c97b:	c9                   	leave  
    c97c:	c3                   	ret    

0000c97d <exec>:
    c97d:	55                   	push   %ebp
    c97e:	89 e5                	mov    %esp,%ebp
    c980:	83 ec 38             	sub    $0x38,%esp
    c983:	c7 45 cc 0e 00 00 00 	movl   $0xe,-0x34(%ebp)
    c98a:	8b 45 08             	mov    0x8(%ebp),%eax
    c98d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c990:	83 ec 0c             	sub    $0xc,%esp
    c993:	ff 75 08             	pushl  0x8(%ebp)
    c996:	e8 37 fb ff ff       	call   c4d2 <strlen>
    c99b:	83 c4 10             	add    $0x10,%esp
    c99e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c9a1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c9a8:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    c9af:	83 ec 04             	sub    $0x4,%esp
    c9b2:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c9b5:	50                   	push   %eax
    c9b6:	6a 04                	push   $0x4
    c9b8:	6a 03                	push   $0x3
    c9ba:	e8 29 fb ff ff       	call   c4e8 <send_recv>
    c9bf:	83 c4 10             	add    $0x10,%esp
    c9c2:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c9c5:	83 f8 12             	cmp    $0x12,%eax
    c9c8:	74 19                	je     c9e3 <exec+0x66>
    c9ca:	6a 2a                	push   $0x2a
    c9cc:	68 24 f1 00 00       	push   $0xf124
    c9d1:	68 24 f1 00 00       	push   $0xf124
    c9d6:	68 2f f1 00 00       	push   $0xf12f
    c9db:	e8 1d fd ff ff       	call   c6fd <assertion_failure>
    c9e0:	83 c4 10             	add    $0x10,%esp
    c9e3:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c9e6:	c9                   	leave  
    c9e7:	c3                   	ret    

0000c9e8 <execl>:
    c9e8:	55                   	push   %ebp
    c9e9:	89 e5                	mov    %esp,%ebp
    c9eb:	83 ec 18             	sub    $0x18,%esp
    c9ee:	8d 45 0c             	lea    0xc(%ebp),%eax
    c9f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c9f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c9f7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c9fa:	83 ec 08             	sub    $0x8,%esp
    c9fd:	ff 75 f0             	pushl  -0x10(%ebp)
    ca00:	ff 75 08             	pushl  0x8(%ebp)
    ca03:	e8 05 00 00 00       	call   ca0d <execv>
    ca08:	83 c4 10             	add    $0x10,%esp
    ca0b:	c9                   	leave  
    ca0c:	c3                   	ret    

0000ca0d <execv>:
    ca0d:	55                   	push   %ebp
    ca0e:	89 e5                	mov    %esp,%ebp
    ca10:	81 ec 48 04 00 00    	sub    $0x448,%esp
    ca16:	8b 45 0c             	mov    0xc(%ebp),%eax
    ca19:	89 45 f4             	mov    %eax,-0xc(%ebp)
    ca1c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    ca23:	eb 2f                	jmp    ca54 <execv+0x47>
    ca25:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca28:	83 c0 08             	add    $0x8,%eax
    ca2b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    ca30:	76 19                	jbe    ca4b <execv+0x3e>
    ca32:	6a 48                	push   $0x48
    ca34:	68 24 f1 00 00       	push   $0xf124
    ca39:	68 24 f1 00 00       	push   $0xf124
    ca3e:	68 48 f1 00 00       	push   $0xf148
    ca43:	e8 b5 fc ff ff       	call   c6fd <assertion_failure>
    ca48:	83 c4 10             	add    $0x10,%esp
    ca4b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca4e:	83 c0 04             	add    $0x4,%eax
    ca51:	89 45 f0             	mov    %eax,-0x10(%ebp)
    ca54:	8b 45 f4             	mov    -0xc(%ebp),%eax
    ca57:	8d 50 04             	lea    0x4(%eax),%edx
    ca5a:	89 55 f4             	mov    %edx,-0xc(%ebp)
    ca5d:	8b 00                	mov    (%eax),%eax
    ca5f:	85 c0                	test   %eax,%eax
    ca61:	75 c2                	jne    ca25 <execv+0x18>
    ca63:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    ca69:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca6c:	01 d0                	add    %edx,%eax
    ca6e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    ca74:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca77:	83 c0 04             	add    $0x4,%eax
    ca7a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    ca7d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    ca83:	89 45 ec             	mov    %eax,-0x14(%ebp)
    ca86:	8b 45 0c             	mov    0xc(%ebp),%eax
    ca89:	89 45 f4             	mov    %eax,-0xc(%ebp)
    ca8c:	e9 95 00 00 00       	jmp    cb26 <execv+0x119>
    ca91:	8b 45 ec             	mov    -0x14(%ebp),%eax
    ca94:	8d 50 04             	lea    0x4(%eax),%edx
    ca97:	89 55 ec             	mov    %edx,-0x14(%ebp)
    ca9a:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    caa0:	8b 55 f0             	mov    -0x10(%ebp),%edx
    caa3:	01 ca                	add    %ecx,%edx
    caa5:	89 10                	mov    %edx,(%eax)
    caa7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    caaa:	8b 00                	mov    (%eax),%eax
    caac:	83 ec 0c             	sub    $0xc,%esp
    caaf:	50                   	push   %eax
    cab0:	e8 1d fa ff ff       	call   c4d2 <strlen>
    cab5:	83 c4 10             	add    $0x10,%esp
    cab8:	89 c2                	mov    %eax,%edx
    caba:	8b 45 f0             	mov    -0x10(%ebp),%eax
    cabd:	01 d0                	add    %edx,%eax
    cabf:	3d fe 03 00 00       	cmp    $0x3fe,%eax
    cac4:	7e 19                	jle    cadf <execv+0xd2>
    cac6:	6a 5d                	push   $0x5d
    cac8:	68 24 f1 00 00       	push   $0xf124
    cacd:	68 24 f1 00 00       	push   $0xf124
    cad2:	68 7c f1 00 00       	push   $0xf17c
    cad7:	e8 21 fc ff ff       	call   c6fd <assertion_failure>
    cadc:	83 c4 10             	add    $0x10,%esp
    cadf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    cae2:	8b 00                	mov    (%eax),%eax
    cae4:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    caea:	8b 55 f0             	mov    -0x10(%ebp),%edx
    caed:	01 ca                	add    %ecx,%edx
    caef:	83 ec 08             	sub    $0x8,%esp
    caf2:	50                   	push   %eax
    caf3:	52                   	push   %edx
    caf4:	e8 c1 f9 ff ff       	call   c4ba <strcpy>
    caf9:	83 c4 10             	add    $0x10,%esp
    cafc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    caff:	8b 00                	mov    (%eax),%eax
    cb01:	83 ec 0c             	sub    $0xc,%esp
    cb04:	50                   	push   %eax
    cb05:	e8 c8 f9 ff ff       	call   c4d2 <strlen>
    cb0a:	83 c4 10             	add    $0x10,%esp
    cb0d:	01 45 f0             	add    %eax,-0x10(%ebp)
    cb10:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    cb16:	8b 45 f0             	mov    -0x10(%ebp),%eax
    cb19:	01 d0                	add    %edx,%eax
    cb1b:	c6 00 00             	movb   $0x0,(%eax)
    cb1e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    cb22:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
    cb26:	8b 45 f4             	mov    -0xc(%ebp),%eax
    cb29:	8b 00                	mov    (%eax),%eax
    cb2b:	85 c0                	test   %eax,%eax
    cb2d:	0f 85 5e ff ff ff    	jne    ca91 <execv+0x84>
    cb33:	c7 85 c0 fb ff ff 0e 	movl   $0xe,-0x440(%ebp)
    cb3a:	00 00 00 
    cb3d:	8b 45 08             	mov    0x8(%ebp),%eax
    cb40:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
    cb46:	83 ec 0c             	sub    $0xc,%esp
    cb49:	ff 75 08             	pushl  0x8(%ebp)
    cb4c:	e8 81 f9 ff ff       	call   c4d2 <strlen>
    cb51:	83 c4 10             	add    $0x10,%esp
    cb54:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%ebp)
    cb5a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    cb60:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
    cb66:	8b 45 f0             	mov    -0x10(%ebp),%eax
    cb69:	89 85 cc fb ff ff    	mov    %eax,-0x434(%ebp)
    cb6f:	83 ec 04             	sub    $0x4,%esp
    cb72:	8d 85 bc fb ff ff    	lea    -0x444(%ebp),%eax
    cb78:	50                   	push   %eax
    cb79:	6a 04                	push   $0x4
    cb7b:	6a 03                	push   $0x3
    cb7d:	e8 66 f9 ff ff       	call   c4e8 <send_recv>
    cb82:	83 c4 10             	add    $0x10,%esp
    cb85:	8b 85 c0 fb ff ff    	mov    -0x440(%ebp),%eax
    cb8b:	83 f8 12             	cmp    $0x12,%eax
    cb8e:	74 19                	je     cba9 <execv+0x19c>
    cb90:	6a 70                	push   $0x70
    cb92:	68 24 f1 00 00       	push   $0xf124
    cb97:	68 24 f1 00 00       	push   $0xf124
    cb9c:	68 2f f1 00 00       	push   $0xf12f
    cba1:	e8 57 fb ff ff       	call   c6fd <assertion_failure>
    cba6:	83 c4 10             	add    $0x10,%esp
    cba9:	8b 85 c4 fb ff ff    	mov    -0x43c(%ebp),%eax
    cbaf:	c9                   	leave  
    cbb0:	c3                   	ret    
    cbb1:	66 90                	xchg   %ax,%ax
    cbb3:	66 90                	xchg   %ax,%ax
    cbb5:	66 90                	xchg   %ax,%ax
    cbb7:	66 90                	xchg   %ax,%ax
    cbb9:	66 90                	xchg   %ax,%ax
    cbbb:	66 90                	xchg   %ax,%ax
    cbbd:	66 90                	xchg   %ax,%ax
    cbbf:	90                   	nop

0000cbc0 <sendrec>:
    cbc0:	53                   	push   %ebx
    cbc1:	51                   	push   %ecx
    cbc2:	52                   	push   %edx
    cbc3:	b8 01 00 00 00       	mov    $0x1,%eax
    cbc8:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    cbcc:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    cbd0:	8b 54 24 18          	mov    0x18(%esp),%edx
    cbd4:	cd 90                	int    $0x90
    cbd6:	5a                   	pop    %edx
    cbd7:	59                   	pop    %ecx
    cbd8:	5b                   	pop    %ebx
    cbd9:	c3                   	ret    

0000cbda <printx>:
    cbda:	52                   	push   %edx
    cbdb:	b8 00 00 00 00       	mov    $0x0,%eax
    cbe0:	8b 54 24 08          	mov    0x8(%esp),%edx
    cbe4:	cd 90                	int    $0x90
    cbe6:	5a                   	pop    %edx
    cbe7:	c3                   	ret    
