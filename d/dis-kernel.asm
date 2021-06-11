
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
    1398:	e8 ff 27 00 00       	call   3b9c <exception_handler>
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
    1429:	68 e0 c9 00 00       	push   $0xc9e0
    142e:	e8 5d 4f 00 00       	call   6390 <disp_str>
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
    1455:	e8 f6 ad 00 00       	call   c250 <memcpy>
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
    149d:	e8 db 21 00 00       	call   367d <init_prot>
    14a2:	83 ec 0c             	sub    $0xc,%esp
    14a5:	68 0a ca 00 00       	push   $0xca0a
    14aa:	e8 e1 4e 00 00       	call   6390 <disp_str>
    14af:	83 c4 10             	add    $0x10,%esp
    14b2:	90                   	nop
    14b3:	c9                   	leave  
    14b4:	c3                   	ret    

000014b5 <kernel_main>:
    14b5:	55                   	push   %ebp
    14b6:	89 e5                	mov    %esp,%ebp
    14b8:	83 ec 38             	sub    $0x38,%esp
    14bb:	83 ec 0c             	sub    $0xc,%esp
    14be:	68 28 ca 00 00       	push   $0xca28
    14c3:	e8 c8 4e 00 00       	call   6390 <disp_str>
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
    156e:	e8 27 ad 00 00       	call   c29a <strcpy>
    1573:	83 c4 10             	add    $0x10,%esp
    1576:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1579:	c7 80 90 00 00 00 39 	movl   $0x39,0x90(%eax)
    1580:	00 00 00 
    1583:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1586:	83 c0 08             	add    $0x8,%eax
    1589:	83 ec 08             	sub    $0x8,%esp
    158c:	68 6c ca 00 00       	push   $0xca6c
    1591:	50                   	push   %eax
    1592:	e8 5d ae 00 00       	call   c3f4 <strcmp>
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
    15fa:	e8 b1 4f 00 00       	call   65b0 <get_kernel_map>
    15ff:	83 c4 10             	add    $0x10,%esp
    1602:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1605:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    1609:	74 19                	je     1624 <kernel_main+0x16f>
    160b:	6a 4e                	push   $0x4e
    160d:	68 71 ca 00 00       	push   $0xca71
    1612:	68 71 ca 00 00       	push   $0xca71
    1617:	68 7f ca 00 00       	push   $0xca7f
    161c:	e8 bc ae 00 00       	call   c4dd <assertion_failure>
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
    164a:	e8 e0 24 00 00       	call   3b2f <init_desc>
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
    1678:	e8 b2 24 00 00       	call   3b2f <init_desc>
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
    17bf:	e8 34 04 00 00       	call   1bf8 <init_clock>
    17c4:	e8 f1 04 00 00       	call   1cba <init_keyboard>
    17c9:	e8 2d fc ff ff       	call   13fb <restart>
    17ce:	eb fe                	jmp    17ce <kernel_main+0x319>

000017d0 <get_ticks>:
    17d0:	55                   	push   %ebp
    17d1:	89 e5                	mov    %esp,%ebp
    17d3:	83 ec 38             	sub    $0x38,%esp
    17d6:	83 ec 0c             	sub    $0xc,%esp
    17d9:	8d 45 c8             	lea    -0x38(%ebp),%eax
    17dc:	50                   	push   %eax
    17dd:	e8 4a 27 00 00       	call   3f2c <reset_msg>
    17e2:	83 c4 10             	add    $0x10,%esp
    17e5:	c7 45 cc 02 00 00 00 	movl   $0x2,-0x34(%ebp)
    17ec:	83 ec 04             	sub    $0x4,%esp
    17ef:	8d 45 c8             	lea    -0x38(%ebp),%eax
    17f2:	50                   	push   %eax
    17f3:	6a 01                	push   $0x1
    17f5:	6a 03                	push   $0x3
    17f7:	e8 cc aa 00 00       	call   c2c8 <send_recv>
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
    1813:	68 88 ca 00 00       	push   $0xca88
    1818:	e8 7d a6 00 00       	call   be9a <printf>
    181d:	83 c4 10             	add    $0x10,%esp
    1820:	83 ec 08             	sub    $0x8,%esp
    1823:	6a 02                	push   $0x2
    1825:	ff 75 08             	pushl  0x8(%ebp)
    1828:	e8 e9 ac 00 00       	call   c516 <open>
    182d:	83 c4 10             	add    $0x10,%esp
    1830:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1833:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
    1837:	75 1c                	jne    1855 <untar+0x51>
    1839:	68 ba 00 00 00       	push   $0xba
    183e:	68 71 ca 00 00       	push   $0xca71
    1843:	68 71 ca 00 00       	push   $0xca71
    1848:	68 97 ca 00 00       	push   $0xca97
    184d:	e8 8b ac 00 00       	call   c4dd <assertion_failure>
    1852:	83 c4 10             	add    $0x10,%esp
    1855:	c7 45 e4 00 20 00 00 	movl   $0x2000,-0x1c(%ebp)
    185c:	83 ec 04             	sub    $0x4,%esp
    185f:	68 00 02 00 00       	push   $0x200
    1864:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    186a:	50                   	push   %eax
    186b:	ff 75 e8             	pushl  -0x18(%ebp)
    186e:	e8 06 ad 00 00       	call   c579 <read>
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
    18da:	e8 37 ac 00 00       	call   c516 <open>
    18df:	83 c4 10             	add    $0x10,%esp
    18e2:	89 45 dc             	mov    %eax,-0x24(%ebp)
    18e5:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    18e9:	75 29                	jne    1914 <untar+0x110>
    18eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    18ee:	83 ec 08             	sub    $0x8,%esp
    18f1:	50                   	push   %eax
    18f2:	68 a0 ca 00 00       	push   $0xcaa0
    18f7:	e8 9e a5 00 00       	call   be9a <printf>
    18fc:	83 c4 10             	add    $0x10,%esp
    18ff:	83 ec 0c             	sub    $0xc,%esp
    1902:	68 c0 ca 00 00       	push   $0xcac0
    1907:	e8 8e a5 00 00       	call   be9a <printf>
    190c:	83 c4 10             	add    $0x10,%esp
    190f:	e9 ac 00 00 00       	jmp    19c0 <untar+0x1bc>
    1914:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1917:	83 ec 04             	sub    $0x4,%esp
    191a:	ff 75 f0             	pushl  -0x10(%ebp)
    191d:	50                   	push   %eax
    191e:	68 ca ca 00 00       	push   $0xcaca
    1923:	e8 72 a5 00 00       	call   be9a <printf>
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
    1962:	e8 12 ac 00 00       	call   c579 <read>
    1967:	83 c4 10             	add    $0x10,%esp
    196a:	83 ec 04             	sub    $0x4,%esp
    196d:	ff 75 d8             	pushl  -0x28(%ebp)
    1970:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    1976:	50                   	push   %eax
    1977:	ff 75 dc             	pushl  -0x24(%ebp)
    197a:	e8 31 ac 00 00       	call   c5b0 <write>
    197f:	83 c4 10             	add    $0x10,%esp
    1982:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1985:	29 45 ec             	sub    %eax,-0x14(%ebp)
    1988:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    198c:	75 9f                	jne    192d <untar+0x129>
    198e:	83 ec 0c             	sub    $0xc,%esp
    1991:	ff 75 dc             	pushl  -0x24(%ebp)
    1994:	e8 4e ac 00 00       	call   c5e7 <close>
    1999:	83 c4 10             	add    $0x10,%esp
    199c:	e9 bb fe ff ff       	jmp    185c <untar+0x58>
    19a1:	90                   	nop
    19a2:	83 ec 0c             	sub    $0xc,%esp
    19a5:	ff 75 e8             	pushl  -0x18(%ebp)
    19a8:	e8 3a ac 00 00       	call   c5e7 <close>
    19ad:	83 c4 10             	add    $0x10,%esp
    19b0:	83 ec 0c             	sub    $0xc,%esp
    19b3:	68 dd ca 00 00       	push   $0xcadd
    19b8:	e8 dd a4 00 00       	call   be9a <printf>
    19bd:	83 c4 10             	add    $0x10,%esp
    19c0:	c9                   	leave  
    19c1:	c3                   	ret    

000019c2 <Init>:
    19c2:	55                   	push   %ebp
    19c3:	89 e5                	mov    %esp,%ebp
    19c5:	83 ec 28             	sub    $0x28,%esp
    19c8:	83 ec 08             	sub    $0x8,%esp
    19cb:	6a 02                	push   $0x2
    19cd:	68 e5 ca 00 00       	push   $0xcae5
    19d2:	e8 3f ab 00 00       	call   c516 <open>
    19d7:	83 c4 10             	add    $0x10,%esp
    19da:	89 45 f4             	mov    %eax,-0xc(%ebp)
    19dd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    19e1:	74 1c                	je     19ff <Init+0x3d>
    19e3:	68 f2 00 00 00       	push   $0xf2
    19e8:	68 71 ca 00 00       	push   $0xca71
    19ed:	68 71 ca 00 00       	push   $0xca71
    19f2:	68 ef ca 00 00       	push   $0xcaef
    19f7:	e8 e1 aa 00 00       	call   c4dd <assertion_failure>
    19fc:	83 c4 10             	add    $0x10,%esp
    19ff:	83 ec 08             	sub    $0x8,%esp
    1a02:	6a 02                	push   $0x2
    1a04:	68 e5 ca 00 00       	push   $0xcae5
    1a09:	e8 08 ab 00 00       	call   c516 <open>
    1a0e:	83 c4 10             	add    $0x10,%esp
    1a11:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1a14:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    1a18:	74 1c                	je     1a36 <Init+0x74>
    1a1a:	68 f4 00 00 00       	push   $0xf4
    1a1f:	68 71 ca 00 00       	push   $0xca71
    1a24:	68 71 ca 00 00       	push   $0xca71
    1a29:	68 fd ca 00 00       	push   $0xcafd
    1a2e:	e8 aa aa 00 00       	call   c4dd <assertion_failure>
    1a33:	83 c4 10             	add    $0x10,%esp
    1a36:	83 ec 0c             	sub    $0xc,%esp
    1a39:	68 0c cb 00 00       	push   $0xcb0c
    1a3e:	e8 57 a4 00 00       	call   be9a <printf>
    1a43:	83 c4 10             	add    $0x10,%esp
    1a46:	83 ec 0c             	sub    $0xc,%esp
    1a49:	68 23 cb 00 00       	push   $0xcb23
    1a4e:	e8 b1 fd ff ff       	call   1804 <untar>
    1a53:	83 c4 10             	add    $0x10,%esp
    1a56:	e8 60 ac 00 00       	call   c6bb <fork>
    1a5b:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1a5e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    1a62:	74 2b                	je     1a8f <Init+0xcd>
    1a64:	83 ec 0c             	sub    $0xc,%esp
    1a67:	8d 45 e0             	lea    -0x20(%ebp),%eax
    1a6a:	50                   	push   %eax
    1a6b:	e8 b1 ac 00 00       	call   c721 <wait>
    1a70:	83 c4 10             	add    $0x10,%esp
    1a73:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1a76:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1a79:	83 ec 04             	sub    $0x4,%esp
    1a7c:	50                   	push   %eax
    1a7d:	ff 75 e8             	pushl  -0x18(%ebp)
    1a80:	68 2c cb 00 00       	push   $0xcb2c
    1a85:	e8 10 a4 00 00       	call   be9a <printf>
    1a8a:	83 c4 10             	add    $0x10,%esp
    1a8d:	eb 41                	jmp    1ad0 <Init+0x10e>
    1a8f:	83 ec 0c             	sub    $0xc,%esp
    1a92:	68 50 cb 00 00       	push   $0xcb50
    1a97:	e8 fe a3 00 00       	call   be9a <printf>
    1a9c:	83 c4 10             	add    $0x10,%esp
    1a9f:	83 ec 0c             	sub    $0xc,%esp
    1aa2:	6a 00                	push   $0x0
    1aa4:	68 5d cb 00 00       	push   $0xcb5d
    1aa9:	68 63 cb 00 00       	push   $0xcb63
    1aae:	68 69 cb 00 00       	push   $0xcb69
    1ab3:	68 6e cb 00 00       	push   $0xcb6e
    1ab8:	e8 0b ad 00 00       	call   c7c8 <execl>
    1abd:	83 c4 20             	add    $0x20,%esp
    1ac0:	83 ec 0c             	sub    $0xc,%esp
    1ac3:	68 74 cb 00 00       	push   $0xcb74
    1ac8:	e8 cd a3 00 00       	call   be9a <printf>
    1acd:	83 c4 10             	add    $0x10,%esp
    1ad0:	83 ec 0c             	sub    $0xc,%esp
    1ad3:	8d 45 dc             	lea    -0x24(%ebp),%eax
    1ad6:	50                   	push   %eax
    1ad7:	e8 45 ac 00 00       	call   c721 <wait>
    1adc:	83 c4 10             	add    $0x10,%esp
    1adf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1ae2:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1ae5:	83 ec 04             	sub    $0x4,%esp
    1ae8:	50                   	push   %eax
    1ae9:	ff 75 e4             	pushl  -0x1c(%ebp)
    1aec:	68 2c cb 00 00       	push   $0xcb2c
    1af1:	e8 a4 a3 00 00       	call   be9a <printf>
    1af6:	83 c4 10             	add    $0x10,%esp
    1af9:	eb d5                	jmp    1ad0 <Init+0x10e>

00001afb <TestA>:
    1afb:	55                   	push   %ebp
    1afc:	89 e5                	mov    %esp,%ebp
    1afe:	eb fe                	jmp    1afe <TestA+0x3>

00001b00 <TestB>:
    1b00:	55                   	push   %ebp
    1b01:	89 e5                	mov    %esp,%ebp
    1b03:	eb fe                	jmp    1b03 <TestB+0x3>

00001b05 <TestC>:
    1b05:	55                   	push   %ebp
    1b06:	89 e5                	mov    %esp,%ebp
    1b08:	eb fe                	jmp    1b08 <TestC+0x3>

00001b0a <panic>:
    1b0a:	55                   	push   %ebp
    1b0b:	89 e5                	mov    %esp,%ebp
    1b0d:	81 ec 18 01 00 00    	sub    $0x118,%esp
    1b13:	8d 45 0c             	lea    0xc(%ebp),%eax
    1b16:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1b19:	8b 45 08             	mov    0x8(%ebp),%eax
    1b1c:	83 ec 04             	sub    $0x4,%esp
    1b1f:	ff 75 f4             	pushl  -0xc(%ebp)
    1b22:	50                   	push   %eax
    1b23:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1b29:	50                   	push   %eax
    1b2a:	e8 7e a4 00 00       	call   bfad <vsprintf>
    1b2f:	83 c4 10             	add    $0x10,%esp
    1b32:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1b35:	83 ec 04             	sub    $0x4,%esp
    1b38:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1b3e:	50                   	push   %eax
    1b3f:	6a 02                	push   $0x2
    1b41:	68 7f cb 00 00       	push   $0xcb7f
    1b46:	e8 ba a3 00 00       	call   bf05 <printl>
    1b4b:	83 c4 10             	add    $0x10,%esp
    1b4e:	0f 0b                	ud2    
    1b50:	90                   	nop
    1b51:	c9                   	leave  
    1b52:	c3                   	ret    

00001b53 <clock_handler>:
    1b53:	55                   	push   %ebp
    1b54:	89 e5                	mov    %esp,%ebp
    1b56:	83 ec 08             	sub    $0x8,%esp
    1b59:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    1b5e:	83 c0 01             	add    $0x1,%eax
    1b61:	a3 e0 a3 03 00       	mov    %eax,0x3a3e0
    1b66:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    1b6b:	3d cc ab ff 7f       	cmp    $0x7fffabcc,%eax
    1b70:	7e 0a                	jle    1b7c <clock_handler+0x29>
    1b72:	c7 05 e0 a3 03 00 00 	movl   $0x0,0x3a3e0
    1b79:	00 00 00 
    1b7c:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1b81:	8b 40 5c             	mov    0x5c(%eax),%eax
    1b84:	85 c0                	test   %eax,%eax
    1b86:	74 0e                	je     1b96 <clock_handler+0x43>
    1b88:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1b8d:	8b 50 5c             	mov    0x5c(%eax),%edx
    1b90:	83 ea 01             	sub    $0x1,%edx
    1b93:	89 50 5c             	mov    %edx,0x5c(%eax)
    1b96:	a1 f0 99 03 00       	mov    0x399f0,%eax
    1b9b:	85 c0                	test   %eax,%eax
    1b9d:	74 0d                	je     1bac <clock_handler+0x59>
    1b9f:	83 ec 0c             	sub    $0xc,%esp
    1ba2:	6a 00                	push   $0x0
    1ba4:	e8 55 31 00 00       	call   4cfe <inform_int>
    1ba9:	83 c4 10             	add    $0x10,%esp
    1bac:	a1 20 84 03 00       	mov    0x38420,%eax
    1bb1:	85 c0                	test   %eax,%eax
    1bb3:	75 13                	jne    1bc8 <clock_handler+0x75>
    1bb5:	a1 80 a4 03 00       	mov    0x3a480,%eax
    1bba:	8b 40 5c             	mov    0x5c(%eax),%eax
    1bbd:	85 c0                	test   %eax,%eax
    1bbf:	7f 0a                	jg     1bcb <clock_handler+0x78>
    1bc1:	e8 11 21 00 00       	call   3cd7 <schedule>
    1bc6:	eb 04                	jmp    1bcc <clock_handler+0x79>
    1bc8:	90                   	nop
    1bc9:	eb 01                	jmp    1bcc <clock_handler+0x79>
    1bcb:	90                   	nop
    1bcc:	c9                   	leave  
    1bcd:	c3                   	ret    

00001bce <milli_delay>:
    1bce:	55                   	push   %ebp
    1bcf:	89 e5                	mov    %esp,%ebp
    1bd1:	83 ec 18             	sub    $0x18,%esp
    1bd4:	e8 f7 fb ff ff       	call   17d0 <get_ticks>
    1bd9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1bdc:	90                   	nop
    1bdd:	e8 ee fb ff ff       	call   17d0 <get_ticks>
    1be2:	2b 45 f4             	sub    -0xc(%ebp),%eax
    1be5:	89 c2                	mov    %eax,%edx
    1be7:	89 d0                	mov    %edx,%eax
    1be9:	c1 e0 02             	shl    $0x2,%eax
    1bec:	01 d0                	add    %edx,%eax
    1bee:	01 c0                	add    %eax,%eax
    1bf0:	39 45 08             	cmp    %eax,0x8(%ebp)
    1bf3:	7f e8                	jg     1bdd <milli_delay+0xf>
    1bf5:	90                   	nop
    1bf6:	c9                   	leave  
    1bf7:	c3                   	ret    

00001bf8 <init_clock>:
    1bf8:	55                   	push   %ebp
    1bf9:	89 e5                	mov    %esp,%ebp
    1bfb:	83 ec 08             	sub    $0x8,%esp
    1bfe:	83 ec 08             	sub    $0x8,%esp
    1c01:	6a 34                	push   $0x34
    1c03:	6a 43                	push   $0x43
    1c05:	e8 03 48 00 00       	call   640d <out_byte>
    1c0a:	83 c4 10             	add    $0x10,%esp
    1c0d:	83 ec 08             	sub    $0x8,%esp
    1c10:	68 9b 00 00 00       	push   $0x9b
    1c15:	6a 40                	push   $0x40
    1c17:	e8 f1 47 00 00       	call   640d <out_byte>
    1c1c:	83 c4 10             	add    $0x10,%esp
    1c1f:	83 ec 08             	sub    $0x8,%esp
    1c22:	6a 2e                	push   $0x2e
    1c24:	6a 40                	push   $0x40
    1c26:	e8 e2 47 00 00       	call   640d <out_byte>
    1c2b:	83 c4 10             	add    $0x10,%esp
    1c2e:	83 ec 08             	sub    $0x8,%esp
    1c31:	68 53 1b 00 00       	push   $0x1b53
    1c36:	6a 00                	push   $0x0
    1c38:	e8 1c 1a 00 00       	call   3659 <put_irq_handler>
    1c3d:	83 c4 10             	add    $0x10,%esp
    1c40:	83 ec 0c             	sub    $0xc,%esp
    1c43:	6a 00                	push   $0x0
    1c45:	e8 34 48 00 00       	call   647e <enable_irq>
    1c4a:	83 c4 10             	add    $0x10,%esp
    1c4d:	90                   	nop
    1c4e:	c9                   	leave  
    1c4f:	c3                   	ret    

00001c50 <keyboard_handler>:
    1c50:	55                   	push   %ebp
    1c51:	89 e5                	mov    %esp,%ebp
    1c53:	83 ec 18             	sub    $0x18,%esp
    1c56:	83 ec 0c             	sub    $0xc,%esp
    1c59:	6a 60                	push   $0x60
    1c5b:	e8 b9 47 00 00       	call   6419 <in_byte>
    1c60:	83 c4 10             	add    $0x10,%esp
    1c63:	88 45 f7             	mov    %al,-0x9(%ebp)
    1c66:	a1 28 30 01 00       	mov    0x13028,%eax
    1c6b:	83 f8 1f             	cmp    $0x1f,%eax
    1c6e:	7f 3d                	jg     1cad <keyboard_handler+0x5d>
    1c70:	a1 20 30 01 00       	mov    0x13020,%eax
    1c75:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    1c79:	88 10                	mov    %dl,(%eax)
    1c7b:	a1 20 30 01 00       	mov    0x13020,%eax
    1c80:	83 c0 01             	add    $0x1,%eax
    1c83:	a3 20 30 01 00       	mov    %eax,0x13020
    1c88:	a1 20 30 01 00       	mov    0x13020,%eax
    1c8d:	ba 4c 30 01 00       	mov    $0x1304c,%edx
    1c92:	39 d0                	cmp    %edx,%eax
    1c94:	75 0a                	jne    1ca0 <keyboard_handler+0x50>
    1c96:	c7 05 20 30 01 00 2c 	movl   $0x1302c,0x13020
    1c9d:	30 01 00 
    1ca0:	a1 28 30 01 00       	mov    0x13028,%eax
    1ca5:	83 c0 01             	add    $0x1,%eax
    1ca8:	a3 28 30 01 00       	mov    %eax,0x13028
    1cad:	c7 05 f0 99 03 00 01 	movl   $0x1,0x399f0
    1cb4:	00 00 00 
    1cb7:	90                   	nop
    1cb8:	c9                   	leave  
    1cb9:	c3                   	ret    

00001cba <init_keyboard>:
    1cba:	55                   	push   %ebp
    1cbb:	89 e5                	mov    %esp,%ebp
    1cbd:	83 ec 08             	sub    $0x8,%esp
    1cc0:	c7 05 28 30 01 00 00 	movl   $0x0,0x13028
    1cc7:	00 00 00 
    1cca:	c7 05 24 30 01 00 2c 	movl   $0x1302c,0x13024
    1cd1:	30 01 00 
    1cd4:	a1 24 30 01 00       	mov    0x13024,%eax
    1cd9:	a3 20 30 01 00       	mov    %eax,0x13020
    1cde:	c7 05 54 30 01 00 00 	movl   $0x0,0x13054
    1ce5:	00 00 00 
    1ce8:	a1 54 30 01 00       	mov    0x13054,%eax
    1ced:	a3 50 30 01 00       	mov    %eax,0x13050
    1cf2:	c7 05 5c 30 01 00 00 	movl   $0x0,0x1305c
    1cf9:	00 00 00 
    1cfc:	a1 5c 30 01 00       	mov    0x1305c,%eax
    1d01:	a3 58 30 01 00       	mov    %eax,0x13058
    1d06:	c7 05 64 30 01 00 00 	movl   $0x0,0x13064
    1d0d:	00 00 00 
    1d10:	a1 64 30 01 00       	mov    0x13064,%eax
    1d15:	a3 60 30 01 00       	mov    %eax,0x13060
    1d1a:	c7 05 68 30 01 00 00 	movl   $0x0,0x13068
    1d21:	00 00 00 
    1d24:	c7 05 6c 30 01 00 01 	movl   $0x1,0x1306c
    1d2b:	00 00 00 
    1d2e:	c7 05 70 30 01 00 00 	movl   $0x0,0x13070
    1d35:	00 00 00 
    1d38:	c7 05 74 30 01 00 00 	movl   $0x0,0x13074
    1d3f:	00 00 00 
    1d42:	e8 8d 05 00 00       	call   22d4 <set_leds>
    1d47:	83 ec 08             	sub    $0x8,%esp
    1d4a:	68 50 1c 00 00       	push   $0x1c50
    1d4f:	6a 01                	push   $0x1
    1d51:	e8 03 19 00 00       	call   3659 <put_irq_handler>
    1d56:	83 c4 10             	add    $0x10,%esp
    1d59:	83 ec 0c             	sub    $0xc,%esp
    1d5c:	6a 01                	push   $0x1
    1d5e:	e8 1b 47 00 00       	call   647e <enable_irq>
    1d63:	83 c4 10             	add    $0x10,%esp
    1d66:	90                   	nop
    1d67:	c9                   	leave  
    1d68:	c3                   	ret    

00001d69 <keyboard_read>:
    1d69:	55                   	push   %ebp
    1d6a:	89 e5                	mov    %esp,%ebp
    1d6c:	83 ec 38             	sub    $0x38,%esp
    1d6f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    1d76:	e9 a9 04 00 00       	jmp    2224 <keyboard_read+0x4bb>
    1d7b:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    1d82:	00 00 00 
    1d85:	e8 aa 04 00 00       	call   2234 <get_byte_from_kb_buf>
    1d8a:	88 45 f7             	mov    %al,-0x9(%ebp)
    1d8d:	80 7d f7 e1          	cmpb   $0xe1,-0x9(%ebp)
    1d91:	75 67                	jne    1dfa <keyboard_read+0x91>
    1d93:	c6 45 d2 e1          	movb   $0xe1,-0x2e(%ebp)
    1d97:	c6 45 d3 1d          	movb   $0x1d,-0x2d(%ebp)
    1d9b:	c6 45 d4 45          	movb   $0x45,-0x2c(%ebp)
    1d9f:	c6 45 d5 e1          	movb   $0xe1,-0x2b(%ebp)
    1da3:	c6 45 d6 9d          	movb   $0x9d,-0x2a(%ebp)
    1da7:	c6 45 d7 c5          	movb   $0xc5,-0x29(%ebp)
    1dab:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    1db2:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
    1db9:	eb 23                	jmp    1dde <keyboard_read+0x75>
    1dbb:	e8 74 04 00 00       	call   2234 <get_byte_from_kb_buf>
    1dc0:	89 c1                	mov    %eax,%ecx
    1dc2:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    1dc5:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1dc8:	01 d0                	add    %edx,%eax
    1dca:	0f b6 00             	movzbl (%eax),%eax
    1dcd:	38 c1                	cmp    %al,%cl
    1dcf:	74 09                	je     1dda <keyboard_read+0x71>
    1dd1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    1dd8:	eb 0a                	jmp    1de4 <keyboard_read+0x7b>
    1dda:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    1dde:	83 7d e8 05          	cmpl   $0x5,-0x18(%ebp)
    1de2:	7e d7                	jle    1dbb <keyboard_read+0x52>
    1de4:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    1de8:	0f 84 b2 00 00 00    	je     1ea0 <keyboard_read+0x137>
    1dee:	c7 45 ec 1e 01 00 00 	movl   $0x11e,-0x14(%ebp)
    1df5:	e9 a6 00 00 00       	jmp    1ea0 <keyboard_read+0x137>
    1dfa:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1dfe:	0f 85 9c 00 00 00    	jne    1ea0 <keyboard_read+0x137>
    1e04:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    1e0b:	00 00 00 
    1e0e:	e8 21 04 00 00       	call   2234 <get_byte_from_kb_buf>
    1e13:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e16:	80 7d f7 2a          	cmpb   $0x2a,-0x9(%ebp)
    1e1a:	75 40                	jne    1e5c <keyboard_read+0xf3>
    1e1c:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    1e23:	00 00 00 
    1e26:	e8 09 04 00 00       	call   2234 <get_byte_from_kb_buf>
    1e2b:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e2e:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1e32:	75 6c                	jne    1ea0 <keyboard_read+0x137>
    1e34:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    1e3b:	00 00 00 
    1e3e:	e8 f1 03 00 00       	call   2234 <get_byte_from_kb_buf>
    1e43:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e46:	80 7d f7 37          	cmpb   $0x37,-0x9(%ebp)
    1e4a:	75 54                	jne    1ea0 <keyboard_read+0x137>
    1e4c:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1e53:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    1e5a:	eb 44                	jmp    1ea0 <keyboard_read+0x137>
    1e5c:	80 7d f7 b7          	cmpb   $0xb7,-0x9(%ebp)
    1e60:	75 3e                	jne    1ea0 <keyboard_read+0x137>
    1e62:	c7 05 4c 30 01 00 00 	movl   $0x0,0x1304c
    1e69:	00 00 00 
    1e6c:	e8 c3 03 00 00       	call   2234 <get_byte_from_kb_buf>
    1e71:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e74:	80 7d f7 e0          	cmpb   $0xe0,-0x9(%ebp)
    1e78:	75 26                	jne    1ea0 <keyboard_read+0x137>
    1e7a:	c7 05 4c 30 01 00 01 	movl   $0x1,0x1304c
    1e81:	00 00 00 
    1e84:	e8 ab 03 00 00       	call   2234 <get_byte_from_kb_buf>
    1e89:	88 45 f7             	mov    %al,-0x9(%ebp)
    1e8c:	80 7d f7 aa          	cmpb   $0xaa,-0x9(%ebp)
    1e90:	75 0e                	jne    1ea0 <keyboard_read+0x137>
    1e92:	c7 45 ec 1d 01 00 00 	movl   $0x11d,-0x14(%ebp)
    1e99:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1ea0:	81 7d ec 1e 01 00 00 	cmpl   $0x11e,-0x14(%ebp)
    1ea7:	0f 84 80 01 00 00    	je     202d <keyboard_read+0x2c4>
    1ead:	81 7d ec 1d 01 00 00 	cmpl   $0x11d,-0x14(%ebp)
    1eb4:	0f 84 73 01 00 00    	je     202d <keyboard_read+0x2c4>
    1eba:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1ebe:	f7 d0                	not    %eax
    1ec0:	c0 e8 07             	shr    $0x7,%al
    1ec3:	0f b6 c0             	movzbl %al,%eax
    1ec6:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1ec9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    1ecd:	83 e0 7f             	and    $0x7f,%eax
    1ed0:	89 c2                	mov    %eax,%edx
    1ed2:	89 d0                	mov    %edx,%eax
    1ed4:	01 c0                	add    %eax,%eax
    1ed6:	01 d0                	add    %edx,%eax
    1ed8:	c1 e0 02             	shl    $0x2,%eax
    1edb:	05 20 20 01 00       	add    $0x12020,%eax
    1ee0:	89 45 d8             	mov    %eax,-0x28(%ebp)
    1ee3:	c7 05 74 30 01 00 00 	movl   $0x0,0x13074
    1eea:	00 00 00 
    1eed:	a1 50 30 01 00       	mov    0x13050,%eax
    1ef2:	85 c0                	test   %eax,%eax
    1ef4:	75 09                	jne    1eff <keyboard_read+0x196>
    1ef6:	a1 54 30 01 00       	mov    0x13054,%eax
    1efb:	85 c0                	test   %eax,%eax
    1efd:	74 07                	je     1f06 <keyboard_read+0x19d>
    1eff:	b8 01 00 00 00       	mov    $0x1,%eax
    1f04:	eb 05                	jmp    1f0b <keyboard_read+0x1a2>
    1f06:	b8 00 00 00 00       	mov    $0x0,%eax
    1f0b:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1f0e:	a1 68 30 01 00       	mov    0x13068,%eax
    1f13:	85 c0                	test   %eax,%eax
    1f15:	74 21                	je     1f38 <keyboard_read+0x1cf>
    1f17:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1f1a:	8b 00                	mov    (%eax),%eax
    1f1c:	83 f8 60             	cmp    $0x60,%eax
    1f1f:	76 17                	jbe    1f38 <keyboard_read+0x1cf>
    1f21:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1f24:	8b 00                	mov    (%eax),%eax
    1f26:	83 f8 7a             	cmp    $0x7a,%eax
    1f29:	77 0d                	ja     1f38 <keyboard_read+0x1cf>
    1f2b:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    1f2f:	0f 94 c0             	sete   %al
    1f32:	0f b6 c0             	movzbl %al,%eax
    1f35:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1f38:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    1f3c:	74 0a                	je     1f48 <keyboard_read+0x1df>
    1f3e:	c7 05 74 30 01 00 01 	movl   $0x1,0x13074
    1f45:	00 00 00 
    1f48:	a1 4c 30 01 00       	mov    0x1304c,%eax
    1f4d:	85 c0                	test   %eax,%eax
    1f4f:	74 0a                	je     1f5b <keyboard_read+0x1f2>
    1f51:	c7 05 74 30 01 00 02 	movl   $0x2,0x13074
    1f58:	00 00 00 
    1f5b:	a1 74 30 01 00       	mov    0x13074,%eax
    1f60:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    1f67:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1f6a:	01 d0                	add    %edx,%eax
    1f6c:	8b 00                	mov    (%eax),%eax
    1f6e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1f71:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1f74:	2d 08 01 00 00       	sub    $0x108,%eax
    1f79:	83 f8 08             	cmp    $0x8,%eax
    1f7c:	0f 87 ae 00 00 00    	ja     2030 <keyboard_read+0x2c7>
    1f82:	8b 04 85 90 cb 00 00 	mov    0xcb90(,%eax,4),%eax
    1f89:	ff e0                	jmp    *%eax
    1f8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1f8e:	a3 50 30 01 00       	mov    %eax,0x13050
    1f93:	e9 a2 00 00 00       	jmp    203a <keyboard_read+0x2d1>
    1f98:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1f9b:	a3 54 30 01 00       	mov    %eax,0x13054
    1fa0:	e9 95 00 00 00       	jmp    203a <keyboard_read+0x2d1>
    1fa5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1fa8:	a3 60 30 01 00       	mov    %eax,0x13060
    1fad:	e9 88 00 00 00       	jmp    203a <keyboard_read+0x2d1>
    1fb2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1fb5:	a3 64 30 01 00       	mov    %eax,0x13064
    1fba:	eb 7e                	jmp    203a <keyboard_read+0x2d1>
    1fbc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1fbf:	a3 58 30 01 00       	mov    %eax,0x13058
    1fc4:	eb 74                	jmp    203a <keyboard_read+0x2d1>
    1fc6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1fc9:	a3 58 30 01 00       	mov    %eax,0x13058
    1fce:	eb 6a                	jmp    203a <keyboard_read+0x2d1>
    1fd0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1fd4:	74 5d                	je     2033 <keyboard_read+0x2ca>
    1fd6:	a1 68 30 01 00       	mov    0x13068,%eax
    1fdb:	85 c0                	test   %eax,%eax
    1fdd:	0f 94 c0             	sete   %al
    1fe0:	0f b6 c0             	movzbl %al,%eax
    1fe3:	a3 68 30 01 00       	mov    %eax,0x13068
    1fe8:	e8 e7 02 00 00       	call   22d4 <set_leds>
    1fed:	eb 44                	jmp    2033 <keyboard_read+0x2ca>
    1fef:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1ff3:	74 41                	je     2036 <keyboard_read+0x2cd>
    1ff5:	a1 6c 30 01 00       	mov    0x1306c,%eax
    1ffa:	85 c0                	test   %eax,%eax
    1ffc:	0f 94 c0             	sete   %al
    1fff:	0f b6 c0             	movzbl %al,%eax
    2002:	a3 6c 30 01 00       	mov    %eax,0x1306c
    2007:	e8 c8 02 00 00       	call   22d4 <set_leds>
    200c:	eb 28                	jmp    2036 <keyboard_read+0x2cd>
    200e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2012:	74 25                	je     2039 <keyboard_read+0x2d0>
    2014:	a1 70 30 01 00       	mov    0x13070,%eax
    2019:	85 c0                	test   %eax,%eax
    201b:	0f 94 c0             	sete   %al
    201e:	0f b6 c0             	movzbl %al,%eax
    2021:	a3 70 30 01 00       	mov    %eax,0x13070
    2026:	e8 a9 02 00 00       	call   22d4 <set_leds>
    202b:	eb 0c                	jmp    2039 <keyboard_read+0x2d0>
    202d:	90                   	nop
    202e:	eb 0a                	jmp    203a <keyboard_read+0x2d1>
    2030:	90                   	nop
    2031:	eb 07                	jmp    203a <keyboard_read+0x2d1>
    2033:	90                   	nop
    2034:	eb 04                	jmp    203a <keyboard_read+0x2d1>
    2036:	90                   	nop
    2037:	eb 01                	jmp    203a <keyboard_read+0x2d1>
    2039:	90                   	nop
    203a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    203e:	0f 84 e0 01 00 00    	je     2224 <keyboard_read+0x4bb>
    2044:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    204b:	81 7d ec 2b 01 00 00 	cmpl   $0x12b,-0x14(%ebp)
    2052:	0f 86 12 01 00 00    	jbe    216a <keyboard_read+0x401>
    2058:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    205f:	0f 87 05 01 00 00    	ja     216a <keyboard_read+0x401>
    2065:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    206c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    206f:	2d 2c 01 00 00       	sub    $0x12c,%eax
    2074:	83 f8 04             	cmp    $0x4,%eax
    2077:	77 45                	ja     20be <keyboard_read+0x355>
    2079:	8b 04 85 b4 cb 00 00 	mov    0xcbb4(,%eax,4),%eax
    2080:	ff e0                	jmp    *%eax
    2082:	c7 45 ec 2f 00 00 00 	movl   $0x2f,-0x14(%ebp)
    2089:	e9 e0 00 00 00       	jmp    216e <keyboard_read+0x405>
    208e:	c7 45 ec 2a 00 00 00 	movl   $0x2a,-0x14(%ebp)
    2095:	e9 d4 00 00 00       	jmp    216e <keyboard_read+0x405>
    209a:	c7 45 ec 2d 00 00 00 	movl   $0x2d,-0x14(%ebp)
    20a1:	e9 c8 00 00 00       	jmp    216e <keyboard_read+0x405>
    20a6:	c7 45 ec 2b 00 00 00 	movl   $0x2b,-0x14(%ebp)
    20ad:	e9 bc 00 00 00       	jmp    216e <keyboard_read+0x405>
    20b2:	c7 45 ec 03 01 00 00 	movl   $0x103,-0x14(%ebp)
    20b9:	e9 b0 00 00 00       	jmp    216e <keyboard_read+0x405>
    20be:	a1 6c 30 01 00       	mov    0x1306c,%eax
    20c3:	85 c0                	test   %eax,%eax
    20c5:	74 30                	je     20f7 <keyboard_read+0x38e>
    20c7:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    20ce:	76 15                	jbe    20e5 <keyboard_read+0x37c>
    20d0:	81 7d ec 3b 01 00 00 	cmpl   $0x13b,-0x14(%ebp)
    20d7:	77 0c                	ja     20e5 <keyboard_read+0x37c>
    20d9:	81 6d ec 02 01 00 00 	subl   $0x102,-0x14(%ebp)
    20e0:	e9 83 00 00 00       	jmp    2168 <keyboard_read+0x3ff>
    20e5:	81 7d ec 31 01 00 00 	cmpl   $0x131,-0x14(%ebp)
    20ec:	75 7f                	jne    216d <keyboard_read+0x404>
    20ee:	c7 45 ec 2e 00 00 00 	movl   $0x2e,-0x14(%ebp)
    20f5:	eb 76                	jmp    216d <keyboard_read+0x404>
    20f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    20fa:	2d 31 01 00 00       	sub    $0x131,%eax
    20ff:	83 f8 0a             	cmp    $0xa,%eax
    2102:	77 63                	ja     2167 <keyboard_read+0x3fe>
    2104:	8b 04 85 c8 cb 00 00 	mov    0xcbc8(,%eax,4),%eax
    210b:	ff e0                	jmp    *%eax
    210d:	c7 45 ec 21 01 00 00 	movl   $0x121,-0x14(%ebp)
    2114:	eb 52                	jmp    2168 <keyboard_read+0x3ff>
    2116:	c7 45 ec 22 01 00 00 	movl   $0x122,-0x14(%ebp)
    211d:	eb 49                	jmp    2168 <keyboard_read+0x3ff>
    211f:	c7 45 ec 23 01 00 00 	movl   $0x123,-0x14(%ebp)
    2126:	eb 40                	jmp    2168 <keyboard_read+0x3ff>
    2128:	c7 45 ec 24 01 00 00 	movl   $0x124,-0x14(%ebp)
    212f:	eb 37                	jmp    2168 <keyboard_read+0x3ff>
    2131:	c7 45 ec 1f 01 00 00 	movl   $0x11f,-0x14(%ebp)
    2138:	eb 2e                	jmp    2168 <keyboard_read+0x3ff>
    213a:	c7 45 ec 25 01 00 00 	movl   $0x125,-0x14(%ebp)
    2141:	eb 25                	jmp    2168 <keyboard_read+0x3ff>
    2143:	c7 45 ec 26 01 00 00 	movl   $0x126,-0x14(%ebp)
    214a:	eb 1c                	jmp    2168 <keyboard_read+0x3ff>
    214c:	c7 45 ec 27 01 00 00 	movl   $0x127,-0x14(%ebp)
    2153:	eb 13                	jmp    2168 <keyboard_read+0x3ff>
    2155:	c7 45 ec 28 01 00 00 	movl   $0x128,-0x14(%ebp)
    215c:	eb 0a                	jmp    2168 <keyboard_read+0x3ff>
    215e:	c7 45 ec 20 01 00 00 	movl   $0x120,-0x14(%ebp)
    2165:	eb 01                	jmp    2168 <keyboard_read+0x3ff>
    2167:	90                   	nop
    2168:	eb 03                	jmp    216d <keyboard_read+0x404>
    216a:	90                   	nop
    216b:	eb 01                	jmp    216e <keyboard_read+0x405>
    216d:	90                   	nop
    216e:	a1 50 30 01 00       	mov    0x13050,%eax
    2173:	85 c0                	test   %eax,%eax
    2175:	74 07                	je     217e <keyboard_read+0x415>
    2177:	b8 00 02 00 00       	mov    $0x200,%eax
    217c:	eb 05                	jmp    2183 <keyboard_read+0x41a>
    217e:	b8 00 00 00 00       	mov    $0x0,%eax
    2183:	09 45 ec             	or     %eax,-0x14(%ebp)
    2186:	a1 54 30 01 00       	mov    0x13054,%eax
    218b:	85 c0                	test   %eax,%eax
    218d:	74 07                	je     2196 <keyboard_read+0x42d>
    218f:	b8 00 04 00 00       	mov    $0x400,%eax
    2194:	eb 05                	jmp    219b <keyboard_read+0x432>
    2196:	b8 00 00 00 00       	mov    $0x0,%eax
    219b:	09 45 ec             	or     %eax,-0x14(%ebp)
    219e:	a1 60 30 01 00       	mov    0x13060,%eax
    21a3:	85 c0                	test   %eax,%eax
    21a5:	74 07                	je     21ae <keyboard_read+0x445>
    21a7:	b8 00 08 00 00       	mov    $0x800,%eax
    21ac:	eb 05                	jmp    21b3 <keyboard_read+0x44a>
    21ae:	b8 00 00 00 00       	mov    $0x0,%eax
    21b3:	09 45 ec             	or     %eax,-0x14(%ebp)
    21b6:	a1 64 30 01 00       	mov    0x13064,%eax
    21bb:	85 c0                	test   %eax,%eax
    21bd:	74 07                	je     21c6 <keyboard_read+0x45d>
    21bf:	b8 00 10 00 00       	mov    $0x1000,%eax
    21c4:	eb 05                	jmp    21cb <keyboard_read+0x462>
    21c6:	b8 00 00 00 00       	mov    $0x0,%eax
    21cb:	09 45 ec             	or     %eax,-0x14(%ebp)
    21ce:	a1 58 30 01 00       	mov    0x13058,%eax
    21d3:	85 c0                	test   %eax,%eax
    21d5:	74 07                	je     21de <keyboard_read+0x475>
    21d7:	b8 00 20 00 00       	mov    $0x2000,%eax
    21dc:	eb 05                	jmp    21e3 <keyboard_read+0x47a>
    21de:	b8 00 00 00 00       	mov    $0x0,%eax
    21e3:	09 45 ec             	or     %eax,-0x14(%ebp)
    21e6:	a1 5c 30 01 00       	mov    0x1305c,%eax
    21eb:	85 c0                	test   %eax,%eax
    21ed:	74 07                	je     21f6 <keyboard_read+0x48d>
    21ef:	b8 00 40 00 00       	mov    $0x4000,%eax
    21f4:	eb 05                	jmp    21fb <keyboard_read+0x492>
    21f6:	b8 00 00 00 00       	mov    $0x0,%eax
    21fb:	09 45 ec             	or     %eax,-0x14(%ebp)
    21fe:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    2202:	74 07                	je     220b <keyboard_read+0x4a2>
    2204:	b8 00 80 00 00       	mov    $0x8000,%eax
    2209:	eb 05                	jmp    2210 <keyboard_read+0x4a7>
    220b:	b8 00 00 00 00       	mov    $0x0,%eax
    2210:	09 45 ec             	or     %eax,-0x14(%ebp)
    2213:	83 ec 08             	sub    $0x8,%esp
    2216:	ff 75 ec             	pushl  -0x14(%ebp)
    2219:	ff 75 08             	pushl  0x8(%ebp)
    221c:	e8 02 03 00 00       	call   2523 <in_process>
    2221:	83 c4 10             	add    $0x10,%esp
    2224:	a1 28 30 01 00       	mov    0x13028,%eax
    2229:	85 c0                	test   %eax,%eax
    222b:	0f 8f 4a fb ff ff    	jg     1d7b <keyboard_read+0x12>
    2231:	90                   	nop
    2232:	c9                   	leave  
    2233:	c3                   	ret    

00002234 <get_byte_from_kb_buf>:
    2234:	55                   	push   %ebp
    2235:	89 e5                	mov    %esp,%ebp
    2237:	83 ec 18             	sub    $0x18,%esp
    223a:	90                   	nop
    223b:	a1 28 30 01 00       	mov    0x13028,%eax
    2240:	85 c0                	test   %eax,%eax
    2242:	7e f7                	jle    223b <get_byte_from_kb_buf+0x7>
    2244:	e8 54 42 00 00       	call   649d <disable_int>
    2249:	a1 24 30 01 00       	mov    0x13024,%eax
    224e:	0f b6 00             	movzbl (%eax),%eax
    2251:	88 45 f7             	mov    %al,-0x9(%ebp)
    2254:	a1 24 30 01 00       	mov    0x13024,%eax
    2259:	83 c0 01             	add    $0x1,%eax
    225c:	a3 24 30 01 00       	mov    %eax,0x13024
    2261:	a1 24 30 01 00       	mov    0x13024,%eax
    2266:	ba 4c 30 01 00       	mov    $0x1304c,%edx
    226b:	39 d0                	cmp    %edx,%eax
    226d:	75 0a                	jne    2279 <get_byte_from_kb_buf+0x45>
    226f:	c7 05 24 30 01 00 2c 	movl   $0x1302c,0x13024
    2276:	30 01 00 
    2279:	a1 28 30 01 00       	mov    0x13028,%eax
    227e:	83 e8 01             	sub    $0x1,%eax
    2281:	a3 28 30 01 00       	mov    %eax,0x13028
    2286:	e8 14 42 00 00       	call   649f <enable_int>
    228b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    228f:	c9                   	leave  
    2290:	c3                   	ret    

00002291 <kb_wait>:
    2291:	55                   	push   %ebp
    2292:	89 e5                	mov    %esp,%ebp
    2294:	83 ec 18             	sub    $0x18,%esp
    2297:	83 ec 0c             	sub    $0xc,%esp
    229a:	6a 64                	push   $0x64
    229c:	e8 78 41 00 00       	call   6419 <in_byte>
    22a1:	83 c4 10             	add    $0x10,%esp
    22a4:	88 45 f7             	mov    %al,-0x9(%ebp)
    22a7:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    22ab:	83 e0 02             	and    $0x2,%eax
    22ae:	85 c0                	test   %eax,%eax
    22b0:	75 e5                	jne    2297 <kb_wait+0x6>
    22b2:	90                   	nop
    22b3:	c9                   	leave  
    22b4:	c3                   	ret    

000022b5 <kb_ack>:
    22b5:	55                   	push   %ebp
    22b6:	89 e5                	mov    %esp,%ebp
    22b8:	83 ec 18             	sub    $0x18,%esp
    22bb:	83 ec 0c             	sub    $0xc,%esp
    22be:	6a 60                	push   $0x60
    22c0:	e8 54 41 00 00       	call   6419 <in_byte>
    22c5:	83 c4 10             	add    $0x10,%esp
    22c8:	88 45 f7             	mov    %al,-0x9(%ebp)
    22cb:	80 7d f7 fa          	cmpb   $0xfa,-0x9(%ebp)
    22cf:	75 ea                	jne    22bb <kb_ack+0x6>
    22d1:	90                   	nop
    22d2:	c9                   	leave  
    22d3:	c3                   	ret    

000022d4 <set_leds>:
    22d4:	55                   	push   %ebp
    22d5:	89 e5                	mov    %esp,%ebp
    22d7:	83 ec 18             	sub    $0x18,%esp
    22da:	a1 68 30 01 00       	mov    0x13068,%eax
    22df:	c1 e0 02             	shl    $0x2,%eax
    22e2:	89 c2                	mov    %eax,%edx
    22e4:	a1 6c 30 01 00       	mov    0x1306c,%eax
    22e9:	01 c0                	add    %eax,%eax
    22eb:	09 c2                	or     %eax,%edx
    22ed:	a1 70 30 01 00       	mov    0x13070,%eax
    22f2:	09 d0                	or     %edx,%eax
    22f4:	88 45 f7             	mov    %al,-0x9(%ebp)
    22f7:	e8 95 ff ff ff       	call   2291 <kb_wait>
    22fc:	83 ec 08             	sub    $0x8,%esp
    22ff:	68 ed 00 00 00       	push   $0xed
    2304:	6a 60                	push   $0x60
    2306:	e8 02 41 00 00       	call   640d <out_byte>
    230b:	83 c4 10             	add    $0x10,%esp
    230e:	e8 a2 ff ff ff       	call   22b5 <kb_ack>
    2313:	e8 79 ff ff ff       	call   2291 <kb_wait>
    2318:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    231c:	83 ec 08             	sub    $0x8,%esp
    231f:	50                   	push   %eax
    2320:	6a 60                	push   $0x60
    2322:	e8 e6 40 00 00       	call   640d <out_byte>
    2327:	83 c4 10             	add    $0x10,%esp
    232a:	e8 86 ff ff ff       	call   22b5 <kb_ack>
    232f:	90                   	nop
    2330:	c9                   	leave  
    2331:	c3                   	ret    

00002332 <task_tty>:
    2332:	55                   	push   %ebp
    2333:	89 e5                	mov    %esp,%ebp
    2335:	83 ec 48             	sub    $0x48,%esp
    2338:	e8 7d f9 ff ff       	call   1cba <init_keyboard>
    233d:	c7 45 f4 60 88 03 00 	movl   $0x38860,-0xc(%ebp)
    2344:	eb 15                	jmp    235b <task_tty+0x29>
    2346:	83 ec 0c             	sub    $0xc,%esp
    2349:	ff 75 f4             	pushl  -0xc(%ebp)
    234c:	e8 4f 01 00 00       	call   24a0 <init_tty>
    2351:	83 c4 10             	add    $0x10,%esp
    2354:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    235b:	b8 cc 94 03 00       	mov    $0x394cc,%eax
    2360:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    2363:	72 e1                	jb     2346 <task_tty+0x14>
    2365:	83 ec 0c             	sub    $0xc,%esp
    2368:	6a 00                	push   $0x0
    236a:	e8 4b 0f 00 00       	call   32ba <select_console>
    236f:	83 c4 10             	add    $0x10,%esp
    2372:	c7 45 f4 60 88 03 00 	movl   $0x38860,-0xc(%ebp)
    2379:	eb 30                	jmp    23ab <task_tty+0x79>
    237b:	83 ec 0c             	sub    $0xc,%esp
    237e:	ff 75 f4             	pushl  -0xc(%ebp)
    2381:	e8 21 03 00 00       	call   26a7 <tty_dev_read>
    2386:	83 c4 10             	add    $0x10,%esp
    2389:	83 ec 0c             	sub    $0xc,%esp
    238c:	ff 75 f4             	pushl  -0xc(%ebp)
    238f:	e8 43 03 00 00       	call   26d7 <tty_dev_write>
    2394:	83 c4 10             	add    $0x10,%esp
    2397:	8b 45 f4             	mov    -0xc(%ebp),%eax
    239a:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    23a0:	85 c0                	test   %eax,%eax
    23a2:	75 d7                	jne    237b <task_tty+0x49>
    23a4:	81 45 f4 24 04 00 00 	addl   $0x424,-0xc(%ebp)
    23ab:	b8 cc 94 03 00       	mov    $0x394cc,%eax
    23b0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    23b3:	72 c6                	jb     237b <task_tty+0x49>
    23b5:	83 ec 04             	sub    $0x4,%esp
    23b8:	8d 45 bc             	lea    -0x44(%ebp),%eax
    23bb:	50                   	push   %eax
    23bc:	6a 2f                	push   $0x2f
    23be:	6a 02                	push   $0x2
    23c0:	e8 03 9f 00 00       	call   c2c8 <send_recv>
    23c5:	83 c4 10             	add    $0x10,%esp
    23c8:	8b 45 bc             	mov    -0x44(%ebp),%eax
    23cb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    23ce:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    23d2:	75 19                	jne    23ed <task_tty+0xbb>
    23d4:	6a 5e                	push   $0x5e
    23d6:	68 f4 cb 00 00       	push   $0xcbf4
    23db:	68 f4 cb 00 00       	push   $0xcbf4
    23e0:	68 01 cc 00 00       	push   $0xcc01
    23e5:	e8 f3 a0 00 00       	call   c4dd <assertion_failure>
    23ea:	83 c4 10             	add    $0x10,%esp
    23ed:	8b 45 d0             	mov    -0x30(%ebp),%eax
    23f0:	69 c0 24 04 00 00    	imul   $0x424,%eax,%eax
    23f6:	05 60 88 03 00       	add    $0x38860,%eax
    23fb:	89 45 ec             	mov    %eax,-0x14(%ebp)
    23fe:	8b 45 c0             	mov    -0x40(%ebp),%eax
    2401:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    2406:	74 1e                	je     2426 <task_tty+0xf4>
    2408:	3d e9 03 00 00       	cmp    $0x3e9,%eax
    240d:	7f 07                	jg     2416 <task_tty+0xe4>
    240f:	83 f8 01             	cmp    $0x1,%eax
    2412:	74 66                	je     247a <task_tty+0x148>
    2414:	eb 70                	jmp    2486 <task_tty+0x154>
    2416:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    241b:	74 35                	je     2452 <task_tty+0x120>
    241d:	3d ec 03 00 00       	cmp    $0x3ec,%eax
    2422:	74 42                	je     2466 <task_tty+0x134>
    2424:	eb 60                	jmp    2486 <task_tty+0x154>
    2426:	83 ec 0c             	sub    $0xc,%esp
    2429:	8d 45 bc             	lea    -0x44(%ebp),%eax
    242c:	50                   	push   %eax
    242d:	e8 fa 1a 00 00       	call   3f2c <reset_msg>
    2432:	83 c4 10             	add    $0x10,%esp
    2435:	c7 45 c0 12 00 00 00 	movl   $0x12,-0x40(%ebp)
    243c:	83 ec 04             	sub    $0x4,%esp
    243f:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2442:	50                   	push   %eax
    2443:	ff 75 f0             	pushl  -0x10(%ebp)
    2446:	6a 01                	push   $0x1
    2448:	e8 7b 9e 00 00       	call   c2c8 <send_recv>
    244d:	83 c4 10             	add    $0x10,%esp
    2450:	eb 49                	jmp    249b <task_tty+0x169>
    2452:	83 ec 08             	sub    $0x8,%esp
    2455:	8d 45 bc             	lea    -0x44(%ebp),%eax
    2458:	50                   	push   %eax
    2459:	ff 75 ec             	pushl  -0x14(%ebp)
    245c:	e8 c0 04 00 00       	call   2921 <tty_do_read>
    2461:	83 c4 10             	add    $0x10,%esp
    2464:	eb 35                	jmp    249b <task_tty+0x169>
    2466:	83 ec 08             	sub    $0x8,%esp
    2469:	8d 45 bc             	lea    -0x44(%ebp),%eax
    246c:	50                   	push   %eax
    246d:	ff 75 ec             	pushl  -0x14(%ebp)
    2470:	e8 39 05 00 00       	call   29ae <tty_do_write>
    2475:	83 c4 10             	add    $0x10,%esp
    2478:	eb 21                	jmp    249b <task_tty+0x169>
    247a:	c7 05 f0 99 03 00 00 	movl   $0x0,0x399f0
    2481:	00 00 00 
    2484:	eb 15                	jmp    249b <task_tty+0x169>
    2486:	83 ec 08             	sub    $0x8,%esp
    2489:	8d 45 bc             	lea    -0x44(%ebp),%eax
    248c:	50                   	push   %eax
    248d:	68 11 cc 00 00       	push   $0xcc11
    2492:	e8 11 2d 00 00       	call   51a8 <dump_msg>
    2497:	83 c4 10             	add    $0x10,%esp
    249a:	90                   	nop
    249b:	e9 d2 fe ff ff       	jmp    2372 <task_tty+0x40>

000024a0 <init_tty>:
    24a0:	55                   	push   %ebp
    24a1:	89 e5                	mov    %esp,%ebp
    24a3:	83 ec 08             	sub    $0x8,%esp
    24a6:	8b 45 08             	mov    0x8(%ebp),%eax
    24a9:	c7 80 08 04 00 00 00 	movl   $0x0,0x408(%eax)
    24b0:	00 00 00 
    24b3:	8b 55 08             	mov    0x8(%ebp),%edx
    24b6:	8b 45 08             	mov    0x8(%ebp),%eax
    24b9:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    24bf:	8b 45 08             	mov    0x8(%ebp),%eax
    24c2:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    24c8:	8b 45 08             	mov    0x8(%ebp),%eax
    24cb:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    24d1:	8b 45 08             	mov    0x8(%ebp),%eax
    24d4:	c7 80 0c 04 00 00 39 	movl   $0x39,0x40c(%eax)
    24db:	00 00 00 
    24de:	8b 45 08             	mov    0x8(%ebp),%eax
    24e1:	c7 80 10 04 00 00 39 	movl   $0x39,0x410(%eax)
    24e8:	00 00 00 
    24eb:	8b 45 08             	mov    0x8(%ebp),%eax
    24ee:	c7 80 14 04 00 00 00 	movl   $0x0,0x414(%eax)
    24f5:	00 00 00 
    24f8:	8b 45 08             	mov    0x8(%ebp),%eax
    24fb:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    2502:	00 00 00 
    2505:	8b 45 08             	mov    0x8(%ebp),%eax
    2508:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    250f:	00 00 00 
    2512:	83 ec 0c             	sub    $0xc,%esp
    2515:	ff 75 08             	pushl  0x8(%ebp)
    2518:	e8 59 08 00 00       	call   2d76 <init_screen>
    251d:	83 c4 10             	add    $0x10,%esp
    2520:	90                   	nop
    2521:	c9                   	leave  
    2522:	c3                   	ret    

00002523 <in_process>:
    2523:	55                   	push   %ebp
    2524:	89 e5                	mov    %esp,%ebp
    2526:	83 ec 18             	sub    $0x18,%esp
    2529:	8b 45 0c             	mov    0xc(%ebp),%eax
    252c:	25 00 01 00 00       	and    $0x100,%eax
    2531:	85 c0                	test   %eax,%eax
    2533:	75 16                	jne    254b <in_process+0x28>
    2535:	83 ec 08             	sub    $0x8,%esp
    2538:	ff 75 0c             	pushl  0xc(%ebp)
    253b:	ff 75 08             	pushl  0x8(%ebp)
    253e:	e8 f4 00 00 00       	call   2637 <put_key>
    2543:	83 c4 10             	add    $0x10,%esp
    2546:	e9 e9 00 00 00       	jmp    2634 <in_process+0x111>
    254b:	8b 45 0c             	mov    0xc(%ebp),%eax
    254e:	25 ff 01 00 00       	and    $0x1ff,%eax
    2553:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2556:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2559:	2d 03 01 00 00       	sub    $0x103,%eax
    255e:	83 f8 23             	cmp    $0x23,%eax
    2561:	0f 87 c3 00 00 00    	ja     262a <in_process+0x107>
    2567:	8b 04 85 24 cc 00 00 	mov    0xcc24(,%eax,4),%eax
    256e:	ff e0                	jmp    *%eax
    2570:	83 ec 08             	sub    $0x8,%esp
    2573:	6a 0a                	push   $0xa
    2575:	ff 75 08             	pushl  0x8(%ebp)
    2578:	e8 ba 00 00 00       	call   2637 <put_key>
    257d:	83 c4 10             	add    $0x10,%esp
    2580:	e9 af 00 00 00       	jmp    2634 <in_process+0x111>
    2585:	83 ec 08             	sub    $0x8,%esp
    2588:	6a 08                	push   $0x8
    258a:	ff 75 08             	pushl  0x8(%ebp)
    258d:	e8 a5 00 00 00       	call   2637 <put_key>
    2592:	83 c4 10             	add    $0x10,%esp
    2595:	e9 9a 00 00 00       	jmp    2634 <in_process+0x111>
    259a:	8b 45 0c             	mov    0xc(%ebp),%eax
    259d:	25 00 02 00 00       	and    $0x200,%eax
    25a2:	85 c0                	test   %eax,%eax
    25a4:	75 0c                	jne    25b2 <in_process+0x8f>
    25a6:	8b 45 0c             	mov    0xc(%ebp),%eax
    25a9:	25 00 04 00 00       	and    $0x400,%eax
    25ae:	85 c0                	test   %eax,%eax
    25b0:	74 7b                	je     262d <in_process+0x10a>
    25b2:	8b 45 08             	mov    0x8(%ebp),%eax
    25b5:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    25bb:	83 ec 08             	sub    $0x8,%esp
    25be:	6a ff                	push   $0xffffffff
    25c0:	50                   	push   %eax
    25c1:	e8 34 0d 00 00       	call   32fa <scroll_screen>
    25c6:	83 c4 10             	add    $0x10,%esp
    25c9:	eb 62                	jmp    262d <in_process+0x10a>
    25cb:	8b 45 0c             	mov    0xc(%ebp),%eax
    25ce:	25 00 02 00 00       	and    $0x200,%eax
    25d3:	85 c0                	test   %eax,%eax
    25d5:	75 0c                	jne    25e3 <in_process+0xc0>
    25d7:	8b 45 0c             	mov    0xc(%ebp),%eax
    25da:	25 00 04 00 00       	and    $0x400,%eax
    25df:	85 c0                	test   %eax,%eax
    25e1:	74 4d                	je     2630 <in_process+0x10d>
    25e3:	8b 45 08             	mov    0x8(%ebp),%eax
    25e6:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    25ec:	83 ec 08             	sub    $0x8,%esp
    25ef:	6a 01                	push   $0x1
    25f1:	50                   	push   %eax
    25f2:	e8 03 0d 00 00       	call   32fa <scroll_screen>
    25f7:	83 c4 10             	add    $0x10,%esp
    25fa:	eb 34                	jmp    2630 <in_process+0x10d>
    25fc:	8b 45 0c             	mov    0xc(%ebp),%eax
    25ff:	25 00 20 00 00       	and    $0x2000,%eax
    2604:	85 c0                	test   %eax,%eax
    2606:	75 0c                	jne    2614 <in_process+0xf1>
    2608:	8b 45 0c             	mov    0xc(%ebp),%eax
    260b:	25 00 40 00 00       	and    $0x4000,%eax
    2610:	85 c0                	test   %eax,%eax
    2612:	74 1f                	je     2633 <in_process+0x110>
    2614:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2617:	2d 11 01 00 00       	sub    $0x111,%eax
    261c:	83 ec 0c             	sub    $0xc,%esp
    261f:	50                   	push   %eax
    2620:	e8 95 0c 00 00       	call   32ba <select_console>
    2625:	83 c4 10             	add    $0x10,%esp
    2628:	eb 09                	jmp    2633 <in_process+0x110>
    262a:	90                   	nop
    262b:	eb 07                	jmp    2634 <in_process+0x111>
    262d:	90                   	nop
    262e:	eb 04                	jmp    2634 <in_process+0x111>
    2630:	90                   	nop
    2631:	eb 01                	jmp    2634 <in_process+0x111>
    2633:	90                   	nop
    2634:	90                   	nop
    2635:	c9                   	leave  
    2636:	c3                   	ret    

00002637 <put_key>:
    2637:	55                   	push   %ebp
    2638:	89 e5                	mov    %esp,%ebp
    263a:	8b 45 08             	mov    0x8(%ebp),%eax
    263d:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2643:	3d ff 00 00 00       	cmp    $0xff,%eax
    2648:	7f 5a                	jg     26a4 <put_key+0x6d>
    264a:	8b 45 08             	mov    0x8(%ebp),%eax
    264d:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    2653:	8b 55 0c             	mov    0xc(%ebp),%edx
    2656:	89 10                	mov    %edx,(%eax)
    2658:	8b 45 08             	mov    0x8(%ebp),%eax
    265b:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    2661:	8d 50 04             	lea    0x4(%eax),%edx
    2664:	8b 45 08             	mov    0x8(%ebp),%eax
    2667:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    266d:	8b 45 08             	mov    0x8(%ebp),%eax
    2670:	8b 80 00 04 00 00    	mov    0x400(%eax),%eax
    2676:	8b 55 08             	mov    0x8(%ebp),%edx
    2679:	81 c2 00 04 00 00    	add    $0x400,%edx
    267f:	39 d0                	cmp    %edx,%eax
    2681:	75 0c                	jne    268f <put_key+0x58>
    2683:	8b 55 08             	mov    0x8(%ebp),%edx
    2686:	8b 45 08             	mov    0x8(%ebp),%eax
    2689:	89 90 00 04 00 00    	mov    %edx,0x400(%eax)
    268f:	8b 45 08             	mov    0x8(%ebp),%eax
    2692:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2698:	8d 50 01             	lea    0x1(%eax),%edx
    269b:	8b 45 08             	mov    0x8(%ebp),%eax
    269e:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    26a4:	90                   	nop
    26a5:	5d                   	pop    %ebp
    26a6:	c3                   	ret    

000026a7 <tty_dev_read>:
    26a7:	55                   	push   %ebp
    26a8:	89 e5                	mov    %esp,%ebp
    26aa:	83 ec 08             	sub    $0x8,%esp
    26ad:	8b 45 08             	mov    0x8(%ebp),%eax
    26b0:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    26b6:	83 ec 0c             	sub    $0xc,%esp
    26b9:	50                   	push   %eax
    26ba:	e8 08 0b 00 00       	call   31c7 <is_current_console>
    26bf:	83 c4 10             	add    $0x10,%esp
    26c2:	85 c0                	test   %eax,%eax
    26c4:	74 0e                	je     26d4 <tty_dev_read+0x2d>
    26c6:	83 ec 0c             	sub    $0xc,%esp
    26c9:	ff 75 08             	pushl  0x8(%ebp)
    26cc:	e8 98 f6 ff ff       	call   1d69 <keyboard_read>
    26d1:	83 c4 10             	add    $0x10,%esp
    26d4:	90                   	nop
    26d5:	c9                   	leave  
    26d6:	c3                   	ret    

000026d7 <tty_dev_write>:
    26d7:	55                   	push   %ebp
    26d8:	89 e5                	mov    %esp,%ebp
    26da:	83 ec 48             	sub    $0x48,%esp
    26dd:	e9 2b 02 00 00       	jmp    290d <tty_dev_write+0x236>
    26e2:	8b 45 08             	mov    0x8(%ebp),%eax
    26e5:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    26eb:	8b 00                	mov    (%eax),%eax
    26ed:	88 45 f3             	mov    %al,-0xd(%ebp)
    26f0:	8b 45 08             	mov    0x8(%ebp),%eax
    26f3:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    26f9:	8d 50 04             	lea    0x4(%eax),%edx
    26fc:	8b 45 08             	mov    0x8(%ebp),%eax
    26ff:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    2705:	8b 45 08             	mov    0x8(%ebp),%eax
    2708:	8b 80 04 04 00 00    	mov    0x404(%eax),%eax
    270e:	8b 55 08             	mov    0x8(%ebp),%edx
    2711:	81 c2 00 04 00 00    	add    $0x400,%edx
    2717:	39 d0                	cmp    %edx,%eax
    2719:	75 0c                	jne    2727 <tty_dev_write+0x50>
    271b:	8b 55 08             	mov    0x8(%ebp),%edx
    271e:	8b 45 08             	mov    0x8(%ebp),%eax
    2721:	89 90 04 04 00 00    	mov    %edx,0x404(%eax)
    2727:	8b 45 08             	mov    0x8(%ebp),%eax
    272a:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2730:	8d 50 ff             	lea    -0x1(%eax),%edx
    2733:	8b 45 08             	mov    0x8(%ebp),%eax
    2736:	89 90 08 04 00 00    	mov    %edx,0x408(%eax)
    273c:	8b 45 08             	mov    0x8(%ebp),%eax
    273f:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2745:	85 c0                	test   %eax,%eax
    2747:	0f 84 c0 01 00 00    	je     290d <tty_dev_write+0x236>
    274d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2751:	3c 1f                	cmp    $0x1f,%al
    2753:	0f 8e b7 00 00 00    	jle    2810 <tty_dev_write+0x139>
    2759:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    275d:	3c 7f                	cmp    $0x7f,%al
    275f:	0f 84 ab 00 00 00    	je     2810 <tty_dev_write+0x139>
    2765:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2769:	0f be d0             	movsbl %al,%edx
    276c:	8b 45 08             	mov    0x8(%ebp),%eax
    276f:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2775:	83 ec 08             	sub    $0x8,%esp
    2778:	52                   	push   %edx
    2779:	50                   	push   %eax
    277a:	e8 6b 07 00 00       	call   2eea <out_char>
    277f:	83 c4 10             	add    $0x10,%esp
    2782:	8b 45 08             	mov    0x8(%ebp),%eax
    2785:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    278b:	85 c0                	test   %eax,%eax
    278d:	75 1c                	jne    27ab <tty_dev_write+0xd4>
    278f:	68 0f 01 00 00       	push   $0x10f
    2794:	68 f4 cb 00 00       	push   $0xcbf4
    2799:	68 f4 cb 00 00       	push   $0xcbf4
    279e:	68 b4 cc 00 00       	push   $0xccb4
    27a3:	e8 35 9d 00 00       	call   c4dd <assertion_failure>
    27a8:	83 c4 10             	add    $0x10,%esp
    27ab:	8b 45 08             	mov    0x8(%ebp),%eax
    27ae:	8b 90 14 04 00 00    	mov    0x414(%eax),%edx
    27b4:	8b 45 08             	mov    0x8(%ebp),%eax
    27b7:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    27bd:	01 d0                	add    %edx,%eax
    27bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    27c2:	83 ec 08             	sub    $0x8,%esp
    27c5:	8d 45 f3             	lea    -0xd(%ebp),%eax
    27c8:	50                   	push   %eax
    27c9:	6a 00                	push   $0x0
    27cb:	e8 fb 16 00 00       	call   3ecb <va2la>
    27d0:	83 c4 10             	add    $0x10,%esp
    27d3:	83 ec 04             	sub    $0x4,%esp
    27d6:	6a 01                	push   $0x1
    27d8:	50                   	push   %eax
    27d9:	ff 75 f4             	pushl  -0xc(%ebp)
    27dc:	e8 6f 9a 00 00       	call   c250 <memcpy>
    27e1:	83 c4 10             	add    $0x10,%esp
    27e4:	8b 45 08             	mov    0x8(%ebp),%eax
    27e7:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    27ed:	8d 50 01             	lea    0x1(%eax),%edx
    27f0:	8b 45 08             	mov    0x8(%ebp),%eax
    27f3:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    27f9:	8b 45 08             	mov    0x8(%ebp),%eax
    27fc:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2802:	8d 50 ff             	lea    -0x1(%eax),%edx
    2805:	8b 45 08             	mov    0x8(%ebp),%eax
    2808:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    280e:	eb 5c                	jmp    286c <tty_dev_write+0x195>
    2810:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2814:	3c 08                	cmp    $0x8,%al
    2816:	75 54                	jne    286c <tty_dev_write+0x195>
    2818:	8b 45 08             	mov    0x8(%ebp),%eax
    281b:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2821:	85 c0                	test   %eax,%eax
    2823:	74 47                	je     286c <tty_dev_write+0x195>
    2825:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2829:	0f be d0             	movsbl %al,%edx
    282c:	8b 45 08             	mov    0x8(%ebp),%eax
    282f:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2835:	83 ec 08             	sub    $0x8,%esp
    2838:	52                   	push   %edx
    2839:	50                   	push   %eax
    283a:	e8 ab 06 00 00       	call   2eea <out_char>
    283f:	83 c4 10             	add    $0x10,%esp
    2842:	8b 45 08             	mov    0x8(%ebp),%eax
    2845:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    284b:	8d 50 ff             	lea    -0x1(%eax),%edx
    284e:	8b 45 08             	mov    0x8(%ebp),%eax
    2851:	89 90 1c 04 00 00    	mov    %edx,0x41c(%eax)
    2857:	8b 45 08             	mov    0x8(%ebp),%eax
    285a:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2860:	8d 50 01             	lea    0x1(%eax),%edx
    2863:	8b 45 08             	mov    0x8(%ebp),%eax
    2866:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    286c:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    2870:	3c 0a                	cmp    $0xa,%al
    2872:	74 11                	je     2885 <tty_dev_write+0x1ae>
    2874:	8b 45 08             	mov    0x8(%ebp),%eax
    2877:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    287d:	85 c0                	test   %eax,%eax
    287f:	0f 85 88 00 00 00    	jne    290d <tty_dev_write+0x236>
    2885:	8b 45 08             	mov    0x8(%ebp),%eax
    2888:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    288e:	83 ec 08             	sub    $0x8,%esp
    2891:	6a 0a                	push   $0xa
    2893:	50                   	push   %eax
    2894:	e8 51 06 00 00       	call   2eea <out_char>
    2899:	83 c4 10             	add    $0x10,%esp
    289c:	8b 45 08             	mov    0x8(%ebp),%eax
    289f:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    28a5:	83 f8 39             	cmp    $0x39,%eax
    28a8:	75 1c                	jne    28c6 <tty_dev_write+0x1ef>
    28aa:	68 20 01 00 00       	push   $0x120
    28af:	68 f4 cb 00 00       	push   $0xcbf4
    28b4:	68 f4 cb 00 00       	push   $0xcbf4
    28b9:	68 c5 cc 00 00       	push   $0xccc5
    28be:	e8 1a 9c 00 00       	call   c4dd <assertion_failure>
    28c3:	83 c4 10             	add    $0x10,%esp
    28c6:	c7 45 c4 0d 00 00 00 	movl   $0xd,-0x3c(%ebp)
    28cd:	8b 45 08             	mov    0x8(%ebp),%eax
    28d0:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    28d6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    28d9:	8b 45 08             	mov    0x8(%ebp),%eax
    28dc:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    28e2:	89 45 cc             	mov    %eax,-0x34(%ebp)
    28e5:	8b 45 08             	mov    0x8(%ebp),%eax
    28e8:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    28ee:	83 ec 04             	sub    $0x4,%esp
    28f1:	8d 55 c0             	lea    -0x40(%ebp),%edx
    28f4:	52                   	push   %edx
    28f5:	50                   	push   %eax
    28f6:	6a 01                	push   $0x1
    28f8:	e8 cb 99 00 00       	call   c2c8 <send_recv>
    28fd:	83 c4 10             	add    $0x10,%esp
    2900:	8b 45 08             	mov    0x8(%ebp),%eax
    2903:	c7 80 18 04 00 00 00 	movl   $0x0,0x418(%eax)
    290a:	00 00 00 
    290d:	8b 45 08             	mov    0x8(%ebp),%eax
    2910:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2916:	85 c0                	test   %eax,%eax
    2918:	0f 85 c4 fd ff ff    	jne    26e2 <tty_dev_write+0xb>
    291e:	90                   	nop
    291f:	c9                   	leave  
    2920:	c3                   	ret    

00002921 <tty_do_read>:
    2921:	55                   	push   %ebp
    2922:	89 e5                	mov    %esp,%ebp
    2924:	83 ec 08             	sub    $0x8,%esp
    2927:	8b 45 0c             	mov    0xc(%ebp),%eax
    292a:	8b 10                	mov    (%eax),%edx
    292c:	8b 45 08             	mov    0x8(%ebp),%eax
    292f:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
    2935:	8b 45 0c             	mov    0xc(%ebp),%eax
    2938:	8b 50 10             	mov    0x10(%eax),%edx
    293b:	8b 45 08             	mov    0x8(%ebp),%eax
    293e:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
    2944:	8b 45 0c             	mov    0xc(%ebp),%eax
    2947:	8b 50 2c             	mov    0x2c(%eax),%edx
    294a:	8b 45 08             	mov    0x8(%ebp),%eax
    294d:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2953:	83 ec 08             	sub    $0x8,%esp
    2956:	52                   	push   %edx
    2957:	50                   	push   %eax
    2958:	e8 6e 15 00 00       	call   3ecb <va2la>
    295d:	83 c4 10             	add    $0x10,%esp
    2960:	89 c2                	mov    %eax,%edx
    2962:	8b 45 08             	mov    0x8(%ebp),%eax
    2965:	89 90 14 04 00 00    	mov    %edx,0x414(%eax)
    296b:	8b 45 0c             	mov    0xc(%ebp),%eax
    296e:	8b 50 0c             	mov    0xc(%eax),%edx
    2971:	8b 45 08             	mov    0x8(%ebp),%eax
    2974:	89 90 18 04 00 00    	mov    %edx,0x418(%eax)
    297a:	8b 45 08             	mov    0x8(%ebp),%eax
    297d:	c7 80 1c 04 00 00 00 	movl   $0x0,0x41c(%eax)
    2984:	00 00 00 
    2987:	8b 45 0c             	mov    0xc(%ebp),%eax
    298a:	c7 40 04 0c 00 00 00 	movl   $0xc,0x4(%eax)
    2991:	8b 45 08             	mov    0x8(%ebp),%eax
    2994:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    299a:	83 ec 04             	sub    $0x4,%esp
    299d:	ff 75 0c             	pushl  0xc(%ebp)
    29a0:	50                   	push   %eax
    29a1:	6a 01                	push   $0x1
    29a3:	e8 20 99 00 00       	call   c2c8 <send_recv>
    29a8:	83 c4 10             	add    $0x10,%esp
    29ab:	90                   	nop
    29ac:	c9                   	leave  
    29ad:	c3                   	ret    

000029ae <tty_do_write>:
    29ae:	55                   	push   %ebp
    29af:	89 e5                	mov    %esp,%ebp
    29b1:	83 ec 28             	sub    $0x28,%esp
    29b4:	8b 45 0c             	mov    0xc(%ebp),%eax
    29b7:	8b 50 2c             	mov    0x2c(%eax),%edx
    29ba:	8b 45 0c             	mov    0xc(%ebp),%eax
    29bd:	8b 40 10             	mov    0x10(%eax),%eax
    29c0:	83 ec 08             	sub    $0x8,%esp
    29c3:	52                   	push   %edx
    29c4:	50                   	push   %eax
    29c5:	e8 01 15 00 00       	call   3ecb <va2la>
    29ca:	83 c4 10             	add    $0x10,%esp
    29cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
    29d0:	8b 45 0c             	mov    0xc(%ebp),%eax
    29d3:	8b 40 0c             	mov    0xc(%eax),%eax
    29d6:	89 45 f0             	mov    %eax,-0x10(%ebp)
    29d9:	eb 78                	jmp    2a53 <tty_do_write+0xa5>
    29db:	b8 02 00 00 00       	mov    $0x2,%eax
    29e0:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    29e4:	0f 4e 45 f0          	cmovle -0x10(%ebp),%eax
    29e8:	89 45 e8             	mov    %eax,-0x18(%ebp)
    29eb:	83 ec 08             	sub    $0x8,%esp
    29ee:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    29f1:	50                   	push   %eax
    29f2:	6a 00                	push   $0x0
    29f4:	e8 d2 14 00 00       	call   3ecb <va2la>
    29f9:	83 c4 10             	add    $0x10,%esp
    29fc:	83 ec 04             	sub    $0x4,%esp
    29ff:	ff 75 e8             	pushl  -0x18(%ebp)
    2a02:	ff 75 f4             	pushl  -0xc(%ebp)
    2a05:	50                   	push   %eax
    2a06:	e8 45 98 00 00       	call   c250 <memcpy>
    2a0b:	83 c4 10             	add    $0x10,%esp
    2a0e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    2a15:	eb 28                	jmp    2a3f <tty_do_write+0x91>
    2a17:	8d 55 e6             	lea    -0x1a(%ebp),%edx
    2a1a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2a1d:	01 d0                	add    %edx,%eax
    2a1f:	0f b6 00             	movzbl (%eax),%eax
    2a22:	0f be d0             	movsbl %al,%edx
    2a25:	8b 45 08             	mov    0x8(%ebp),%eax
    2a28:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2a2e:	83 ec 08             	sub    $0x8,%esp
    2a31:	52                   	push   %edx
    2a32:	50                   	push   %eax
    2a33:	e8 b2 04 00 00       	call   2eea <out_char>
    2a38:	83 c4 10             	add    $0x10,%esp
    2a3b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    2a3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2a42:	3b 45 e8             	cmp    -0x18(%ebp),%eax
    2a45:	7c d0                	jl     2a17 <tty_do_write+0x69>
    2a47:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2a4a:	29 45 f0             	sub    %eax,-0x10(%ebp)
    2a4d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    2a50:	01 45 f4             	add    %eax,-0xc(%ebp)
    2a53:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2a57:	75 82                	jne    29db <tty_do_write+0x2d>
    2a59:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a5c:	c7 40 04 12 00 00 00 	movl   $0x12,0x4(%eax)
    2a63:	8b 45 0c             	mov    0xc(%ebp),%eax
    2a66:	8b 00                	mov    (%eax),%eax
    2a68:	83 ec 04             	sub    $0x4,%esp
    2a6b:	ff 75 0c             	pushl  0xc(%ebp)
    2a6e:	50                   	push   %eax
    2a6f:	6a 01                	push   $0x1
    2a71:	e8 52 98 00 00       	call   c2c8 <send_recv>
    2a76:	83 c4 10             	add    $0x10,%esp
    2a79:	90                   	nop
    2a7a:	c9                   	leave  
    2a7b:	c3                   	ret    

00002a7c <sys_printx>:
    2a7c:	55                   	push   %ebp
    2a7d:	89 e5                	mov    %esp,%ebp
    2a7f:	83 ec 48             	sub    $0x48,%esp
    2a82:	c7 45 bf 3f 20 6b 5f 	movl   $0x5f6b203f,-0x41(%ebp)
    2a89:	c7 45 c3 72 65 65 6e 	movl   $0x6e656572,-0x3d(%ebp)
    2a90:	c7 45 c7 74 65 72 20 	movl   $0x20726574,-0x39(%ebp)
    2a97:	c7 45 cb 69 73 20 69 	movl   $0x69207369,-0x35(%ebp)
    2a9e:	c7 45 cf 6e 63 6f 72 	movl   $0x726f636e,-0x31(%ebp)
    2aa5:	c7 45 d3 72 65 63 74 	movl   $0x74636572,-0x2d(%ebp)
    2aac:	c7 45 d7 20 66 6f 72 	movl   $0x726f6620,-0x29(%ebp)
    2ab3:	c7 45 db 20 75 6e 6b 	movl   $0x6b6e7520,-0x25(%ebp)
    2aba:	c7 45 df 6e 6f 77 6e 	movl   $0x6e776f6e,-0x21(%ebp)
    2ac1:	c7 45 e3 20 72 65 61 	movl   $0x61657220,-0x1d(%ebp)
    2ac8:	c7 45 e7 73 6f 6e 00 	movl   $0x6e6f73,-0x19(%ebp)
    2acf:	c6 45 bf 02          	movb   $0x2,-0x41(%ebp)
    2ad3:	a1 20 84 03 00       	mov    0x38420,%eax
    2ad8:	85 c0                	test   %eax,%eax
    2ada:	75 25                	jne    2b01 <sys_printx+0x85>
    2adc:	8b 45 14             	mov    0x14(%ebp),%eax
    2adf:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    2ae4:	c1 f8 03             	sar    $0x3,%eax
    2ae7:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    2aed:	83 ec 08             	sub    $0x8,%esp
    2af0:	ff 75 10             	pushl  0x10(%ebp)
    2af3:	50                   	push   %eax
    2af4:	e8 d2 13 00 00       	call   3ecb <va2la>
    2af9:	83 c4 10             	add    $0x10,%esp
    2afc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2aff:	eb 17                	jmp    2b18 <sys_printx+0x9c>
    2b01:	a1 20 84 03 00       	mov    0x38420,%eax
    2b06:	85 c0                	test   %eax,%eax
    2b08:	74 08                	je     2b12 <sys_printx+0x96>
    2b0a:	8b 45 10             	mov    0x10(%ebp),%eax
    2b0d:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b10:	eb 06                	jmp    2b18 <sys_printx+0x9c>
    2b12:	8d 45 bf             	lea    -0x41(%ebp),%eax
    2b15:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2b18:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b1b:	0f b6 00             	movzbl (%eax),%eax
    2b1e:	3c 02                	cmp    $0x2,%al
    2b20:	74 1e                	je     2b40 <sys_printx+0xc4>
    2b22:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b25:	0f b6 00             	movzbl (%eax),%eax
    2b28:	3c 03                	cmp    $0x3,%al
    2b2a:	0f 85 cd 00 00 00    	jne    2bfd <sys_printx+0x181>
    2b30:	a1 80 a4 03 00       	mov    0x3a480,%eax
    2b35:	3d 98 ac 03 00       	cmp    $0x3ac98,%eax
    2b3a:	0f 83 bd 00 00 00    	jae    2bfd <sys_printx+0x181>
    2b40:	e8 58 39 00 00       	call   649d <disable_int>
    2b45:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
    2b4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2b4f:	83 c0 01             	add    $0x1,%eax
    2b52:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2b55:	eb 76                	jmp    2bcd <sys_printx+0x151>
    2b57:	8b 55 ec             	mov    -0x14(%ebp),%edx
    2b5a:	8d 42 01             	lea    0x1(%edx),%eax
    2b5d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2b60:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2b63:	8d 48 01             	lea    0x1(%eax),%ecx
    2b66:	89 4d f0             	mov    %ecx,-0x10(%ebp)
    2b69:	0f b6 12             	movzbl (%edx),%edx
    2b6c:	88 10                	mov    %dl,(%eax)
    2b6e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2b71:	8d 50 01             	lea    0x1(%eax),%edx
    2b74:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2b77:	c6 00 1c             	movb   $0x1c,(%eax)
    2b7a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2b7d:	0f b6 00             	movzbl (%eax),%eax
    2b80:	84 c0                	test   %al,%al
    2b82:	75 49                	jne    2bcd <sys_printx+0x151>
    2b84:	eb 10                	jmp    2b96 <sys_printx+0x11a>
    2b86:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    2b8a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2b8d:	8d 50 01             	lea    0x1(%eax),%edx
    2b90:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2b93:	c6 00 08             	movb   $0x8,(%eax)
    2b96:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2b99:	8d 88 00 80 f4 ff    	lea    -0xb8000(%eax),%ecx
    2b9f:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2ba4:	89 c8                	mov    %ecx,%eax
    2ba6:	f7 ea                	imul   %edx
    2ba8:	c1 fa 09             	sar    $0x9,%edx
    2bab:	89 c8                	mov    %ecx,%eax
    2bad:	c1 f8 1f             	sar    $0x1f,%eax
    2bb0:	29 c2                	sub    %eax,%edx
    2bb2:	89 d0                	mov    %edx,%eax
    2bb4:	c1 e0 02             	shl    $0x2,%eax
    2bb7:	01 d0                	add    %edx,%eax
    2bb9:	c1 e0 08             	shl    $0x8,%eax
    2bbc:	29 c1                	sub    %eax,%ecx
    2bbe:	89 ca                	mov    %ecx,%edx
    2bc0:	85 d2                	test   %edx,%edx
    2bc2:	75 c2                	jne    2b86 <sys_printx+0x10a>
    2bc4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2bc7:	83 c0 01             	add    $0x1,%eax
    2bca:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2bcd:	81 7d f0 ff ff 0b 00 	cmpl   $0xbffff,-0x10(%ebp)
    2bd4:	76 81                	jbe    2b57 <sys_printx+0xdb>
    2bd6:	f4                   	hlt    
    2bd7:	eb 24                	jmp    2bfd <sys_printx+0x181>
    2bd9:	80 7d eb 02          	cmpb   $0x2,-0x15(%ebp)
    2bdd:	74 1e                	je     2bfd <sys_printx+0x181>
    2bdf:	80 7d eb 03          	cmpb   $0x3,-0x15(%ebp)
    2be3:	75 02                	jne    2be7 <sys_printx+0x16b>
    2be5:	eb 16                	jmp    2bfd <sys_printx+0x181>
    2be7:	0f be 55 eb          	movsbl -0x15(%ebp),%edx
    2beb:	a1 80 8c 03 00       	mov    0x38c80,%eax
    2bf0:	83 ec 08             	sub    $0x8,%esp
    2bf3:	52                   	push   %edx
    2bf4:	50                   	push   %eax
    2bf5:	e8 f0 02 00 00       	call   2eea <out_char>
    2bfa:	83 c4 10             	add    $0x10,%esp
    2bfd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c00:	8d 50 01             	lea    0x1(%eax),%edx
    2c03:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2c06:	0f b6 00             	movzbl (%eax),%eax
    2c09:	88 45 eb             	mov    %al,-0x15(%ebp)
    2c0c:	80 7d eb 00          	cmpb   $0x0,-0x15(%ebp)
    2c10:	75 c7                	jne    2bd9 <sys_printx+0x15d>
    2c12:	b8 00 00 00 00       	mov    $0x0,%eax
    2c17:	c9                   	leave  
    2c18:	c3                   	ret    

00002c19 <dump_tty_buf>:
    2c19:	55                   	push   %ebp
    2c1a:	89 e5                	mov    %esp,%ebp
    2c1c:	83 ec 18             	sub    $0x18,%esp
    2c1f:	c7 45 f4 84 8c 03 00 	movl   $0x38c84,-0xc(%ebp)
    2c26:	83 ec 0c             	sub    $0xc,%esp
    2c29:	68 20 26 01 00       	push   $0x12620
    2c2e:	e8 d2 92 00 00       	call   bf05 <printl>
    2c33:	83 c4 10             	add    $0x10,%esp
    2c36:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c39:	8b 90 00 04 00 00    	mov    0x400(%eax),%edx
    2c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c42:	29 c2                	sub    %eax,%edx
    2c44:	89 d0                	mov    %edx,%eax
    2c46:	c1 f8 02             	sar    $0x2,%eax
    2c49:	83 ec 08             	sub    $0x8,%esp
    2c4c:	50                   	push   %eax
    2c4d:	68 e0 cc 00 00       	push   $0xcce0
    2c52:	e8 ae 92 00 00       	call   bf05 <printl>
    2c57:	83 c4 10             	add    $0x10,%esp
    2c5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c5d:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2c63:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c66:	29 c2                	sub    %eax,%edx
    2c68:	89 d0                	mov    %edx,%eax
    2c6a:	c1 f8 02             	sar    $0x2,%eax
    2c6d:	83 ec 08             	sub    $0x8,%esp
    2c70:	50                   	push   %eax
    2c71:	68 ea cc 00 00       	push   $0xccea
    2c76:	e8 8a 92 00 00       	call   bf05 <printl>
    2c7b:	83 c4 10             	add    $0x10,%esp
    2c7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c81:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2c87:	83 ec 08             	sub    $0x8,%esp
    2c8a:	50                   	push   %eax
    2c8b:	68 f4 cc 00 00       	push   $0xccf4
    2c90:	e8 70 92 00 00       	call   bf05 <printl>
    2c95:	83 c4 10             	add    $0x10,%esp
    2c98:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2c9b:	8b 80 0c 04 00 00    	mov    0x40c(%eax),%eax
    2ca1:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2ca4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2ca7:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    2cad:	83 c0 60             	add    $0x60,%eax
    2cb0:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    2cb5:	83 c0 04             	add    $0x4,%eax
    2cb8:	83 ec 04             	sub    $0x4,%esp
    2cbb:	ff 75 f0             	pushl  -0x10(%ebp)
    2cbe:	50                   	push   %eax
    2cbf:	68 fd cc 00 00       	push   $0xccfd
    2cc4:	e8 3c 92 00 00       	call   bf05 <printl>
    2cc9:	83 c4 10             	add    $0x10,%esp
    2ccc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ccf:	8b 80 10 04 00 00    	mov    0x410(%eax),%eax
    2cd5:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2cd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2cdb:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    2ce1:	83 c0 60             	add    $0x60,%eax
    2ce4:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    2ce9:	83 c0 04             	add    $0x4,%eax
    2cec:	83 ec 04             	sub    $0x4,%esp
    2cef:	ff 75 f0             	pushl  -0x10(%ebp)
    2cf2:	50                   	push   %eax
    2cf3:	68 fd cc 00 00       	push   $0xccfd
    2cf8:	e8 08 92 00 00       	call   bf05 <printl>
    2cfd:	83 c4 10             	add    $0x10,%esp
    2d00:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d03:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    2d09:	83 ec 08             	sub    $0x8,%esp
    2d0c:	50                   	push   %eax
    2d0d:	68 0e cd 00 00       	push   $0xcd0e
    2d12:	e8 ee 91 00 00       	call   bf05 <printl>
    2d17:	83 c4 10             	add    $0x10,%esp
    2d1a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d1d:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2d23:	83 ec 08             	sub    $0x8,%esp
    2d26:	50                   	push   %eax
    2d27:	68 1b cd 00 00       	push   $0xcd1b
    2d2c:	e8 d4 91 00 00       	call   bf05 <printl>
    2d31:	83 c4 10             	add    $0x10,%esp
    2d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2d37:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2d3d:	83 ec 08             	sub    $0x8,%esp
    2d40:	50                   	push   %eax
    2d41:	68 29 cd 00 00       	push   $0xcd29
    2d46:	e8 ba 91 00 00       	call   bf05 <printl>
    2d4b:	83 c4 10             	add    $0x10,%esp
    2d4e:	83 ec 0c             	sub    $0xc,%esp
    2d51:	68 38 cd 00 00       	push   $0xcd38
    2d56:	e8 aa 91 00 00       	call   bf05 <printl>
    2d5b:	83 c4 10             	add    $0x10,%esp
    2d5e:	83 ec 08             	sub    $0x8,%esp
    2d61:	68 5a cd 00 00       	push   $0xcd5a
    2d66:	68 20 26 01 00       	push   $0x12620
    2d6b:	e8 2a 95 00 00       	call   c29a <strcpy>
    2d70:	83 c4 10             	add    $0x10,%esp
    2d73:	90                   	nop
    2d74:	c9                   	leave  
    2d75:	c3                   	ret    

00002d76 <init_screen>:
    2d76:	55                   	push   %ebp
    2d77:	89 e5                	mov    %esp,%ebp
    2d79:	83 ec 28             	sub    $0x28,%esp
    2d7c:	8b 45 08             	mov    0x8(%ebp),%eax
    2d7f:	2d 60 88 03 00       	sub    $0x38860,%eax
    2d84:	c1 f8 02             	sar    $0x2,%eax
    2d87:	69 c0 39 dd 03 1c    	imul   $0x1c03dd39,%eax,%eax
    2d8d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    2d90:	8b 55 f0             	mov    -0x10(%ebp),%edx
    2d93:	89 d0                	mov    %edx,%eax
    2d95:	c1 e0 02             	shl    $0x2,%eax
    2d98:	01 d0                	add    %edx,%eax
    2d9a:	c1 e0 02             	shl    $0x2,%eax
    2d9d:	8d 90 00 a4 03 00    	lea    0x3a400(%eax),%edx
    2da3:	8b 45 08             	mov    0x8(%ebp),%eax
    2da6:	89 90 20 04 00 00    	mov    %edx,0x420(%eax)
    2dac:	c7 45 ec 00 40 00 00 	movl   $0x4000,-0x14(%ebp)
    2db3:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    2db6:	ba 56 55 55 55       	mov    $0x55555556,%edx
    2dbb:	89 c8                	mov    %ecx,%eax
    2dbd:	f7 ea                	imul   %edx
    2dbf:	89 c8                	mov    %ecx,%eax
    2dc1:	c1 f8 1f             	sar    $0x1f,%eax
    2dc4:	29 c2                	sub    %eax,%edx
    2dc6:	89 d0                	mov    %edx,%eax
    2dc8:	89 45 e8             	mov    %eax,-0x18(%ebp)
    2dcb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2dce:	0f af 45 e8          	imul   -0x18(%ebp),%eax
    2dd2:	89 c2                	mov    %eax,%edx
    2dd4:	8b 45 08             	mov    0x8(%ebp),%eax
    2dd7:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2ddd:	89 50 04             	mov    %edx,0x4(%eax)
    2de0:	8b 4d e8             	mov    -0x18(%ebp),%ecx
    2de3:	ba 67 66 66 66       	mov    $0x66666667,%edx
    2de8:	89 c8                	mov    %ecx,%eax
    2dea:	f7 ea                	imul   %edx
    2dec:	c1 fa 05             	sar    $0x5,%edx
    2def:	89 c8                	mov    %ecx,%eax
    2df1:	c1 f8 1f             	sar    $0x1f,%eax
    2df4:	29 c2                	sub    %eax,%edx
    2df6:	89 d0                	mov    %edx,%eax
    2df8:	c1 e0 02             	shl    $0x2,%eax
    2dfb:	01 d0                	add    %edx,%eax
    2dfd:	c1 e0 04             	shl    $0x4,%eax
    2e00:	89 c2                	mov    %eax,%edx
    2e02:	8b 45 08             	mov    0x8(%ebp),%eax
    2e05:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e0b:	89 50 08             	mov    %edx,0x8(%eax)
    2e0e:	8b 45 08             	mov    0x8(%ebp),%eax
    2e11:	8b 90 20 04 00 00    	mov    0x420(%eax),%edx
    2e17:	8b 45 08             	mov    0x8(%ebp),%eax
    2e1a:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e20:	8b 52 04             	mov    0x4(%edx),%edx
    2e23:	89 10                	mov    %edx,(%eax)
    2e25:	8b 55 08             	mov    0x8(%ebp),%edx
    2e28:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2e2e:	8b 00                	mov    (%eax),%eax
    2e30:	89 42 0c             	mov    %eax,0xc(%edx)
    2e33:	8b 45 08             	mov    0x8(%ebp),%eax
    2e36:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e3c:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
    2e43:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    2e47:	75 28                	jne    2e71 <init_screen+0xfb>
    2e49:	a1 a4 99 03 00       	mov    0x399a4,%eax
    2e4e:	89 c2                	mov    %eax,%edx
    2e50:	c1 ea 1f             	shr    $0x1f,%edx
    2e53:	01 d0                	add    %edx,%eax
    2e55:	d1 f8                	sar    %eax
    2e57:	89 c2                	mov    %eax,%edx
    2e59:	8b 45 08             	mov    0x8(%ebp),%eax
    2e5c:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2e62:	89 50 0c             	mov    %edx,0xc(%eax)
    2e65:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    2e6c:	00 00 00 
    2e6f:	eb 5e                	jmp    2ecf <init_screen+0x159>
    2e71:	c7 45 de 5b 54 54 59 	movl   $0x5954545b,-0x22(%ebp)
    2e78:	c7 45 e2 20 23 3f 5d 	movl   $0x5d3f2320,-0x1e(%ebp)
    2e7f:	66 c7 45 e6 0a 00    	movw   $0xa,-0x1a(%ebp)
    2e85:	8d 45 de             	lea    -0x22(%ebp),%eax
    2e88:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2e8b:	eb 38                	jmp    2ec5 <init_screen+0x14f>
    2e8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e90:	0f b6 00             	movzbl (%eax),%eax
    2e93:	3c 3f                	cmp    $0x3f,%al
    2e95:	75 0b                	jne    2ea2 <init_screen+0x12c>
    2e97:	8b 45 f0             	mov    -0x10(%ebp),%eax
    2e9a:	83 c0 30             	add    $0x30,%eax
    2e9d:	0f be c0             	movsbl %al,%eax
    2ea0:	eb 09                	jmp    2eab <init_screen+0x135>
    2ea2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ea5:	0f b6 00             	movzbl (%eax),%eax
    2ea8:	0f be c0             	movsbl %al,%eax
    2eab:	8b 55 08             	mov    0x8(%ebp),%edx
    2eae:	8b 92 20 04 00 00    	mov    0x420(%edx),%edx
    2eb4:	83 ec 08             	sub    $0x8,%esp
    2eb7:	50                   	push   %eax
    2eb8:	52                   	push   %edx
    2eb9:	e8 2c 00 00 00       	call   2eea <out_char>
    2ebe:	83 c4 10             	add    $0x10,%esp
    2ec1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    2ec5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ec8:	0f b6 00             	movzbl (%eax),%eax
    2ecb:	84 c0                	test   %al,%al
    2ecd:	75 be                	jne    2e8d <init_screen+0x117>
    2ecf:	8b 45 08             	mov    0x8(%ebp),%eax
    2ed2:	8b 80 20 04 00 00    	mov    0x420(%eax),%eax
    2ed8:	8b 40 0c             	mov    0xc(%eax),%eax
    2edb:	83 ec 0c             	sub    $0xc,%esp
    2ede:	50                   	push   %eax
    2edf:	e8 06 03 00 00       	call   31ea <set_cursor>
    2ee4:	83 c4 10             	add    $0x10,%esp
    2ee7:	90                   	nop
    2ee8:	c9                   	leave  
    2ee9:	c3                   	ret    

00002eea <out_char>:
    2eea:	55                   	push   %ebp
    2eeb:	89 e5                	mov    %esp,%ebp
    2eed:	83 ec 28             	sub    $0x28,%esp
    2ef0:	8b 45 0c             	mov    0xc(%ebp),%eax
    2ef3:	88 45 e4             	mov    %al,-0x1c(%ebp)
    2ef6:	8b 45 08             	mov    0x8(%ebp),%eax
    2ef9:	8b 40 0c             	mov    0xc(%eax),%eax
    2efc:	05 00 c0 05 00       	add    $0x5c000,%eax
    2f01:	01 c0                	add    %eax,%eax
    2f03:	89 45 f4             	mov    %eax,-0xc(%ebp)
    2f06:	8b 45 08             	mov    0x8(%ebp),%eax
    2f09:	8b 50 0c             	mov    0xc(%eax),%edx
    2f0c:	8b 45 08             	mov    0x8(%ebp),%eax
    2f0f:	8b 40 04             	mov    0x4(%eax),%eax
    2f12:	29 c2                	sub    %eax,%edx
    2f14:	8b 45 08             	mov    0x8(%ebp),%eax
    2f17:	8b 40 08             	mov    0x8(%eax),%eax
    2f1a:	39 c2                	cmp    %eax,%edx
    2f1c:	72 19                	jb     2f37 <out_char+0x4d>
    2f1e:	6a 59                	push   $0x59
    2f20:	68 5c cd 00 00       	push   $0xcd5c
    2f25:	68 5c cd 00 00       	push   $0xcd5c
    2f2a:	68 70 cd 00 00       	push   $0xcd70
    2f2f:	e8 a9 95 00 00       	call   c4dd <assertion_failure>
    2f34:	83 c4 10             	add    $0x10,%esp
    2f37:	8b 45 08             	mov    0x8(%ebp),%eax
    2f3a:	8b 50 0c             	mov    0xc(%eax),%edx
    2f3d:	8b 45 08             	mov    0x8(%ebp),%eax
    2f40:	8b 40 04             	mov    0x4(%eax),%eax
    2f43:	89 d1                	mov    %edx,%ecx
    2f45:	29 c1                	sub    %eax,%ecx
    2f47:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2f4c:	89 c8                	mov    %ecx,%eax
    2f4e:	f7 e2                	mul    %edx
    2f50:	c1 ea 06             	shr    $0x6,%edx
    2f53:	89 d0                	mov    %edx,%eax
    2f55:	c1 e0 02             	shl    $0x2,%eax
    2f58:	01 d0                	add    %edx,%eax
    2f5a:	c1 e0 04             	shl    $0x4,%eax
    2f5d:	29 c1                	sub    %eax,%ecx
    2f5f:	89 ca                	mov    %ecx,%edx
    2f61:	89 55 f0             	mov    %edx,-0x10(%ebp)
    2f64:	8b 45 08             	mov    0x8(%ebp),%eax
    2f67:	8b 50 0c             	mov    0xc(%eax),%edx
    2f6a:	8b 45 08             	mov    0x8(%ebp),%eax
    2f6d:	8b 40 04             	mov    0x4(%eax),%eax
    2f70:	29 c2                	sub    %eax,%edx
    2f72:	89 d0                	mov    %edx,%eax
    2f74:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    2f79:	f7 e2                	mul    %edx
    2f7b:	89 d0                	mov    %edx,%eax
    2f7d:	c1 e8 06             	shr    $0x6,%eax
    2f80:	89 45 ec             	mov    %eax,-0x14(%ebp)
    2f83:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
    2f87:	83 f8 08             	cmp    $0x8,%eax
    2f8a:	74 26                	je     2fb2 <out_char+0xc8>
    2f8c:	83 f8 0a             	cmp    $0xa,%eax
    2f8f:	75 54                	jne    2fe5 <out_char+0xfb>
    2f91:	8b 45 08             	mov    0x8(%ebp),%eax
    2f94:	8b 48 04             	mov    0x4(%eax),%ecx
    2f97:	8b 45 ec             	mov    -0x14(%ebp),%eax
    2f9a:	8d 50 01             	lea    0x1(%eax),%edx
    2f9d:	89 d0                	mov    %edx,%eax
    2f9f:	c1 e0 02             	shl    $0x2,%eax
    2fa2:	01 d0                	add    %edx,%eax
    2fa4:	c1 e0 04             	shl    $0x4,%eax
    2fa7:	8d 14 01             	lea    (%ecx,%eax,1),%edx
    2faa:	8b 45 08             	mov    0x8(%ebp),%eax
    2fad:	89 50 0c             	mov    %edx,0xc(%eax)
    2fb0:	eb 60                	jmp    3012 <out_char+0x128>
    2fb2:	8b 45 08             	mov    0x8(%ebp),%eax
    2fb5:	8b 50 0c             	mov    0xc(%eax),%edx
    2fb8:	8b 45 08             	mov    0x8(%ebp),%eax
    2fbb:	8b 40 04             	mov    0x4(%eax),%eax
    2fbe:	39 c2                	cmp    %eax,%edx
    2fc0:	76 4f                	jbe    3011 <out_char+0x127>
    2fc2:	8b 45 08             	mov    0x8(%ebp),%eax
    2fc5:	8b 40 0c             	mov    0xc(%eax),%eax
    2fc8:	8d 50 ff             	lea    -0x1(%eax),%edx
    2fcb:	8b 45 08             	mov    0x8(%ebp),%eax
    2fce:	89 50 0c             	mov    %edx,0xc(%eax)
    2fd1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2fd4:	83 e8 02             	sub    $0x2,%eax
    2fd7:	c6 00 20             	movb   $0x20,(%eax)
    2fda:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2fdd:	83 e8 01             	sub    $0x1,%eax
    2fe0:	c6 00 07             	movb   $0x7,(%eax)
    2fe3:	eb 2c                	jmp    3011 <out_char+0x127>
    2fe5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2fe8:	8d 50 01             	lea    0x1(%eax),%edx
    2feb:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2fee:	0f b6 55 e4          	movzbl -0x1c(%ebp),%edx
    2ff2:	88 10                	mov    %dl,(%eax)
    2ff4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ff7:	8d 50 01             	lea    0x1(%eax),%edx
    2ffa:	89 55 f4             	mov    %edx,-0xc(%ebp)
    2ffd:	c6 00 07             	movb   $0x7,(%eax)
    3000:	8b 45 08             	mov    0x8(%ebp),%eax
    3003:	8b 40 0c             	mov    0xc(%eax),%eax
    3006:	8d 50 01             	lea    0x1(%eax),%edx
    3009:	8b 45 08             	mov    0x8(%ebp),%eax
    300c:	89 50 0c             	mov    %edx,0xc(%eax)
    300f:	eb 01                	jmp    3012 <out_char+0x128>
    3011:	90                   	nop
    3012:	8b 45 08             	mov    0x8(%ebp),%eax
    3015:	8b 50 0c             	mov    0xc(%eax),%edx
    3018:	8b 45 08             	mov    0x8(%ebp),%eax
    301b:	8b 40 04             	mov    0x4(%eax),%eax
    301e:	29 c2                	sub    %eax,%edx
    3020:	8b 45 08             	mov    0x8(%ebp),%eax
    3023:	8b 40 08             	mov    0x8(%eax),%eax
    3026:	39 c2                	cmp    %eax,%edx
    3028:	0f 82 d1 00 00 00    	jb     30ff <out_char+0x215>
    302e:	8b 45 08             	mov    0x8(%ebp),%eax
    3031:	8b 50 0c             	mov    0xc(%eax),%edx
    3034:	8b 45 08             	mov    0x8(%ebp),%eax
    3037:	8b 40 04             	mov    0x4(%eax),%eax
    303a:	89 d1                	mov    %edx,%ecx
    303c:	29 c1                	sub    %eax,%ecx
    303e:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3043:	89 c8                	mov    %ecx,%eax
    3045:	f7 e2                	mul    %edx
    3047:	c1 ea 06             	shr    $0x6,%edx
    304a:	89 d0                	mov    %edx,%eax
    304c:	c1 e0 02             	shl    $0x2,%eax
    304f:	01 d0                	add    %edx,%eax
    3051:	c1 e0 04             	shl    $0x4,%eax
    3054:	29 c1                	sub    %eax,%ecx
    3056:	89 ca                	mov    %ecx,%edx
    3058:	89 55 f0             	mov    %edx,-0x10(%ebp)
    305b:	8b 45 08             	mov    0x8(%ebp),%eax
    305e:	8b 50 0c             	mov    0xc(%eax),%edx
    3061:	8b 45 08             	mov    0x8(%ebp),%eax
    3064:	8b 40 04             	mov    0x4(%eax),%eax
    3067:	29 c2                	sub    %eax,%edx
    3069:	89 d0                	mov    %edx,%eax
    306b:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3070:	f7 e2                	mul    %edx
    3072:	89 d0                	mov    %edx,%eax
    3074:	c1 e8 06             	shr    $0x6,%eax
    3077:	89 45 ec             	mov    %eax,-0x14(%ebp)
    307a:	8b 45 08             	mov    0x8(%ebp),%eax
    307d:	8b 48 04             	mov    0x4(%eax),%ecx
    3080:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3083:	8d 50 01             	lea    0x1(%eax),%edx
    3086:	89 d0                	mov    %edx,%eax
    3088:	c1 e0 02             	shl    $0x2,%eax
    308b:	01 d0                	add    %edx,%eax
    308d:	c1 e0 04             	shl    $0x4,%eax
    3090:	01 c8                	add    %ecx,%eax
    3092:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3097:	89 45 e8             	mov    %eax,-0x18(%ebp)
    309a:	8b 55 e8             	mov    -0x18(%ebp),%edx
    309d:	8b 45 08             	mov    0x8(%ebp),%eax
    30a0:	8b 40 04             	mov    0x4(%eax),%eax
    30a3:	83 ec 04             	sub    $0x4,%esp
    30a6:	68 80 07 00 00       	push   $0x780
    30ab:	52                   	push   %edx
    30ac:	50                   	push   %eax
    30ad:	e8 67 04 00 00       	call   3519 <w_copy>
    30b2:	83 c4 10             	add    $0x10,%esp
    30b5:	8b 45 08             	mov    0x8(%ebp),%eax
    30b8:	8b 50 04             	mov    0x4(%eax),%edx
    30bb:	8b 45 08             	mov    0x8(%ebp),%eax
    30be:	89 10                	mov    %edx,(%eax)
    30c0:	8b 45 08             	mov    0x8(%ebp),%eax
    30c3:	8b 50 04             	mov    0x4(%eax),%edx
    30c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    30c9:	01 d0                	add    %edx,%eax
    30cb:	8d 90 80 07 00 00    	lea    0x780(%eax),%edx
    30d1:	8b 45 08             	mov    0x8(%ebp),%eax
    30d4:	89 50 0c             	mov    %edx,0xc(%eax)
    30d7:	8b 45 08             	mov    0x8(%ebp),%eax
    30da:	8b 40 0c             	mov    0xc(%eax),%eax
    30dd:	83 ec 08             	sub    $0x8,%esp
    30e0:	6a 50                	push   $0x50
    30e2:	50                   	push   %eax
    30e3:	e8 a5 00 00 00       	call   318d <clear_screen>
    30e8:	83 c4 10             	add    $0x10,%esp
    30eb:	8b 45 08             	mov    0x8(%ebp),%eax
    30ee:	8b 40 10             	mov    0x10(%eax),%eax
    30f1:	85 c0                	test   %eax,%eax
    30f3:	75 0a                	jne    30ff <out_char+0x215>
    30f5:	8b 45 08             	mov    0x8(%ebp),%eax
    30f8:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
    30ff:	8b 45 08             	mov    0x8(%ebp),%eax
    3102:	8b 50 0c             	mov    0xc(%eax),%edx
    3105:	8b 45 08             	mov    0x8(%ebp),%eax
    3108:	8b 40 04             	mov    0x4(%eax),%eax
    310b:	29 c2                	sub    %eax,%edx
    310d:	8b 45 08             	mov    0x8(%ebp),%eax
    3110:	8b 40 08             	mov    0x8(%eax),%eax
    3113:	39 c2                	cmp    %eax,%edx
    3115:	72 42                	jb     3159 <out_char+0x26f>
    3117:	68 80 00 00 00       	push   $0x80
    311c:	68 5c cd 00 00       	push   $0xcd5c
    3121:	68 5c cd 00 00       	push   $0xcd5c
    3126:	68 70 cd 00 00       	push   $0xcd70
    312b:	e8 ad 93 00 00       	call   c4dd <assertion_failure>
    3130:	83 c4 10             	add    $0x10,%esp
    3133:	eb 24                	jmp    3159 <out_char+0x26f>
    3135:	83 ec 08             	sub    $0x8,%esp
    3138:	6a 01                	push   $0x1
    313a:	ff 75 08             	pushl  0x8(%ebp)
    313d:	e8 b8 01 00 00       	call   32fa <scroll_screen>
    3142:	83 c4 10             	add    $0x10,%esp
    3145:	8b 45 08             	mov    0x8(%ebp),%eax
    3148:	8b 40 0c             	mov    0xc(%eax),%eax
    314b:	83 ec 08             	sub    $0x8,%esp
    314e:	6a 50                	push   $0x50
    3150:	50                   	push   %eax
    3151:	e8 37 00 00 00       	call   318d <clear_screen>
    3156:	83 c4 10             	add    $0x10,%esp
    3159:	8b 45 08             	mov    0x8(%ebp),%eax
    315c:	8b 50 0c             	mov    0xc(%eax),%edx
    315f:	8b 45 08             	mov    0x8(%ebp),%eax
    3162:	8b 00                	mov    (%eax),%eax
    3164:	05 d0 07 00 00       	add    $0x7d0,%eax
    3169:	39 c2                	cmp    %eax,%edx
    316b:	73 c8                	jae    3135 <out_char+0x24b>
    316d:	8b 45 08             	mov    0x8(%ebp),%eax
    3170:	8b 50 0c             	mov    0xc(%eax),%edx
    3173:	8b 45 08             	mov    0x8(%ebp),%eax
    3176:	8b 00                	mov    (%eax),%eax
    3178:	39 c2                	cmp    %eax,%edx
    317a:	72 b9                	jb     3135 <out_char+0x24b>
    317c:	83 ec 0c             	sub    $0xc,%esp
    317f:	ff 75 08             	pushl  0x8(%ebp)
    3182:	e8 57 03 00 00       	call   34de <flush>
    3187:	83 c4 10             	add    $0x10,%esp
    318a:	90                   	nop
    318b:	c9                   	leave  
    318c:	c3                   	ret    

0000318d <clear_screen>:
    318d:	55                   	push   %ebp
    318e:	89 e5                	mov    %esp,%ebp
    3190:	83 ec 10             	sub    $0x10,%esp
    3193:	8b 45 08             	mov    0x8(%ebp),%eax
    3196:	05 00 c0 05 00       	add    $0x5c000,%eax
    319b:	01 c0                	add    %eax,%eax
    319d:	89 45 fc             	mov    %eax,-0x4(%ebp)
    31a0:	eb 18                	jmp    31ba <clear_screen+0x2d>
    31a2:	8b 45 fc             	mov    -0x4(%ebp),%eax
    31a5:	8d 50 01             	lea    0x1(%eax),%edx
    31a8:	89 55 fc             	mov    %edx,-0x4(%ebp)
    31ab:	c6 00 20             	movb   $0x20,(%eax)
    31ae:	8b 45 fc             	mov    -0x4(%ebp),%eax
    31b1:	8d 50 01             	lea    0x1(%eax),%edx
    31b4:	89 55 fc             	mov    %edx,-0x4(%ebp)
    31b7:	c6 00 07             	movb   $0x7,(%eax)
    31ba:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    31be:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    31c2:	79 de                	jns    31a2 <clear_screen+0x15>
    31c4:	90                   	nop
    31c5:	c9                   	leave  
    31c6:	c3                   	ret    

000031c7 <is_current_console>:
    31c7:	55                   	push   %ebp
    31c8:	89 e5                	mov    %esp,%ebp
    31ca:	8b 15 40 88 03 00    	mov    0x38840,%edx
    31d0:	89 d0                	mov    %edx,%eax
    31d2:	c1 e0 02             	shl    $0x2,%eax
    31d5:	01 d0                	add    %edx,%eax
    31d7:	c1 e0 02             	shl    $0x2,%eax
    31da:	05 00 a4 03 00       	add    $0x3a400,%eax
    31df:	39 45 08             	cmp    %eax,0x8(%ebp)
    31e2:	0f 94 c0             	sete   %al
    31e5:	0f b6 c0             	movzbl %al,%eax
    31e8:	5d                   	pop    %ebp
    31e9:	c3                   	ret    

000031ea <set_cursor>:
    31ea:	55                   	push   %ebp
    31eb:	89 e5                	mov    %esp,%ebp
    31ed:	83 ec 08             	sub    $0x8,%esp
    31f0:	e8 a8 32 00 00       	call   649d <disable_int>
    31f5:	83 ec 08             	sub    $0x8,%esp
    31f8:	6a 0e                	push   $0xe
    31fa:	68 d4 03 00 00       	push   $0x3d4
    31ff:	e8 09 32 00 00       	call   640d <out_byte>
    3204:	83 c4 10             	add    $0x10,%esp
    3207:	8b 45 08             	mov    0x8(%ebp),%eax
    320a:	c1 e8 08             	shr    $0x8,%eax
    320d:	0f b6 c0             	movzbl %al,%eax
    3210:	83 ec 08             	sub    $0x8,%esp
    3213:	50                   	push   %eax
    3214:	68 d5 03 00 00       	push   $0x3d5
    3219:	e8 ef 31 00 00       	call   640d <out_byte>
    321e:	83 c4 10             	add    $0x10,%esp
    3221:	83 ec 08             	sub    $0x8,%esp
    3224:	6a 0f                	push   $0xf
    3226:	68 d4 03 00 00       	push   $0x3d4
    322b:	e8 dd 31 00 00       	call   640d <out_byte>
    3230:	83 c4 10             	add    $0x10,%esp
    3233:	8b 45 08             	mov    0x8(%ebp),%eax
    3236:	0f b6 c0             	movzbl %al,%eax
    3239:	83 ec 08             	sub    $0x8,%esp
    323c:	50                   	push   %eax
    323d:	68 d5 03 00 00       	push   $0x3d5
    3242:	e8 c6 31 00 00       	call   640d <out_byte>
    3247:	83 c4 10             	add    $0x10,%esp
    324a:	e8 50 32 00 00       	call   649f <enable_int>
    324f:	90                   	nop
    3250:	c9                   	leave  
    3251:	c3                   	ret    

00003252 <set_video_start_addr>:
    3252:	55                   	push   %ebp
    3253:	89 e5                	mov    %esp,%ebp
    3255:	83 ec 08             	sub    $0x8,%esp
    3258:	e8 40 32 00 00       	call   649d <disable_int>
    325d:	83 ec 08             	sub    $0x8,%esp
    3260:	6a 0c                	push   $0xc
    3262:	68 d4 03 00 00       	push   $0x3d4
    3267:	e8 a1 31 00 00       	call   640d <out_byte>
    326c:	83 c4 10             	add    $0x10,%esp
    326f:	8b 45 08             	mov    0x8(%ebp),%eax
    3272:	c1 e8 08             	shr    $0x8,%eax
    3275:	0f b6 c0             	movzbl %al,%eax
    3278:	83 ec 08             	sub    $0x8,%esp
    327b:	50                   	push   %eax
    327c:	68 d5 03 00 00       	push   $0x3d5
    3281:	e8 87 31 00 00       	call   640d <out_byte>
    3286:	83 c4 10             	add    $0x10,%esp
    3289:	83 ec 08             	sub    $0x8,%esp
    328c:	6a 0d                	push   $0xd
    328e:	68 d4 03 00 00       	push   $0x3d4
    3293:	e8 75 31 00 00       	call   640d <out_byte>
    3298:	83 c4 10             	add    $0x10,%esp
    329b:	8b 45 08             	mov    0x8(%ebp),%eax
    329e:	0f b6 c0             	movzbl %al,%eax
    32a1:	83 ec 08             	sub    $0x8,%esp
    32a4:	50                   	push   %eax
    32a5:	68 d5 03 00 00       	push   $0x3d5
    32aa:	e8 5e 31 00 00       	call   640d <out_byte>
    32af:	83 c4 10             	add    $0x10,%esp
    32b2:	e8 e8 31 00 00       	call   649f <enable_int>
    32b7:	90                   	nop
    32b8:	c9                   	leave  
    32b9:	c3                   	ret    

000032ba <select_console>:
    32ba:	55                   	push   %ebp
    32bb:	89 e5                	mov    %esp,%ebp
    32bd:	83 ec 08             	sub    $0x8,%esp
    32c0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    32c4:	78 31                	js     32f7 <select_console+0x3d>
    32c6:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    32ca:	7f 2b                	jg     32f7 <select_console+0x3d>
    32cc:	8b 45 08             	mov    0x8(%ebp),%eax
    32cf:	a3 40 88 03 00       	mov    %eax,0x38840
    32d4:	8b 15 40 88 03 00    	mov    0x38840,%edx
    32da:	89 d0                	mov    %edx,%eax
    32dc:	c1 e0 02             	shl    $0x2,%eax
    32df:	01 d0                	add    %edx,%eax
    32e1:	c1 e0 02             	shl    $0x2,%eax
    32e4:	05 00 a4 03 00       	add    $0x3a400,%eax
    32e9:	83 ec 0c             	sub    $0xc,%esp
    32ec:	50                   	push   %eax
    32ed:	e8 ec 01 00 00       	call   34de <flush>
    32f2:	83 c4 10             	add    $0x10,%esp
    32f5:	eb 01                	jmp    32f8 <select_console+0x3e>
    32f7:	90                   	nop
    32f8:	c9                   	leave  
    32f9:	c3                   	ret    

000032fa <scroll_screen>:
    32fa:	55                   	push   %ebp
    32fb:	89 e5                	mov    %esp,%ebp
    32fd:	83 ec 18             	sub    $0x18,%esp
    3300:	8b 45 08             	mov    0x8(%ebp),%eax
    3303:	8b 50 0c             	mov    0xc(%eax),%edx
    3306:	8b 45 08             	mov    0x8(%ebp),%eax
    3309:	8b 40 04             	mov    0x4(%eax),%eax
    330c:	29 c2                	sub    %eax,%edx
    330e:	89 d0                	mov    %edx,%eax
    3310:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3315:	f7 e2                	mul    %edx
    3317:	c1 ea 06             	shr    $0x6,%edx
    331a:	89 d0                	mov    %edx,%eax
    331c:	c1 e0 02             	shl    $0x2,%eax
    331f:	01 d0                	add    %edx,%eax
    3321:	c1 e0 04             	shl    $0x4,%eax
    3324:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3327:	8b 45 08             	mov    0x8(%ebp),%eax
    332a:	8b 40 10             	mov    0x10(%eax),%eax
    332d:	85 c0                	test   %eax,%eax
    332f:	74 1b                	je     334c <scroll_screen+0x52>
    3331:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3334:	83 c0 50             	add    $0x50,%eax
    3337:	89 c2                	mov    %eax,%edx
    3339:	8b 45 08             	mov    0x8(%ebp),%eax
    333c:	8b 48 08             	mov    0x8(%eax),%ecx
    333f:	89 d0                	mov    %edx,%eax
    3341:	ba 00 00 00 00       	mov    $0x0,%edx
    3346:	f7 f1                	div    %ecx
    3348:	89 d0                	mov    %edx,%eax
    334a:	eb 05                	jmp    3351 <scroll_screen+0x57>
    334c:	b8 00 00 00 00       	mov    $0x0,%eax
    3351:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3354:	8b 45 08             	mov    0x8(%ebp),%eax
    3357:	8b 10                	mov    (%eax),%edx
    3359:	8b 45 08             	mov    0x8(%ebp),%eax
    335c:	8b 40 04             	mov    0x4(%eax),%eax
    335f:	29 c2                	sub    %eax,%edx
    3361:	89 d0                	mov    %edx,%eax
    3363:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3366:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    336a:	0f 85 c2 00 00 00    	jne    3432 <scroll_screen+0x138>
    3370:	8b 45 08             	mov    0x8(%ebp),%eax
    3373:	8b 40 10             	mov    0x10(%eax),%eax
    3376:	85 c0                	test   %eax,%eax
    3378:	75 18                	jne    3392 <scroll_screen+0x98>
    337a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    337e:	7e 12                	jle    3392 <scroll_screen+0x98>
    3380:	8b 45 08             	mov    0x8(%ebp),%eax
    3383:	8b 00                	mov    (%eax),%eax
    3385:	8d 50 b0             	lea    -0x50(%eax),%edx
    3388:	8b 45 08             	mov    0x8(%ebp),%eax
    338b:	89 10                	mov    %edx,(%eax)
    338d:	e9 3b 01 00 00       	jmp    34cd <scroll_screen+0x1d3>
    3392:	8b 45 08             	mov    0x8(%ebp),%eax
    3395:	8b 40 10             	mov    0x10(%eax),%eax
    3398:	85 c0                	test   %eax,%eax
    339a:	0f 84 2d 01 00 00    	je     34cd <scroll_screen+0x1d3>
    33a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    33a3:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    33a6:	0f 84 21 01 00 00    	je     34cd <scroll_screen+0x1d3>
    33ac:	8b 45 08             	mov    0x8(%ebp),%eax
    33af:	8b 50 0c             	mov    0xc(%eax),%edx
    33b2:	8b 45 08             	mov    0x8(%ebp),%eax
    33b5:	8b 40 04             	mov    0x4(%eax),%eax
    33b8:	29 c2                	sub    %eax,%edx
    33ba:	8b 45 08             	mov    0x8(%ebp),%eax
    33bd:	8b 40 08             	mov    0x8(%eax),%eax
    33c0:	2d d0 07 00 00       	sub    $0x7d0,%eax
    33c5:	39 c2                	cmp    %eax,%edx
    33c7:	72 25                	jb     33ee <scroll_screen+0xf4>
    33c9:	8b 45 08             	mov    0x8(%ebp),%eax
    33cc:	8b 10                	mov    (%eax),%edx
    33ce:	8b 45 08             	mov    0x8(%ebp),%eax
    33d1:	8b 40 04             	mov    0x4(%eax),%eax
    33d4:	39 c2                	cmp    %eax,%edx
    33d6:	0f 84 f1 00 00 00    	je     34cd <scroll_screen+0x1d3>
    33dc:	8b 45 08             	mov    0x8(%ebp),%eax
    33df:	8b 00                	mov    (%eax),%eax
    33e1:	8d 50 b0             	lea    -0x50(%eax),%edx
    33e4:	8b 45 08             	mov    0x8(%ebp),%eax
    33e7:	89 10                	mov    %edx,(%eax)
    33e9:	e9 df 00 00 00       	jmp    34cd <scroll_screen+0x1d3>
    33ee:	8b 45 08             	mov    0x8(%ebp),%eax
    33f1:	8b 10                	mov    (%eax),%edx
    33f3:	8b 45 08             	mov    0x8(%ebp),%eax
    33f6:	8b 40 04             	mov    0x4(%eax),%eax
    33f9:	39 c2                	cmp    %eax,%edx
    33fb:	75 23                	jne    3420 <scroll_screen+0x126>
    33fd:	8b 45 08             	mov    0x8(%ebp),%eax
    3400:	8b 40 08             	mov    0x8(%eax),%eax
    3403:	2d d0 07 00 00       	sub    $0x7d0,%eax
    3408:	89 45 ec             	mov    %eax,-0x14(%ebp)
    340b:	8b 45 08             	mov    0x8(%ebp),%eax
    340e:	8b 50 04             	mov    0x4(%eax),%edx
    3411:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3414:	01 c2                	add    %eax,%edx
    3416:	8b 45 08             	mov    0x8(%ebp),%eax
    3419:	89 10                	mov    %edx,(%eax)
    341b:	e9 ad 00 00 00       	jmp    34cd <scroll_screen+0x1d3>
    3420:	8b 45 08             	mov    0x8(%ebp),%eax
    3423:	8b 00                	mov    (%eax),%eax
    3425:	8d 50 b0             	lea    -0x50(%eax),%edx
    3428:	8b 45 08             	mov    0x8(%ebp),%eax
    342b:	89 10                	mov    %edx,(%eax)
    342d:	e9 9b 00 00 00       	jmp    34cd <scroll_screen+0x1d3>
    3432:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    3436:	75 6d                	jne    34a5 <scroll_screen+0x1ab>
    3438:	8b 45 08             	mov    0x8(%ebp),%eax
    343b:	8b 40 10             	mov    0x10(%eax),%eax
    343e:	85 c0                	test   %eax,%eax
    3440:	75 1c                	jne    345e <scroll_screen+0x164>
    3442:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3445:	05 cf 07 00 00       	add    $0x7cf,%eax
    344a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    344d:	7e 0f                	jle    345e <scroll_screen+0x164>
    344f:	8b 45 08             	mov    0x8(%ebp),%eax
    3452:	8b 00                	mov    (%eax),%eax
    3454:	8d 50 50             	lea    0x50(%eax),%edx
    3457:	8b 45 08             	mov    0x8(%ebp),%eax
    345a:	89 10                	mov    %edx,(%eax)
    345c:	eb 6f                	jmp    34cd <scroll_screen+0x1d3>
    345e:	8b 45 08             	mov    0x8(%ebp),%eax
    3461:	8b 40 10             	mov    0x10(%eax),%eax
    3464:	85 c0                	test   %eax,%eax
    3466:	74 65                	je     34cd <scroll_screen+0x1d3>
    3468:	8b 45 ec             	mov    -0x14(%ebp),%eax
    346b:	05 80 07 00 00       	add    $0x780,%eax
    3470:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    3473:	74 58                	je     34cd <scroll_screen+0x1d3>
    3475:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3478:	05 d0 07 00 00       	add    $0x7d0,%eax
    347d:	89 c2                	mov    %eax,%edx
    347f:	8b 45 08             	mov    0x8(%ebp),%eax
    3482:	8b 40 08             	mov    0x8(%eax),%eax
    3485:	39 c2                	cmp    %eax,%edx
    3487:	75 0d                	jne    3496 <scroll_screen+0x19c>
    3489:	8b 45 08             	mov    0x8(%ebp),%eax
    348c:	8b 50 04             	mov    0x4(%eax),%edx
    348f:	8b 45 08             	mov    0x8(%ebp),%eax
    3492:	89 10                	mov    %edx,(%eax)
    3494:	eb 37                	jmp    34cd <scroll_screen+0x1d3>
    3496:	8b 45 08             	mov    0x8(%ebp),%eax
    3499:	8b 00                	mov    (%eax),%eax
    349b:	8d 50 50             	lea    0x50(%eax),%edx
    349e:	8b 45 08             	mov    0x8(%ebp),%eax
    34a1:	89 10                	mov    %edx,(%eax)
    34a3:	eb 28                	jmp    34cd <scroll_screen+0x1d3>
    34a5:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    34a9:	74 22                	je     34cd <scroll_screen+0x1d3>
    34ab:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    34af:	74 1c                	je     34cd <scroll_screen+0x1d3>
    34b1:	68 24 01 00 00       	push   $0x124
    34b6:	68 5c cd 00 00       	push   $0xcd5c
    34bb:	68 5c cd 00 00       	push   $0xcd5c
    34c0:	68 98 cd 00 00       	push   $0xcd98
    34c5:	e8 13 90 00 00       	call   c4dd <assertion_failure>
    34ca:	83 c4 10             	add    $0x10,%esp
    34cd:	83 ec 0c             	sub    $0xc,%esp
    34d0:	ff 75 08             	pushl  0x8(%ebp)
    34d3:	e8 06 00 00 00       	call   34de <flush>
    34d8:	83 c4 10             	add    $0x10,%esp
    34db:	90                   	nop
    34dc:	c9                   	leave  
    34dd:	c3                   	ret    

000034de <flush>:
    34de:	55                   	push   %ebp
    34df:	89 e5                	mov    %esp,%ebp
    34e1:	83 ec 08             	sub    $0x8,%esp
    34e4:	ff 75 08             	pushl  0x8(%ebp)
    34e7:	e8 db fc ff ff       	call   31c7 <is_current_console>
    34ec:	83 c4 04             	add    $0x4,%esp
    34ef:	85 c0                	test   %eax,%eax
    34f1:	74 23                	je     3516 <flush+0x38>
    34f3:	8b 45 08             	mov    0x8(%ebp),%eax
    34f6:	8b 40 0c             	mov    0xc(%eax),%eax
    34f9:	83 ec 0c             	sub    $0xc,%esp
    34fc:	50                   	push   %eax
    34fd:	e8 e8 fc ff ff       	call   31ea <set_cursor>
    3502:	83 c4 10             	add    $0x10,%esp
    3505:	8b 45 08             	mov    0x8(%ebp),%eax
    3508:	8b 00                	mov    (%eax),%eax
    350a:	83 ec 0c             	sub    $0xc,%esp
    350d:	50                   	push   %eax
    350e:	e8 3f fd ff ff       	call   3252 <set_video_start_addr>
    3513:	83 c4 10             	add    $0x10,%esp
    3516:	90                   	nop
    3517:	c9                   	leave  
    3518:	c3                   	ret    

00003519 <w_copy>:
    3519:	55                   	push   %ebp
    351a:	89 e5                	mov    %esp,%ebp
    351c:	83 ec 08             	sub    $0x8,%esp
    351f:	8b 45 10             	mov    0x10(%ebp),%eax
    3522:	01 c0                	add    %eax,%eax
    3524:	8b 55 0c             	mov    0xc(%ebp),%edx
    3527:	01 d2                	add    %edx,%edx
    3529:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    352f:	89 d1                	mov    %edx,%ecx
    3531:	8b 55 08             	mov    0x8(%ebp),%edx
    3534:	01 d2                	add    %edx,%edx
    3536:	81 c2 00 80 0b 00    	add    $0xb8000,%edx
    353c:	83 ec 04             	sub    $0x4,%esp
    353f:	50                   	push   %eax
    3540:	51                   	push   %ecx
    3541:	52                   	push   %edx
    3542:	e8 09 8d 00 00       	call   c250 <memcpy>
    3547:	83 c4 10             	add    $0x10,%esp
    354a:	90                   	nop
    354b:	c9                   	leave  
    354c:	c3                   	ret    

0000354d <init_8259A>:
    354d:	55                   	push   %ebp
    354e:	89 e5                	mov    %esp,%ebp
    3550:	83 ec 18             	sub    $0x18,%esp
    3553:	83 ec 08             	sub    $0x8,%esp
    3556:	6a 11                	push   $0x11
    3558:	6a 20                	push   $0x20
    355a:	e8 ae 2e 00 00       	call   640d <out_byte>
    355f:	83 c4 10             	add    $0x10,%esp
    3562:	83 ec 08             	sub    $0x8,%esp
    3565:	6a 11                	push   $0x11
    3567:	68 a0 00 00 00       	push   $0xa0
    356c:	e8 9c 2e 00 00       	call   640d <out_byte>
    3571:	83 c4 10             	add    $0x10,%esp
    3574:	83 ec 08             	sub    $0x8,%esp
    3577:	6a 20                	push   $0x20
    3579:	6a 21                	push   $0x21
    357b:	e8 8d 2e 00 00       	call   640d <out_byte>
    3580:	83 c4 10             	add    $0x10,%esp
    3583:	83 ec 08             	sub    $0x8,%esp
    3586:	6a 28                	push   $0x28
    3588:	68 a1 00 00 00       	push   $0xa1
    358d:	e8 7b 2e 00 00       	call   640d <out_byte>
    3592:	83 c4 10             	add    $0x10,%esp
    3595:	83 ec 08             	sub    $0x8,%esp
    3598:	6a 04                	push   $0x4
    359a:	6a 21                	push   $0x21
    359c:	e8 6c 2e 00 00       	call   640d <out_byte>
    35a1:	83 c4 10             	add    $0x10,%esp
    35a4:	83 ec 08             	sub    $0x8,%esp
    35a7:	6a 02                	push   $0x2
    35a9:	68 a1 00 00 00       	push   $0xa1
    35ae:	e8 5a 2e 00 00       	call   640d <out_byte>
    35b3:	83 c4 10             	add    $0x10,%esp
    35b6:	83 ec 08             	sub    $0x8,%esp
    35b9:	6a 01                	push   $0x1
    35bb:	6a 21                	push   $0x21
    35bd:	e8 4b 2e 00 00       	call   640d <out_byte>
    35c2:	83 c4 10             	add    $0x10,%esp
    35c5:	83 ec 08             	sub    $0x8,%esp
    35c8:	6a 01                	push   $0x1
    35ca:	68 a1 00 00 00       	push   $0xa1
    35cf:	e8 39 2e 00 00       	call   640d <out_byte>
    35d4:	83 c4 10             	add    $0x10,%esp
    35d7:	83 ec 08             	sub    $0x8,%esp
    35da:	68 ff 00 00 00       	push   $0xff
    35df:	6a 21                	push   $0x21
    35e1:	e8 27 2e 00 00       	call   640d <out_byte>
    35e6:	83 c4 10             	add    $0x10,%esp
    35e9:	83 ec 08             	sub    $0x8,%esp
    35ec:	68 ff 00 00 00       	push   $0xff
    35f1:	68 a1 00 00 00       	push   $0xa1
    35f6:	e8 12 2e 00 00       	call   640d <out_byte>
    35fb:	83 c4 10             	add    $0x10,%esp
    35fe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3605:	eb 12                	jmp    3619 <init_8259A+0xcc>
    3607:	8b 45 f4             	mov    -0xc(%ebp),%eax
    360a:	c7 04 85 40 a4 03 00 	movl   $0x3622,0x3a440(,%eax,4)
    3611:	22 36 00 00 
    3615:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3619:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    361d:	7e e8                	jle    3607 <init_8259A+0xba>
    361f:	90                   	nop
    3620:	c9                   	leave  
    3621:	c3                   	ret    

00003622 <spurious_irq>:
    3622:	55                   	push   %ebp
    3623:	89 e5                	mov    %esp,%ebp
    3625:	83 ec 08             	sub    $0x8,%esp
    3628:	83 ec 0c             	sub    $0xc,%esp
    362b:	68 b7 cd 00 00       	push   $0xcdb7
    3630:	e8 5b 2d 00 00       	call   6390 <disp_str>
    3635:	83 c4 10             	add    $0x10,%esp
    3638:	83 ec 0c             	sub    $0xc,%esp
    363b:	ff 75 08             	pushl  0x8(%ebp)
    363e:	e8 28 31 00 00       	call   676b <disp_int>
    3643:	83 c4 10             	add    $0x10,%esp
    3646:	83 ec 0c             	sub    $0xc,%esp
    3649:	68 c6 cd 00 00       	push   $0xcdc6
    364e:	e8 3d 2d 00 00       	call   6390 <disp_str>
    3653:	83 c4 10             	add    $0x10,%esp
    3656:	90                   	nop
    3657:	c9                   	leave  
    3658:	c3                   	ret    

00003659 <put_irq_handler>:
    3659:	55                   	push   %ebp
    365a:	89 e5                	mov    %esp,%ebp
    365c:	83 ec 08             	sub    $0x8,%esp
    365f:	83 ec 0c             	sub    $0xc,%esp
    3662:	ff 75 08             	pushl  0x8(%ebp)
    3665:	e8 df 2d 00 00       	call   6449 <disable_irq>
    366a:	83 c4 10             	add    $0x10,%esp
    366d:	8b 45 08             	mov    0x8(%ebp),%eax
    3670:	8b 55 0c             	mov    0xc(%ebp),%edx
    3673:	89 14 85 40 a4 03 00 	mov    %edx,0x3a440(,%eax,4)
    367a:	90                   	nop
    367b:	c9                   	leave  
    367c:	c3                   	ret    

0000367d <init_prot>:
    367d:	55                   	push   %ebp
    367e:	89 e5                	mov    %esp,%ebp
    3680:	83 ec 18             	sub    $0x18,%esp
    3683:	e8 c5 fe ff ff       	call   354d <init_8259A>
    3688:	6a 00                	push   $0x0
    368a:	68 44 13 00 00       	push   $0x1344
    368f:	68 8e 00 00 00       	push   $0x8e
    3694:	6a 00                	push   $0x0
    3696:	e8 d4 03 00 00       	call   3a6f <init_idt_desc>
    369b:	83 c4 10             	add    $0x10,%esp
    369e:	6a 00                	push   $0x0
    36a0:	68 4a 13 00 00       	push   $0x134a
    36a5:	68 8e 00 00 00       	push   $0x8e
    36aa:	6a 01                	push   $0x1
    36ac:	e8 be 03 00 00       	call   3a6f <init_idt_desc>
    36b1:	83 c4 10             	add    $0x10,%esp
    36b4:	6a 00                	push   $0x0
    36b6:	68 50 13 00 00       	push   $0x1350
    36bb:	68 8e 00 00 00       	push   $0x8e
    36c0:	6a 02                	push   $0x2
    36c2:	e8 a8 03 00 00       	call   3a6f <init_idt_desc>
    36c7:	83 c4 10             	add    $0x10,%esp
    36ca:	6a 03                	push   $0x3
    36cc:	68 56 13 00 00       	push   $0x1356
    36d1:	68 8e 00 00 00       	push   $0x8e
    36d6:	6a 03                	push   $0x3
    36d8:	e8 92 03 00 00       	call   3a6f <init_idt_desc>
    36dd:	83 c4 10             	add    $0x10,%esp
    36e0:	6a 03                	push   $0x3
    36e2:	68 5c 13 00 00       	push   $0x135c
    36e7:	68 8e 00 00 00       	push   $0x8e
    36ec:	6a 04                	push   $0x4
    36ee:	e8 7c 03 00 00       	call   3a6f <init_idt_desc>
    36f3:	83 c4 10             	add    $0x10,%esp
    36f6:	6a 00                	push   $0x0
    36f8:	68 62 13 00 00       	push   $0x1362
    36fd:	68 8e 00 00 00       	push   $0x8e
    3702:	6a 05                	push   $0x5
    3704:	e8 66 03 00 00       	call   3a6f <init_idt_desc>
    3709:	83 c4 10             	add    $0x10,%esp
    370c:	6a 00                	push   $0x0
    370e:	68 68 13 00 00       	push   $0x1368
    3713:	68 8e 00 00 00       	push   $0x8e
    3718:	6a 06                	push   $0x6
    371a:	e8 50 03 00 00       	call   3a6f <init_idt_desc>
    371f:	83 c4 10             	add    $0x10,%esp
    3722:	6a 00                	push   $0x0
    3724:	68 6e 13 00 00       	push   $0x136e
    3729:	68 8e 00 00 00       	push   $0x8e
    372e:	6a 07                	push   $0x7
    3730:	e8 3a 03 00 00       	call   3a6f <init_idt_desc>
    3735:	83 c4 10             	add    $0x10,%esp
    3738:	6a 00                	push   $0x0
    373a:	68 74 13 00 00       	push   $0x1374
    373f:	68 8e 00 00 00       	push   $0x8e
    3744:	6a 08                	push   $0x8
    3746:	e8 24 03 00 00       	call   3a6f <init_idt_desc>
    374b:	83 c4 10             	add    $0x10,%esp
    374e:	6a 00                	push   $0x0
    3750:	68 78 13 00 00       	push   $0x1378
    3755:	68 8e 00 00 00       	push   $0x8e
    375a:	6a 09                	push   $0x9
    375c:	e8 0e 03 00 00       	call   3a6f <init_idt_desc>
    3761:	83 c4 10             	add    $0x10,%esp
    3764:	6a 00                	push   $0x0
    3766:	68 7e 13 00 00       	push   $0x137e
    376b:	68 8e 00 00 00       	push   $0x8e
    3770:	6a 0a                	push   $0xa
    3772:	e8 f8 02 00 00       	call   3a6f <init_idt_desc>
    3777:	83 c4 10             	add    $0x10,%esp
    377a:	6a 00                	push   $0x0
    377c:	68 82 13 00 00       	push   $0x1382
    3781:	68 8e 00 00 00       	push   $0x8e
    3786:	6a 0b                	push   $0xb
    3788:	e8 e2 02 00 00       	call   3a6f <init_idt_desc>
    378d:	83 c4 10             	add    $0x10,%esp
    3790:	6a 00                	push   $0x0
    3792:	68 86 13 00 00       	push   $0x1386
    3797:	68 8e 00 00 00       	push   $0x8e
    379c:	6a 0c                	push   $0xc
    379e:	e8 cc 02 00 00       	call   3a6f <init_idt_desc>
    37a3:	83 c4 10             	add    $0x10,%esp
    37a6:	6a 00                	push   $0x0
    37a8:	68 8a 13 00 00       	push   $0x138a
    37ad:	68 8e 00 00 00       	push   $0x8e
    37b2:	6a 0d                	push   $0xd
    37b4:	e8 b6 02 00 00       	call   3a6f <init_idt_desc>
    37b9:	83 c4 10             	add    $0x10,%esp
    37bc:	6a 00                	push   $0x0
    37be:	68 8e 13 00 00       	push   $0x138e
    37c3:	68 8e 00 00 00       	push   $0x8e
    37c8:	6a 0e                	push   $0xe
    37ca:	e8 a0 02 00 00       	call   3a6f <init_idt_desc>
    37cf:	83 c4 10             	add    $0x10,%esp
    37d2:	6a 00                	push   $0x0
    37d4:	68 92 13 00 00       	push   $0x1392
    37d9:	68 8e 00 00 00       	push   $0x8e
    37de:	6a 10                	push   $0x10
    37e0:	e8 8a 02 00 00       	call   3a6f <init_idt_desc>
    37e5:	83 c4 10             	add    $0x10,%esp
    37e8:	6a 00                	push   $0x0
    37ea:	68 50 10 00 00       	push   $0x1050
    37ef:	68 8e 00 00 00       	push   $0x8e
    37f4:	6a 20                	push   $0x20
    37f6:	e8 74 02 00 00       	call   3a6f <init_idt_desc>
    37fb:	83 c4 10             	add    $0x10,%esp
    37fe:	6a 00                	push   $0x0
    3800:	68 80 10 00 00       	push   $0x1080
    3805:	68 8e 00 00 00       	push   $0x8e
    380a:	6a 21                	push   $0x21
    380c:	e8 5e 02 00 00       	call   3a6f <init_idt_desc>
    3811:	83 c4 10             	add    $0x10,%esp
    3814:	6a 00                	push   $0x0
    3816:	68 b0 10 00 00       	push   $0x10b0
    381b:	68 8e 00 00 00       	push   $0x8e
    3820:	6a 22                	push   $0x22
    3822:	e8 48 02 00 00       	call   3a6f <init_idt_desc>
    3827:	83 c4 10             	add    $0x10,%esp
    382a:	6a 00                	push   $0x0
    382c:	68 e0 10 00 00       	push   $0x10e0
    3831:	68 8e 00 00 00       	push   $0x8e
    3836:	6a 23                	push   $0x23
    3838:	e8 32 02 00 00       	call   3a6f <init_idt_desc>
    383d:	83 c4 10             	add    $0x10,%esp
    3840:	6a 00                	push   $0x0
    3842:	68 10 11 00 00       	push   $0x1110
    3847:	68 8e 00 00 00       	push   $0x8e
    384c:	6a 24                	push   $0x24
    384e:	e8 1c 02 00 00       	call   3a6f <init_idt_desc>
    3853:	83 c4 10             	add    $0x10,%esp
    3856:	6a 00                	push   $0x0
    3858:	68 40 11 00 00       	push   $0x1140
    385d:	68 8e 00 00 00       	push   $0x8e
    3862:	6a 25                	push   $0x25
    3864:	e8 06 02 00 00       	call   3a6f <init_idt_desc>
    3869:	83 c4 10             	add    $0x10,%esp
    386c:	6a 00                	push   $0x0
    386e:	68 70 11 00 00       	push   $0x1170
    3873:	68 8e 00 00 00       	push   $0x8e
    3878:	6a 26                	push   $0x26
    387a:	e8 f0 01 00 00       	call   3a6f <init_idt_desc>
    387f:	83 c4 10             	add    $0x10,%esp
    3882:	6a 00                	push   $0x0
    3884:	68 a0 11 00 00       	push   $0x11a0
    3889:	68 8e 00 00 00       	push   $0x8e
    388e:	6a 27                	push   $0x27
    3890:	e8 da 01 00 00       	call   3a6f <init_idt_desc>
    3895:	83 c4 10             	add    $0x10,%esp
    3898:	6a 00                	push   $0x0
    389a:	68 d0 11 00 00       	push   $0x11d0
    389f:	68 8e 00 00 00       	push   $0x8e
    38a4:	6a 28                	push   $0x28
    38a6:	e8 c4 01 00 00       	call   3a6f <init_idt_desc>
    38ab:	83 c4 10             	add    $0x10,%esp
    38ae:	6a 00                	push   $0x0
    38b0:	68 00 12 00 00       	push   $0x1200
    38b5:	68 8e 00 00 00       	push   $0x8e
    38ba:	6a 29                	push   $0x29
    38bc:	e8 ae 01 00 00       	call   3a6f <init_idt_desc>
    38c1:	83 c4 10             	add    $0x10,%esp
    38c4:	6a 00                	push   $0x0
    38c6:	68 30 12 00 00       	push   $0x1230
    38cb:	68 8e 00 00 00       	push   $0x8e
    38d0:	6a 2a                	push   $0x2a
    38d2:	e8 98 01 00 00       	call   3a6f <init_idt_desc>
    38d7:	83 c4 10             	add    $0x10,%esp
    38da:	6a 00                	push   $0x0
    38dc:	68 60 12 00 00       	push   $0x1260
    38e1:	68 8e 00 00 00       	push   $0x8e
    38e6:	6a 2b                	push   $0x2b
    38e8:	e8 82 01 00 00       	call   3a6f <init_idt_desc>
    38ed:	83 c4 10             	add    $0x10,%esp
    38f0:	6a 00                	push   $0x0
    38f2:	68 90 12 00 00       	push   $0x1290
    38f7:	68 8e 00 00 00       	push   $0x8e
    38fc:	6a 2c                	push   $0x2c
    38fe:	e8 6c 01 00 00       	call   3a6f <init_idt_desc>
    3903:	83 c4 10             	add    $0x10,%esp
    3906:	6a 00                	push   $0x0
    3908:	68 c0 12 00 00       	push   $0x12c0
    390d:	68 8e 00 00 00       	push   $0x8e
    3912:	6a 2d                	push   $0x2d
    3914:	e8 56 01 00 00       	call   3a6f <init_idt_desc>
    3919:	83 c4 10             	add    $0x10,%esp
    391c:	6a 00                	push   $0x0
    391e:	68 f0 12 00 00       	push   $0x12f0
    3923:	68 8e 00 00 00       	push   $0x8e
    3928:	6a 2e                	push   $0x2e
    392a:	e8 40 01 00 00       	call   3a6f <init_idt_desc>
    392f:	83 c4 10             	add    $0x10,%esp
    3932:	6a 00                	push   $0x0
    3934:	68 20 13 00 00       	push   $0x1320
    3939:	68 8e 00 00 00       	push   $0x8e
    393e:	6a 2f                	push   $0x2f
    3940:	e8 2a 01 00 00       	call   3a6f <init_idt_desc>
    3945:	83 c4 10             	add    $0x10,%esp
    3948:	6a 03                	push   $0x3
    394a:	68 db 13 00 00       	push   $0x13db
    394f:	68 8e 00 00 00       	push   $0x8e
    3954:	68 90 00 00 00       	push   $0x90
    3959:	e8 11 01 00 00       	call   3a6f <init_idt_desc>
    395e:	83 c4 10             	add    $0x10,%esp
    3961:	83 ec 04             	sub    $0x4,%esp
    3964:	6a 68                	push   $0x68
    3966:	6a 00                	push   $0x0
    3968:	68 e0 94 03 00       	push   $0x394e0
    396d:	e8 07 89 00 00       	call   c279 <memset>
    3972:	83 c4 10             	add    $0x10,%esp
    3975:	c7 05 e8 94 03 00 10 	movl   $0x10,0x394e8
    397c:	00 00 00 
    397f:	83 ec 0c             	sub    $0xc,%esp
    3982:	6a 10                	push   $0x10
    3984:	e8 57 01 00 00       	call   3ae0 <seg2linear>
    3989:	83 c4 10             	add    $0x10,%esp
    398c:	ba e0 94 03 00       	mov    $0x394e0,%edx
    3991:	01 d0                	add    %edx,%eax
    3993:	68 89 00 00 00       	push   $0x89
    3998:	6a 67                	push   $0x67
    399a:	50                   	push   %eax
    399b:	68 60 84 03 00       	push   $0x38460
    39a0:	e8 8a 01 00 00       	call   3b2f <init_desc>
    39a5:	83 c4 10             	add    $0x10,%esp
    39a8:	66 c7 05 46 95 03 00 	movw   $0x68,0x39546
    39af:	68 00 
    39b1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    39b8:	e9 a5 00 00 00       	jmp    3a62 <init_prot+0x3e5>
    39bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    39c0:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    39c6:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    39cb:	83 ec 04             	sub    $0x4,%esp
    39ce:	68 98 01 00 00       	push   $0x198
    39d3:	6a 00                	push   $0x0
    39d5:	50                   	push   %eax
    39d6:	e8 9e 88 00 00       	call   c279 <memset>
    39db:	83 c4 10             	add    $0x10,%esp
    39de:	8b 45 f4             	mov    -0xc(%ebp),%eax
    39e1:	c1 e0 03             	shl    $0x3,%eax
    39e4:	8d 50 28             	lea    0x28(%eax),%edx
    39e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    39ea:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    39f0:	05 e8 a4 03 00       	add    $0x3a4e8,%eax
    39f5:	66 89 10             	mov    %dx,(%eax)
    39f8:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
    39fc:	7e 1c                	jle    3a1a <init_prot+0x39d>
    39fe:	68 b8 00 00 00       	push   $0xb8
    3a03:	68 e0 cd 00 00       	push   $0xcde0
    3a08:	68 e0 cd 00 00       	push   $0xcde0
    3a0d:	68 f4 cd 00 00       	push   $0xcdf4
    3a12:	e8 c6 8a 00 00       	call   c4dd <assertion_failure>
    3a17:	83 c4 10             	add    $0x10,%esp
    3a1a:	83 ec 0c             	sub    $0xc,%esp
    3a1d:	6a 10                	push   $0x10
    3a1f:	e8 bc 00 00 00       	call   3ae0 <seg2linear>
    3a24:	83 c4 10             	add    $0x10,%esp
    3a27:	89 c2                	mov    %eax,%edx
    3a29:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3a2c:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3a32:	83 c0 40             	add    $0x40,%eax
    3a35:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3a3a:	83 c0 0a             	add    $0xa,%eax
    3a3d:	01 c2                	add    %eax,%edx
    3a3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3a42:	83 c0 05             	add    $0x5,%eax
    3a45:	c1 e0 03             	shl    $0x3,%eax
    3a48:	05 40 84 03 00       	add    $0x38440,%eax
    3a4d:	68 82 00 00 00       	push   $0x82
    3a52:	6a 0f                	push   $0xf
    3a54:	52                   	push   %edx
    3a55:	50                   	push   %eax
    3a56:	e8 d4 00 00 00       	call   3b2f <init_desc>
    3a5b:	83 c4 10             	add    $0x10,%esp
    3a5e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    3a62:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    3a66:	0f 8e 51 ff ff ff    	jle    39bd <init_prot+0x340>
    3a6c:	90                   	nop
    3a6d:	c9                   	leave  
    3a6e:	c3                   	ret    

00003a6f <init_idt_desc>:
    3a6f:	55                   	push   %ebp
    3a70:	89 e5                	mov    %esp,%ebp
    3a72:	83 ec 1c             	sub    $0x1c,%esp
    3a75:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3a78:	8b 55 0c             	mov    0xc(%ebp),%edx
    3a7b:	8b 45 14             	mov    0x14(%ebp),%eax
    3a7e:	88 4d ec             	mov    %cl,-0x14(%ebp)
    3a81:	88 55 e8             	mov    %dl,-0x18(%ebp)
    3a84:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3a87:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
    3a8b:	c1 e0 03             	shl    $0x3,%eax
    3a8e:	05 00 9a 03 00       	add    $0x39a00,%eax
    3a93:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3a96:	8b 45 10             	mov    0x10(%ebp),%eax
    3a99:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3a9c:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3a9f:	89 c2                	mov    %eax,%edx
    3aa1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3aa4:	66 89 10             	mov    %dx,(%eax)
    3aa7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3aaa:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
    3ab0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ab3:	c6 40 04 00          	movb   $0x0,0x4(%eax)
    3ab7:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
    3abb:	c1 e0 05             	shl    $0x5,%eax
    3abe:	89 c2                	mov    %eax,%edx
    3ac0:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
    3ac4:	09 d0                	or     %edx,%eax
    3ac6:	89 c2                	mov    %eax,%edx
    3ac8:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3acb:	88 50 05             	mov    %dl,0x5(%eax)
    3ace:	8b 45 f8             	mov    -0x8(%ebp),%eax
    3ad1:	c1 e8 10             	shr    $0x10,%eax
    3ad4:	89 c2                	mov    %eax,%edx
    3ad6:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ad9:	66 89 50 06          	mov    %dx,0x6(%eax)
    3add:	90                   	nop
    3ade:	c9                   	leave  
    3adf:	c3                   	ret    

00003ae0 <seg2linear>:
    3ae0:	55                   	push   %ebp
    3ae1:	89 e5                	mov    %esp,%ebp
    3ae3:	83 ec 14             	sub    $0x14,%esp
    3ae6:	8b 45 08             	mov    0x8(%ebp),%eax
    3ae9:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    3aed:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    3af1:	66 c1 e8 03          	shr    $0x3,%ax
    3af5:	0f b7 c0             	movzwl %ax,%eax
    3af8:	c1 e0 03             	shl    $0x3,%eax
    3afb:	05 40 84 03 00       	add    $0x38440,%eax
    3b00:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3b03:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b06:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3b0a:	0f b6 c0             	movzbl %al,%eax
    3b0d:	c1 e0 18             	shl    $0x18,%eax
    3b10:	89 c2                	mov    %eax,%edx
    3b12:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b15:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3b19:	0f b6 c0             	movzbl %al,%eax
    3b1c:	c1 e0 10             	shl    $0x10,%eax
    3b1f:	09 c2                	or     %eax,%edx
    3b21:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3b24:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3b28:	0f b7 c0             	movzwl %ax,%eax
    3b2b:	09 d0                	or     %edx,%eax
    3b2d:	c9                   	leave  
    3b2e:	c3                   	ret    

00003b2f <init_desc>:
    3b2f:	55                   	push   %ebp
    3b30:	89 e5                	mov    %esp,%ebp
    3b32:	83 ec 04             	sub    $0x4,%esp
    3b35:	8b 45 14             	mov    0x14(%ebp),%eax
    3b38:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    3b3c:	8b 45 10             	mov    0x10(%ebp),%eax
    3b3f:	89 c2                	mov    %eax,%edx
    3b41:	8b 45 08             	mov    0x8(%ebp),%eax
    3b44:	66 89 10             	mov    %dx,(%eax)
    3b47:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b4a:	89 c2                	mov    %eax,%edx
    3b4c:	8b 45 08             	mov    0x8(%ebp),%eax
    3b4f:	66 89 50 02          	mov    %dx,0x2(%eax)
    3b53:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b56:	c1 e8 10             	shr    $0x10,%eax
    3b59:	89 c2                	mov    %eax,%edx
    3b5b:	8b 45 08             	mov    0x8(%ebp),%eax
    3b5e:	88 50 04             	mov    %dl,0x4(%eax)
    3b61:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3b65:	89 c2                	mov    %eax,%edx
    3b67:	8b 45 08             	mov    0x8(%ebp),%eax
    3b6a:	88 50 05             	mov    %dl,0x5(%eax)
    3b6d:	8b 45 10             	mov    0x10(%ebp),%eax
    3b70:	c1 e8 10             	shr    $0x10,%eax
    3b73:	83 e0 0f             	and    $0xf,%eax
    3b76:	89 c2                	mov    %eax,%edx
    3b78:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
    3b7c:	66 c1 e8 08          	shr    $0x8,%ax
    3b80:	83 e0 f0             	and    $0xfffffff0,%eax
    3b83:	09 c2                	or     %eax,%edx
    3b85:	8b 45 08             	mov    0x8(%ebp),%eax
    3b88:	88 50 06             	mov    %dl,0x6(%eax)
    3b8b:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b8e:	c1 e8 18             	shr    $0x18,%eax
    3b91:	89 c2                	mov    %eax,%edx
    3b93:	8b 45 08             	mov    0x8(%ebp),%eax
    3b96:	88 50 07             	mov    %dl,0x7(%eax)
    3b99:	90                   	nop
    3b9a:	c9                   	leave  
    3b9b:	c3                   	ret    

00003b9c <exception_handler>:
    3b9c:	55                   	push   %ebp
    3b9d:	89 e5                	mov    %esp,%ebp
    3b9f:	57                   	push   %edi
    3ba0:	56                   	push   %esi
    3ba1:	53                   	push   %ebx
    3ba2:	81 ec 1c 05 00 00    	sub    $0x51c,%esp
    3ba8:	c7 45 e0 74 00 00 00 	movl   $0x74,-0x20(%ebp)
    3baf:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3bb5:	bb 60 ce 00 00       	mov    $0xce60,%ebx
    3bba:	ba 40 01 00 00       	mov    $0x140,%edx
    3bbf:	89 c7                	mov    %eax,%edi
    3bc1:	89 de                	mov    %ebx,%esi
    3bc3:	89 d1                	mov    %edx,%ecx
    3bc5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    3bc7:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    3bce:	00 00 00 
    3bd1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    3bd8:	eb 14                	jmp    3bee <exception_handler+0x52>
    3bda:	83 ec 0c             	sub    $0xc,%esp
    3bdd:	68 13 ce 00 00       	push   $0xce13
    3be2:	e8 a9 27 00 00       	call   6390 <disp_str>
    3be7:	83 c4 10             	add    $0x10,%esp
    3bea:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    3bee:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
    3bf5:	7e e3                	jle    3bda <exception_handler+0x3e>
    3bf7:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    3bfe:	00 00 00 
    3c01:	83 ec 08             	sub    $0x8,%esp
    3c04:	ff 75 e0             	pushl  -0x20(%ebp)
    3c07:	68 15 ce 00 00       	push   $0xce15
    3c0c:	e8 bd 27 00 00       	call   63ce <disp_color_str>
    3c11:	83 c4 10             	add    $0x10,%esp
    3c14:	8d 85 e0 fa ff ff    	lea    -0x520(%ebp),%eax
    3c1a:	8b 55 08             	mov    0x8(%ebp),%edx
    3c1d:	c1 e2 06             	shl    $0x6,%edx
    3c20:	01 d0                	add    %edx,%eax
    3c22:	83 ec 08             	sub    $0x8,%esp
    3c25:	ff 75 e0             	pushl  -0x20(%ebp)
    3c28:	50                   	push   %eax
    3c29:	e8 a0 27 00 00       	call   63ce <disp_color_str>
    3c2e:	83 c4 10             	add    $0x10,%esp
    3c31:	83 ec 08             	sub    $0x8,%esp
    3c34:	ff 75 e0             	pushl  -0x20(%ebp)
    3c37:	68 25 ce 00 00       	push   $0xce25
    3c3c:	e8 8d 27 00 00       	call   63ce <disp_color_str>
    3c41:	83 c4 10             	add    $0x10,%esp
    3c44:	83 ec 08             	sub    $0x8,%esp
    3c47:	ff 75 e0             	pushl  -0x20(%ebp)
    3c4a:	68 28 ce 00 00       	push   $0xce28
    3c4f:	e8 7a 27 00 00       	call   63ce <disp_color_str>
    3c54:	83 c4 10             	add    $0x10,%esp
    3c57:	83 ec 0c             	sub    $0xc,%esp
    3c5a:	ff 75 18             	pushl  0x18(%ebp)
    3c5d:	e8 09 2b 00 00       	call   676b <disp_int>
    3c62:	83 c4 10             	add    $0x10,%esp
    3c65:	83 ec 08             	sub    $0x8,%esp
    3c68:	ff 75 e0             	pushl  -0x20(%ebp)
    3c6b:	68 30 ce 00 00       	push   $0xce30
    3c70:	e8 59 27 00 00       	call   63ce <disp_color_str>
    3c75:	83 c4 10             	add    $0x10,%esp
    3c78:	83 ec 0c             	sub    $0xc,%esp
    3c7b:	ff 75 14             	pushl  0x14(%ebp)
    3c7e:	e8 e8 2a 00 00       	call   676b <disp_int>
    3c83:	83 c4 10             	add    $0x10,%esp
    3c86:	83 ec 08             	sub    $0x8,%esp
    3c89:	ff 75 e0             	pushl  -0x20(%ebp)
    3c8c:	68 34 ce 00 00       	push   $0xce34
    3c91:	e8 38 27 00 00       	call   63ce <disp_color_str>
    3c96:	83 c4 10             	add    $0x10,%esp
    3c99:	83 ec 0c             	sub    $0xc,%esp
    3c9c:	ff 75 10             	pushl  0x10(%ebp)
    3c9f:	e8 c7 2a 00 00       	call   676b <disp_int>
    3ca4:	83 c4 10             	add    $0x10,%esp
    3ca7:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
    3cab:	74 21                	je     3cce <exception_handler+0x132>
    3cad:	83 ec 08             	sub    $0x8,%esp
    3cb0:	ff 75 e0             	pushl  -0x20(%ebp)
    3cb3:	68 39 ce 00 00       	push   $0xce39
    3cb8:	e8 11 27 00 00       	call   63ce <disp_color_str>
    3cbd:	83 c4 10             	add    $0x10,%esp
    3cc0:	83 ec 0c             	sub    $0xc,%esp
    3cc3:	ff 75 0c             	pushl  0xc(%ebp)
    3cc6:	e8 a0 2a 00 00       	call   676b <disp_int>
    3ccb:	83 c4 10             	add    $0x10,%esp
    3cce:	90                   	nop
    3ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cd2:	5b                   	pop    %ebx
    3cd3:	5e                   	pop    %esi
    3cd4:	5f                   	pop    %edi
    3cd5:	5d                   	pop    %ebp
    3cd6:	c3                   	ret    

00003cd7 <schedule>:
    3cd7:	55                   	push   %ebp
    3cd8:	89 e5                	mov    %esp,%ebp
    3cda:	83 ec 10             	sub    $0x10,%esp
    3cdd:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    3ce4:	eb 74                	jmp    3d5a <schedule+0x83>
    3ce6:	c7 45 fc a0 a4 03 00 	movl   $0x3a4a0,-0x4(%ebp)
    3ced:	eb 2d                	jmp    3d1c <schedule+0x45>
    3cef:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cf2:	8b 40 74             	mov    0x74(%eax),%eax
    3cf5:	85 c0                	test   %eax,%eax
    3cf7:	75 1c                	jne    3d15 <schedule+0x3e>
    3cf9:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3cfc:	8b 40 5c             	mov    0x5c(%eax),%eax
    3cff:	39 45 f8             	cmp    %eax,-0x8(%ebp)
    3d02:	7d 11                	jge    3d15 <schedule+0x3e>
    3d04:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d07:	8b 40 5c             	mov    0x5c(%eax),%eax
    3d0a:	89 45 f8             	mov    %eax,-0x8(%ebp)
    3d0d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d10:	a3 80 a4 03 00       	mov    %eax,0x3a480
    3d15:	81 45 fc 98 01 00 00 	addl   $0x198,-0x4(%ebp)
    3d1c:	81 7d fc 00 de 03 00 	cmpl   $0x3de00,-0x4(%ebp)
    3d23:	76 ca                	jbe    3cef <schedule+0x18>
    3d25:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d29:	75 2f                	jne    3d5a <schedule+0x83>
    3d2b:	c7 45 fc a0 a4 03 00 	movl   $0x3a4a0,-0x4(%ebp)
    3d32:	eb 1d                	jmp    3d51 <schedule+0x7a>
    3d34:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d37:	8b 40 74             	mov    0x74(%eax),%eax
    3d3a:	85 c0                	test   %eax,%eax
    3d3c:	75 0c                	jne    3d4a <schedule+0x73>
    3d3e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d41:	8b 50 60             	mov    0x60(%eax),%edx
    3d44:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3d47:	89 50 5c             	mov    %edx,0x5c(%eax)
    3d4a:	81 45 fc 98 01 00 00 	addl   $0x198,-0x4(%ebp)
    3d51:	81 7d fc 00 de 03 00 	cmpl   $0x3de00,-0x4(%ebp)
    3d58:	76 da                	jbe    3d34 <schedule+0x5d>
    3d5a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    3d5e:	74 86                	je     3ce6 <schedule+0xf>
    3d60:	90                   	nop
    3d61:	c9                   	leave  
    3d62:	c3                   	ret    

00003d63 <sys_sendrec>:
    3d63:	55                   	push   %ebp
    3d64:	89 e5                	mov    %esp,%ebp
    3d66:	83 ec 18             	sub    $0x18,%esp
    3d69:	a1 20 84 03 00       	mov    0x38420,%eax
    3d6e:	85 c0                	test   %eax,%eax
    3d70:	74 19                	je     3d8b <sys_sendrec+0x28>
    3d72:	6a 46                	push   $0x46
    3d74:	68 60 d3 00 00       	push   $0xd360
    3d79:	68 60 d3 00 00       	push   $0xd360
    3d7e:	68 6e d3 00 00       	push   $0xd36e
    3d83:	e8 55 87 00 00       	call   c4dd <assertion_failure>
    3d88:	83 c4 10             	add    $0x10,%esp
    3d8b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    3d8f:	78 06                	js     3d97 <sys_sendrec+0x34>
    3d91:	83 7d 0c 24          	cmpl   $0x24,0xc(%ebp)
    3d95:	7e 25                	jle    3dbc <sys_sendrec+0x59>
    3d97:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    3d9b:	74 1f                	je     3dbc <sys_sendrec+0x59>
    3d9d:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    3da1:	74 19                	je     3dbc <sys_sendrec+0x59>
    3da3:	6a 49                	push   $0x49
    3da5:	68 60 d3 00 00       	push   $0xd360
    3daa:	68 60 d3 00 00       	push   $0xd360
    3daf:	68 80 d3 00 00       	push   $0xd380
    3db4:	e8 24 87 00 00       	call   c4dd <assertion_failure>
    3db9:	83 c4 10             	add    $0x10,%esp
    3dbc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    3dc3:	8b 45 14             	mov    0x14(%ebp),%eax
    3dc6:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    3dcb:	c1 f8 03             	sar    $0x3,%eax
    3dce:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    3dd4:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3dd7:	83 ec 08             	sub    $0x8,%esp
    3dda:	ff 75 10             	pushl  0x10(%ebp)
    3ddd:	ff 75 f0             	pushl  -0x10(%ebp)
    3de0:	e8 e6 00 00 00       	call   3ecb <va2la>
    3de5:	83 c4 10             	add    $0x10,%esp
    3de8:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3deb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3dee:	8b 55 f0             	mov    -0x10(%ebp),%edx
    3df1:	89 10                	mov    %edx,(%eax)
    3df3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3df6:	8b 00                	mov    (%eax),%eax
    3df8:	39 45 0c             	cmp    %eax,0xc(%ebp)
    3dfb:	75 19                	jne    3e16 <sys_sendrec+0xb3>
    3dfd:	6a 50                	push   $0x50
    3dff:	68 60 d3 00 00       	push   $0xd360
    3e04:	68 60 d3 00 00       	push   $0xd360
    3e09:	68 de d3 00 00       	push   $0xd3de
    3e0e:	e8 ca 86 00 00       	call   c4dd <assertion_failure>
    3e13:	83 c4 10             	add    $0x10,%esp
    3e16:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    3e1a:	75 22                	jne    3e3e <sys_sendrec+0xdb>
    3e1c:	83 ec 04             	sub    $0x4,%esp
    3e1f:	ff 75 10             	pushl  0x10(%ebp)
    3e22:	ff 75 0c             	pushl  0xc(%ebp)
    3e25:	ff 75 14             	pushl  0x14(%ebp)
    3e28:	e8 81 02 00 00       	call   40ae <msg_send>
    3e2d:	83 c4 10             	add    $0x10,%esp
    3e30:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e33:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e37:	74 41                	je     3e7a <sys_sendrec+0x117>
    3e39:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e3c:	eb 41                	jmp    3e7f <sys_sendrec+0x11c>
    3e3e:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    3e42:	75 22                	jne    3e66 <sys_sendrec+0x103>
    3e44:	83 ec 04             	sub    $0x4,%esp
    3e47:	ff 75 10             	pushl  0x10(%ebp)
    3e4a:	ff 75 0c             	pushl  0xc(%ebp)
    3e4d:	ff 75 14             	pushl  0x14(%ebp)
    3e50:	e8 89 06 00 00       	call   44de <msg_receive>
    3e55:	83 c4 10             	add    $0x10,%esp
    3e58:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3e5b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    3e5f:	74 19                	je     3e7a <sys_sendrec+0x117>
    3e61:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3e64:	eb 19                	jmp    3e7f <sys_sendrec+0x11c>
    3e66:	6a 02                	push   $0x2
    3e68:	6a 01                	push   $0x1
    3e6a:	ff 75 08             	pushl  0x8(%ebp)
    3e6d:	68 f8 d3 00 00       	push   $0xd3f8
    3e72:	e8 93 dc ff ff       	call   1b0a <panic>
    3e77:	83 c4 10             	add    $0x10,%esp
    3e7a:	b8 00 00 00 00       	mov    $0x0,%eax
    3e7f:	c9                   	leave  
    3e80:	c3                   	ret    

00003e81 <ldt_seg_linear>:
    3e81:	55                   	push   %ebp
    3e82:	89 e5                	mov    %esp,%ebp
    3e84:	83 ec 10             	sub    $0x10,%esp
    3e87:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e8a:	83 c0 08             	add    $0x8,%eax
    3e8d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    3e94:	8b 45 08             	mov    0x8(%ebp),%eax
    3e97:	01 d0                	add    %edx,%eax
    3e99:	83 c0 0a             	add    $0xa,%eax
    3e9c:	89 45 fc             	mov    %eax,-0x4(%ebp)
    3e9f:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ea2:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    3ea6:	0f b6 c0             	movzbl %al,%eax
    3ea9:	c1 e0 18             	shl    $0x18,%eax
    3eac:	89 c2                	mov    %eax,%edx
    3eae:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3eb1:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    3eb5:	0f b6 c0             	movzbl %al,%eax
    3eb8:	c1 e0 10             	shl    $0x10,%eax
    3ebb:	09 c2                	or     %eax,%edx
    3ebd:	8b 45 fc             	mov    -0x4(%ebp),%eax
    3ec0:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    3ec4:	0f b7 c0             	movzwl %ax,%eax
    3ec7:	09 d0                	or     %edx,%eax
    3ec9:	c9                   	leave  
    3eca:	c3                   	ret    

00003ecb <va2la>:
    3ecb:	55                   	push   %ebp
    3ecc:	89 e5                	mov    %esp,%ebp
    3ece:	83 ec 18             	sub    $0x18,%esp
    3ed1:	8b 45 08             	mov    0x8(%ebp),%eax
    3ed4:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3eda:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3edf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ee2:	6a 01                	push   $0x1
    3ee4:	ff 75 f4             	pushl  -0xc(%ebp)
    3ee7:	e8 95 ff ff ff       	call   3e81 <ldt_seg_linear>
    3eec:	83 c4 08             	add    $0x8,%esp
    3eef:	89 45 f0             	mov    %eax,-0x10(%ebp)
    3ef2:	8b 55 0c             	mov    0xc(%ebp),%edx
    3ef5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    3ef8:	01 d0                	add    %edx,%eax
    3efa:	89 45 ec             	mov    %eax,-0x14(%ebp)
    3efd:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
    3f01:	7f 24                	jg     3f27 <va2la+0x5c>
    3f03:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f06:	39 45 ec             	cmp    %eax,-0x14(%ebp)
    3f09:	74 1c                	je     3f27 <va2la+0x5c>
    3f0b:	68 90 00 00 00       	push   $0x90
    3f10:	68 60 d3 00 00       	push   $0xd360
    3f15:	68 60 d3 00 00       	push   $0xd360
    3f1a:	68 32 d4 00 00       	push   $0xd432
    3f1f:	e8 b9 85 00 00       	call   c4dd <assertion_failure>
    3f24:	83 c4 10             	add    $0x10,%esp
    3f27:	8b 45 ec             	mov    -0x14(%ebp),%eax
    3f2a:	c9                   	leave  
    3f2b:	c3                   	ret    

00003f2c <reset_msg>:
    3f2c:	55                   	push   %ebp
    3f2d:	89 e5                	mov    %esp,%ebp
    3f2f:	83 ec 08             	sub    $0x8,%esp
    3f32:	83 ec 04             	sub    $0x4,%esp
    3f35:	6a 30                	push   $0x30
    3f37:	6a 00                	push   $0x0
    3f39:	ff 75 08             	pushl  0x8(%ebp)
    3f3c:	e8 38 83 00 00       	call   c279 <memset>
    3f41:	83 c4 10             	add    $0x10,%esp
    3f44:	90                   	nop
    3f45:	c9                   	leave  
    3f46:	c3                   	ret    

00003f47 <block>:
    3f47:	55                   	push   %ebp
    3f48:	89 e5                	mov    %esp,%ebp
    3f4a:	83 ec 08             	sub    $0x8,%esp
    3f4d:	8b 45 08             	mov    0x8(%ebp),%eax
    3f50:	8b 40 74             	mov    0x74(%eax),%eax
    3f53:	85 c0                	test   %eax,%eax
    3f55:	75 1c                	jne    3f73 <block+0x2c>
    3f57:	68 b1 00 00 00       	push   $0xb1
    3f5c:	68 60 d3 00 00       	push   $0xd360
    3f61:	68 60 d3 00 00       	push   $0xd360
    3f66:	68 40 d4 00 00       	push   $0xd440
    3f6b:	e8 6d 85 00 00       	call   c4dd <assertion_failure>
    3f70:	83 c4 10             	add    $0x10,%esp
    3f73:	e8 5f fd ff ff       	call   3cd7 <schedule>
    3f78:	90                   	nop
    3f79:	c9                   	leave  
    3f7a:	c3                   	ret    

00003f7b <unblock>:
    3f7b:	55                   	push   %ebp
    3f7c:	89 e5                	mov    %esp,%ebp
    3f7e:	83 ec 08             	sub    $0x8,%esp
    3f81:	8b 45 08             	mov    0x8(%ebp),%eax
    3f84:	8b 40 74             	mov    0x74(%eax),%eax
    3f87:	85 c0                	test   %eax,%eax
    3f89:	74 1c                	je     3fa7 <unblock+0x2c>
    3f8b:	68 c0 00 00 00       	push   $0xc0
    3f90:	68 60 d3 00 00       	push   $0xd360
    3f95:	68 60 d3 00 00       	push   $0xd360
    3f9a:	68 4b d4 00 00       	push   $0xd44b
    3f9f:	e8 39 85 00 00       	call   c4dd <assertion_failure>
    3fa4:	83 c4 10             	add    $0x10,%esp
    3fa7:	90                   	nop
    3fa8:	c9                   	leave  
    3fa9:	c3                   	ret    

00003faa <deadlock>:
    3faa:	55                   	push   %ebp
    3fab:	89 e5                	mov    %esp,%ebp
    3fad:	83 ec 18             	sub    $0x18,%esp
    3fb0:	8b 45 0c             	mov    0xc(%ebp),%eax
    3fb3:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3fb9:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3fbe:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3fc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3fc4:	8b 40 74             	mov    0x74(%eax),%eax
    3fc7:	83 e0 02             	and    $0x2,%eax
    3fca:	85 c0                	test   %eax,%eax
    3fcc:	0f 84 d4 00 00 00    	je     40a6 <deadlock+0xfc>
    3fd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3fd5:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    3fdb:	39 45 08             	cmp    %eax,0x8(%ebp)
    3fde:	0f 85 a6 00 00 00    	jne    408a <deadlock+0xe0>
    3fe4:	8b 45 0c             	mov    0xc(%ebp),%eax
    3fe7:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    3fed:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    3ff2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3ff5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    3ff8:	83 c0 64             	add    $0x64,%eax
    3ffb:	83 ec 08             	sub    $0x8,%esp
    3ffe:	50                   	push   %eax
    3fff:	68 5b d4 00 00       	push   $0xd45b
    4004:	e8 fc 7e 00 00       	call   bf05 <printl>
    4009:	83 c4 10             	add    $0x10,%esp
    400c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    400f:	8b 40 78             	mov    0x78(%eax),%eax
    4012:	85 c0                	test   %eax,%eax
    4014:	75 1c                	jne    4032 <deadlock+0x88>
    4016:	68 dc 00 00 00       	push   $0xdc
    401b:	68 60 d3 00 00       	push   $0xd360
    4020:	68 60 d3 00 00       	push   $0xd360
    4025:	68 61 d4 00 00       	push   $0xd461
    402a:	e8 ae 84 00 00       	call   c4dd <assertion_failure>
    402f:	83 c4 10             	add    $0x10,%esp
    4032:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4035:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    403b:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4041:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4046:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4049:	8b 45 f4             	mov    -0xc(%ebp),%eax
    404c:	83 c0 64             	add    $0x64,%eax
    404f:	83 ec 08             	sub    $0x8,%esp
    4052:	50                   	push   %eax
    4053:	68 6a d4 00 00       	push   $0xd46a
    4058:	e8 a8 7e 00 00       	call   bf05 <printl>
    405d:	83 c4 10             	add    $0x10,%esp
    4060:	8b 45 08             	mov    0x8(%ebp),%eax
    4063:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4069:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    406e:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4071:	75 99                	jne    400c <deadlock+0x62>
    4073:	83 ec 0c             	sub    $0xc,%esp
    4076:	68 6f d4 00 00       	push   $0xd46f
    407b:	e8 85 7e 00 00       	call   bf05 <printl>
    4080:	83 c4 10             	add    $0x10,%esp
    4083:	b8 01 00 00 00       	mov    $0x1,%eax
    4088:	eb 22                	jmp    40ac <deadlock+0x102>
    408a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    408d:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4093:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4099:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    409e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    40a1:	e9 1b ff ff ff       	jmp    3fc1 <deadlock+0x17>
    40a6:	90                   	nop
    40a7:	b8 00 00 00 00       	mov    $0x0,%eax
    40ac:	c9                   	leave  
    40ad:	c3                   	ret    

000040ae <msg_send>:
    40ae:	55                   	push   %ebp
    40af:	89 e5                	mov    %esp,%ebp
    40b1:	53                   	push   %ebx
    40b2:	83 ec 14             	sub    $0x14,%esp
    40b5:	8b 45 08             	mov    0x8(%ebp),%eax
    40b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
    40bb:	8b 45 0c             	mov    0xc(%ebp),%eax
    40be:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    40c4:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    40c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
    40cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    40cf:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    40d4:	c1 f8 03             	sar    $0x3,%eax
    40d7:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    40dd:	39 45 0c             	cmp    %eax,0xc(%ebp)
    40e0:	75 1c                	jne    40fe <msg_send+0x50>
    40e2:	68 00 01 00 00       	push   $0x100
    40e7:	68 60 d3 00 00       	push   $0xd360
    40ec:	68 60 d3 00 00       	push   $0xd360
    40f1:	68 73 d4 00 00       	push   $0xd473
    40f6:	e8 e2 83 00 00       	call   c4dd <assertion_failure>
    40fb:	83 c4 10             	add    $0x10,%esp
    40fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4101:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4106:	c1 f8 03             	sar    $0x3,%eax
    4109:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    410f:	83 ec 08             	sub    $0x8,%esp
    4112:	ff 75 0c             	pushl  0xc(%ebp)
    4115:	50                   	push   %eax
    4116:	e8 8f fe ff ff       	call   3faa <deadlock>
    411b:	83 c4 10             	add    $0x10,%esp
    411e:	85 c0                	test   %eax,%eax
    4120:	74 1e                	je     4140 <msg_send+0x92>
    4122:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4125:	8d 50 64             	lea    0x64(%eax),%edx
    4128:	8b 45 f0             	mov    -0x10(%ebp),%eax
    412b:	83 c0 64             	add    $0x64,%eax
    412e:	83 ec 04             	sub    $0x4,%esp
    4131:	52                   	push   %edx
    4132:	50                   	push   %eax
    4133:	68 8c d4 00 00       	push   $0xd48c
    4138:	e8 cd d9 ff ff       	call   1b0a <panic>
    413d:	83 c4 10             	add    $0x10,%esp
    4140:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4143:	8b 40 74             	mov    0x74(%eax),%eax
    4146:	83 e0 04             	and    $0x4,%eax
    4149:	85 c0                	test   %eax,%eax
    414b:	0f 84 2f 02 00 00    	je     4380 <msg_send+0x2d2>
    4151:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4154:	8b 40 7c             	mov    0x7c(%eax),%eax
    4157:	8b 55 f0             	mov    -0x10(%ebp),%edx
    415a:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4160:	c1 fa 03             	sar    $0x3,%edx
    4163:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4169:	39 d0                	cmp    %edx,%eax
    416b:	74 0f                	je     417c <msg_send+0xce>
    416d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4170:	8b 40 7c             	mov    0x7c(%eax),%eax
    4173:	83 f8 2f             	cmp    $0x2f,%eax
    4176:	0f 85 04 02 00 00    	jne    4380 <msg_send+0x2d2>
    417c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    417f:	8b 40 78             	mov    0x78(%eax),%eax
    4182:	85 c0                	test   %eax,%eax
    4184:	75 1c                	jne    41a2 <msg_send+0xf4>
    4186:	68 0a 01 00 00       	push   $0x10a
    418b:	68 60 d3 00 00       	push   $0xd360
    4190:	68 60 d3 00 00       	push   $0xd360
    4195:	68 a0 d4 00 00       	push   $0xd4a0
    419a:	e8 3e 83 00 00       	call   c4dd <assertion_failure>
    419f:	83 c4 10             	add    $0x10,%esp
    41a2:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    41a6:	75 1c                	jne    41c4 <msg_send+0x116>
    41a8:	68 0b 01 00 00       	push   $0x10b
    41ad:	68 60 d3 00 00       	push   $0xd360
    41b2:	68 60 d3 00 00       	push   $0xd360
    41b7:	68 ae d4 00 00       	push   $0xd4ae
    41bc:	e8 1c 83 00 00       	call   c4dd <assertion_failure>
    41c1:	83 c4 10             	add    $0x10,%esp
    41c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    41c7:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    41cc:	c1 f8 03             	sar    $0x3,%eax
    41cf:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    41d5:	83 ec 08             	sub    $0x8,%esp
    41d8:	ff 75 10             	pushl  0x10(%ebp)
    41db:	50                   	push   %eax
    41dc:	e8 ea fc ff ff       	call   3ecb <va2la>
    41e1:	83 c4 10             	add    $0x10,%esp
    41e4:	89 c3                	mov    %eax,%ebx
    41e6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    41e9:	8b 40 78             	mov    0x78(%eax),%eax
    41ec:	83 ec 08             	sub    $0x8,%esp
    41ef:	50                   	push   %eax
    41f0:	ff 75 0c             	pushl  0xc(%ebp)
    41f3:	e8 d3 fc ff ff       	call   3ecb <va2la>
    41f8:	83 c4 10             	add    $0x10,%esp
    41fb:	83 ec 04             	sub    $0x4,%esp
    41fe:	6a 30                	push   $0x30
    4200:	53                   	push   %ebx
    4201:	50                   	push   %eax
    4202:	e8 49 80 00 00       	call   c250 <memcpy>
    4207:	83 c4 10             	add    $0x10,%esp
    420a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    420d:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4214:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4217:	8b 40 74             	mov    0x74(%eax),%eax
    421a:	83 e0 fb             	and    $0xfffffffb,%eax
    421d:	89 c2                	mov    %eax,%edx
    421f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4222:	89 50 74             	mov    %edx,0x74(%eax)
    4225:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4228:	c7 40 7c 39 00 00 00 	movl   $0x39,0x7c(%eax)
    422f:	83 ec 0c             	sub    $0xc,%esp
    4232:	ff 75 ec             	pushl  -0x14(%ebp)
    4235:	e8 41 fd ff ff       	call   3f7b <unblock>
    423a:	83 c4 10             	add    $0x10,%esp
    423d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4240:	8b 40 74             	mov    0x74(%eax),%eax
    4243:	85 c0                	test   %eax,%eax
    4245:	74 1c                	je     4263 <msg_send+0x1b5>
    4247:	68 15 01 00 00       	push   $0x115
    424c:	68 60 d3 00 00       	push   $0xd360
    4251:	68 60 d3 00 00       	push   $0xd360
    4256:	68 b0 d4 00 00       	push   $0xd4b0
    425b:	e8 7d 82 00 00       	call   c4dd <assertion_failure>
    4260:	83 c4 10             	add    $0x10,%esp
    4263:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4266:	8b 40 78             	mov    0x78(%eax),%eax
    4269:	85 c0                	test   %eax,%eax
    426b:	74 1c                	je     4289 <msg_send+0x1db>
    426d:	68 16 01 00 00       	push   $0x116
    4272:	68 60 d3 00 00       	push   $0xd360
    4277:	68 60 d3 00 00       	push   $0xd360
    427c:	68 c5 d4 00 00       	push   $0xd4c5
    4281:	e8 57 82 00 00       	call   c4dd <assertion_failure>
    4286:	83 c4 10             	add    $0x10,%esp
    4289:	8b 45 ec             	mov    -0x14(%ebp),%eax
    428c:	8b 40 7c             	mov    0x7c(%eax),%eax
    428f:	83 f8 39             	cmp    $0x39,%eax
    4292:	74 1c                	je     42b0 <msg_send+0x202>
    4294:	68 17 01 00 00       	push   $0x117
    4299:	68 60 d3 00 00       	push   $0xd360
    429e:	68 60 d3 00 00       	push   $0xd360
    42a3:	68 d8 d4 00 00       	push   $0xd4d8
    42a8:	e8 30 82 00 00       	call   c4dd <assertion_failure>
    42ad:	83 c4 10             	add    $0x10,%esp
    42b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    42b3:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    42b9:	83 f8 39             	cmp    $0x39,%eax
    42bc:	74 1c                	je     42da <msg_send+0x22c>
    42be:	68 18 01 00 00       	push   $0x118
    42c3:	68 60 d3 00 00       	push   $0xd360
    42c8:	68 60 d3 00 00       	push   $0xd360
    42cd:	68 f6 d4 00 00       	push   $0xd4f6
    42d2:	e8 06 82 00 00       	call   c4dd <assertion_failure>
    42d7:	83 c4 10             	add    $0x10,%esp
    42da:	8b 45 f0             	mov    -0x10(%ebp),%eax
    42dd:	8b 40 74             	mov    0x74(%eax),%eax
    42e0:	85 c0                	test   %eax,%eax
    42e2:	74 1c                	je     4300 <msg_send+0x252>
    42e4:	68 19 01 00 00       	push   $0x119
    42e9:	68 60 d3 00 00       	push   $0xd360
    42ee:	68 60 d3 00 00       	push   $0xd360
    42f3:	68 12 d5 00 00       	push   $0xd512
    42f8:	e8 e0 81 00 00       	call   c4dd <assertion_failure>
    42fd:	83 c4 10             	add    $0x10,%esp
    4300:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4303:	8b 40 78             	mov    0x78(%eax),%eax
    4306:	85 c0                	test   %eax,%eax
    4308:	74 1c                	je     4326 <msg_send+0x278>
    430a:	68 1a 01 00 00       	push   $0x11a
    430f:	68 60 d3 00 00       	push   $0xd360
    4314:	68 60 d3 00 00       	push   $0xd360
    4319:	68 27 d5 00 00       	push   $0xd527
    431e:	e8 ba 81 00 00       	call   c4dd <assertion_failure>
    4323:	83 c4 10             	add    $0x10,%esp
    4326:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4329:	8b 40 7c             	mov    0x7c(%eax),%eax
    432c:	83 f8 39             	cmp    $0x39,%eax
    432f:	74 1c                	je     434d <msg_send+0x29f>
    4331:	68 1b 01 00 00       	push   $0x11b
    4336:	68 60 d3 00 00       	push   $0xd360
    433b:	68 60 d3 00 00       	push   $0xd360
    4340:	68 3a d5 00 00       	push   $0xd53a
    4345:	e8 93 81 00 00       	call   c4dd <assertion_failure>
    434a:	83 c4 10             	add    $0x10,%esp
    434d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4350:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4356:	83 f8 39             	cmp    $0x39,%eax
    4359:	0f 84 75 01 00 00    	je     44d4 <msg_send+0x426>
    435f:	68 1c 01 00 00       	push   $0x11c
    4364:	68 60 d3 00 00       	push   $0xd360
    4369:	68 60 d3 00 00       	push   $0xd360
    436e:	68 58 d5 00 00       	push   $0xd558
    4373:	e8 65 81 00 00       	call   c4dd <assertion_failure>
    4378:	83 c4 10             	add    $0x10,%esp
    437b:	e9 54 01 00 00       	jmp    44d4 <msg_send+0x426>
    4380:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4383:	8b 40 74             	mov    0x74(%eax),%eax
    4386:	83 c8 02             	or     $0x2,%eax
    4389:	89 c2                	mov    %eax,%edx
    438b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    438e:	89 50 74             	mov    %edx,0x74(%eax)
    4391:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4394:	8b 40 74             	mov    0x74(%eax),%eax
    4397:	83 f8 02             	cmp    $0x2,%eax
    439a:	74 1c                	je     43b8 <msg_send+0x30a>
    439c:	68 20 01 00 00       	push   $0x120
    43a1:	68 60 d3 00 00       	push   $0xd360
    43a6:	68 60 d3 00 00       	push   $0xd360
    43ab:	68 74 d5 00 00       	push   $0xd574
    43b0:	e8 28 81 00 00       	call   c4dd <assertion_failure>
    43b5:	83 c4 10             	add    $0x10,%esp
    43b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    43bb:	8b 55 0c             	mov    0xc(%ebp),%edx
    43be:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
    43c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    43c7:	8b 55 10             	mov    0x10(%ebp),%edx
    43ca:	89 50 78             	mov    %edx,0x78(%eax)
    43cd:	8b 45 ec             	mov    -0x14(%ebp),%eax
    43d0:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    43d6:	85 c0                	test   %eax,%eax
    43d8:	74 35                	je     440f <msg_send+0x361>
    43da:	8b 45 ec             	mov    -0x14(%ebp),%eax
    43dd:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    43e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    43e6:	eb 0c                	jmp    43f4 <msg_send+0x346>
    43e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    43eb:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    43f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    43f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    43f7:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    43fd:	85 c0                	test   %eax,%eax
    43ff:	75 e7                	jne    43e8 <msg_send+0x33a>
    4401:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4404:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4407:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    440d:	eb 0c                	jmp    441b <msg_send+0x36d>
    440f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    4412:	8b 55 f0             	mov    -0x10(%ebp),%edx
    4415:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
    441b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    441e:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4425:	00 00 00 
    4428:	83 ec 0c             	sub    $0xc,%esp
    442b:	ff 75 f0             	pushl  -0x10(%ebp)
    442e:	e8 14 fb ff ff       	call   3f47 <block>
    4433:	83 c4 10             	add    $0x10,%esp
    4436:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4439:	8b 40 74             	mov    0x74(%eax),%eax
    443c:	83 f8 02             	cmp    $0x2,%eax
    443f:	74 1c                	je     445d <msg_send+0x3af>
    4441:	68 33 01 00 00       	push   $0x133
    4446:	68 60 d3 00 00       	push   $0xd360
    444b:	68 60 d3 00 00       	push   $0xd360
    4450:	68 74 d5 00 00       	push   $0xd574
    4455:	e8 83 80 00 00       	call   c4dd <assertion_failure>
    445a:	83 c4 10             	add    $0x10,%esp
    445d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4460:	8b 40 78             	mov    0x78(%eax),%eax
    4463:	85 c0                	test   %eax,%eax
    4465:	75 1c                	jne    4483 <msg_send+0x3d5>
    4467:	68 34 01 00 00       	push   $0x134
    446c:	68 60 d3 00 00       	push   $0xd360
    4471:	68 60 d3 00 00       	push   $0xd360
    4476:	68 8f d5 00 00       	push   $0xd58f
    447b:	e8 5d 80 00 00       	call   c4dd <assertion_failure>
    4480:	83 c4 10             	add    $0x10,%esp
    4483:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4486:	8b 40 7c             	mov    0x7c(%eax),%eax
    4489:	83 f8 39             	cmp    $0x39,%eax
    448c:	74 1c                	je     44aa <msg_send+0x3fc>
    448e:	68 35 01 00 00       	push   $0x135
    4493:	68 60 d3 00 00       	push   $0xd360
    4498:	68 60 d3 00 00       	push   $0xd360
    449d:	68 3a d5 00 00       	push   $0xd53a
    44a2:	e8 36 80 00 00       	call   c4dd <assertion_failure>
    44a7:	83 c4 10             	add    $0x10,%esp
    44aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    44ad:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    44b3:	39 45 0c             	cmp    %eax,0xc(%ebp)
    44b6:	74 1c                	je     44d4 <msg_send+0x426>
    44b8:	68 36 01 00 00       	push   $0x136
    44bd:	68 60 d3 00 00       	push   $0xd360
    44c2:	68 60 d3 00 00       	push   $0xd360
    44c7:	68 a2 d5 00 00       	push   $0xd5a2
    44cc:	e8 0c 80 00 00       	call   c4dd <assertion_failure>
    44d1:	83 c4 10             	add    $0x10,%esp
    44d4:	b8 00 00 00 00       	mov    $0x0,%eax
    44d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    44dc:	c9                   	leave  
    44dd:	c3                   	ret    

000044de <msg_receive>:
    44de:	55                   	push   %ebp
    44df:	89 e5                	mov    %esp,%ebp
    44e1:	53                   	push   %ebx
    44e2:	83 ec 54             	sub    $0x54,%esp
    44e5:	8b 45 08             	mov    0x8(%ebp),%eax
    44e8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    44eb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    44f2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    44f9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    4500:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4503:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4508:	c1 f8 03             	sar    $0x3,%eax
    450b:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4511:	39 45 0c             	cmp    %eax,0xc(%ebp)
    4514:	75 1c                	jne    4532 <msg_receive+0x54>
    4516:	68 57 01 00 00       	push   $0x157
    451b:	68 60 d3 00 00       	push   $0xd360
    4520:	68 60 d3 00 00       	push   $0xd360
    4525:	68 bc d5 00 00       	push   $0xd5bc
    452a:	e8 ae 7f 00 00       	call   c4dd <assertion_failure>
    452f:	83 c4 10             	add    $0x10,%esp
    4532:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4535:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    453b:	85 c0                	test   %eax,%eax
    453d:	0f 84 39 01 00 00    	je     467c <msg_receive+0x19e>
    4543:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    4547:	74 0a                	je     4553 <msg_receive+0x75>
    4549:	83 7d 0c f6          	cmpl   $0xfffffff6,0xc(%ebp)
    454d:	0f 85 29 01 00 00    	jne    467c <msg_receive+0x19e>
    4553:	83 ec 0c             	sub    $0xc,%esp
    4556:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    4559:	50                   	push   %eax
    455a:	e8 cd f9 ff ff       	call   3f2c <reset_msg>
    455f:	83 c4 10             	add    $0x10,%esp
    4562:	c7 45 b4 f6 ff ff ff 	movl   $0xfffffff6,-0x4c(%ebp)
    4569:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%ebp)
    4570:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4574:	75 1c                	jne    4592 <msg_receive+0xb4>
    4576:	68 64 01 00 00       	push   $0x164
    457b:	68 60 d3 00 00       	push   $0xd360
    4580:	68 60 d3 00 00       	push   $0xd360
    4585:	68 ae d4 00 00       	push   $0xd4ae
    458a:	e8 4e 7f 00 00       	call   c4dd <assertion_failure>
    458f:	83 c4 10             	add    $0x10,%esp
    4592:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4595:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    459a:	c1 f8 03             	sar    $0x3,%eax
    459d:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    45a3:	83 ec 08             	sub    $0x8,%esp
    45a6:	ff 75 10             	pushl  0x10(%ebp)
    45a9:	50                   	push   %eax
    45aa:	e8 1c f9 ff ff       	call   3ecb <va2la>
    45af:	83 c4 10             	add    $0x10,%esp
    45b2:	89 c2                	mov    %eax,%edx
    45b4:	83 ec 04             	sub    $0x4,%esp
    45b7:	6a 30                	push   $0x30
    45b9:	8d 45 b4             	lea    -0x4c(%ebp),%eax
    45bc:	50                   	push   %eax
    45bd:	52                   	push   %edx
    45be:	e8 8d 7c 00 00       	call   c250 <memcpy>
    45c3:	83 c4 10             	add    $0x10,%esp
    45c6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    45c9:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    45d0:	00 00 00 
    45d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    45d6:	8b 40 74             	mov    0x74(%eax),%eax
    45d9:	85 c0                	test   %eax,%eax
    45db:	74 1c                	je     45f9 <msg_receive+0x11b>
    45dd:	68 6b 01 00 00       	push   $0x16b
    45e2:	68 60 d3 00 00       	push   $0xd360
    45e7:	68 60 d3 00 00       	push   $0xd360
    45ec:	68 e0 d5 00 00       	push   $0xd5e0
    45f1:	e8 e7 7e 00 00       	call   c4dd <assertion_failure>
    45f6:	83 c4 10             	add    $0x10,%esp
    45f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    45fc:	8b 40 78             	mov    0x78(%eax),%eax
    45ff:	85 c0                	test   %eax,%eax
    4601:	74 1c                	je     461f <msg_receive+0x141>
    4603:	68 6c 01 00 00       	push   $0x16c
    4608:	68 60 d3 00 00       	push   $0xd360
    460d:	68 60 d3 00 00       	push   $0xd360
    4612:	68 ff d5 00 00       	push   $0xd5ff
    4617:	e8 c1 7e 00 00       	call   c4dd <assertion_failure>
    461c:	83 c4 10             	add    $0x10,%esp
    461f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4622:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4628:	83 f8 39             	cmp    $0x39,%eax
    462b:	74 1c                	je     4649 <msg_receive+0x16b>
    462d:	68 6d 01 00 00       	push   $0x16d
    4632:	68 60 d3 00 00       	push   $0xd360
    4637:	68 60 d3 00 00       	push   $0xd360
    463c:	68 1c d6 00 00       	push   $0xd61c
    4641:	e8 97 7e 00 00       	call   c4dd <assertion_failure>
    4646:	83 c4 10             	add    $0x10,%esp
    4649:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    464c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4652:	85 c0                	test   %eax,%eax
    4654:	74 1c                	je     4672 <msg_receive+0x194>
    4656:	68 6e 01 00 00       	push   $0x16e
    465b:	68 60 d3 00 00       	push   $0xd360
    4660:	68 60 d3 00 00       	push   $0xd360
    4665:	68 44 d6 00 00       	push   $0xd644
    466a:	e8 6e 7e 00 00       	call   c4dd <assertion_failure>
    466f:	83 c4 10             	add    $0x10,%esp
    4672:	b8 00 00 00 00       	mov    $0x0,%eax
    4677:	e9 7d 06 00 00       	jmp    4cf9 <msg_receive+0x81b>
    467c:	83 7d 0c 2f          	cmpl   $0x2f,0xc(%ebp)
    4680:	0f 85 a2 01 00 00    	jne    4828 <msg_receive+0x34a>
    4686:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4689:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    468f:	85 c0                	test   %eax,%eax
    4691:	0f 84 f0 03 00 00    	je     4a87 <msg_receive+0x5a9>
    4697:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    469a:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    46a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    46a3:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    46aa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46ad:	8b 40 74             	mov    0x74(%eax),%eax
    46b0:	85 c0                	test   %eax,%eax
    46b2:	74 1c                	je     46d0 <msg_receive+0x1f2>
    46b4:	68 7e 01 00 00       	push   $0x17e
    46b9:	68 60 d3 00 00       	push   $0xd360
    46be:	68 60 d3 00 00       	push   $0xd360
    46c3:	68 e0 d5 00 00       	push   $0xd5e0
    46c8:	e8 10 7e 00 00       	call   c4dd <assertion_failure>
    46cd:	83 c4 10             	add    $0x10,%esp
    46d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46d3:	8b 40 78             	mov    0x78(%eax),%eax
    46d6:	85 c0                	test   %eax,%eax
    46d8:	74 1c                	je     46f6 <msg_receive+0x218>
    46da:	68 7f 01 00 00       	push   $0x17f
    46df:	68 60 d3 00 00       	push   $0xd360
    46e4:	68 60 d3 00 00       	push   $0xd360
    46e9:	68 ff d5 00 00       	push   $0xd5ff
    46ee:	e8 ea 7d 00 00       	call   c4dd <assertion_failure>
    46f3:	83 c4 10             	add    $0x10,%esp
    46f6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    46f9:	8b 40 7c             	mov    0x7c(%eax),%eax
    46fc:	83 f8 39             	cmp    $0x39,%eax
    46ff:	74 1c                	je     471d <msg_receive+0x23f>
    4701:	68 80 01 00 00       	push   $0x180
    4706:	68 60 d3 00 00       	push   $0xd360
    470b:	68 60 d3 00 00       	push   $0xd360
    4710:	68 68 d6 00 00       	push   $0xd668
    4715:	e8 c3 7d 00 00       	call   c4dd <assertion_failure>
    471a:	83 c4 10             	add    $0x10,%esp
    471d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4720:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4726:	83 f8 39             	cmp    $0x39,%eax
    4729:	74 1c                	je     4747 <msg_receive+0x269>
    472b:	68 81 01 00 00       	push   $0x181
    4730:	68 60 d3 00 00       	push   $0xd360
    4735:	68 60 d3 00 00       	push   $0xd360
    473a:	68 1c d6 00 00       	push   $0xd61c
    473f:	e8 99 7d 00 00       	call   c4dd <assertion_failure>
    4744:	83 c4 10             	add    $0x10,%esp
    4747:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    474a:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4750:	85 c0                	test   %eax,%eax
    4752:	75 1c                	jne    4770 <msg_receive+0x292>
    4754:	68 82 01 00 00       	push   $0x182
    4759:	68 60 d3 00 00       	push   $0xd360
    475e:	68 60 d3 00 00       	push   $0xd360
    4763:	68 90 d6 00 00       	push   $0xd690
    4768:	e8 70 7d 00 00       	call   c4dd <assertion_failure>
    476d:	83 c4 10             	add    $0x10,%esp
    4770:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4773:	8b 40 74             	mov    0x74(%eax),%eax
    4776:	83 f8 02             	cmp    $0x2,%eax
    4779:	74 1c                	je     4797 <msg_receive+0x2b9>
    477b:	68 83 01 00 00       	push   $0x183
    4780:	68 60 d3 00 00       	push   $0xd360
    4785:	68 60 d3 00 00       	push   $0xd360
    478a:	68 b1 d6 00 00       	push   $0xd6b1
    478f:	e8 49 7d 00 00       	call   c4dd <assertion_failure>
    4794:	83 c4 10             	add    $0x10,%esp
    4797:	8b 45 f4             	mov    -0xc(%ebp),%eax
    479a:	8b 40 78             	mov    0x78(%eax),%eax
    479d:	85 c0                	test   %eax,%eax
    479f:	75 1c                	jne    47bd <msg_receive+0x2df>
    47a1:	68 84 01 00 00       	push   $0x184
    47a6:	68 60 d3 00 00       	push   $0xd360
    47ab:	68 60 d3 00 00       	push   $0xd360
    47b0:	68 cc d6 00 00       	push   $0xd6cc
    47b5:	e8 23 7d 00 00       	call   c4dd <assertion_failure>
    47ba:	83 c4 10             	add    $0x10,%esp
    47bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    47c0:	8b 40 7c             	mov    0x7c(%eax),%eax
    47c3:	83 f8 39             	cmp    $0x39,%eax
    47c6:	74 1c                	je     47e4 <msg_receive+0x306>
    47c8:	68 85 01 00 00       	push   $0x185
    47cd:	68 60 d3 00 00       	push   $0xd360
    47d2:	68 60 d3 00 00       	push   $0xd360
    47d7:	68 df d6 00 00       	push   $0xd6df
    47dc:	e8 fc 7c 00 00       	call   c4dd <assertion_failure>
    47e1:	83 c4 10             	add    $0x10,%esp
    47e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    47e7:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    47ed:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    47f0:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    47f6:	c1 fa 03             	sar    $0x3,%edx
    47f9:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    47ff:	39 d0                	cmp    %edx,%eax
    4801:	0f 84 80 02 00 00    	je     4a87 <msg_receive+0x5a9>
    4807:	68 86 01 00 00       	push   $0x186
    480c:	68 60 d3 00 00       	push   $0xd360
    4811:	68 60 d3 00 00       	push   $0xd360
    4816:	68 00 d7 00 00       	push   $0xd700
    481b:	e8 bd 7c 00 00       	call   c4dd <assertion_failure>
    4820:	83 c4 10             	add    $0x10,%esp
    4823:	e9 5f 02 00 00       	jmp    4a87 <msg_receive+0x5a9>
    4828:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    482c:	0f 88 55 02 00 00    	js     4a87 <msg_receive+0x5a9>
    4832:	83 7d 0c 24          	cmpl   $0x24,0xc(%ebp)
    4836:	0f 8f 4b 02 00 00    	jg     4a87 <msg_receive+0x5a9>
    483c:	8b 45 0c             	mov    0xc(%ebp),%eax
    483f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4845:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    484a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    484d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4850:	8b 40 74             	mov    0x74(%eax),%eax
    4853:	83 e0 02             	and    $0x2,%eax
    4856:	85 c0                	test   %eax,%eax
    4858:	0f 84 29 02 00 00    	je     4a87 <msg_receive+0x5a9>
    485e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4861:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4867:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    486a:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4870:	c1 fa 03             	sar    $0x3,%edx
    4873:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4879:	39 d0                	cmp    %edx,%eax
    487b:	0f 85 06 02 00 00    	jne    4a87 <msg_receive+0x5a9>
    4881:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
    4888:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    488b:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4891:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4894:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    4898:	75 6f                	jne    4909 <msg_receive+0x42b>
    489a:	68 98 01 00 00       	push   $0x198
    489f:	68 60 d3 00 00       	push   $0xd360
    48a4:	68 60 d3 00 00       	push   $0xd360
    48a9:	68 2f d7 00 00       	push   $0xd72f
    48ae:	e8 2a 7c 00 00       	call   c4dd <assertion_failure>
    48b3:	83 c4 10             	add    $0x10,%esp
    48b6:	eb 51                	jmp    4909 <msg_receive+0x42b>
    48b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    48bb:	8b 40 74             	mov    0x74(%eax),%eax
    48be:	83 e0 02             	and    $0x2,%eax
    48c1:	85 c0                	test   %eax,%eax
    48c3:	75 1c                	jne    48e1 <msg_receive+0x403>
    48c5:	68 9d 01 00 00       	push   $0x19d
    48ca:	68 60 d3 00 00       	push   $0xd360
    48cf:	68 60 d3 00 00       	push   $0xd360
    48d4:	68 31 d7 00 00       	push   $0xd731
    48d9:	e8 ff 7b 00 00       	call   c4dd <assertion_failure>
    48de:	83 c4 10             	add    $0x10,%esp
    48e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
    48e4:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    48e9:	c1 f8 03             	sar    $0x3,%eax
    48ec:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    48f2:	39 45 0c             	cmp    %eax,0xc(%ebp)
    48f5:	74 1a                	je     4911 <msg_receive+0x433>
    48f7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    48fa:	89 45 f0             	mov    %eax,-0x10(%ebp)
    48fd:	8b 45 e8             	mov    -0x18(%ebp),%eax
    4900:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
    4906:	89 45 e8             	mov    %eax,-0x18(%ebp)
    4909:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    490d:	75 a9                	jne    48b8 <msg_receive+0x3da>
    490f:	eb 01                	jmp    4912 <msg_receive+0x434>
    4911:	90                   	nop
    4912:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4915:	8b 40 74             	mov    0x74(%eax),%eax
    4918:	85 c0                	test   %eax,%eax
    491a:	74 1c                	je     4938 <msg_receive+0x45a>
    491c:	68 a6 01 00 00       	push   $0x1a6
    4921:	68 60 d3 00 00       	push   $0xd360
    4926:	68 60 d3 00 00       	push   $0xd360
    492b:	68 e0 d5 00 00       	push   $0xd5e0
    4930:	e8 a8 7b 00 00       	call   c4dd <assertion_failure>
    4935:	83 c4 10             	add    $0x10,%esp
    4938:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    493b:	8b 40 78             	mov    0x78(%eax),%eax
    493e:	85 c0                	test   %eax,%eax
    4940:	74 1c                	je     495e <msg_receive+0x480>
    4942:	68 a7 01 00 00       	push   $0x1a7
    4947:	68 60 d3 00 00       	push   $0xd360
    494c:	68 60 d3 00 00       	push   $0xd360
    4951:	68 ff d5 00 00       	push   $0xd5ff
    4956:	e8 82 7b 00 00       	call   c4dd <assertion_failure>
    495b:	83 c4 10             	add    $0x10,%esp
    495e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4961:	8b 40 7c             	mov    0x7c(%eax),%eax
    4964:	83 f8 39             	cmp    $0x39,%eax
    4967:	74 1c                	je     4985 <msg_receive+0x4a7>
    4969:	68 a8 01 00 00       	push   $0x1a8
    496e:	68 60 d3 00 00       	push   $0xd360
    4973:	68 60 d3 00 00       	push   $0xd360
    4978:	68 68 d6 00 00       	push   $0xd668
    497d:	e8 5b 7b 00 00       	call   c4dd <assertion_failure>
    4982:	83 c4 10             	add    $0x10,%esp
    4985:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4988:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    498e:	83 f8 39             	cmp    $0x39,%eax
    4991:	74 1c                	je     49af <msg_receive+0x4d1>
    4993:	68 a9 01 00 00       	push   $0x1a9
    4998:	68 60 d3 00 00       	push   $0xd360
    499d:	68 60 d3 00 00       	push   $0xd360
    49a2:	68 1c d6 00 00       	push   $0xd61c
    49a7:	e8 31 7b 00 00       	call   c4dd <assertion_failure>
    49ac:	83 c4 10             	add    $0x10,%esp
    49af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    49b2:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    49b8:	85 c0                	test   %eax,%eax
    49ba:	75 1c                	jne    49d8 <msg_receive+0x4fa>
    49bc:	68 aa 01 00 00       	push   $0x1aa
    49c1:	68 60 d3 00 00       	push   $0xd360
    49c6:	68 60 d3 00 00       	push   $0xd360
    49cb:	68 90 d6 00 00       	push   $0xd690
    49d0:	e8 08 7b 00 00       	call   c4dd <assertion_failure>
    49d5:	83 c4 10             	add    $0x10,%esp
    49d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49db:	8b 40 74             	mov    0x74(%eax),%eax
    49de:	83 f8 02             	cmp    $0x2,%eax
    49e1:	74 1c                	je     49ff <msg_receive+0x521>
    49e3:	68 ab 01 00 00       	push   $0x1ab
    49e8:	68 60 d3 00 00       	push   $0xd360
    49ed:	68 60 d3 00 00       	push   $0xd360
    49f2:	68 b1 d6 00 00       	push   $0xd6b1
    49f7:	e8 e1 7a 00 00       	call   c4dd <assertion_failure>
    49fc:	83 c4 10             	add    $0x10,%esp
    49ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a02:	8b 40 78             	mov    0x78(%eax),%eax
    4a05:	85 c0                	test   %eax,%eax
    4a07:	75 1c                	jne    4a25 <msg_receive+0x547>
    4a09:	68 ac 01 00 00       	push   $0x1ac
    4a0e:	68 60 d3 00 00       	push   $0xd360
    4a13:	68 60 d3 00 00       	push   $0xd360
    4a18:	68 cc d6 00 00       	push   $0xd6cc
    4a1d:	e8 bb 7a 00 00       	call   c4dd <assertion_failure>
    4a22:	83 c4 10             	add    $0x10,%esp
    4a25:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a28:	8b 40 7c             	mov    0x7c(%eax),%eax
    4a2b:	83 f8 39             	cmp    $0x39,%eax
    4a2e:	74 1c                	je     4a4c <msg_receive+0x56e>
    4a30:	68 ad 01 00 00       	push   $0x1ad
    4a35:	68 60 d3 00 00       	push   $0xd360
    4a3a:	68 60 d3 00 00       	push   $0xd360
    4a3f:	68 df d6 00 00       	push   $0xd6df
    4a44:	e8 94 7a 00 00       	call   c4dd <assertion_failure>
    4a49:	83 c4 10             	add    $0x10,%esp
    4a4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4a4f:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4a55:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    4a58:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4a5e:	c1 fa 03             	sar    $0x3,%edx
    4a61:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4a67:	39 d0                	cmp    %edx,%eax
    4a69:	74 1c                	je     4a87 <msg_receive+0x5a9>
    4a6b:	68 ae 01 00 00       	push   $0x1ae
    4a70:	68 60 d3 00 00       	push   $0xd360
    4a75:	68 60 d3 00 00       	push   $0xd360
    4a7a:	68 00 d7 00 00       	push   $0xd700
    4a7f:	e8 59 7a 00 00       	call   c4dd <assertion_failure>
    4a84:	83 c4 10             	add    $0x10,%esp
    4a87:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    4a8b:	0f 84 6b 01 00 00    	je     4bfc <msg_receive+0x71e>
    4a91:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4a94:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4a9a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    4a9d:	75 43                	jne    4ae2 <msg_receive+0x604>
    4a9f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4aa3:	74 1c                	je     4ac1 <msg_receive+0x5e3>
    4aa5:	68 b9 01 00 00       	push   $0x1b9
    4aaa:	68 60 d3 00 00       	push   $0xd360
    4aaf:	68 60 d3 00 00       	push   $0xd360
    4ab4:	68 4b d7 00 00       	push   $0xd74b
    4ab9:	e8 1f 7a 00 00       	call   c4dd <assertion_failure>
    4abe:	83 c4 10             	add    $0x10,%esp
    4ac1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ac4:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
    4aca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4acd:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
    4ad3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4ad6:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4add:	00 00 00 
    4ae0:	eb 41                	jmp    4b23 <msg_receive+0x645>
    4ae2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    4ae6:	75 1c                	jne    4b04 <msg_receive+0x626>
    4ae8:	68 be 01 00 00       	push   $0x1be
    4aed:	68 60 d3 00 00       	push   $0xd360
    4af2:	68 60 d3 00 00       	push   $0xd360
    4af7:	68 55 d7 00 00       	push   $0xd755
    4afc:	e8 dc 79 00 00       	call   c4dd <assertion_failure>
    4b01:	83 c4 10             	add    $0x10,%esp
    4b04:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b07:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
    4b0d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4b10:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    4b16:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b19:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
    4b20:	00 00 00 
    4b23:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    4b27:	75 1c                	jne    4b45 <msg_receive+0x667>
    4b29:	68 c3 01 00 00       	push   $0x1c3
    4b2e:	68 60 d3 00 00       	push   $0xd360
    4b33:	68 60 d3 00 00       	push   $0xd360
    4b38:	68 ae d4 00 00       	push   $0xd4ae
    4b3d:	e8 9b 79 00 00       	call   c4dd <assertion_failure>
    4b42:	83 c4 10             	add    $0x10,%esp
    4b45:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b48:	8b 40 78             	mov    0x78(%eax),%eax
    4b4b:	85 c0                	test   %eax,%eax
    4b4d:	75 1c                	jne    4b6b <msg_receive+0x68d>
    4b4f:	68 c4 01 00 00       	push   $0x1c4
    4b54:	68 60 d3 00 00       	push   $0xd360
    4b59:	68 60 d3 00 00       	push   $0xd360
    4b5e:	68 5a d7 00 00       	push   $0xd75a
    4b63:	e8 75 79 00 00       	call   c4dd <assertion_failure>
    4b68:	83 c4 10             	add    $0x10,%esp
    4b6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4b6e:	8b 40 78             	mov    0x78(%eax),%eax
    4b71:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4b74:	81 ea a0 a4 03 00    	sub    $0x3a4a0,%edx
    4b7a:	c1 fa 03             	sar    $0x3,%edx
    4b7d:	69 d2 fb fa fa fa    	imul   $0xfafafafb,%edx,%edx
    4b83:	83 ec 08             	sub    $0x8,%esp
    4b86:	50                   	push   %eax
    4b87:	52                   	push   %edx
    4b88:	e8 3e f3 ff ff       	call   3ecb <va2la>
    4b8d:	83 c4 10             	add    $0x10,%esp
    4b90:	89 c3                	mov    %eax,%ebx
    4b92:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b95:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4b9a:	c1 f8 03             	sar    $0x3,%eax
    4b9d:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4ba3:	83 ec 08             	sub    $0x8,%esp
    4ba6:	ff 75 10             	pushl  0x10(%ebp)
    4ba9:	50                   	push   %eax
    4baa:	e8 1c f3 ff ff       	call   3ecb <va2la>
    4baf:	83 c4 10             	add    $0x10,%esp
    4bb2:	83 ec 04             	sub    $0x4,%esp
    4bb5:	6a 30                	push   $0x30
    4bb7:	53                   	push   %ebx
    4bb8:	50                   	push   %eax
    4bb9:	e8 92 76 00 00       	call   c250 <memcpy>
    4bbe:	83 c4 10             	add    $0x10,%esp
    4bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4bc4:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4bce:	c7 80 80 00 00 00 39 	movl   $0x39,0x80(%eax)
    4bd5:	00 00 00 
    4bd8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4bdb:	8b 40 74             	mov    0x74(%eax),%eax
    4bde:	83 e0 fd             	and    $0xfffffffd,%eax
    4be1:	89 c2                	mov    %eax,%edx
    4be3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4be6:	89 50 74             	mov    %edx,0x74(%eax)
    4be9:	83 ec 0c             	sub    $0xc,%esp
    4bec:	ff 75 f4             	pushl  -0xc(%ebp)
    4bef:	e8 87 f3 ff ff       	call   3f7b <unblock>
    4bf4:	83 c4 10             	add    $0x10,%esp
    4bf7:	e9 f8 00 00 00       	jmp    4cf4 <msg_receive+0x816>
    4bfc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bff:	8b 40 74             	mov    0x74(%eax),%eax
    4c02:	83 c8 04             	or     $0x4,%eax
    4c05:	89 c2                	mov    %eax,%edx
    4c07:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c0a:	89 50 74             	mov    %edx,0x74(%eax)
    4c0d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c10:	8b 55 10             	mov    0x10(%ebp),%edx
    4c13:	89 50 78             	mov    %edx,0x78(%eax)
    4c16:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c19:	8b 55 0c             	mov    0xc(%ebp),%edx
    4c1c:	89 50 7c             	mov    %edx,0x7c(%eax)
    4c1f:	83 ec 0c             	sub    $0xc,%esp
    4c22:	ff 75 e4             	pushl  -0x1c(%ebp)
    4c25:	e8 1d f3 ff ff       	call   3f47 <block>
    4c2a:	83 c4 10             	add    $0x10,%esp
    4c2d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c30:	8b 40 74             	mov    0x74(%eax),%eax
    4c33:	83 f8 04             	cmp    $0x4,%eax
    4c36:	74 1c                	je     4c54 <msg_receive+0x776>
    4c38:	68 da 01 00 00       	push   $0x1da
    4c3d:	68 60 d3 00 00       	push   $0xd360
    4c42:	68 60 d3 00 00       	push   $0xd360
    4c47:	68 68 d7 00 00       	push   $0xd768
    4c4c:	e8 8c 78 00 00       	call   c4dd <assertion_failure>
    4c51:	83 c4 10             	add    $0x10,%esp
    4c54:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c57:	8b 40 78             	mov    0x78(%eax),%eax
    4c5a:	85 c0                	test   %eax,%eax
    4c5c:	75 1c                	jne    4c7a <msg_receive+0x79c>
    4c5e:	68 db 01 00 00       	push   $0x1db
    4c63:	68 60 d3 00 00       	push   $0xd360
    4c68:	68 60 d3 00 00       	push   $0xd360
    4c6d:	68 8f d7 00 00       	push   $0xd78f
    4c72:	e8 66 78 00 00       	call   c4dd <assertion_failure>
    4c77:	83 c4 10             	add    $0x10,%esp
    4c7a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4c7d:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c80:	83 f8 39             	cmp    $0x39,%eax
    4c83:	75 1c                	jne    4ca1 <msg_receive+0x7c3>
    4c85:	68 dc 01 00 00       	push   $0x1dc
    4c8a:	68 60 d3 00 00       	push   $0xd360
    4c8f:	68 60 d3 00 00       	push   $0xd360
    4c94:	68 ac d7 00 00       	push   $0xd7ac
    4c99:	e8 3f 78 00 00       	call   c4dd <assertion_failure>
    4c9e:	83 c4 10             	add    $0x10,%esp
    4ca1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ca4:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4caa:	83 f8 39             	cmp    $0x39,%eax
    4cad:	74 1c                	je     4ccb <msg_receive+0x7ed>
    4caf:	68 dd 01 00 00       	push   $0x1dd
    4cb4:	68 60 d3 00 00       	push   $0xd360
    4cb9:	68 60 d3 00 00       	push   $0xd360
    4cbe:	68 1c d6 00 00       	push   $0xd61c
    4cc3:	e8 15 78 00 00       	call   c4dd <assertion_failure>
    4cc8:	83 c4 10             	add    $0x10,%esp
    4ccb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4cce:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4cd4:	85 c0                	test   %eax,%eax
    4cd6:	74 1c                	je     4cf4 <msg_receive+0x816>
    4cd8:	68 de 01 00 00       	push   $0x1de
    4cdd:	68 60 d3 00 00       	push   $0xd360
    4ce2:	68 60 d3 00 00       	push   $0xd360
    4ce7:	68 44 d6 00 00       	push   $0xd644
    4cec:	e8 ec 77 00 00       	call   c4dd <assertion_failure>
    4cf1:	83 c4 10             	add    $0x10,%esp
    4cf4:	b8 00 00 00 00       	mov    $0x0,%eax
    4cf9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4cfc:	c9                   	leave  
    4cfd:	c3                   	ret    

00004cfe <inform_int>:
    4cfe:	55                   	push   %ebp
    4cff:	89 e5                	mov    %esp,%ebp
    4d01:	83 ec 18             	sub    $0x18,%esp
    4d04:	8b 45 08             	mov    0x8(%ebp),%eax
    4d07:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    4d0d:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    4d12:	89 45 f4             	mov    %eax,-0xc(%ebp)
    4d15:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d18:	8b 40 74             	mov    0x74(%eax),%eax
    4d1b:	83 e0 04             	and    $0x4,%eax
    4d1e:	85 c0                	test   %eax,%eax
    4d20:	0f 84 38 01 00 00    	je     4e5e <inform_int+0x160>
    4d26:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d29:	8b 40 7c             	mov    0x7c(%eax),%eax
    4d2c:	83 f8 f6             	cmp    $0xfffffff6,%eax
    4d2f:	74 0f                	je     4d40 <inform_int+0x42>
    4d31:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d34:	8b 40 7c             	mov    0x7c(%eax),%eax
    4d37:	83 f8 2f             	cmp    $0x2f,%eax
    4d3a:	0f 85 1e 01 00 00    	jne    4e5e <inform_int+0x160>
    4d40:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d43:	8b 40 78             	mov    0x78(%eax),%eax
    4d46:	c7 00 f6 ff ff ff    	movl   $0xfffffff6,(%eax)
    4d4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d4f:	8b 40 78             	mov    0x78(%eax),%eax
    4d52:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
    4d59:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d5c:	c7 40 78 00 00 00 00 	movl   $0x0,0x78(%eax)
    4d63:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d66:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    4d6d:	00 00 00 
    4d70:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d73:	8b 40 74             	mov    0x74(%eax),%eax
    4d76:	83 e0 fb             	and    $0xfffffffb,%eax
    4d79:	89 c2                	mov    %eax,%edx
    4d7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d7e:	89 50 74             	mov    %edx,0x74(%eax)
    4d81:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d84:	c7 40 7c 39 00 00 00 	movl   $0x39,0x7c(%eax)
    4d8b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d8e:	8b 40 74             	mov    0x74(%eax),%eax
    4d91:	85 c0                	test   %eax,%eax
    4d93:	74 1c                	je     4db1 <inform_int+0xb3>
    4d95:	68 f8 01 00 00       	push   $0x1f8
    4d9a:	68 60 d3 00 00       	push   $0xd360
    4d9f:	68 60 d3 00 00       	push   $0xd360
    4da4:	68 4b d4 00 00       	push   $0xd44b
    4da9:	e8 2f 77 00 00       	call   c4dd <assertion_failure>
    4dae:	83 c4 10             	add    $0x10,%esp
    4db1:	83 ec 0c             	sub    $0xc,%esp
    4db4:	ff 75 f4             	pushl  -0xc(%ebp)
    4db7:	e8 bf f1 ff ff       	call   3f7b <unblock>
    4dbc:	83 c4 10             	add    $0x10,%esp
    4dbf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4dc2:	8b 40 74             	mov    0x74(%eax),%eax
    4dc5:	85 c0                	test   %eax,%eax
    4dc7:	74 1c                	je     4de5 <inform_int+0xe7>
    4dc9:	68 fb 01 00 00       	push   $0x1fb
    4dce:	68 60 d3 00 00       	push   $0xd360
    4dd3:	68 60 d3 00 00       	push   $0xd360
    4dd8:	68 4b d4 00 00       	push   $0xd44b
    4ddd:	e8 fb 76 00 00       	call   c4dd <assertion_failure>
    4de2:	83 c4 10             	add    $0x10,%esp
    4de5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4de8:	8b 40 78             	mov    0x78(%eax),%eax
    4deb:	85 c0                	test   %eax,%eax
    4ded:	74 1c                	je     4e0b <inform_int+0x10d>
    4def:	68 fc 01 00 00       	push   $0x1fc
    4df4:	68 60 d3 00 00       	push   $0xd360
    4df9:	68 60 d3 00 00       	push   $0xd360
    4dfe:	68 d4 d7 00 00       	push   $0xd7d4
    4e03:	e8 d5 76 00 00       	call   c4dd <assertion_failure>
    4e08:	83 c4 10             	add    $0x10,%esp
    4e0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e0e:	8b 40 7c             	mov    0x7c(%eax),%eax
    4e11:	83 f8 39             	cmp    $0x39,%eax
    4e14:	74 1c                	je     4e32 <inform_int+0x134>
    4e16:	68 fd 01 00 00       	push   $0x1fd
    4e1b:	68 60 d3 00 00       	push   $0xd360
    4e20:	68 60 d3 00 00       	push   $0xd360
    4e25:	68 e2 d7 00 00       	push   $0xd7e2
    4e2a:	e8 ae 76 00 00       	call   c4dd <assertion_failure>
    4e2f:	83 c4 10             	add    $0x10,%esp
    4e32:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e35:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4e3b:	83 f8 39             	cmp    $0x39,%eax
    4e3e:	74 2b                	je     4e6b <inform_int+0x16d>
    4e40:	68 fe 01 00 00       	push   $0x1fe
    4e45:	68 60 d3 00 00       	push   $0xd360
    4e4a:	68 60 d3 00 00       	push   $0xd360
    4e4f:	68 fb d7 00 00       	push   $0xd7fb
    4e54:	e8 84 76 00 00       	call   c4dd <assertion_failure>
    4e59:	83 c4 10             	add    $0x10,%esp
    4e5c:	eb 0d                	jmp    4e6b <inform_int+0x16d>
    4e5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4e61:	c7 80 84 00 00 00 01 	movl   $0x1,0x84(%eax)
    4e68:	00 00 00 
    4e6b:	90                   	nop
    4e6c:	c9                   	leave  
    4e6d:	c3                   	ret    

00004e6e <dump_proc>:
    4e6e:	55                   	push   %ebp
    4e6f:	89 e5                	mov    %esp,%ebp
    4e71:	81 ec 18 04 00 00    	sub    $0x418,%esp
    4e77:	c7 45 f0 24 00 00 00 	movl   $0x24,-0x10(%ebp)
    4e7e:	c7 45 ec 98 01 00 00 	movl   $0x198,-0x14(%ebp)
    4e85:	83 ec 08             	sub    $0x8,%esp
    4e88:	6a 0c                	push   $0xc
    4e8a:	68 d4 03 00 00       	push   $0x3d4
    4e8f:	e8 79 15 00 00       	call   640d <out_byte>
    4e94:	83 c4 10             	add    $0x10,%esp
    4e97:	83 ec 08             	sub    $0x8,%esp
    4e9a:	6a 00                	push   $0x0
    4e9c:	68 d5 03 00 00       	push   $0x3d5
    4ea1:	e8 67 15 00 00       	call   640d <out_byte>
    4ea6:	83 c4 10             	add    $0x10,%esp
    4ea9:	83 ec 08             	sub    $0x8,%esp
    4eac:	6a 0d                	push   $0xd
    4eae:	68 d4 03 00 00       	push   $0x3d4
    4eb3:	e8 55 15 00 00       	call   640d <out_byte>
    4eb8:	83 c4 10             	add    $0x10,%esp
    4ebb:	83 ec 08             	sub    $0x8,%esp
    4ebe:	6a 00                	push   $0x0
    4ec0:	68 d5 03 00 00       	push   $0x3d5
    4ec5:	e8 43 15 00 00       	call   640d <out_byte>
    4eca:	83 c4 10             	add    $0x10,%esp
    4ecd:	8b 45 08             	mov    0x8(%ebp),%eax
    4ed0:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    4ed5:	c1 f8 03             	sar    $0x3,%eax
    4ed8:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    4ede:	83 ec 04             	sub    $0x4,%esp
    4ee1:	50                   	push   %eax
    4ee2:	68 12 d8 00 00       	push   $0xd812
    4ee7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4eed:	50                   	push   %eax
    4eee:	e8 37 73 00 00       	call   c22a <sprintf>
    4ef3:	83 c4 10             	add    $0x10,%esp
    4ef6:	83 ec 08             	sub    $0x8,%esp
    4ef9:	ff 75 f0             	pushl  -0x10(%ebp)
    4efc:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4f02:	50                   	push   %eax
    4f03:	e8 c6 14 00 00       	call   63ce <disp_color_str>
    4f08:	83 c4 10             	add    $0x10,%esp
    4f0b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    4f12:	eb 3f                	jmp    4f53 <dump_proc+0xe5>
    4f14:	8b 55 f4             	mov    -0xc(%ebp),%edx
    4f17:	8b 45 08             	mov    0x8(%ebp),%eax
    4f1a:	01 d0                	add    %edx,%eax
    4f1c:	0f b6 00             	movzbl (%eax),%eax
    4f1f:	0f b6 c0             	movzbl %al,%eax
    4f22:	83 ec 04             	sub    $0x4,%esp
    4f25:	50                   	push   %eax
    4f26:	68 30 d8 00 00       	push   $0xd830
    4f2b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4f31:	50                   	push   %eax
    4f32:	e8 f3 72 00 00       	call   c22a <sprintf>
    4f37:	83 c4 10             	add    $0x10,%esp
    4f3a:	83 ec 08             	sub    $0x8,%esp
    4f3d:	ff 75 f0             	pushl  -0x10(%ebp)
    4f40:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4f46:	50                   	push   %eax
    4f47:	e8 82 14 00 00       	call   63ce <disp_color_str>
    4f4c:	83 c4 10             	add    $0x10,%esp
    4f4f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    4f53:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4f56:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    4f59:	7c b9                	jl     4f14 <dump_proc+0xa6>
    4f5b:	83 ec 08             	sub    $0x8,%esp
    4f5e:	ff 75 f0             	pushl  -0x10(%ebp)
    4f61:	68 34 d8 00 00       	push   $0xd834
    4f66:	e8 63 14 00 00       	call   63ce <disp_color_str>
    4f6b:	83 c4 10             	add    $0x10,%esp
    4f6e:	83 ec 04             	sub    $0x4,%esp
    4f71:	6a 2f                	push   $0x2f
    4f73:	68 37 d8 00 00       	push   $0xd837
    4f78:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4f7e:	50                   	push   %eax
    4f7f:	e8 a6 72 00 00       	call   c22a <sprintf>
    4f84:	83 c4 10             	add    $0x10,%esp
    4f87:	83 ec 08             	sub    $0x8,%esp
    4f8a:	ff 75 f0             	pushl  -0x10(%ebp)
    4f8d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4f93:	50                   	push   %eax
    4f94:	e8 35 14 00 00       	call   63ce <disp_color_str>
    4f99:	83 c4 10             	add    $0x10,%esp
    4f9c:	83 ec 04             	sub    $0x4,%esp
    4f9f:	6a 39                	push   $0x39
    4fa1:	68 43 d8 00 00       	push   $0xd843
    4fa6:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4fac:	50                   	push   %eax
    4fad:	e8 78 72 00 00       	call   c22a <sprintf>
    4fb2:	83 c4 10             	add    $0x10,%esp
    4fb5:	83 ec 08             	sub    $0x8,%esp
    4fb8:	ff 75 f0             	pushl  -0x10(%ebp)
    4fbb:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4fc1:	50                   	push   %eax
    4fc2:	e8 07 14 00 00       	call   63ce <disp_color_str>
    4fc7:	83 c4 10             	add    $0x10,%esp
    4fca:	83 ec 08             	sub    $0x8,%esp
    4fcd:	ff 75 f0             	pushl  -0x10(%ebp)
    4fd0:	68 53 d8 00 00       	push   $0xd853
    4fd5:	e8 f4 13 00 00       	call   63ce <disp_color_str>
    4fda:	83 c4 10             	add    $0x10,%esp
    4fdd:	8b 45 08             	mov    0x8(%ebp),%eax
    4fe0:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    4fe4:	0f b7 c0             	movzwl %ax,%eax
    4fe7:	83 ec 04             	sub    $0x4,%esp
    4fea:	50                   	push   %eax
    4feb:	68 55 d8 00 00       	push   $0xd855
    4ff0:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    4ff6:	50                   	push   %eax
    4ff7:	e8 2e 72 00 00       	call   c22a <sprintf>
    4ffc:	83 c4 10             	add    $0x10,%esp
    4fff:	83 ec 08             	sub    $0x8,%esp
    5002:	ff 75 f0             	pushl  -0x10(%ebp)
    5005:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    500b:	50                   	push   %eax
    500c:	e8 bd 13 00 00       	call   63ce <disp_color_str>
    5011:	83 c4 10             	add    $0x10,%esp
    5014:	8b 45 08             	mov    0x8(%ebp),%eax
    5017:	8b 40 5c             	mov    0x5c(%eax),%eax
    501a:	83 ec 04             	sub    $0x4,%esp
    501d:	50                   	push   %eax
    501e:	68 66 d8 00 00       	push   $0xd866
    5023:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5029:	50                   	push   %eax
    502a:	e8 fb 71 00 00       	call   c22a <sprintf>
    502f:	83 c4 10             	add    $0x10,%esp
    5032:	83 ec 08             	sub    $0x8,%esp
    5035:	ff 75 f0             	pushl  -0x10(%ebp)
    5038:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    503e:	50                   	push   %eax
    503f:	e8 8a 13 00 00       	call   63ce <disp_color_str>
    5044:	83 c4 10             	add    $0x10,%esp
    5047:	8b 45 08             	mov    0x8(%ebp),%eax
    504a:	8b 40 60             	mov    0x60(%eax),%eax
    504d:	83 ec 04             	sub    $0x4,%esp
    5050:	50                   	push   %eax
    5051:	68 75 d8 00 00       	push   $0xd875
    5056:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    505c:	50                   	push   %eax
    505d:	e8 c8 71 00 00       	call   c22a <sprintf>
    5062:	83 c4 10             	add    $0x10,%esp
    5065:	83 ec 08             	sub    $0x8,%esp
    5068:	ff 75 f0             	pushl  -0x10(%ebp)
    506b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5071:	50                   	push   %eax
    5072:	e8 57 13 00 00       	call   63ce <disp_color_str>
    5077:	83 c4 10             	add    $0x10,%esp
    507a:	8b 45 08             	mov    0x8(%ebp),%eax
    507d:	83 c0 64             	add    $0x64,%eax
    5080:	83 ec 04             	sub    $0x4,%esp
    5083:	50                   	push   %eax
    5084:	68 87 d8 00 00       	push   $0xd887
    5089:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    508f:	50                   	push   %eax
    5090:	e8 95 71 00 00       	call   c22a <sprintf>
    5095:	83 c4 10             	add    $0x10,%esp
    5098:	83 ec 08             	sub    $0x8,%esp
    509b:	ff 75 f0             	pushl  -0x10(%ebp)
    509e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50a4:	50                   	push   %eax
    50a5:	e8 24 13 00 00       	call   63ce <disp_color_str>
    50aa:	83 c4 10             	add    $0x10,%esp
    50ad:	83 ec 08             	sub    $0x8,%esp
    50b0:	ff 75 f0             	pushl  -0x10(%ebp)
    50b3:	68 53 d8 00 00       	push   $0xd853
    50b8:	e8 11 13 00 00       	call   63ce <disp_color_str>
    50bd:	83 c4 10             	add    $0x10,%esp
    50c0:	8b 45 08             	mov    0x8(%ebp),%eax
    50c3:	8b 40 74             	mov    0x74(%eax),%eax
    50c6:	83 ec 04             	sub    $0x4,%esp
    50c9:	50                   	push   %eax
    50ca:	68 93 d8 00 00       	push   $0xd893
    50cf:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50d5:	50                   	push   %eax
    50d6:	e8 4f 71 00 00       	call   c22a <sprintf>
    50db:	83 c4 10             	add    $0x10,%esp
    50de:	83 ec 08             	sub    $0x8,%esp
    50e1:	ff 75 f0             	pushl  -0x10(%ebp)
    50e4:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    50ea:	50                   	push   %eax
    50eb:	e8 de 12 00 00       	call   63ce <disp_color_str>
    50f0:	83 c4 10             	add    $0x10,%esp
    50f3:	8b 45 08             	mov    0x8(%ebp),%eax
    50f6:	8b 40 7c             	mov    0x7c(%eax),%eax
    50f9:	83 ec 04             	sub    $0x4,%esp
    50fc:	50                   	push   %eax
    50fd:	68 a4 d8 00 00       	push   $0xd8a4
    5102:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5108:	50                   	push   %eax
    5109:	e8 1c 71 00 00       	call   c22a <sprintf>
    510e:	83 c4 10             	add    $0x10,%esp
    5111:	83 ec 08             	sub    $0x8,%esp
    5114:	ff 75 f0             	pushl  -0x10(%ebp)
    5117:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    511d:	50                   	push   %eax
    511e:	e8 ab 12 00 00       	call   63ce <disp_color_str>
    5123:	83 c4 10             	add    $0x10,%esp
    5126:	8b 45 08             	mov    0x8(%ebp),%eax
    5129:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    512f:	83 ec 04             	sub    $0x4,%esp
    5132:	50                   	push   %eax
    5133:	68 b8 d8 00 00       	push   $0xd8b8
    5138:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    513e:	50                   	push   %eax
    513f:	e8 e6 70 00 00       	call   c22a <sprintf>
    5144:	83 c4 10             	add    $0x10,%esp
    5147:	83 ec 08             	sub    $0x8,%esp
    514a:	ff 75 f0             	pushl  -0x10(%ebp)
    514d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5153:	50                   	push   %eax
    5154:	e8 75 12 00 00       	call   63ce <disp_color_str>
    5159:	83 c4 10             	add    $0x10,%esp
    515c:	83 ec 08             	sub    $0x8,%esp
    515f:	ff 75 f0             	pushl  -0x10(%ebp)
    5162:	68 53 d8 00 00       	push   $0xd853
    5167:	e8 62 12 00 00       	call   63ce <disp_color_str>
    516c:	83 c4 10             	add    $0x10,%esp
    516f:	8b 45 08             	mov    0x8(%ebp),%eax
    5172:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    5178:	83 ec 04             	sub    $0x4,%esp
    517b:	50                   	push   %eax
    517c:	68 ca d8 00 00       	push   $0xd8ca
    5181:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5187:	50                   	push   %eax
    5188:	e8 9d 70 00 00       	call   c22a <sprintf>
    518d:	83 c4 10             	add    $0x10,%esp
    5190:	83 ec 08             	sub    $0x8,%esp
    5193:	ff 75 f0             	pushl  -0x10(%ebp)
    5196:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    519c:	50                   	push   %eax
    519d:	e8 2c 12 00 00       	call   63ce <disp_color_str>
    51a2:	83 c4 10             	add    $0x10,%esp
    51a5:	90                   	nop
    51a6:	c9                   	leave  
    51a7:	c3                   	ret    

000051a8 <dump_msg>:
    51a8:	55                   	push   %ebp
    51a9:	89 e5                	mov    %esp,%ebp
    51ab:	57                   	push   %edi
    51ac:	56                   	push   %esi
    51ad:	53                   	push   %ebx
    51ae:	83 ec 4c             	sub    $0x4c,%esp
    51b1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    51b8:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    51bc:	74 09                	je     51c7 <dump_msg+0x1f>
    51be:	c7 45 d4 df d8 00 00 	movl   $0xd8df,-0x2c(%ebp)
    51c5:	eb 07                	jmp    51ce <dump_msg+0x26>
    51c7:	c7 45 d4 53 d8 00 00 	movl   $0xd853,-0x2c(%ebp)
    51ce:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    51d2:	74 09                	je     51dd <dump_msg+0x35>
    51d4:	c7 45 d0 df d8 00 00 	movl   $0xd8df,-0x30(%ebp)
    51db:	eb 07                	jmp    51e4 <dump_msg+0x3c>
    51dd:	c7 45 d0 53 d8 00 00 	movl   $0xd853,-0x30(%ebp)
    51e4:	8b 45 0c             	mov    0xc(%ebp),%eax
    51e7:	8b 40 2c             	mov    0x2c(%eax),%eax
    51ea:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    51ed:	8b 45 0c             	mov    0xc(%ebp),%eax
    51f0:	8b 40 28             	mov    0x28(%eax),%eax
    51f3:	89 45 c0             	mov    %eax,-0x40(%ebp)
    51f6:	8b 45 0c             	mov    0xc(%ebp),%eax
    51f9:	8b 40 14             	mov    0x14(%eax),%eax
    51fc:	89 45 bc             	mov    %eax,-0x44(%ebp)
    51ff:	8b 45 0c             	mov    0xc(%ebp),%eax
    5202:	8b 40 10             	mov    0x10(%eax),%eax
    5205:	89 45 b8             	mov    %eax,-0x48(%ebp)
    5208:	8b 45 0c             	mov    0xc(%ebp),%eax
    520b:	8b 40 0c             	mov    0xc(%eax),%eax
    520e:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    5211:	8b 45 0c             	mov    0xc(%ebp),%eax
    5214:	8b 78 08             	mov    0x8(%eax),%edi
    5217:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    521b:	74 09                	je     5226 <dump_msg+0x7e>
    521d:	c7 45 cc e0 d8 00 00 	movl   $0xd8e0,-0x34(%ebp)
    5224:	eb 07                	jmp    522d <dump_msg+0x85>
    5226:	c7 45 cc e2 d8 00 00 	movl   $0xd8e2,-0x34(%ebp)
    522d:	8b 45 0c             	mov    0xc(%ebp),%eax
    5230:	8b 70 04             	mov    0x4(%eax),%esi
    5233:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5237:	74 09                	je     5242 <dump_msg+0x9a>
    5239:	c7 45 c8 e0 d8 00 00 	movl   $0xd8e0,-0x38(%ebp)
    5240:	eb 07                	jmp    5249 <dump_msg+0xa1>
    5242:	c7 45 c8 e2 d8 00 00 	movl   $0xd8e2,-0x38(%ebp)
    5249:	8b 45 0c             	mov    0xc(%ebp),%eax
    524c:	8b 18                	mov    (%eax),%ebx
    524e:	8b 45 0c             	mov    0xc(%ebp),%eax
    5251:	8b 00                	mov    (%eax),%eax
    5253:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    5259:	83 c0 60             	add    $0x60,%eax
    525c:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    5261:	8d 50 04             	lea    0x4(%eax),%edx
    5264:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5268:	74 07                	je     5271 <dump_msg+0xc9>
    526a:	b9 df d8 00 00       	mov    $0xd8df,%ecx
    526f:	eb 05                	jmp    5276 <dump_msg+0xce>
    5271:	b9 e2 d8 00 00       	mov    $0xd8e2,%ecx
    5276:	8b 45 0c             	mov    0xc(%ebp),%eax
    5279:	83 ec 0c             	sub    $0xc,%esp
    527c:	ff 75 d4             	pushl  -0x2c(%ebp)
    527f:	ff 75 d0             	pushl  -0x30(%ebp)
    5282:	ff 75 c4             	pushl  -0x3c(%ebp)
    5285:	ff 75 c0             	pushl  -0x40(%ebp)
    5288:	ff 75 bc             	pushl  -0x44(%ebp)
    528b:	ff 75 b8             	pushl  -0x48(%ebp)
    528e:	ff 75 b4             	pushl  -0x4c(%ebp)
    5291:	57                   	push   %edi
    5292:	ff 75 cc             	pushl  -0x34(%ebp)
    5295:	56                   	push   %esi
    5296:	ff 75 c8             	pushl  -0x38(%ebp)
    5299:	53                   	push   %ebx
    529a:	52                   	push   %edx
    529b:	51                   	push   %ecx
    529c:	50                   	push   %eax
    529d:	ff 75 08             	pushl  0x8(%ebp)
    52a0:	68 ec d8 00 00       	push   $0xd8ec
    52a5:	e8 5b 6c 00 00       	call   bf05 <printl>
    52aa:	83 c4 50             	add    $0x50,%esp
    52ad:	90                   	nop
    52ae:	8d 65 f4             	lea    -0xc(%ebp),%esp
    52b1:	5b                   	pop    %ebx
    52b2:	5e                   	pop    %esi
    52b3:	5f                   	pop    %edi
    52b4:	5d                   	pop    %ebp
    52b5:	c3                   	ret    

000052b6 <task_sys>:
    52b6:	55                   	push   %ebp
    52b7:	89 e5                	mov    %esp,%ebp
    52b9:	53                   	push   %ebx
    52ba:	83 ec 54             	sub    $0x54,%esp
    52bd:	83 ec 04             	sub    $0x4,%esp
    52c0:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    52c3:	50                   	push   %eax
    52c4:	6a 2f                	push   $0x2f
    52c6:	6a 02                	push   $0x2
    52c8:	e8 fb 6f 00 00       	call   c2c8 <send_recv>
    52cd:	83 c4 10             	add    $0x10,%esp
    52d0:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    52d3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    52d6:	8b 45 c8             	mov    -0x38(%ebp),%eax
    52d9:	83 f8 03             	cmp    $0x3,%eax
    52dc:	74 2f                	je     530d <task_sys+0x57>
    52de:	83 f8 04             	cmp    $0x4,%eax
    52e1:	74 4d                	je     5330 <task_sys+0x7a>
    52e3:	83 f8 02             	cmp    $0x2,%eax
    52e6:	0f 85 a4 00 00 00    	jne    5390 <task_sys+0xda>
    52ec:	a1 e0 a3 03 00       	mov    0x3a3e0,%eax
    52f1:	89 45 cc             	mov    %eax,-0x34(%ebp)
    52f4:	83 ec 04             	sub    $0x4,%esp
    52f7:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    52fa:	50                   	push   %eax
    52fb:	ff 75 f4             	pushl  -0xc(%ebp)
    52fe:	6a 01                	push   $0x1
    5300:	e8 c3 6f 00 00       	call   c2c8 <send_recv>
    5305:	83 c4 10             	add    $0x10,%esp
    5308:	e9 94 00 00 00       	jmp    53a1 <task_sys+0xeb>
    530d:	c7 45 c8 12 00 00 00 	movl   $0x12,-0x38(%ebp)
    5314:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5317:	89 45 d0             	mov    %eax,-0x30(%ebp)
    531a:	83 ec 04             	sub    $0x4,%esp
    531d:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5320:	50                   	push   %eax
    5321:	ff 75 f4             	pushl  -0xc(%ebp)
    5324:	6a 01                	push   $0x1
    5326:	e8 9d 6f 00 00       	call   c2c8 <send_recv>
    532b:	83 c4 10             	add    $0x10,%esp
    532e:	eb 71                	jmp    53a1 <task_sys+0xeb>
    5330:	c7 45 c8 12 00 00 00 	movl   $0x12,-0x38(%ebp)
    5337:	83 ec 0c             	sub    $0xc,%esp
    533a:	8d 45 ac             	lea    -0x54(%ebp),%eax
    533d:	50                   	push   %eax
    533e:	e8 63 00 00 00       	call   53a6 <get_rtc_time>
    5343:	83 c4 10             	add    $0x10,%esp
    5346:	83 ec 08             	sub    $0x8,%esp
    5349:	8d 45 ac             	lea    -0x54(%ebp),%eax
    534c:	50                   	push   %eax
    534d:	6a 01                	push   $0x1
    534f:	e8 77 eb ff ff       	call   3ecb <va2la>
    5354:	83 c4 10             	add    $0x10,%esp
    5357:	89 c3                	mov    %eax,%ebx
    5359:	8b 45 f0             	mov    -0x10(%ebp),%eax
    535c:	83 ec 08             	sub    $0x8,%esp
    535f:	50                   	push   %eax
    5360:	ff 75 f4             	pushl  -0xc(%ebp)
    5363:	e8 63 eb ff ff       	call   3ecb <va2la>
    5368:	83 c4 10             	add    $0x10,%esp
    536b:	83 ec 04             	sub    $0x4,%esp
    536e:	6a 18                	push   $0x18
    5370:	53                   	push   %ebx
    5371:	50                   	push   %eax
    5372:	e8 d9 6e 00 00       	call   c250 <memcpy>
    5377:	83 c4 10             	add    $0x10,%esp
    537a:	83 ec 04             	sub    $0x4,%esp
    537d:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5380:	50                   	push   %eax
    5381:	ff 75 f4             	pushl  -0xc(%ebp)
    5384:	6a 01                	push   $0x1
    5386:	e8 3d 6f 00 00       	call   c2c8 <send_recv>
    538b:	83 c4 10             	add    $0x10,%esp
    538e:	eb 11                	jmp    53a1 <task_sys+0xeb>
    5390:	83 ec 0c             	sub    $0xc,%esp
    5393:	68 3a d9 00 00       	push   $0xd93a
    5398:	e8 6d c7 ff ff       	call   1b0a <panic>
    539d:	83 c4 10             	add    $0x10,%esp
    53a0:	90                   	nop
    53a1:	e9 17 ff ff ff       	jmp    52bd <task_sys+0x7>

000053a6 <get_rtc_time>:
    53a6:	55                   	push   %ebp
    53a7:	89 e5                	mov    %esp,%ebp
    53a9:	83 ec 08             	sub    $0x8,%esp
    53ac:	83 ec 0c             	sub    $0xc,%esp
    53af:	6a 09                	push   $0x9
    53b1:	e8 89 01 00 00       	call   553f <read_register>
    53b6:	83 c4 10             	add    $0x10,%esp
    53b9:	89 c2                	mov    %eax,%edx
    53bb:	8b 45 08             	mov    0x8(%ebp),%eax
    53be:	89 10                	mov    %edx,(%eax)
    53c0:	83 ec 0c             	sub    $0xc,%esp
    53c3:	6a 08                	push   $0x8
    53c5:	e8 75 01 00 00       	call   553f <read_register>
    53ca:	83 c4 10             	add    $0x10,%esp
    53cd:	89 c2                	mov    %eax,%edx
    53cf:	8b 45 08             	mov    0x8(%ebp),%eax
    53d2:	89 50 04             	mov    %edx,0x4(%eax)
    53d5:	83 ec 0c             	sub    $0xc,%esp
    53d8:	6a 07                	push   $0x7
    53da:	e8 60 01 00 00       	call   553f <read_register>
    53df:	83 c4 10             	add    $0x10,%esp
    53e2:	89 c2                	mov    %eax,%edx
    53e4:	8b 45 08             	mov    0x8(%ebp),%eax
    53e7:	89 50 08             	mov    %edx,0x8(%eax)
    53ea:	83 ec 0c             	sub    $0xc,%esp
    53ed:	6a 04                	push   $0x4
    53ef:	e8 4b 01 00 00       	call   553f <read_register>
    53f4:	83 c4 10             	add    $0x10,%esp
    53f7:	89 c2                	mov    %eax,%edx
    53f9:	8b 45 08             	mov    0x8(%ebp),%eax
    53fc:	89 50 0c             	mov    %edx,0xc(%eax)
    53ff:	83 ec 0c             	sub    $0xc,%esp
    5402:	6a 02                	push   $0x2
    5404:	e8 36 01 00 00       	call   553f <read_register>
    5409:	83 c4 10             	add    $0x10,%esp
    540c:	89 c2                	mov    %eax,%edx
    540e:	8b 45 08             	mov    0x8(%ebp),%eax
    5411:	89 50 10             	mov    %edx,0x10(%eax)
    5414:	83 ec 0c             	sub    $0xc,%esp
    5417:	6a 00                	push   $0x0
    5419:	e8 21 01 00 00       	call   553f <read_register>
    541e:	83 c4 10             	add    $0x10,%esp
    5421:	89 c2                	mov    %eax,%edx
    5423:	8b 45 08             	mov    0x8(%ebp),%eax
    5426:	89 50 14             	mov    %edx,0x14(%eax)
    5429:	83 ec 0c             	sub    $0xc,%esp
    542c:	6a 0b                	push   $0xb
    542e:	e8 0c 01 00 00       	call   553f <read_register>
    5433:	83 c4 10             	add    $0x10,%esp
    5436:	83 e0 04             	and    $0x4,%eax
    5439:	85 c0                	test   %eax,%eax
    543b:	0f 85 e7 00 00 00    	jne    5528 <get_rtc_time+0x182>
    5441:	8b 45 08             	mov    0x8(%ebp),%eax
    5444:	8b 00                	mov    (%eax),%eax
    5446:	c1 e8 04             	shr    $0x4,%eax
    5449:	89 c2                	mov    %eax,%edx
    544b:	89 d0                	mov    %edx,%eax
    544d:	c1 e0 02             	shl    $0x2,%eax
    5450:	01 d0                	add    %edx,%eax
    5452:	01 c0                	add    %eax,%eax
    5454:	89 c2                	mov    %eax,%edx
    5456:	8b 45 08             	mov    0x8(%ebp),%eax
    5459:	8b 00                	mov    (%eax),%eax
    545b:	83 e0 0f             	and    $0xf,%eax
    545e:	01 c2                	add    %eax,%edx
    5460:	8b 45 08             	mov    0x8(%ebp),%eax
    5463:	89 10                	mov    %edx,(%eax)
    5465:	8b 45 08             	mov    0x8(%ebp),%eax
    5468:	8b 40 04             	mov    0x4(%eax),%eax
    546b:	c1 e8 04             	shr    $0x4,%eax
    546e:	89 c2                	mov    %eax,%edx
    5470:	89 d0                	mov    %edx,%eax
    5472:	c1 e0 02             	shl    $0x2,%eax
    5475:	01 d0                	add    %edx,%eax
    5477:	01 c0                	add    %eax,%eax
    5479:	89 c2                	mov    %eax,%edx
    547b:	8b 45 08             	mov    0x8(%ebp),%eax
    547e:	8b 40 04             	mov    0x4(%eax),%eax
    5481:	83 e0 0f             	and    $0xf,%eax
    5484:	01 c2                	add    %eax,%edx
    5486:	8b 45 08             	mov    0x8(%ebp),%eax
    5489:	89 50 04             	mov    %edx,0x4(%eax)
    548c:	8b 45 08             	mov    0x8(%ebp),%eax
    548f:	8b 40 08             	mov    0x8(%eax),%eax
    5492:	c1 e8 04             	shr    $0x4,%eax
    5495:	89 c2                	mov    %eax,%edx
    5497:	89 d0                	mov    %edx,%eax
    5499:	c1 e0 02             	shl    $0x2,%eax
    549c:	01 d0                	add    %edx,%eax
    549e:	01 c0                	add    %eax,%eax
    54a0:	89 c2                	mov    %eax,%edx
    54a2:	8b 45 08             	mov    0x8(%ebp),%eax
    54a5:	8b 40 08             	mov    0x8(%eax),%eax
    54a8:	83 e0 0f             	and    $0xf,%eax
    54ab:	01 c2                	add    %eax,%edx
    54ad:	8b 45 08             	mov    0x8(%ebp),%eax
    54b0:	89 50 08             	mov    %edx,0x8(%eax)
    54b3:	8b 45 08             	mov    0x8(%ebp),%eax
    54b6:	8b 40 0c             	mov    0xc(%eax),%eax
    54b9:	c1 e8 04             	shr    $0x4,%eax
    54bc:	89 c2                	mov    %eax,%edx
    54be:	89 d0                	mov    %edx,%eax
    54c0:	c1 e0 02             	shl    $0x2,%eax
    54c3:	01 d0                	add    %edx,%eax
    54c5:	01 c0                	add    %eax,%eax
    54c7:	89 c2                	mov    %eax,%edx
    54c9:	8b 45 08             	mov    0x8(%ebp),%eax
    54cc:	8b 40 0c             	mov    0xc(%eax),%eax
    54cf:	83 e0 0f             	and    $0xf,%eax
    54d2:	01 c2                	add    %eax,%edx
    54d4:	8b 45 08             	mov    0x8(%ebp),%eax
    54d7:	89 50 0c             	mov    %edx,0xc(%eax)
    54da:	8b 45 08             	mov    0x8(%ebp),%eax
    54dd:	8b 40 10             	mov    0x10(%eax),%eax
    54e0:	c1 e8 04             	shr    $0x4,%eax
    54e3:	89 c2                	mov    %eax,%edx
    54e5:	89 d0                	mov    %edx,%eax
    54e7:	c1 e0 02             	shl    $0x2,%eax
    54ea:	01 d0                	add    %edx,%eax
    54ec:	01 c0                	add    %eax,%eax
    54ee:	89 c2                	mov    %eax,%edx
    54f0:	8b 45 08             	mov    0x8(%ebp),%eax
    54f3:	8b 40 10             	mov    0x10(%eax),%eax
    54f6:	83 e0 0f             	and    $0xf,%eax
    54f9:	01 c2                	add    %eax,%edx
    54fb:	8b 45 08             	mov    0x8(%ebp),%eax
    54fe:	89 50 10             	mov    %edx,0x10(%eax)
    5501:	8b 45 08             	mov    0x8(%ebp),%eax
    5504:	8b 40 14             	mov    0x14(%eax),%eax
    5507:	c1 e8 04             	shr    $0x4,%eax
    550a:	89 c2                	mov    %eax,%edx
    550c:	89 d0                	mov    %edx,%eax
    550e:	c1 e0 02             	shl    $0x2,%eax
    5511:	01 d0                	add    %edx,%eax
    5513:	01 c0                	add    %eax,%eax
    5515:	89 c2                	mov    %eax,%edx
    5517:	8b 45 08             	mov    0x8(%ebp),%eax
    551a:	8b 40 14             	mov    0x14(%eax),%eax
    551d:	83 e0 0f             	and    $0xf,%eax
    5520:	01 c2                	add    %eax,%edx
    5522:	8b 45 08             	mov    0x8(%ebp),%eax
    5525:	89 50 14             	mov    %edx,0x14(%eax)
    5528:	8b 45 08             	mov    0x8(%ebp),%eax
    552b:	8b 00                	mov    (%eax),%eax
    552d:	8d 90 d0 07 00 00    	lea    0x7d0(%eax),%edx
    5533:	8b 45 08             	mov    0x8(%ebp),%eax
    5536:	89 10                	mov    %edx,(%eax)
    5538:	b8 00 00 00 00       	mov    $0x0,%eax
    553d:	c9                   	leave  
    553e:	c3                   	ret    

0000553f <read_register>:
    553f:	55                   	push   %ebp
    5540:	89 e5                	mov    %esp,%ebp
    5542:	83 ec 18             	sub    $0x18,%esp
    5545:	8b 45 08             	mov    0x8(%ebp),%eax
    5548:	88 45 f4             	mov    %al,-0xc(%ebp)
    554b:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
    554f:	0f b6 c0             	movzbl %al,%eax
    5552:	83 ec 08             	sub    $0x8,%esp
    5555:	50                   	push   %eax
    5556:	6a 70                	push   $0x70
    5558:	e8 b0 0e 00 00       	call   640d <out_byte>
    555d:	83 c4 10             	add    $0x10,%esp
    5560:	83 ec 0c             	sub    $0xc,%esp
    5563:	6a 71                	push   $0x71
    5565:	e8 af 0e 00 00       	call   6419 <in_byte>
    556a:	83 c4 10             	add    $0x10,%esp
    556d:	0f b6 c0             	movzbl %al,%eax
    5570:	c9                   	leave  
    5571:	c3                   	ret    

00005572 <task_hd>:
    5572:	55                   	push   %ebp
    5573:	89 e5                	mov    %esp,%ebp
    5575:	83 ec 48             	sub    $0x48,%esp
    5578:	e8 b1 00 00 00       	call   562e <init_hd>
    557d:	83 ec 04             	sub    $0x4,%esp
    5580:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5583:	50                   	push   %eax
    5584:	6a 2f                	push   $0x2f
    5586:	6a 02                	push   $0x2
    5588:	e8 3b 6d 00 00       	call   c2c8 <send_recv>
    558d:	83 c4 10             	add    $0x10,%esp
    5590:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    5593:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5596:	8b 45 c8             	mov    -0x38(%ebp),%eax
    5599:	2d e9 03 00 00       	sub    $0x3e9,%eax
    559e:	83 f8 04             	cmp    $0x4,%eax
    55a1:	77 4d                	ja     55f0 <task_hd+0x7e>
    55a3:	8b 04 85 88 d9 00 00 	mov    0xd988(,%eax,4),%eax
    55aa:	ff e0                	jmp    *%eax
    55ac:	8b 45 d8             	mov    -0x28(%ebp),%eax
    55af:	83 ec 0c             	sub    $0xc,%esp
    55b2:	50                   	push   %eax
    55b3:	e8 2d 01 00 00       	call   56e5 <hd_open>
    55b8:	83 c4 10             	add    $0x10,%esp
    55bb:	eb 58                	jmp    5615 <task_hd+0xa3>
    55bd:	8b 45 d8             	mov    -0x28(%ebp),%eax
    55c0:	83 ec 0c             	sub    $0xc,%esp
    55c3:	50                   	push   %eax
    55c4:	e8 e2 01 00 00       	call   57ab <hd_close>
    55c9:	83 c4 10             	add    $0x10,%esp
    55cc:	eb 47                	jmp    5615 <task_hd+0xa3>
    55ce:	83 ec 0c             	sub    $0xc,%esp
    55d1:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    55d4:	50                   	push   %eax
    55d5:	e8 52 02 00 00       	call   582c <hd_rdwt>
    55da:	83 c4 10             	add    $0x10,%esp
    55dd:	eb 36                	jmp    5615 <task_hd+0xa3>
    55df:	83 ec 0c             	sub    $0xc,%esp
    55e2:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    55e5:	50                   	push   %eax
    55e6:	e8 ec 04 00 00       	call   5ad7 <hd_ioctl>
    55eb:	83 c4 10             	add    $0x10,%esp
    55ee:	eb 25                	jmp    5615 <task_hd+0xa3>
    55f0:	83 ec 08             	sub    $0x8,%esp
    55f3:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    55f6:	50                   	push   %eax
    55f7:	68 4c d9 00 00       	push   $0xd94c
    55fc:	e8 a7 fb ff ff       	call   51a8 <dump_msg>
    5601:	83 c4 10             	add    $0x10,%esp
    5604:	83 ec 0c             	sub    $0xc,%esp
    5607:	68 64 d9 00 00       	push   $0xd964
    560c:	e8 b1 6e 00 00       	call   c4c2 <spin>
    5611:	83 c4 10             	add    $0x10,%esp
    5614:	90                   	nop
    5615:	83 ec 04             	sub    $0x4,%esp
    5618:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    561b:	50                   	push   %eax
    561c:	ff 75 f4             	pushl  -0xc(%ebp)
    561f:	6a 01                	push   $0x1
    5621:	e8 a2 6c 00 00       	call   c2c8 <send_recv>
    5626:	83 c4 10             	add    $0x10,%esp
    5629:	e9 4f ff ff ff       	jmp    557d <task_hd+0xb>

0000562e <init_hd>:
    562e:	55                   	push   %ebp
    562f:	89 e5                	mov    %esp,%ebp
    5631:	83 ec 18             	sub    $0x18,%esp
    5634:	c7 45 f0 75 04 00 00 	movl   $0x475,-0x10(%ebp)
    563b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    563e:	0f b6 00             	movzbl (%eax),%eax
    5641:	0f b6 c0             	movzbl %al,%eax
    5644:	83 ec 08             	sub    $0x8,%esp
    5647:	50                   	push   %eax
    5648:	68 9c d9 00 00       	push   $0xd99c
    564d:	e8 b3 68 00 00       	call   bf05 <printl>
    5652:	83 c4 10             	add    $0x10,%esp
    5655:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5658:	0f b6 00             	movzbl (%eax),%eax
    565b:	84 c0                	test   %al,%al
    565d:	75 19                	jne    5678 <init_hd+0x4a>
    565f:	6a 6b                	push   $0x6b
    5661:	68 af d9 00 00       	push   $0xd9af
    5666:	68 af d9 00 00       	push   $0xd9af
    566b:	68 bb d9 00 00       	push   $0xd9bb
    5670:	e8 68 6e 00 00       	call   c4dd <assertion_failure>
    5675:	83 c4 10             	add    $0x10,%esp
    5678:	83 ec 08             	sub    $0x8,%esp
    567b:	68 5a 63 00 00       	push   $0x635a
    5680:	6a 0e                	push   $0xe
    5682:	e8 d2 df ff ff       	call   3659 <put_irq_handler>
    5687:	83 c4 10             	add    $0x10,%esp
    568a:	83 ec 0c             	sub    $0xc,%esp
    568d:	6a 02                	push   $0x2
    568f:	e8 ea 0d 00 00       	call   647e <enable_irq>
    5694:	83 c4 10             	add    $0x10,%esp
    5697:	83 ec 0c             	sub    $0xc,%esp
    569a:	6a 0e                	push   $0xe
    569c:	e8 dd 0d 00 00       	call   647e <enable_irq>
    56a1:	83 c4 10             	add    $0x10,%esp
    56a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    56ab:	eb 25                	jmp    56d2 <init_hd+0xa4>
    56ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
    56b0:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    56b6:	05 a0 34 01 00       	add    $0x134a0,%eax
    56bb:	83 ec 04             	sub    $0x4,%esp
    56be:	68 2c 02 00 00       	push   $0x22c
    56c3:	6a 00                	push   $0x0
    56c5:	50                   	push   %eax
    56c6:	e8 ae 6b 00 00       	call   c279 <memset>
    56cb:	83 c4 10             	add    $0x10,%esp
    56ce:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    56d2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    56d6:	74 d5                	je     56ad <init_hd+0x7f>
    56d8:	c7 05 a0 34 01 00 00 	movl   $0x0,0x134a0
    56df:	00 00 00 
    56e2:	90                   	nop
    56e3:	c9                   	leave  
    56e4:	c3                   	ret    

000056e5 <hd_open>:
    56e5:	55                   	push   %ebp
    56e6:	89 e5                	mov    %esp,%ebp
    56e8:	83 ec 18             	sub    $0x18,%esp
    56eb:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    56ef:	7f 19                	jg     570a <hd_open+0x25>
    56f1:	8b 4d 08             	mov    0x8(%ebp),%ecx
    56f4:	ba 67 66 66 66       	mov    $0x66666667,%edx
    56f9:	89 c8                	mov    %ecx,%eax
    56fb:	f7 ea                	imul   %edx
    56fd:	d1 fa                	sar    %edx
    56ff:	89 c8                	mov    %ecx,%eax
    5701:	c1 f8 1f             	sar    $0x1f,%eax
    5704:	29 c2                	sub    %eax,%edx
    5706:	89 d0                	mov    %edx,%eax
    5708:	eb 11                	jmp    571b <hd_open+0x36>
    570a:	8b 45 08             	mov    0x8(%ebp),%eax
    570d:	83 e8 10             	sub    $0x10,%eax
    5710:	8d 50 3f             	lea    0x3f(%eax),%edx
    5713:	85 c0                	test   %eax,%eax
    5715:	0f 48 c2             	cmovs  %edx,%eax
    5718:	c1 f8 06             	sar    $0x6,%eax
    571b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    571e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5722:	74 1c                	je     5740 <hd_open+0x5b>
    5724:	68 83 00 00 00       	push   $0x83
    5729:	68 af d9 00 00       	push   $0xd9af
    572e:	68 af d9 00 00       	push   $0xd9af
    5733:	68 c6 d9 00 00       	push   $0xd9c6
    5738:	e8 a0 6d 00 00       	call   c4dd <assertion_failure>
    573d:	83 c4 10             	add    $0x10,%esp
    5740:	83 ec 0c             	sub    $0xc,%esp
    5743:	ff 75 f4             	pushl  -0xc(%ebp)
    5746:	e8 38 08 00 00       	call   5f83 <hd_identify>
    574b:	83 c4 10             	add    $0x10,%esp
    574e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5751:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5757:	05 a0 34 01 00       	add    $0x134a0,%eax
    575c:	8b 00                	mov    (%eax),%eax
    575e:	8d 50 01             	lea    0x1(%eax),%edx
    5761:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    5764:	69 c9 2c 02 00 00    	imul   $0x22c,%ecx,%ecx
    576a:	81 c1 a0 34 01 00    	add    $0x134a0,%ecx
    5770:	89 11                	mov    %edx,(%ecx)
    5772:	85 c0                	test   %eax,%eax
    5774:	75 32                	jne    57a8 <hd_open+0xc3>
    5776:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5779:	89 d0                	mov    %edx,%eax
    577b:	c1 e0 02             	shl    $0x2,%eax
    577e:	01 d0                	add    %edx,%eax
    5780:	83 ec 08             	sub    $0x8,%esp
    5783:	6a 00                	push   $0x0
    5785:	50                   	push   %eax
    5786:	e8 df 04 00 00       	call   5c6a <partition>
    578b:	83 c4 10             	add    $0x10,%esp
    578e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5791:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5797:	05 a0 34 01 00       	add    $0x134a0,%eax
    579c:	83 ec 0c             	sub    $0xc,%esp
    579f:	50                   	push   %eax
    57a0:	e8 f7 06 00 00       	call   5e9c <print_hdinfo>
    57a5:	83 c4 10             	add    $0x10,%esp
    57a8:	90                   	nop
    57a9:	c9                   	leave  
    57aa:	c3                   	ret    

000057ab <hd_close>:
    57ab:	55                   	push   %ebp
    57ac:	89 e5                	mov    %esp,%ebp
    57ae:	83 ec 18             	sub    $0x18,%esp
    57b1:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    57b5:	7f 19                	jg     57d0 <hd_close+0x25>
    57b7:	8b 4d 08             	mov    0x8(%ebp),%ecx
    57ba:	ba 67 66 66 66       	mov    $0x66666667,%edx
    57bf:	89 c8                	mov    %ecx,%eax
    57c1:	f7 ea                	imul   %edx
    57c3:	d1 fa                	sar    %edx
    57c5:	89 c8                	mov    %ecx,%eax
    57c7:	c1 f8 1f             	sar    $0x1f,%eax
    57ca:	29 c2                	sub    %eax,%edx
    57cc:	89 d0                	mov    %edx,%eax
    57ce:	eb 11                	jmp    57e1 <hd_close+0x36>
    57d0:	8b 45 08             	mov    0x8(%ebp),%eax
    57d3:	83 e8 10             	sub    $0x10,%eax
    57d6:	8d 50 3f             	lea    0x3f(%eax),%edx
    57d9:	85 c0                	test   %eax,%eax
    57db:	0f 48 c2             	cmovs  %edx,%eax
    57de:	c1 f8 06             	sar    $0x6,%eax
    57e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    57e4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    57e8:	74 1c                	je     5806 <hd_close+0x5b>
    57ea:	68 98 00 00 00       	push   $0x98
    57ef:	68 af d9 00 00       	push   $0xd9af
    57f4:	68 af d9 00 00       	push   $0xd9af
    57f9:	68 c6 d9 00 00       	push   $0xd9c6
    57fe:	e8 da 6c 00 00       	call   c4dd <assertion_failure>
    5803:	83 c4 10             	add    $0x10,%esp
    5806:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5809:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    580f:	05 a0 34 01 00       	add    $0x134a0,%eax
    5814:	8b 00                	mov    (%eax),%eax
    5816:	8d 50 ff             	lea    -0x1(%eax),%edx
    5819:	8b 45 f4             	mov    -0xc(%ebp),%eax
    581c:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5822:	05 a0 34 01 00       	add    $0x134a0,%eax
    5827:	89 10                	mov    %edx,(%eax)
    5829:	90                   	nop
    582a:	c9                   	leave  
    582b:	c3                   	ret    

0000582c <hd_rdwt>:
    582c:	55                   	push   %ebp
    582d:	89 e5                	mov    %esp,%ebp
    582f:	57                   	push   %edi
    5830:	56                   	push   %esi
    5831:	53                   	push   %ebx
    5832:	83 ec 3c             	sub    $0x3c,%esp
    5835:	8b 45 08             	mov    0x8(%ebp),%eax
    5838:	8b 40 14             	mov    0x14(%eax),%eax
    583b:	83 f8 09             	cmp    $0x9,%eax
    583e:	7f 1c                	jg     585c <hd_rdwt+0x30>
    5840:	8b 45 08             	mov    0x8(%ebp),%eax
    5843:	8b 48 14             	mov    0x14(%eax),%ecx
    5846:	ba 67 66 66 66       	mov    $0x66666667,%edx
    584b:	89 c8                	mov    %ecx,%eax
    584d:	f7 ea                	imul   %edx
    584f:	d1 fa                	sar    %edx
    5851:	89 c8                	mov    %ecx,%eax
    5853:	c1 f8 1f             	sar    $0x1f,%eax
    5856:	29 c2                	sub    %eax,%edx
    5858:	89 d0                	mov    %edx,%eax
    585a:	eb 14                	jmp    5870 <hd_rdwt+0x44>
    585c:	8b 45 08             	mov    0x8(%ebp),%eax
    585f:	8b 40 14             	mov    0x14(%eax),%eax
    5862:	83 e8 10             	sub    $0x10,%eax
    5865:	8d 50 3f             	lea    0x3f(%eax),%edx
    5868:	85 c0                	test   %eax,%eax
    586a:	0f 48 c2             	cmovs  %edx,%eax
    586d:	c1 f8 06             	sar    $0x6,%eax
    5870:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5873:	8b 45 08             	mov    0x8(%ebp),%eax
    5876:	8b 50 1c             	mov    0x1c(%eax),%edx
    5879:	8b 40 18             	mov    0x18(%eax),%eax
    587c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    587f:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    5882:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5885:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5888:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    588c:	c1 ea 09             	shr    $0x9,%edx
    588f:	89 c6                	mov    %eax,%esi
    5891:	89 d7                	mov    %edx,%edi
    5893:	bb ff ff ff 7f       	mov    $0x7fffffff,%ebx
    5898:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    589d:	39 f3                	cmp    %esi,%ebx
    589f:	19 f9                	sbb    %edi,%ecx
    58a1:	73 1c                	jae    58bf <hd_rdwt+0x93>
    58a3:	68 ab 00 00 00       	push   $0xab
    58a8:	68 af d9 00 00       	push   $0xd9af
    58ad:	68 af d9 00 00       	push   $0xd9af
    58b2:	68 d4 d9 00 00       	push   $0xd9d4
    58b7:	e8 21 6c 00 00       	call   c4dd <assertion_failure>
    58bc:	83 c4 10             	add    $0x10,%esp
    58bf:	8b 45 d0             	mov    -0x30(%ebp),%eax
    58c2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    58c5:	25 ff 01 00 00       	and    $0x1ff,%eax
    58ca:	ba 00 00 00 00       	mov    $0x0,%edx
    58cf:	09 d0                	or     %edx,%eax
    58d1:	85 c0                	test   %eax,%eax
    58d3:	74 1c                	je     58f1 <hd_rdwt+0xc5>
    58d5:	68 b0 00 00 00       	push   $0xb0
    58da:	68 af d9 00 00       	push   $0xd9af
    58df:	68 af d9 00 00       	push   $0xd9af
    58e4:	68 fb d9 00 00       	push   $0xd9fb
    58e9:	e8 ef 6b 00 00       	call   c4dd <assertion_failure>
    58ee:	83 c4 10             	add    $0x10,%esp
    58f1:	8b 45 d0             	mov    -0x30(%ebp),%eax
    58f4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    58f7:	0f ac d0 09          	shrd   $0x9,%edx,%eax
    58fb:	c1 ea 09             	shr    $0x9,%edx
    58fe:	89 c3                	mov    %eax,%ebx
    5900:	89 d6                	mov    %edx,%esi
    5902:	89 5d cc             	mov    %ebx,-0x34(%ebp)
    5905:	8b 45 08             	mov    0x8(%ebp),%eax
    5908:	8b 40 14             	mov    0x14(%eax),%eax
    590b:	8d 50 f0             	lea    -0x10(%eax),%edx
    590e:	89 d0                	mov    %edx,%eax
    5910:	c1 f8 1f             	sar    $0x1f,%eax
    5913:	c1 e8 1a             	shr    $0x1a,%eax
    5916:	01 c2                	add    %eax,%edx
    5918:	83 e2 3f             	and    $0x3f,%edx
    591b:	29 c2                	sub    %eax,%edx
    591d:	89 d0                	mov    %edx,%eax
    591f:	89 45 c8             	mov    %eax,-0x38(%ebp)
    5922:	8b 45 08             	mov    0x8(%ebp),%eax
    5925:	8b 40 14             	mov    0x14(%eax),%eax
    5928:	83 f8 08             	cmp    $0x8,%eax
    592b:	7f 1d                	jg     594a <hd_rdwt+0x11e>
    592d:	8b 45 08             	mov    0x8(%ebp),%eax
    5930:	8b 50 14             	mov    0x14(%eax),%edx
    5933:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5936:	c1 e2 03             	shl    $0x3,%edx
    5939:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    593f:	01 d0                	add    %edx,%eax
    5941:	05 a4 34 01 00       	add    $0x134a4,%eax
    5946:	8b 00                	mov    (%eax),%eax
    5948:	eb 1b                	jmp    5965 <hd_rdwt+0x139>
    594a:	8b 45 c8             	mov    -0x38(%ebp),%eax
    594d:	8d 50 04             	lea    0x4(%eax),%edx
    5950:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5953:	c1 e2 03             	shl    $0x3,%edx
    5956:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    595c:	01 d0                	add    %edx,%eax
    595e:	05 ac 34 01 00       	add    $0x134ac,%eax
    5963:	8b 00                	mov    (%eax),%eax
    5965:	01 45 cc             	add    %eax,-0x34(%ebp)
    5968:	c6 45 bd 00          	movb   $0x0,-0x43(%ebp)
    596c:	8b 45 08             	mov    0x8(%ebp),%eax
    596f:	8b 40 0c             	mov    0xc(%eax),%eax
    5972:	05 ff 01 00 00       	add    $0x1ff,%eax
    5977:	8d 90 ff 01 00 00    	lea    0x1ff(%eax),%edx
    597d:	85 c0                	test   %eax,%eax
    597f:	0f 48 c2             	cmovs  %edx,%eax
    5982:	c1 f8 09             	sar    $0x9,%eax
    5985:	88 45 be             	mov    %al,-0x42(%ebp)
    5988:	8b 45 cc             	mov    -0x34(%ebp),%eax
    598b:	88 45 bf             	mov    %al,-0x41(%ebp)
    598e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    5991:	c1 e8 08             	shr    $0x8,%eax
    5994:	88 45 c0             	mov    %al,-0x40(%ebp)
    5997:	8b 45 cc             	mov    -0x34(%ebp),%eax
    599a:	c1 e8 10             	shr    $0x10,%eax
    599d:	88 45 c1             	mov    %al,-0x3f(%ebp)
    59a0:	8b 45 dc             	mov    -0x24(%ebp),%eax
    59a3:	c1 e0 04             	shl    $0x4,%eax
    59a6:	89 c2                	mov    %eax,%edx
    59a8:	8b 45 cc             	mov    -0x34(%ebp),%eax
    59ab:	c1 e8 18             	shr    $0x18,%eax
    59ae:	83 e0 0f             	and    $0xf,%eax
    59b1:	09 d0                	or     %edx,%eax
    59b3:	83 c8 e0             	or     $0xffffffe0,%eax
    59b6:	88 45 c2             	mov    %al,-0x3e(%ebp)
    59b9:	8b 45 08             	mov    0x8(%ebp),%eax
    59bc:	8b 40 04             	mov    0x4(%eax),%eax
    59bf:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    59c4:	75 07                	jne    59cd <hd_rdwt+0x1a1>
    59c6:	b8 20 00 00 00       	mov    $0x20,%eax
    59cb:	eb 05                	jmp    59d2 <hd_rdwt+0x1a6>
    59cd:	b8 30 00 00 00       	mov    $0x30,%eax
    59d2:	88 45 c3             	mov    %al,-0x3d(%ebp)
    59d5:	83 ec 0c             	sub    $0xc,%esp
    59d8:	8d 45 bd             	lea    -0x43(%ebp),%eax
    59db:	50                   	push   %eax
    59dc:	e8 0a 08 00 00       	call   61eb <hd_cmd_out>
    59e1:	83 c4 10             	add    $0x10,%esp
    59e4:	8b 45 08             	mov    0x8(%ebp),%eax
    59e7:	8b 40 0c             	mov    0xc(%eax),%eax
    59ea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    59ed:	8b 45 08             	mov    0x8(%ebp),%eax
    59f0:	8b 50 2c             	mov    0x2c(%eax),%edx
    59f3:	8b 45 08             	mov    0x8(%ebp),%eax
    59f6:	8b 40 10             	mov    0x10(%eax),%eax
    59f9:	83 ec 08             	sub    $0x8,%esp
    59fc:	52                   	push   %edx
    59fd:	50                   	push   %eax
    59fe:	e8 c8 e4 ff ff       	call   3ecb <va2la>
    5a03:	83 c4 10             	add    $0x10,%esp
    5a06:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5a09:	e9 b6 00 00 00       	jmp    5ac4 <hd_rdwt+0x298>
    5a0e:	b8 00 02 00 00       	mov    $0x200,%eax
    5a13:	81 7d e4 00 02 00 00 	cmpl   $0x200,-0x1c(%ebp)
    5a1a:	0f 4e 45 e4          	cmovle -0x1c(%ebp),%eax
    5a1e:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    5a21:	8b 45 08             	mov    0x8(%ebp),%eax
    5a24:	8b 40 04             	mov    0x4(%eax),%eax
    5a27:	3d eb 03 00 00       	cmp    $0x3eb,%eax
    5a2c:	75 45                	jne    5a73 <hd_rdwt+0x247>
    5a2e:	e8 ba 08 00 00       	call   62ed <interrupt_wait>
    5a33:	83 ec 04             	sub    $0x4,%esp
    5a36:	68 00 02 00 00       	push   $0x200
    5a3b:	68 a0 30 01 00       	push   $0x130a0
    5a40:	68 f0 01 00 00       	push   $0x1f0
    5a45:	e8 d9 09 00 00       	call   6423 <port_read>
    5a4a:	83 c4 10             	add    $0x10,%esp
    5a4d:	83 ec 08             	sub    $0x8,%esp
    5a50:	68 a0 30 01 00       	push   $0x130a0
    5a55:	6a 02                	push   $0x2
    5a57:	e8 6f e4 ff ff       	call   3ecb <va2la>
    5a5c:	83 c4 10             	add    $0x10,%esp
    5a5f:	83 ec 04             	sub    $0x4,%esp
    5a62:	ff 75 c4             	pushl  -0x3c(%ebp)
    5a65:	50                   	push   %eax
    5a66:	ff 75 e0             	pushl  -0x20(%ebp)
    5a69:	e8 e2 67 00 00       	call   c250 <memcpy>
    5a6e:	83 c4 10             	add    $0x10,%esp
    5a71:	eb 43                	jmp    5ab6 <hd_rdwt+0x28a>
    5a73:	83 ec 04             	sub    $0x4,%esp
    5a76:	68 10 27 00 00       	push   $0x2710
    5a7b:	6a 08                	push   $0x8
    5a7d:	6a 08                	push   $0x8
    5a7f:	e8 85 08 00 00       	call   6309 <waitfor>
    5a84:	83 c4 10             	add    $0x10,%esp
    5a87:	85 c0                	test   %eax,%eax
    5a89:	75 10                	jne    5a9b <hd_rdwt+0x26f>
    5a8b:	83 ec 0c             	sub    $0xc,%esp
    5a8e:	68 0e da 00 00       	push   $0xda0e
    5a93:	e8 72 c0 ff ff       	call   1b0a <panic>
    5a98:	83 c4 10             	add    $0x10,%esp
    5a9b:	83 ec 04             	sub    $0x4,%esp
    5a9e:	ff 75 c4             	pushl  -0x3c(%ebp)
    5aa1:	ff 75 e0             	pushl  -0x20(%ebp)
    5aa4:	68 f0 01 00 00       	push   $0x1f0
    5aa9:	e8 88 09 00 00       	call   6436 <port_write>
    5aae:	83 c4 10             	add    $0x10,%esp
    5ab1:	e8 37 08 00 00       	call   62ed <interrupt_wait>
    5ab6:	81 6d e4 00 02 00 00 	subl   $0x200,-0x1c(%ebp)
    5abd:	81 45 e0 00 02 00 00 	addl   $0x200,-0x20(%ebp)
    5ac4:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5ac8:	0f 85 40 ff ff ff    	jne    5a0e <hd_rdwt+0x1e2>
    5ace:	90                   	nop
    5acf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    5ad2:	5b                   	pop    %ebx
    5ad3:	5e                   	pop    %esi
    5ad4:	5f                   	pop    %edi
    5ad5:	5d                   	pop    %ebp
    5ad6:	c3                   	ret    

00005ad7 <hd_ioctl>:
    5ad7:	55                   	push   %ebp
    5ad8:	89 e5                	mov    %esp,%ebp
    5ada:	83 ec 28             	sub    $0x28,%esp
    5add:	8b 45 08             	mov    0x8(%ebp),%eax
    5ae0:	8b 40 14             	mov    0x14(%eax),%eax
    5ae3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    5ae6:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    5aea:	7f 19                	jg     5b05 <hd_ioctl+0x2e>
    5aec:	8b 4d f4             	mov    -0xc(%ebp),%ecx
    5aef:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5af4:	89 c8                	mov    %ecx,%eax
    5af6:	f7 ea                	imul   %edx
    5af8:	d1 fa                	sar    %edx
    5afa:	89 c8                	mov    %ecx,%eax
    5afc:	c1 f8 1f             	sar    $0x1f,%eax
    5aff:	29 c2                	sub    %eax,%edx
    5b01:	89 d0                	mov    %edx,%eax
    5b03:	eb 11                	jmp    5b16 <hd_ioctl+0x3f>
    5b05:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5b08:	83 e8 10             	sub    $0x10,%eax
    5b0b:	8d 50 3f             	lea    0x3f(%eax),%edx
    5b0e:	85 c0                	test   %eax,%eax
    5b10:	0f 48 c2             	cmovs  %edx,%eax
    5b13:	c1 f8 06             	sar    $0x6,%eax
    5b16:	89 45 f0             	mov    %eax,-0x10(%ebp)
    5b19:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5b1c:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5b22:	05 a0 34 01 00       	add    $0x134a0,%eax
    5b27:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5b2a:	8b 45 08             	mov    0x8(%ebp),%eax
    5b2d:	8b 40 0c             	mov    0xc(%eax),%eax
    5b30:	83 f8 01             	cmp    $0x1,%eax
    5b33:	0f 85 85 00 00 00    	jne    5bbe <hd_ioctl+0xe7>
    5b39:	8b 45 08             	mov    0x8(%ebp),%eax
    5b3c:	8b 50 2c             	mov    0x2c(%eax),%edx
    5b3f:	8b 45 08             	mov    0x8(%ebp),%eax
    5b42:	8b 40 10             	mov    0x10(%eax),%eax
    5b45:	83 ec 08             	sub    $0x8,%esp
    5b48:	52                   	push   %edx
    5b49:	50                   	push   %eax
    5b4a:	e8 7c e3 ff ff       	call   3ecb <va2la>
    5b4f:	83 c4 10             	add    $0x10,%esp
    5b52:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5b55:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    5b59:	7f 14                	jg     5b6f <hd_ioctl+0x98>
    5b5b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5b5e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5b65:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5b68:	01 d0                	add    %edx,%eax
    5b6a:	83 c0 04             	add    $0x4,%eax
    5b6d:	eb 29                	jmp    5b98 <hd_ioctl+0xc1>
    5b6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5b72:	8d 50 f0             	lea    -0x10(%eax),%edx
    5b75:	89 d0                	mov    %edx,%eax
    5b77:	c1 f8 1f             	sar    $0x1f,%eax
    5b7a:	c1 e8 1a             	shr    $0x1a,%eax
    5b7d:	01 c2                	add    %eax,%edx
    5b7f:	83 e2 3f             	and    $0x3f,%edx
    5b82:	29 c2                	sub    %eax,%edx
    5b84:	89 d0                	mov    %edx,%eax
    5b86:	83 c0 04             	add    $0x4,%eax
    5b89:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    5b90:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5b93:	01 d0                	add    %edx,%eax
    5b95:	83 c0 0c             	add    $0xc,%eax
    5b98:	83 ec 08             	sub    $0x8,%esp
    5b9b:	50                   	push   %eax
    5b9c:	6a 02                	push   $0x2
    5b9e:	e8 28 e3 ff ff       	call   3ecb <va2la>
    5ba3:	83 c4 10             	add    $0x10,%esp
    5ba6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5ba9:	83 ec 04             	sub    $0x4,%esp
    5bac:	6a 08                	push   $0x8
    5bae:	ff 75 e4             	pushl  -0x1c(%ebp)
    5bb1:	ff 75 e8             	pushl  -0x18(%ebp)
    5bb4:	e8 97 66 00 00       	call   c250 <memcpy>
    5bb9:	83 c4 10             	add    $0x10,%esp
    5bbc:	eb 1c                	jmp    5bda <hd_ioctl+0x103>
    5bbe:	68 f3 00 00 00       	push   $0xf3
    5bc3:	68 af d9 00 00       	push   $0xd9af
    5bc8:	68 af d9 00 00       	push   $0xd9af
    5bcd:	68 20 da 00 00       	push   $0xda20
    5bd2:	e8 06 69 00 00       	call   c4dd <assertion_failure>
    5bd7:	83 c4 10             	add    $0x10,%esp
    5bda:	90                   	nop
    5bdb:	c9                   	leave  
    5bdc:	c3                   	ret    

00005bdd <get_part_table>:
    5bdd:	55                   	push   %ebp
    5bde:	89 e5                	mov    %esp,%ebp
    5be0:	83 ec 18             	sub    $0x18,%esp
    5be3:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    5be7:	c6 45 f2 01          	movb   $0x1,-0xe(%ebp)
    5beb:	8b 45 0c             	mov    0xc(%ebp),%eax
    5bee:	88 45 f3             	mov    %al,-0xd(%ebp)
    5bf1:	8b 45 0c             	mov    0xc(%ebp),%eax
    5bf4:	c1 f8 08             	sar    $0x8,%eax
    5bf7:	88 45 f4             	mov    %al,-0xc(%ebp)
    5bfa:	8b 45 0c             	mov    0xc(%ebp),%eax
    5bfd:	c1 f8 10             	sar    $0x10,%eax
    5c00:	88 45 f5             	mov    %al,-0xb(%ebp)
    5c03:	8b 45 08             	mov    0x8(%ebp),%eax
    5c06:	c1 e0 04             	shl    $0x4,%eax
    5c09:	83 c8 40             	or     $0x40,%eax
    5c0c:	89 c2                	mov    %eax,%edx
    5c0e:	8b 45 0c             	mov    0xc(%ebp),%eax
    5c11:	c1 f8 18             	sar    $0x18,%eax
    5c14:	83 e0 0f             	and    $0xf,%eax
    5c17:	09 d0                	or     %edx,%eax
    5c19:	83 c8 a0             	or     $0xffffffa0,%eax
    5c1c:	88 45 f6             	mov    %al,-0xa(%ebp)
    5c1f:	c6 45 f7 20          	movb   $0x20,-0x9(%ebp)
    5c23:	83 ec 0c             	sub    $0xc,%esp
    5c26:	8d 45 f1             	lea    -0xf(%ebp),%eax
    5c29:	50                   	push   %eax
    5c2a:	e8 bc 05 00 00       	call   61eb <hd_cmd_out>
    5c2f:	83 c4 10             	add    $0x10,%esp
    5c32:	e8 b6 06 00 00       	call   62ed <interrupt_wait>
    5c37:	83 ec 04             	sub    $0x4,%esp
    5c3a:	68 00 02 00 00       	push   $0x200
    5c3f:	68 a0 30 01 00       	push   $0x130a0
    5c44:	68 f0 01 00 00       	push   $0x1f0
    5c49:	e8 d5 07 00 00       	call   6423 <port_read>
    5c4e:	83 c4 10             	add    $0x10,%esp
    5c51:	b8 5e 32 01 00       	mov    $0x1325e,%eax
    5c56:	83 ec 04             	sub    $0x4,%esp
    5c59:	6a 40                	push   $0x40
    5c5b:	50                   	push   %eax
    5c5c:	ff 75 10             	pushl  0x10(%ebp)
    5c5f:	e8 ec 65 00 00       	call   c250 <memcpy>
    5c64:	83 c4 10             	add    $0x10,%esp
    5c67:	90                   	nop
    5c68:	c9                   	leave  
    5c69:	c3                   	ret    

00005c6a <partition>:
    5c6a:	55                   	push   %ebp
    5c6b:	89 e5                	mov    %esp,%ebp
    5c6d:	81 ec 38 04 00 00    	sub    $0x438,%esp
    5c73:	83 7d 08 09          	cmpl   $0x9,0x8(%ebp)
    5c77:	7f 19                	jg     5c92 <partition+0x28>
    5c79:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5c7c:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5c81:	89 c8                	mov    %ecx,%eax
    5c83:	f7 ea                	imul   %edx
    5c85:	d1 fa                	sar    %edx
    5c87:	89 c8                	mov    %ecx,%eax
    5c89:	c1 f8 1f             	sar    $0x1f,%eax
    5c8c:	29 c2                	sub    %eax,%edx
    5c8e:	89 d0                	mov    %edx,%eax
    5c90:	eb 11                	jmp    5ca3 <partition+0x39>
    5c92:	8b 45 08             	mov    0x8(%ebp),%eax
    5c95:	83 e8 10             	sub    $0x10,%eax
    5c98:	8d 50 3f             	lea    0x3f(%eax),%edx
    5c9b:	85 c0                	test   %eax,%eax
    5c9d:	0f 48 c2             	cmovs  %edx,%eax
    5ca0:	c1 f8 06             	sar    $0x6,%eax
    5ca3:	89 45 e8             	mov    %eax,-0x18(%ebp)
    5ca6:	8b 45 e8             	mov    -0x18(%ebp),%eax
    5ca9:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5caf:	05 a0 34 01 00       	add    $0x134a0,%eax
    5cb4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    5cb7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    5cbb:	0f 85 f0 00 00 00    	jne    5db1 <partition+0x147>
    5cc1:	83 ec 04             	sub    $0x4,%esp
    5cc4:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5cca:	50                   	push   %eax
    5ccb:	ff 75 e8             	pushl  -0x18(%ebp)
    5cce:	ff 75 e8             	pushl  -0x18(%ebp)
    5cd1:	e8 07 ff ff ff       	call   5bdd <get_part_table>
    5cd6:	83 c4 10             	add    $0x10,%esp
    5cd9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    5ce0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5ce7:	e9 90 00 00 00       	jmp    5d7c <partition+0x112>
    5cec:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5cef:	c1 e0 04             	shl    $0x4,%eax
    5cf2:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5cf5:	01 c8                	add    %ecx,%eax
    5cf7:	2d 24 04 00 00       	sub    $0x424,%eax
    5cfc:	0f b6 00             	movzbl (%eax),%eax
    5cff:	84 c0                	test   %al,%al
    5d01:	74 74                	je     5d77 <partition+0x10d>
    5d03:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    5d07:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d0a:	83 c0 01             	add    $0x1,%eax
    5d0d:	89 45 e0             	mov    %eax,-0x20(%ebp)
    5d10:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d13:	c1 e0 04             	shl    $0x4,%eax
    5d16:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5d19:	01 c8                	add    %ecx,%eax
    5d1b:	2d 20 04 00 00       	sub    $0x420,%eax
    5d20:	8b 08                	mov    (%eax),%ecx
    5d22:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d25:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5d28:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
    5d2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d2f:	c1 e0 04             	shl    $0x4,%eax
    5d32:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5d35:	01 c8                	add    %ecx,%eax
    5d37:	2d 1c 04 00 00       	sub    $0x41c,%eax
    5d3c:	8b 08                	mov    (%eax),%ecx
    5d3e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5d41:	8b 55 e0             	mov    -0x20(%ebp),%edx
    5d44:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
    5d48:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5d4b:	c1 e0 04             	shl    $0x4,%eax
    5d4e:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    5d51:	01 c8                	add    %ecx,%eax
    5d53:	2d 24 04 00 00       	sub    $0x424,%eax
    5d58:	0f b6 00             	movzbl (%eax),%eax
    5d5b:	3c 05                	cmp    $0x5,%al
    5d5d:	75 19                	jne    5d78 <partition+0x10e>
    5d5f:	8b 55 08             	mov    0x8(%ebp),%edx
    5d62:	8b 45 e0             	mov    -0x20(%ebp),%eax
    5d65:	01 d0                	add    %edx,%eax
    5d67:	83 ec 08             	sub    $0x8,%esp
    5d6a:	6a 01                	push   $0x1
    5d6c:	50                   	push   %eax
    5d6d:	e8 f8 fe ff ff       	call   5c6a <partition>
    5d72:	83 c4 10             	add    $0x10,%esp
    5d75:	eb 01                	jmp    5d78 <partition+0x10e>
    5d77:	90                   	nop
    5d78:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5d7c:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    5d80:	0f 8e 66 ff ff ff    	jle    5cec <partition+0x82>
    5d86:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    5d8a:	0f 85 09 01 00 00    	jne    5e99 <partition+0x22f>
    5d90:	68 38 01 00 00       	push   $0x138
    5d95:	68 af d9 00 00       	push   $0xd9af
    5d9a:	68 af d9 00 00       	push   $0xd9af
    5d9f:	68 22 da 00 00       	push   $0xda22
    5da4:	e8 34 67 00 00       	call   c4dd <assertion_failure>
    5da9:	83 c4 10             	add    $0x10,%esp
    5dac:	e9 e8 00 00 00       	jmp    5e99 <partition+0x22f>
    5db1:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    5db5:	0f 85 bf 00 00 00    	jne    5e7a <partition+0x210>
    5dbb:	8b 4d 08             	mov    0x8(%ebp),%ecx
    5dbe:	ba 67 66 66 66       	mov    $0x66666667,%edx
    5dc3:	89 c8                	mov    %ecx,%eax
    5dc5:	f7 ea                	imul   %edx
    5dc7:	d1 fa                	sar    %edx
    5dc9:	89 c8                	mov    %ecx,%eax
    5dcb:	c1 f8 1f             	sar    $0x1f,%eax
    5dce:	29 c2                	sub    %eax,%edx
    5dd0:	89 d0                	mov    %edx,%eax
    5dd2:	c1 e0 02             	shl    $0x2,%eax
    5dd5:	01 d0                	add    %edx,%eax
    5dd7:	29 c1                	sub    %eax,%ecx
    5dd9:	89 c8                	mov    %ecx,%eax
    5ddb:	89 45 dc             	mov    %eax,-0x24(%ebp)
    5dde:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5de1:	8b 55 dc             	mov    -0x24(%ebp),%edx
    5de4:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
    5de8:	89 45 d8             	mov    %eax,-0x28(%ebp)
    5deb:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5dee:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5df1:	8b 45 dc             	mov    -0x24(%ebp),%eax
    5df4:	83 e8 01             	sub    $0x1,%eax
    5df7:	c1 e0 04             	shl    $0x4,%eax
    5dfa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    5dfd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5e04:	eb 6c                	jmp    5e72 <partition+0x208>
    5e06:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5e09:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5e0c:	01 d0                	add    %edx,%eax
    5e0e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    5e11:	83 ec 04             	sub    $0x4,%esp
    5e14:	8d 85 d0 fb ff ff    	lea    -0x430(%ebp),%eax
    5e1a:	50                   	push   %eax
    5e1b:	ff 75 ec             	pushl  -0x14(%ebp)
    5e1e:	ff 75 e8             	pushl  -0x18(%ebp)
    5e21:	e8 b7 fd ff ff       	call   5bdd <get_part_table>
    5e26:	83 c4 10             	add    $0x10,%esp
    5e29:	8b 95 d8 fb ff ff    	mov    -0x428(%ebp),%edx
    5e2f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    5e32:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    5e35:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5e38:	8b 55 d0             	mov    -0x30(%ebp),%edx
    5e3b:	83 c2 04             	add    $0x4,%edx
    5e3e:	89 4c d0 0c          	mov    %ecx,0xc(%eax,%edx,8)
    5e42:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    5e48:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    5e4b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    5e4e:	83 c1 04             	add    $0x4,%ecx
    5e51:	89 54 c8 10          	mov    %edx,0x10(%eax,%ecx,8)
    5e55:	8b 95 e8 fb ff ff    	mov    -0x418(%ebp),%edx
    5e5b:	8b 45 d8             	mov    -0x28(%ebp),%eax
    5e5e:	01 d0                	add    %edx,%eax
    5e60:	89 45 ec             	mov    %eax,-0x14(%ebp)
    5e63:	0f b6 85 e4 fb ff ff 	movzbl -0x41c(%ebp),%eax
    5e6a:	84 c0                	test   %al,%al
    5e6c:	74 2a                	je     5e98 <partition+0x22e>
    5e6e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5e72:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
    5e76:	7e 8e                	jle    5e06 <partition+0x19c>
    5e78:	eb 1f                	jmp    5e99 <partition+0x22f>
    5e7a:	68 51 01 00 00       	push   $0x151
    5e7f:	68 af d9 00 00       	push   $0xd9af
    5e84:	68 af d9 00 00       	push   $0xd9af
    5e89:	68 20 da 00 00       	push   $0xda20
    5e8e:	e8 4a 66 00 00       	call   c4dd <assertion_failure>
    5e93:	83 c4 10             	add    $0x10,%esp
    5e96:	eb 01                	jmp    5e99 <partition+0x22f>
    5e98:	90                   	nop
    5e99:	90                   	nop
    5e9a:	c9                   	leave  
    5e9b:	c3                   	ret    

00005e9c <print_hdinfo>:
    5e9c:	55                   	push   %ebp
    5e9d:	89 e5                	mov    %esp,%ebp
    5e9f:	56                   	push   %esi
    5ea0:	53                   	push   %ebx
    5ea1:	83 ec 10             	sub    $0x10,%esp
    5ea4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5eab:	eb 56                	jmp    5f03 <print_hdinfo+0x67>
    5ead:	8b 45 08             	mov    0x8(%ebp),%eax
    5eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5eb3:	8b 5c d0 08          	mov    0x8(%eax,%edx,8),%ebx
    5eb7:	8b 45 08             	mov    0x8(%ebp),%eax
    5eba:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5ebd:	8b 4c d0 08          	mov    0x8(%eax,%edx,8),%ecx
    5ec1:	8b 45 08             	mov    0x8(%ebp),%eax
    5ec4:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5ec7:	8b 54 d0 04          	mov    0x4(%eax,%edx,8),%edx
    5ecb:	8b 45 08             	mov    0x8(%ebp),%eax
    5ece:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5ed1:	8b 44 f0 04          	mov    0x4(%eax,%esi,8),%eax
    5ed5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    5ed9:	75 07                	jne    5ee2 <print_hdinfo+0x46>
    5edb:	be 35 da 00 00       	mov    $0xda35,%esi
    5ee0:	eb 05                	jmp    5ee7 <print_hdinfo+0x4b>
    5ee2:	be 37 da 00 00       	mov    $0xda37,%esi
    5ee7:	83 ec 04             	sub    $0x4,%esp
    5eea:	53                   	push   %ebx
    5eeb:	51                   	push   %ecx
    5eec:	52                   	push   %edx
    5eed:	50                   	push   %eax
    5eee:	ff 75 f4             	pushl  -0xc(%ebp)
    5ef1:	56                   	push   %esi
    5ef2:	68 40 da 00 00       	push   $0xda40
    5ef7:	e8 09 60 00 00       	call   bf05 <printl>
    5efc:	83 c4 20             	add    $0x20,%esp
    5eff:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5f03:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    5f07:	7e a4                	jle    5ead <print_hdinfo+0x11>
    5f09:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    5f10:	eb 63                	jmp    5f75 <print_hdinfo+0xd9>
    5f12:	8b 45 08             	mov    0x8(%ebp),%eax
    5f15:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f18:	83 c2 04             	add    $0x4,%edx
    5f1b:	8b 44 d0 10          	mov    0x10(%eax,%edx,8),%eax
    5f1f:	85 c0                	test   %eax,%eax
    5f21:	74 4d                	je     5f70 <print_hdinfo+0xd4>
    5f23:	8b 45 08             	mov    0x8(%ebp),%eax
    5f26:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f29:	83 c2 04             	add    $0x4,%edx
    5f2c:	8b 5c d0 10          	mov    0x10(%eax,%edx,8),%ebx
    5f30:	8b 45 08             	mov    0x8(%ebp),%eax
    5f33:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f36:	83 c2 04             	add    $0x4,%edx
    5f39:	8b 4c d0 10          	mov    0x10(%eax,%edx,8),%ecx
    5f3d:	8b 45 08             	mov    0x8(%ebp),%eax
    5f40:	8b 55 f4             	mov    -0xc(%ebp),%edx
    5f43:	83 c2 04             	add    $0x4,%edx
    5f46:	8b 54 d0 0c          	mov    0xc(%eax,%edx,8),%edx
    5f4a:	8b 45 08             	mov    0x8(%ebp),%eax
    5f4d:	8b 75 f4             	mov    -0xc(%ebp),%esi
    5f50:	83 c6 04             	add    $0x4,%esi
    5f53:	8b 44 f0 0c          	mov    0xc(%eax,%esi,8),%eax
    5f57:	83 ec 08             	sub    $0x8,%esp
    5f5a:	53                   	push   %ebx
    5f5b:	51                   	push   %ecx
    5f5c:	52                   	push   %edx
    5f5d:	50                   	push   %eax
    5f5e:	ff 75 f4             	pushl  -0xc(%ebp)
    5f61:	68 7c da 00 00       	push   $0xda7c
    5f66:	e8 9a 5f 00 00       	call   bf05 <printl>
    5f6b:	83 c4 20             	add    $0x20,%esp
    5f6e:	eb 01                	jmp    5f71 <print_hdinfo+0xd5>
    5f70:	90                   	nop
    5f71:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    5f75:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    5f79:	7e 97                	jle    5f12 <print_hdinfo+0x76>
    5f7b:	90                   	nop
    5f7c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    5f7f:	5b                   	pop    %ebx
    5f80:	5e                   	pop    %esi
    5f81:	5d                   	pop    %ebp
    5f82:	c3                   	ret    

00005f83 <hd_identify>:
    5f83:	55                   	push   %ebp
    5f84:	89 e5                	mov    %esp,%ebp
    5f86:	83 ec 18             	sub    $0x18,%esp
    5f89:	8b 45 08             	mov    0x8(%ebp),%eax
    5f8c:	c1 e0 04             	shl    $0x4,%eax
    5f8f:	83 c8 a0             	or     $0xffffffa0,%eax
    5f92:	88 45 f2             	mov    %al,-0xe(%ebp)
    5f95:	c6 45 f3 ec          	movb   $0xec,-0xd(%ebp)
    5f99:	83 ec 0c             	sub    $0xc,%esp
    5f9c:	8d 45 ed             	lea    -0x13(%ebp),%eax
    5f9f:	50                   	push   %eax
    5fa0:	e8 46 02 00 00       	call   61eb <hd_cmd_out>
    5fa5:	83 c4 10             	add    $0x10,%esp
    5fa8:	e8 40 03 00 00       	call   62ed <interrupt_wait>
    5fad:	83 ec 04             	sub    $0x4,%esp
    5fb0:	68 00 02 00 00       	push   $0x200
    5fb5:	68 a0 30 01 00       	push   $0x130a0
    5fba:	68 f0 01 00 00       	push   $0x1f0
    5fbf:	e8 5f 04 00 00       	call   6423 <port_read>
    5fc4:	83 c4 10             	add    $0x10,%esp
    5fc7:	83 ec 0c             	sub    $0xc,%esp
    5fca:	68 a0 30 01 00       	push   $0x130a0
    5fcf:	e8 52 00 00 00       	call   6026 <print_identify_info>
    5fd4:	83 c4 10             	add    $0x10,%esp
    5fd7:	c7 45 f4 a0 30 01 00 	movl   $0x130a0,-0xc(%ebp)
    5fde:	8b 45 08             	mov    0x8(%ebp),%eax
    5fe1:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    5fe7:	05 a4 34 01 00       	add    $0x134a4,%eax
    5fec:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    5ff2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5ff5:	83 c0 7a             	add    $0x7a,%eax
    5ff8:	0f b7 00             	movzwl (%eax),%eax
    5ffb:	0f b7 c0             	movzwl %ax,%eax
    5ffe:	c1 e0 10             	shl    $0x10,%eax
    6001:	89 c2                	mov    %eax,%edx
    6003:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6006:	83 c0 78             	add    $0x78,%eax
    6009:	0f b7 00             	movzwl (%eax),%eax
    600c:	0f b7 c0             	movzwl %ax,%eax
    600f:	01 d0                	add    %edx,%eax
    6011:	89 c2                	mov    %eax,%edx
    6013:	8b 45 08             	mov    0x8(%ebp),%eax
    6016:	69 c0 2c 02 00 00    	imul   $0x22c,%eax,%eax
    601c:	05 a8 34 01 00       	add    $0x134a8,%eax
    6021:	89 10                	mov    %edx,(%eax)
    6023:	90                   	nop
    6024:	c9                   	leave  
    6025:	c3                   	ret    

00006026 <print_identify_info>:
    6026:	55                   	push   %ebp
    6027:	89 e5                	mov    %esp,%ebp
    6029:	83 ec 78             	sub    $0x78,%esp
    602c:	c7 45 88 0a 00 00 00 	movl   $0xa,-0x78(%ebp)
    6033:	c7 45 8c 14 00 00 00 	movl   $0x14,-0x74(%ebp)
    603a:	c7 45 90 b8 da 00 00 	movl   $0xdab8,-0x70(%ebp)
    6041:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
    6048:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
    604f:	c7 45 9c be da 00 00 	movl   $0xdabe,-0x64(%ebp)
    6056:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    605d:	e9 b8 00 00 00       	jmp    611a <print_identify_info+0xf4>
    6062:	8b 55 f0             	mov    -0x10(%ebp),%edx
    6065:	89 d0                	mov    %edx,%eax
    6067:	01 c0                	add    %eax,%eax
    6069:	01 d0                	add    %edx,%eax
    606b:	c1 e0 02             	shl    $0x2,%eax
    606e:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    6071:	01 c8                	add    %ecx,%eax
    6073:	83 e8 70             	sub    $0x70,%eax
    6076:	8b 00                	mov    (%eax),%eax
    6078:	8d 14 00             	lea    (%eax,%eax,1),%edx
    607b:	8b 45 08             	mov    0x8(%ebp),%eax
    607e:	01 d0                	add    %edx,%eax
    6080:	89 45 ec             	mov    %eax,-0x14(%ebp)
    6083:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    608a:	eb 31                	jmp    60bd <print_identify_info+0x97>
    608c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    608f:	8d 50 01             	lea    0x1(%eax),%edx
    6092:	89 55 ec             	mov    %edx,-0x14(%ebp)
    6095:	8b 55 f4             	mov    -0xc(%ebp),%edx
    6098:	01 d2                	add    %edx,%edx
    609a:	83 c2 01             	add    $0x1,%edx
    609d:	0f b6 00             	movzbl (%eax),%eax
    60a0:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    60a4:	8b 45 ec             	mov    -0x14(%ebp),%eax
    60a7:	8d 50 01             	lea    0x1(%eax),%edx
    60aa:	89 55 ec             	mov    %edx,-0x14(%ebp)
    60ad:	8b 55 f4             	mov    -0xc(%ebp),%edx
    60b0:	01 d2                	add    %edx,%edx
    60b2:	0f b6 00             	movzbl (%eax),%eax
    60b5:	88 44 15 a0          	mov    %al,-0x60(%ebp,%edx,1)
    60b9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    60bd:	8b 55 f0             	mov    -0x10(%ebp),%edx
    60c0:	89 d0                	mov    %edx,%eax
    60c2:	01 c0                	add    %eax,%eax
    60c4:	01 d0                	add    %edx,%eax
    60c6:	c1 e0 02             	shl    $0x2,%eax
    60c9:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    60cc:	01 c8                	add    %ecx,%eax
    60ce:	83 e8 6c             	sub    $0x6c,%eax
    60d1:	8b 00                	mov    (%eax),%eax
    60d3:	89 c2                	mov    %eax,%edx
    60d5:	c1 ea 1f             	shr    $0x1f,%edx
    60d8:	01 d0                	add    %edx,%eax
    60da:	d1 f8                	sar    %eax
    60dc:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    60df:	7c ab                	jl     608c <print_identify_info+0x66>
    60e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    60e4:	01 c0                	add    %eax,%eax
    60e6:	c6 44 05 a0 00       	movb   $0x0,-0x60(%ebp,%eax,1)
    60eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
    60ee:	89 d0                	mov    %edx,%eax
    60f0:	01 c0                	add    %eax,%eax
    60f2:	01 d0                	add    %edx,%eax
    60f4:	c1 e0 02             	shl    $0x2,%eax
    60f7:	8d 4d f8             	lea    -0x8(%ebp),%ecx
    60fa:	01 c8                	add    %ecx,%eax
    60fc:	83 e8 68             	sub    $0x68,%eax
    60ff:	8b 00                	mov    (%eax),%eax
    6101:	83 ec 04             	sub    $0x4,%esp
    6104:	8d 55 a0             	lea    -0x60(%ebp),%edx
    6107:	52                   	push   %edx
    6108:	50                   	push   %eax
    6109:	68 c7 da 00 00       	push   $0xdac7
    610e:	e8 f2 5d 00 00       	call   bf05 <printl>
    6113:	83 c4 10             	add    $0x10,%esp
    6116:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    611a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    611d:	83 f8 01             	cmp    $0x1,%eax
    6120:	0f 86 3c ff ff ff    	jbe    6062 <print_identify_info+0x3c>
    6126:	8b 45 08             	mov    0x8(%ebp),%eax
    6129:	83 c0 62             	add    $0x62,%eax
    612c:	0f b7 00             	movzwl (%eax),%eax
    612f:	0f b7 c0             	movzwl %ax,%eax
    6132:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6135:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6138:	25 00 02 00 00       	and    $0x200,%eax
    613d:	85 c0                	test   %eax,%eax
    613f:	74 07                	je     6148 <print_identify_info+0x122>
    6141:	b8 d4 da 00 00       	mov    $0xdad4,%eax
    6146:	eb 05                	jmp    614d <print_identify_info+0x127>
    6148:	b8 d8 da 00 00       	mov    $0xdad8,%eax
    614d:	83 ec 08             	sub    $0x8,%esp
    6150:	50                   	push   %eax
    6151:	68 db da 00 00       	push   $0xdadb
    6156:	e8 aa 5d 00 00       	call   bf05 <printl>
    615b:	83 c4 10             	add    $0x10,%esp
    615e:	8b 45 08             	mov    0x8(%ebp),%eax
    6161:	05 a6 00 00 00       	add    $0xa6,%eax
    6166:	0f b7 00             	movzwl (%eax),%eax
    6169:	0f b7 c0             	movzwl %ax,%eax
    616c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    616f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6172:	25 00 04 00 00       	and    $0x400,%eax
    6177:	85 c0                	test   %eax,%eax
    6179:	74 07                	je     6182 <print_identify_info+0x15c>
    617b:	b8 d4 da 00 00       	mov    $0xdad4,%eax
    6180:	eb 05                	jmp    6187 <print_identify_info+0x161>
    6182:	b8 d8 da 00 00       	mov    $0xdad8,%eax
    6187:	83 ec 08             	sub    $0x8,%esp
    618a:	50                   	push   %eax
    618b:	68 f3 da 00 00       	push   $0xdaf3
    6190:	e8 70 5d 00 00       	call   bf05 <printl>
    6195:	83 c4 10             	add    $0x10,%esp
    6198:	8b 45 08             	mov    0x8(%ebp),%eax
    619b:	83 c0 7a             	add    $0x7a,%eax
    619e:	0f b7 00             	movzwl (%eax),%eax
    61a1:	0f b7 c0             	movzwl %ax,%eax
    61a4:	c1 e0 10             	shl    $0x10,%eax
    61a7:	89 c2                	mov    %eax,%edx
    61a9:	8b 45 08             	mov    0x8(%ebp),%eax
    61ac:	83 c0 78             	add    $0x78,%eax
    61af:	0f b7 00             	movzwl (%eax),%eax
    61b2:	0f b7 c0             	movzwl %ax,%eax
    61b5:	01 d0                	add    %edx,%eax
    61b7:	89 45 e0             	mov    %eax,-0x20(%ebp)
    61ba:	8b 45 e0             	mov    -0x20(%ebp),%eax
    61bd:	c1 e0 09             	shl    $0x9,%eax
    61c0:	89 c1                	mov    %eax,%ecx
    61c2:	ba 83 de 1b 43       	mov    $0x431bde83,%edx
    61c7:	89 c8                	mov    %ecx,%eax
    61c9:	f7 ea                	imul   %edx
    61cb:	c1 fa 12             	sar    $0x12,%edx
    61ce:	89 c8                	mov    %ecx,%eax
    61d0:	c1 f8 1f             	sar    $0x1f,%eax
    61d3:	29 c2                	sub    %eax,%edx
    61d5:	89 d0                	mov    %edx,%eax
    61d7:	83 ec 08             	sub    $0x8,%esp
    61da:	50                   	push   %eax
    61db:	68 0d db 00 00       	push   $0xdb0d
    61e0:	e8 20 5d 00 00       	call   bf05 <printl>
    61e5:	83 c4 10             	add    $0x10,%esp
    61e8:	90                   	nop
    61e9:	c9                   	leave  
    61ea:	c3                   	ret    

000061eb <hd_cmd_out>:
    61eb:	55                   	push   %ebp
    61ec:	89 e5                	mov    %esp,%ebp
    61ee:	83 ec 08             	sub    $0x8,%esp
    61f1:	83 ec 04             	sub    $0x4,%esp
    61f4:	68 10 27 00 00       	push   $0x2710
    61f9:	6a 00                	push   $0x0
    61fb:	68 80 00 00 00       	push   $0x80
    6200:	e8 04 01 00 00       	call   6309 <waitfor>
    6205:	83 c4 10             	add    $0x10,%esp
    6208:	85 c0                	test   %eax,%eax
    620a:	75 10                	jne    621c <hd_cmd_out+0x31>
    620c:	83 ec 0c             	sub    $0xc,%esp
    620f:	68 21 db 00 00       	push   $0xdb21
    6214:	e8 f1 b8 ff ff       	call   1b0a <panic>
    6219:	83 c4 10             	add    $0x10,%esp
    621c:	83 ec 08             	sub    $0x8,%esp
    621f:	6a 00                	push   $0x0
    6221:	68 f6 03 00 00       	push   $0x3f6
    6226:	e8 e2 01 00 00       	call   640d <out_byte>
    622b:	83 c4 10             	add    $0x10,%esp
    622e:	8b 45 08             	mov    0x8(%ebp),%eax
    6231:	0f b6 00             	movzbl (%eax),%eax
    6234:	0f b6 c0             	movzbl %al,%eax
    6237:	83 ec 08             	sub    $0x8,%esp
    623a:	50                   	push   %eax
    623b:	68 f1 01 00 00       	push   $0x1f1
    6240:	e8 c8 01 00 00       	call   640d <out_byte>
    6245:	83 c4 10             	add    $0x10,%esp
    6248:	8b 45 08             	mov    0x8(%ebp),%eax
    624b:	0f b6 40 01          	movzbl 0x1(%eax),%eax
    624f:	0f b6 c0             	movzbl %al,%eax
    6252:	83 ec 08             	sub    $0x8,%esp
    6255:	50                   	push   %eax
    6256:	68 f2 01 00 00       	push   $0x1f2
    625b:	e8 ad 01 00 00       	call   640d <out_byte>
    6260:	83 c4 10             	add    $0x10,%esp
    6263:	8b 45 08             	mov    0x8(%ebp),%eax
    6266:	0f b6 40 02          	movzbl 0x2(%eax),%eax
    626a:	0f b6 c0             	movzbl %al,%eax
    626d:	83 ec 08             	sub    $0x8,%esp
    6270:	50                   	push   %eax
    6271:	68 f3 01 00 00       	push   $0x1f3
    6276:	e8 92 01 00 00       	call   640d <out_byte>
    627b:	83 c4 10             	add    $0x10,%esp
    627e:	8b 45 08             	mov    0x8(%ebp),%eax
    6281:	0f b6 40 03          	movzbl 0x3(%eax),%eax
    6285:	0f b6 c0             	movzbl %al,%eax
    6288:	83 ec 08             	sub    $0x8,%esp
    628b:	50                   	push   %eax
    628c:	68 f4 01 00 00       	push   $0x1f4
    6291:	e8 77 01 00 00       	call   640d <out_byte>
    6296:	83 c4 10             	add    $0x10,%esp
    6299:	8b 45 08             	mov    0x8(%ebp),%eax
    629c:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    62a0:	0f b6 c0             	movzbl %al,%eax
    62a3:	83 ec 08             	sub    $0x8,%esp
    62a6:	50                   	push   %eax
    62a7:	68 f5 01 00 00       	push   $0x1f5
    62ac:	e8 5c 01 00 00       	call   640d <out_byte>
    62b1:	83 c4 10             	add    $0x10,%esp
    62b4:	8b 45 08             	mov    0x8(%ebp),%eax
    62b7:	0f b6 40 05          	movzbl 0x5(%eax),%eax
    62bb:	0f b6 c0             	movzbl %al,%eax
    62be:	83 ec 08             	sub    $0x8,%esp
    62c1:	50                   	push   %eax
    62c2:	68 f6 01 00 00       	push   $0x1f6
    62c7:	e8 41 01 00 00       	call   640d <out_byte>
    62cc:	83 c4 10             	add    $0x10,%esp
    62cf:	8b 45 08             	mov    0x8(%ebp),%eax
    62d2:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    62d6:	0f b6 c0             	movzbl %al,%eax
    62d9:	83 ec 08             	sub    $0x8,%esp
    62dc:	50                   	push   %eax
    62dd:	68 f7 01 00 00       	push   $0x1f7
    62e2:	e8 26 01 00 00       	call   640d <out_byte>
    62e7:	83 c4 10             	add    $0x10,%esp
    62ea:	90                   	nop
    62eb:	c9                   	leave  
    62ec:	c3                   	ret    

000062ed <interrupt_wait>:
    62ed:	55                   	push   %ebp
    62ee:	89 e5                	mov    %esp,%ebp
    62f0:	83 ec 38             	sub    $0x38,%esp
    62f3:	83 ec 04             	sub    $0x4,%esp
    62f6:	8d 45 c8             	lea    -0x38(%ebp),%eax
    62f9:	50                   	push   %eax
    62fa:	6a f6                	push   $0xfffffff6
    62fc:	6a 02                	push   $0x2
    62fe:	e8 c5 5f 00 00       	call   c2c8 <send_recv>
    6303:	83 c4 10             	add    $0x10,%esp
    6306:	90                   	nop
    6307:	c9                   	leave  
    6308:	c3                   	ret    

00006309 <waitfor>:
    6309:	55                   	push   %ebp
    630a:	89 e5                	mov    %esp,%ebp
    630c:	83 ec 18             	sub    $0x18,%esp
    630f:	e8 bc b4 ff ff       	call   17d0 <get_ticks>
    6314:	89 45 f4             	mov    %eax,-0xc(%ebp)
    6317:	eb 22                	jmp    633b <waitfor+0x32>
    6319:	83 ec 0c             	sub    $0xc,%esp
    631c:	68 f7 01 00 00       	push   $0x1f7
    6321:	e8 f3 00 00 00       	call   6419 <in_byte>
    6326:	83 c4 10             	add    $0x10,%esp
    6329:	0f b6 c0             	movzbl %al,%eax
    632c:	23 45 08             	and    0x8(%ebp),%eax
    632f:	39 45 0c             	cmp    %eax,0xc(%ebp)
    6332:	75 07                	jne    633b <waitfor+0x32>
    6334:	b8 01 00 00 00       	mov    $0x1,%eax
    6339:	eb 1d                	jmp    6358 <waitfor+0x4f>
    633b:	e8 90 b4 ff ff       	call   17d0 <get_ticks>
    6340:	2b 45 f4             	sub    -0xc(%ebp),%eax
    6343:	89 c2                	mov    %eax,%edx
    6345:	89 d0                	mov    %edx,%eax
    6347:	c1 e0 02             	shl    $0x2,%eax
    634a:	01 d0                	add    %edx,%eax
    634c:	01 c0                	add    %eax,%eax
    634e:	39 45 10             	cmp    %eax,0x10(%ebp)
    6351:	7f c6                	jg     6319 <waitfor+0x10>
    6353:	b8 00 00 00 00       	mov    $0x0,%eax
    6358:	c9                   	leave  
    6359:	c3                   	ret    

0000635a <hd_handler>:
    635a:	55                   	push   %ebp
    635b:	89 e5                	mov    %esp,%ebp
    635d:	83 ec 08             	sub    $0x8,%esp
    6360:	83 ec 0c             	sub    $0xc,%esp
    6363:	68 f7 01 00 00       	push   $0x1f7
    6368:	e8 ac 00 00 00       	call   6419 <in_byte>
    636d:	83 c4 10             	add    $0x10,%esp
    6370:	a2 80 30 01 00       	mov    %al,0x13080
    6375:	83 ec 0c             	sub    $0xc,%esp
    6378:	6a 02                	push   $0x2
    637a:	e8 7f e9 ff ff       	call   4cfe <inform_int>
    637f:	83 c4 10             	add    $0x10,%esp
    6382:	90                   	nop
    6383:	c9                   	leave  
    6384:	c3                   	ret    
    6385:	66 90                	xchg   %ax,%ax
    6387:	66 90                	xchg   %ax,%ax
    6389:	66 90                	xchg   %ax,%ax
    638b:	66 90                	xchg   %ax,%ax
    638d:	66 90                	xchg   %ax,%ax
    638f:	90                   	nop

00006390 <disp_str>:
    6390:	55                   	push   %ebp
    6391:	89 e5                	mov    %esp,%ebp
    6393:	8b 75 08             	mov    0x8(%ebp),%esi
    6396:	8b 3d a4 99 03 00    	mov    0x399a4,%edi
    639c:	b4 0f                	mov    $0xf,%ah

0000639e <disp_str.1>:
    639e:	ac                   	lods   %ds:(%esi),%al
    639f:	84 c0                	test   %al,%al
    63a1:	74 23                	je     63c6 <disp_str.2>
    63a3:	3c 0a                	cmp    $0xa,%al
    63a5:	75 16                	jne    63bd <disp_str.3>
    63a7:	50                   	push   %eax
    63a8:	89 f8                	mov    %edi,%eax
    63aa:	b3 a0                	mov    $0xa0,%bl
    63ac:	f6 f3                	div    %bl
    63ae:	25 ff 00 00 00       	and    $0xff,%eax
    63b3:	40                   	inc    %eax
    63b4:	b3 a0                	mov    $0xa0,%bl
    63b6:	f6 e3                	mul    %bl
    63b8:	89 c7                	mov    %eax,%edi
    63ba:	58                   	pop    %eax
    63bb:	eb e1                	jmp    639e <disp_str.1>

000063bd <disp_str.3>:
    63bd:	65 66 89 07          	mov    %ax,%gs:(%edi)
    63c1:	83 c7 02             	add    $0x2,%edi
    63c4:	eb d8                	jmp    639e <disp_str.1>

000063c6 <disp_str.2>:
    63c6:	89 3d a4 99 03 00    	mov    %edi,0x399a4
    63cc:	5d                   	pop    %ebp
    63cd:	c3                   	ret    

000063ce <disp_color_str>:
    63ce:	55                   	push   %ebp
    63cf:	89 e5                	mov    %esp,%ebp
    63d1:	8b 75 08             	mov    0x8(%ebp),%esi
    63d4:	8b 3d a4 99 03 00    	mov    0x399a4,%edi
    63da:	8a 65 0c             	mov    0xc(%ebp),%ah

000063dd <disp_color_str.1>:
    63dd:	ac                   	lods   %ds:(%esi),%al
    63de:	84 c0                	test   %al,%al
    63e0:	74 23                	je     6405 <disp_color_str.2>
    63e2:	3c 0a                	cmp    $0xa,%al
    63e4:	75 16                	jne    63fc <disp_color_str.3>
    63e6:	50                   	push   %eax
    63e7:	89 f8                	mov    %edi,%eax
    63e9:	b3 a0                	mov    $0xa0,%bl
    63eb:	f6 f3                	div    %bl
    63ed:	25 ff 00 00 00       	and    $0xff,%eax
    63f2:	40                   	inc    %eax
    63f3:	b3 a0                	mov    $0xa0,%bl
    63f5:	f6 e3                	mul    %bl
    63f7:	89 c7                	mov    %eax,%edi
    63f9:	58                   	pop    %eax
    63fa:	eb e1                	jmp    63dd <disp_color_str.1>

000063fc <disp_color_str.3>:
    63fc:	65 66 89 07          	mov    %ax,%gs:(%edi)
    6400:	83 c7 02             	add    $0x2,%edi
    6403:	eb d8                	jmp    63dd <disp_color_str.1>

00006405 <disp_color_str.2>:
    6405:	89 3d a4 99 03 00    	mov    %edi,0x399a4
    640b:	5d                   	pop    %ebp
    640c:	c3                   	ret    

0000640d <out_byte>:
    640d:	8b 54 24 04          	mov    0x4(%esp),%edx
    6411:	8a 44 24 08          	mov    0x8(%esp),%al
    6415:	ee                   	out    %al,(%dx)
    6416:	90                   	nop
    6417:	90                   	nop
    6418:	c3                   	ret    

00006419 <in_byte>:
    6419:	8b 54 24 04          	mov    0x4(%esp),%edx
    641d:	31 c0                	xor    %eax,%eax
    641f:	ec                   	in     (%dx),%al
    6420:	90                   	nop
    6421:	90                   	nop
    6422:	c3                   	ret    

00006423 <port_read>:
    6423:	8b 54 24 04          	mov    0x4(%esp),%edx
    6427:	8b 7c 24 08          	mov    0x8(%esp),%edi
    642b:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    642f:	d1 e9                	shr    %ecx
    6431:	fc                   	cld    
    6432:	f3 66 6d             	rep insw (%dx),%es:(%edi)
    6435:	c3                   	ret    

00006436 <port_write>:
    6436:	8b 54 24 04          	mov    0x4(%esp),%edx
    643a:	8b 74 24 08          	mov    0x8(%esp),%esi
    643e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    6442:	d1 e9                	shr    %ecx
    6444:	fc                   	cld    
    6445:	f3 66 6f             	rep outsw %ds:(%esi),(%dx)
    6448:	c3                   	ret    

00006449 <disable_irq>:
    6449:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    644d:	9c                   	pushf  
    644e:	fa                   	cli    
    644f:	b4 01                	mov    $0x1,%ah
    6451:	d2 c4                	rol    %cl,%ah
    6453:	80 f9 08             	cmp    $0x8,%cl
    6456:	73 11                	jae    6469 <disable_8>

00006458 <disable_0>:
    6458:	e4 21                	in     $0x21,%al
    645a:	84 e0                	test   %ah,%al
    645c:	75 1c                	jne    647a <dis_already>
    645e:	08 e0                	or     %ah,%al
    6460:	e6 21                	out    %al,$0x21
    6462:	9d                   	popf   
    6463:	b8 01 00 00 00       	mov    $0x1,%eax
    6468:	c3                   	ret    

00006469 <disable_8>:
    6469:	e4 a1                	in     $0xa1,%al
    646b:	84 e0                	test   %ah,%al
    646d:	75 0b                	jne    647a <dis_already>
    646f:	08 e0                	or     %ah,%al
    6471:	e6 a1                	out    %al,$0xa1
    6473:	9d                   	popf   
    6474:	b8 01 00 00 00       	mov    $0x1,%eax
    6479:	c3                   	ret    

0000647a <dis_already>:
    647a:	9d                   	popf   
    647b:	31 c0                	xor    %eax,%eax
    647d:	c3                   	ret    

0000647e <enable_irq>:
    647e:	8b 4c 24 04          	mov    0x4(%esp),%ecx
    6482:	9c                   	pushf  
    6483:	fa                   	cli    
    6484:	b4 fe                	mov    $0xfe,%ah
    6486:	d2 c4                	rol    %cl,%ah
    6488:	80 f9 08             	cmp    $0x8,%cl
    648b:	73 08                	jae    6495 <enable_8>

0000648d <enable_0>:
    648d:	e4 21                	in     $0x21,%al
    648f:	20 e0                	and    %ah,%al
    6491:	e6 21                	out    %al,$0x21
    6493:	9d                   	popf   
    6494:	c3                   	ret    

00006495 <enable_8>:
    6495:	e4 a1                	in     $0xa1,%al
    6497:	20 e0                	and    %ah,%al
    6499:	e6 a1                	out    %al,$0xa1
    649b:	9d                   	popf   
    649c:	c3                   	ret    

0000649d <disable_int>:
    649d:	fa                   	cli    
    649e:	c3                   	ret    

0000649f <enable_int>:
    649f:	fb                   	sti    
    64a0:	c3                   	ret    

000064a1 <glitter>:
    64a1:	50                   	push   %eax
    64a2:	53                   	push   %ebx
    64a3:	52                   	push   %edx
    64a4:	a1 e0 64 00 00       	mov    0x64e0,%eax
    64a9:	40                   	inc    %eax
    64aa:	83 f8 42             	cmp    $0x42,%eax
    64ad:	74 02                	je     64b1 <glitter.1>
    64af:	eb 02                	jmp    64b3 <glitter.2>

000064b1 <glitter.1>:
    64b1:	31 c0                	xor    %eax,%eax

000064b3 <glitter.2>:
    64b3:	a3 e0 64 00 00       	mov    %eax,0x64e0
    64b8:	8a 90 e4 64 00 00    	mov    0x64e4(%eax),%dl
    64be:	31 c0                	xor    %eax,%eax
    64c0:	8a 44 24 10          	mov    0x10(%esp),%al
    64c4:	b3 50                	mov    $0x50,%bl
    64c6:	f6 e3                	mul    %bl
    64c8:	66 8b 5c 24 14       	mov    0x14(%esp),%bx
    64cd:	66 01 d8             	add    %bx,%ax
    64d0:	66 d1 e0             	shl    %ax
    64d3:	0f b7 c0             	movzwl %ax,%eax
    64d6:	65 88 10             	mov    %dl,%gs:(%eax)
    64d9:	40                   	inc    %eax
    64da:	65 c6 00 04          	movb   $0x4,%gs:(%eax)
    64de:	eb 46                	jmp    6526 <glitter.end>

000064e0 <glitter.current_char>:
    64e0:	00 00                	add    %al,(%eax)
	...

000064e4 <glitter.glitter_str>:
    64e4:	2d 5c 7c 2f 31       	sub    $0x312f7c5c,%eax
    64e9:	32 33                	xor    (%ebx),%dh
    64eb:	34 35                	xor    $0x35,%al
    64ed:	36 37                	ss aaa 
    64ef:	38 39                	cmp    %bh,(%ecx)
    64f1:	30 61 62             	xor    %ah,0x62(%ecx)
    64f4:	63 64 65 66          	arpl   %sp,0x66(%ebp,%eiz,2)
    64f8:	67 68 69 6a 6b 6c    	addr16 push $0x6c6b6a69
    64fe:	6d                   	insl   (%dx),%es:(%edi)
    64ff:	6e                   	outsb  %ds:(%esi),(%dx)
    6500:	6f                   	outsl  %ds:(%esi),(%dx)
    6501:	70 71                	jo     6574 <get_boot_params+0x4a>
    6503:	72 73                	jb     6578 <get_boot_params+0x4e>
    6505:	74 75                	je     657c <get_boot_params+0x52>
    6507:	76 77                	jbe    6580 <get_boot_params+0x56>
    6509:	78 79                	js     6584 <get_boot_params+0x5a>
    650b:	7a 41                	jp     654e <get_boot_params+0x24>
    650d:	42                   	inc    %edx
    650e:	43                   	inc    %ebx
    650f:	44                   	inc    %esp
    6510:	45                   	inc    %ebp
    6511:	46                   	inc    %esi
    6512:	47                   	inc    %edi
    6513:	48                   	dec    %eax
    6514:	49                   	dec    %ecx
    6515:	4a                   	dec    %edx
    6516:	4b                   	dec    %ebx
    6517:	4c                   	dec    %esp
    6518:	4d                   	dec    %ebp
    6519:	4e                   	dec    %esi
    651a:	4f                   	dec    %edi
    651b:	50                   	push   %eax
    651c:	51                   	push   %ecx
    651d:	52                   	push   %edx
    651e:	53                   	push   %ebx
    651f:	54                   	push   %esp
    6520:	55                   	push   %ebp
    6521:	56                   	push   %esi
    6522:	57                   	push   %edi
    6523:	58                   	pop    %eax
    6524:	59                   	pop    %ecx
    6525:	5a                   	pop    %edx

00006526 <glitter.end>:
    6526:	5a                   	pop    %edx
    6527:	5b                   	pop    %ebx
    6528:	58                   	pop    %eax
    6529:	c3                   	ret    

0000652a <get_boot_params>:
    652a:	55                   	push   %ebp
    652b:	89 e5                	mov    %esp,%ebp
    652d:	83 ec 18             	sub    $0x18,%esp
    6530:	c7 45 f4 00 09 00 00 	movl   $0x900,-0xc(%ebp)
    6537:	8b 45 f4             	mov    -0xc(%ebp),%eax
    653a:	8b 00                	mov    (%eax),%eax
    653c:	3d 07 b0 00 00       	cmp    $0xb007,%eax
    6541:	74 19                	je     655c <get_boot_params+0x32>
    6543:	6a 2b                	push   $0x2b
    6545:	68 2c db 00 00       	push   $0xdb2c
    654a:	68 2c db 00 00       	push   $0xdb2c
    654f:	68 3a db 00 00       	push   $0xdb3a
    6554:	e8 84 5f 00 00       	call   c4dd <assertion_failure>
    6559:	83 c4 10             	add    $0x10,%esp
    655c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    655f:	8b 50 04             	mov    0x4(%eax),%edx
    6562:	8b 45 08             	mov    0x8(%ebp),%eax
    6565:	89 10                	mov    %edx,(%eax)
    6567:	8b 45 f4             	mov    -0xc(%ebp),%eax
    656a:	83 c0 08             	add    $0x8,%eax
    656d:	8b 00                	mov    (%eax),%eax
    656f:	89 c2                	mov    %eax,%edx
    6571:	8b 45 08             	mov    0x8(%ebp),%eax
    6574:	89 50 04             	mov    %edx,0x4(%eax)
    6577:	8b 45 08             	mov    0x8(%ebp),%eax
    657a:	8b 40 04             	mov    0x4(%eax),%eax
    657d:	83 ec 04             	sub    $0x4,%esp
    6580:	6a 04                	push   $0x4
    6582:	68 58 db 00 00       	push   $0xdb58
    6587:	50                   	push   %eax
    6588:	e8 f5 5d 00 00       	call   c382 <memcmp>
    658d:	83 c4 10             	add    $0x10,%esp
    6590:	85 c0                	test   %eax,%eax
    6592:	74 19                	je     65ad <get_boot_params+0x83>
    6594:	6a 34                	push   $0x34
    6596:	68 2c db 00 00       	push   $0xdb2c
    659b:	68 2c db 00 00       	push   $0xdb2c
    65a0:	68 60 db 00 00       	push   $0xdb60
    65a5:	e8 33 5f 00 00       	call   c4dd <assertion_failure>
    65aa:	83 c4 10             	add    $0x10,%esp
    65ad:	90                   	nop
    65ae:	c9                   	leave  
    65af:	c3                   	ret    

000065b0 <get_kernel_map>:
    65b0:	55                   	push   %ebp
    65b1:	89 e5                	mov    %esp,%ebp
    65b3:	83 ec 28             	sub    $0x28,%esp
    65b6:	83 ec 0c             	sub    $0xc,%esp
    65b9:	8d 45 d8             	lea    -0x28(%ebp),%eax
    65bc:	50                   	push   %eax
    65bd:	e8 68 ff ff ff       	call   652a <get_boot_params>
    65c2:	83 c4 10             	add    $0x10,%esp
    65c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    65c8:	89 45 ec             	mov    %eax,-0x14(%ebp)
    65cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
    65ce:	83 ec 04             	sub    $0x4,%esp
    65d1:	6a 04                	push   $0x4
    65d3:	68 58 db 00 00       	push   $0xdb58
    65d8:	50                   	push   %eax
    65d9:	e8 a4 5d 00 00       	call   c382 <memcmp>
    65de:	83 c4 10             	add    $0x10,%esp
    65e1:	85 c0                	test   %eax,%eax
    65e3:	74 0a                	je     65ef <get_kernel_map+0x3f>
    65e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    65ea:	e9 cf 00 00 00       	jmp    66be <get_kernel_map+0x10e>
    65ef:	8b 45 08             	mov    0x8(%ebp),%eax
    65f2:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    65f8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    65ff:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    6606:	eb 6b                	jmp    6673 <get_kernel_map+0xc3>
    6608:	8b 55 dc             	mov    -0x24(%ebp),%edx
    660b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    660e:	8b 48 20             	mov    0x20(%eax),%ecx
    6611:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6614:	0f b7 40 2e          	movzwl 0x2e(%eax),%eax
    6618:	0f b7 c0             	movzwl %ax,%eax
    661b:	0f af 45 f0          	imul   -0x10(%ebp),%eax
    661f:	01 c8                	add    %ecx,%eax
    6621:	01 d0                	add    %edx,%eax
    6623:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6626:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6629:	8b 40 08             	mov    0x8(%eax),%eax
    662c:	83 e0 02             	and    $0x2,%eax
    662f:	85 c0                	test   %eax,%eax
    6631:	74 3c                	je     666f <get_kernel_map+0xbf>
    6633:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6636:	8b 40 0c             	mov    0xc(%eax),%eax
    6639:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    663c:	8b 45 e8             	mov    -0x18(%ebp),%eax
    663f:	8b 50 0c             	mov    0xc(%eax),%edx
    6642:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6645:	8b 40 14             	mov    0x14(%eax),%eax
    6648:	01 d0                	add    %edx,%eax
    664a:	89 45 e0             	mov    %eax,-0x20(%ebp)
    664d:	8b 45 08             	mov    0x8(%ebp),%eax
    6650:	8b 10                	mov    (%eax),%edx
    6652:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6655:	39 c2                	cmp    %eax,%edx
    6657:	76 08                	jbe    6661 <get_kernel_map+0xb1>
    6659:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    665c:	8b 45 08             	mov    0x8(%ebp),%eax
    665f:	89 10                	mov    %edx,(%eax)
    6661:	8b 45 e0             	mov    -0x20(%ebp),%eax
    6664:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    6667:	73 06                	jae    666f <get_kernel_map+0xbf>
    6669:	8b 45 e0             	mov    -0x20(%ebp),%eax
    666c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    666f:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    6673:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6676:	0f b7 40 30          	movzwl 0x30(%eax),%eax
    667a:	0f b7 c0             	movzwl %ax,%eax
    667d:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6680:	7c 86                	jl     6608 <get_kernel_map+0x58>
    6682:	8b 45 08             	mov    0x8(%ebp),%eax
    6685:	8b 00                	mov    (%eax),%eax
    6687:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    668a:	77 19                	ja     66a5 <get_kernel_map+0xf5>
    668c:	6a 62                	push   $0x62
    668e:	68 2c db 00 00       	push   $0xdb2c
    6693:	68 2c db 00 00       	push   $0xdb2c
    6698:	68 8f db 00 00       	push   $0xdb8f
    669d:	e8 3b 5e 00 00       	call   c4dd <assertion_failure>
    66a2:	83 c4 10             	add    $0x10,%esp
    66a5:	8b 45 08             	mov    0x8(%ebp),%eax
    66a8:	8b 00                	mov    (%eax),%eax
    66aa:	8b 55 f4             	mov    -0xc(%ebp),%edx
    66ad:	29 c2                	sub    %eax,%edx
    66af:	89 d0                	mov    %edx,%eax
    66b1:	8d 50 ff             	lea    -0x1(%eax),%edx
    66b4:	8b 45 0c             	mov    0xc(%ebp),%eax
    66b7:	89 10                	mov    %edx,(%eax)
    66b9:	b8 00 00 00 00       	mov    $0x0,%eax
    66be:	c9                   	leave  
    66bf:	c3                   	ret    

000066c0 <itoa>:
    66c0:	55                   	push   %ebp
    66c1:	89 e5                	mov    %esp,%ebp
    66c3:	83 ec 10             	sub    $0x10,%esp
    66c6:	8b 45 08             	mov    0x8(%ebp),%eax
    66c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
    66cc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    66d3:	8b 45 fc             	mov    -0x4(%ebp),%eax
    66d6:	8d 50 01             	lea    0x1(%eax),%edx
    66d9:	89 55 fc             	mov    %edx,-0x4(%ebp)
    66dc:	c6 00 30             	movb   $0x30,(%eax)
    66df:	8b 45 fc             	mov    -0x4(%ebp),%eax
    66e2:	8d 50 01             	lea    0x1(%eax),%edx
    66e5:	89 55 fc             	mov    %edx,-0x4(%ebp)
    66e8:	c6 00 78             	movb   $0x78,(%eax)
    66eb:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    66ef:	75 0e                	jne    66ff <itoa+0x3f>
    66f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    66f4:	8d 50 01             	lea    0x1(%eax),%edx
    66f7:	89 55 fc             	mov    %edx,-0x4(%ebp)
    66fa:	c6 00 30             	movb   $0x30,(%eax)
    66fd:	eb 61                	jmp    6760 <itoa+0xa0>
    66ff:	c7 45 f4 1c 00 00 00 	movl   $0x1c,-0xc(%ebp)
    6706:	eb 52                	jmp    675a <itoa+0x9a>
    6708:	8b 45 f4             	mov    -0xc(%ebp),%eax
    670b:	8b 55 0c             	mov    0xc(%ebp),%edx
    670e:	89 c1                	mov    %eax,%ecx
    6710:	d3 fa                	sar    %cl,%edx
    6712:	89 d0                	mov    %edx,%eax
    6714:	83 e0 0f             	and    $0xf,%eax
    6717:	88 45 fb             	mov    %al,-0x5(%ebp)
    671a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    671e:	75 06                	jne    6726 <itoa+0x66>
    6720:	80 7d fb 00          	cmpb   $0x0,-0x5(%ebp)
    6724:	7e 30                	jle    6756 <itoa+0x96>
    6726:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    672d:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    6731:	83 c0 30             	add    $0x30,%eax
    6734:	88 45 fb             	mov    %al,-0x5(%ebp)
    6737:	80 7d fb 39          	cmpb   $0x39,-0x5(%ebp)
    673b:	7e 0a                	jle    6747 <itoa+0x87>
    673d:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
    6741:	83 c0 07             	add    $0x7,%eax
    6744:	88 45 fb             	mov    %al,-0x5(%ebp)
    6747:	8b 45 fc             	mov    -0x4(%ebp),%eax
    674a:	8d 50 01             	lea    0x1(%eax),%edx
    674d:	89 55 fc             	mov    %edx,-0x4(%ebp)
    6750:	0f b6 55 fb          	movzbl -0x5(%ebp),%edx
    6754:	88 10                	mov    %dl,(%eax)
    6756:	83 6d f4 04          	subl   $0x4,-0xc(%ebp)
    675a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    675e:	79 a8                	jns    6708 <itoa+0x48>
    6760:	8b 45 fc             	mov    -0x4(%ebp),%eax
    6763:	c6 00 00             	movb   $0x0,(%eax)
    6766:	8b 45 08             	mov    0x8(%ebp),%eax
    6769:	c9                   	leave  
    676a:	c3                   	ret    

0000676b <disp_int>:
    676b:	55                   	push   %ebp
    676c:	89 e5                	mov    %esp,%ebp
    676e:	83 ec 18             	sub    $0x18,%esp
    6771:	ff 75 08             	pushl  0x8(%ebp)
    6774:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6777:	50                   	push   %eax
    6778:	e8 43 ff ff ff       	call   66c0 <itoa>
    677d:	83 c4 08             	add    $0x8,%esp
    6780:	83 ec 0c             	sub    $0xc,%esp
    6783:	8d 45 e8             	lea    -0x18(%ebp),%eax
    6786:	50                   	push   %eax
    6787:	e8 04 fc ff ff       	call   6390 <disp_str>
    678c:	83 c4 10             	add    $0x10,%esp
    678f:	90                   	nop
    6790:	c9                   	leave  
    6791:	c3                   	ret    

00006792 <delay>:
    6792:	55                   	push   %ebp
    6793:	89 e5                	mov    %esp,%ebp
    6795:	83 ec 10             	sub    $0x10,%esp
    6798:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    679f:	eb 2d                	jmp    67ce <delay+0x3c>
    67a1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    67a8:	eb 1a                	jmp    67c4 <delay+0x32>
    67aa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    67b1:	eb 04                	jmp    67b7 <delay+0x25>
    67b3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    67b7:	81 7d f8 0f 27 00 00 	cmpl   $0x270f,-0x8(%ebp)
    67be:	7e f3                	jle    67b3 <delay+0x21>
    67c0:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    67c4:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
    67c8:	7e e0                	jle    67aa <delay+0x18>
    67ca:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    67ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
    67d1:	3b 45 08             	cmp    0x8(%ebp),%eax
    67d4:	7c cb                	jl     67a1 <delay+0xf>
    67d6:	90                   	nop
    67d7:	c9                   	leave  
    67d8:	c3                   	ret    

000067d9 <syslog>:
    67d9:	55                   	push   %ebp
    67da:	89 e5                	mov    %esp,%ebp
    67dc:	81 ec 18 04 00 00    	sub    $0x418,%esp
    67e2:	8d 45 0c             	lea    0xc(%ebp),%eax
    67e5:	89 45 f4             	mov    %eax,-0xc(%ebp)
    67e8:	8b 45 08             	mov    0x8(%ebp),%eax
    67eb:	83 ec 04             	sub    $0x4,%esp
    67ee:	ff 75 f4             	pushl  -0xc(%ebp)
    67f1:	50                   	push   %eax
    67f2:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    67f8:	50                   	push   %eax
    67f9:	e8 af 57 00 00       	call   bfad <vsprintf>
    67fe:	83 c4 10             	add    $0x10,%esp
    6801:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6804:	83 ec 0c             	sub    $0xc,%esp
    6807:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    680d:	50                   	push   %eax
    680e:	e8 9f 5a 00 00       	call   c2b2 <strlen>
    6813:	83 c4 10             	add    $0x10,%esp
    6816:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6819:	74 19                	je     6834 <syslog+0x5b>
    681b:	6a 2b                	push   $0x2b
    681d:	68 96 db 00 00       	push   $0xdb96
    6822:	68 96 db 00 00       	push   $0xdb96
    6827:	68 a3 db 00 00       	push   $0xdba3
    682c:	e8 ac 5c 00 00       	call   c4dd <assertion_failure>
    6831:	83 c4 10             	add    $0x10,%esp
    6834:	83 ec 0c             	sub    $0xc,%esp
    6837:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    683d:	50                   	push   %eax
    683e:	e8 ae 36 00 00       	call   9ef1 <disklog>
    6843:	83 c4 10             	add    $0x10,%esp
    6846:	c9                   	leave  
    6847:	c3                   	ret    

00006848 <task_mm>:
    6848:	55                   	push   %ebp
    6849:	89 e5                	mov    %esp,%ebp
    684b:	83 ec 18             	sub    $0x18,%esp
    684e:	e8 ea 00 00 00       	call   693d <init_mm>
    6853:	83 ec 04             	sub    $0x4,%esp
    6856:	68 c0 99 03 00       	push   $0x399c0
    685b:	6a 2f                	push   $0x2f
    685d:	6a 02                	push   $0x2
    685f:	e8 64 5a 00 00       	call   c2c8 <send_recv>
    6864:	83 c4 10             	add    $0x10,%esp
    6867:	a1 c0 99 03 00       	mov    0x399c0,%eax
    686c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    686f:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
    6876:	a1 c4 99 03 00       	mov    0x399c4,%eax
    687b:	89 45 ec             	mov    %eax,-0x14(%ebp)
    687e:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
    6882:	74 4e                	je     68d2 <task_mm+0x8a>
    6884:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
    6888:	7f 08                	jg     6892 <task_mm+0x4a>
    688a:	83 7d ec 0e          	cmpl   $0xe,-0x14(%ebp)
    688e:	74 36                	je     68c6 <task_mm+0x7e>
    6890:	eb 4e                	jmp    68e0 <task_mm+0x98>
    6892:	83 7d ec 10          	cmpl   $0x10,-0x14(%ebp)
    6896:	74 08                	je     68a0 <task_mm+0x58>
    6898:	83 7d ec 11          	cmpl   $0x11,-0x14(%ebp)
    689c:	74 0e                	je     68ac <task_mm+0x64>
    689e:	eb 40                	jmp    68e0 <task_mm+0x98>
    68a0:	e8 61 01 00 00       	call   6a06 <do_fork>
    68a5:	a3 c8 99 03 00       	mov    %eax,0x399c8
    68aa:	eb 63                	jmp    690f <task_mm+0xc7>
    68ac:	a1 c8 99 03 00       	mov    0x399c8,%eax
    68b1:	83 ec 0c             	sub    $0xc,%esp
    68b4:	50                   	push   %eax
    68b5:	e8 91 04 00 00       	call   6d4b <do_exit>
    68ba:	83 c4 10             	add    $0x10,%esp
    68bd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    68c4:	eb 49                	jmp    690f <task_mm+0xc7>
    68c6:	e8 fd 06 00 00       	call   6fc8 <do_exec>
    68cb:	a3 c8 99 03 00       	mov    %eax,0x399c8
    68d0:	eb 3d                	jmp    690f <task_mm+0xc7>
    68d2:	e8 3b 06 00 00       	call   6f12 <do_wait>
    68d7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    68de:	eb 2f                	jmp    690f <task_mm+0xc7>
    68e0:	83 ec 08             	sub    $0x8,%esp
    68e3:	68 c0 99 03 00       	push   $0x399c0
    68e8:	68 b4 db 00 00       	push   $0xdbb4
    68ed:	e8 b6 e8 ff ff       	call   51a8 <dump_msg>
    68f2:	83 c4 10             	add    $0x10,%esp
    68f5:	6a 3f                	push   $0x3f
    68f7:	68 c4 db 00 00       	push   $0xdbc4
    68fc:	68 c4 db 00 00       	push   $0xdbc4
    6901:	68 ce db 00 00       	push   $0xdbce
    6906:	e8 d2 5b 00 00       	call   c4dd <assertion_failure>
    690b:	83 c4 10             	add    $0x10,%esp
    690e:	90                   	nop
    690f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    6913:	0f 84 3a ff ff ff    	je     6853 <task_mm+0xb>
    6919:	c7 05 c4 99 03 00 12 	movl   $0x12,0x399c4
    6920:	00 00 00 
    6923:	83 ec 04             	sub    $0x4,%esp
    6926:	68 c0 99 03 00       	push   $0x399c0
    692b:	ff 75 f0             	pushl  -0x10(%ebp)
    692e:	6a 01                	push   $0x1
    6930:	e8 93 59 00 00       	call   c2c8 <send_recv>
    6935:	83 c4 10             	add    $0x10,%esp
    6938:	e9 16 ff ff ff       	jmp    6853 <task_mm+0xb>

0000693d <init_mm>:
    693d:	55                   	push   %ebp
    693e:	89 e5                	mov    %esp,%ebp
    6940:	83 ec 18             	sub    $0x18,%esp
    6943:	83 ec 0c             	sub    $0xc,%esp
    6946:	8d 45 f0             	lea    -0x10(%ebp),%eax
    6949:	50                   	push   %eax
    694a:	e8 db fb ff ff       	call   652a <get_boot_params>
    694f:	83 c4 10             	add    $0x10,%esp
    6952:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6955:	a3 90 95 03 00       	mov    %eax,0x39590
    695a:	a1 90 95 03 00       	mov    0x39590,%eax
    695f:	8d 90 ff ff 0f 00    	lea    0xfffff(%eax),%edx
    6965:	85 c0                	test   %eax,%eax
    6967:	0f 48 c2             	cmovs  %edx,%eax
    696a:	c1 f8 14             	sar    $0x14,%eax
    696d:	83 ec 08             	sub    $0x8,%esp
    6970:	50                   	push   %eax
    6971:	68 d0 db 00 00       	push   $0xdbd0
    6976:	e8 8a 55 00 00       	call   bf05 <printl>
    697b:	83 c4 10             	add    $0x10,%esp
    697e:	90                   	nop
    697f:	c9                   	leave  
    6980:	c3                   	ret    

00006981 <alloc_mem>:
    6981:	55                   	push   %ebp
    6982:	89 e5                	mov    %esp,%ebp
    6984:	83 ec 18             	sub    $0x18,%esp
    6987:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
    698b:	7f 19                	jg     69a6 <alloc_mem+0x25>
    698d:	6a 69                	push   $0x69
    698f:	68 c4 db 00 00       	push   $0xdbc4
    6994:	68 c4 db 00 00       	push   $0xdbc4
    6999:	68 e4 db 00 00       	push   $0xdbe4
    699e:	e8 3a 5b 00 00       	call   c4dd <assertion_failure>
    69a3:	83 c4 10             	add    $0x10,%esp
    69a6:	81 7d 0c 00 00 10 00 	cmpl   $0x100000,0xc(%ebp)
    69ad:	7e 18                	jle    69c7 <alloc_mem+0x46>
    69af:	83 ec 04             	sub    $0x4,%esp
    69b2:	68 00 00 10 00       	push   $0x100000
    69b7:	ff 75 0c             	pushl  0xc(%ebp)
    69ba:	68 08 dc 00 00       	push   $0xdc08
    69bf:	e8 46 b1 ff ff       	call   1b0a <panic>
    69c4:	83 c4 10             	add    $0x10,%esp
    69c7:	8b 45 08             	mov    0x8(%ebp),%eax
    69ca:	83 c0 01             	add    $0x1,%eax
    69cd:	c1 e0 14             	shl    $0x14,%eax
    69d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    69d3:	8b 55 f4             	mov    -0xc(%ebp),%edx
    69d6:	8b 45 0c             	mov    0xc(%ebp),%eax
    69d9:	01 c2                	add    %eax,%edx
    69db:	a1 90 95 03 00       	mov    0x39590,%eax
    69e0:	39 c2                	cmp    %eax,%edx
    69e2:	7c 13                	jl     69f7 <alloc_mem+0x76>
    69e4:	83 ec 08             	sub    $0x8,%esp
    69e7:	ff 75 08             	pushl  0x8(%ebp)
    69ea:	68 44 dc 00 00       	push   $0xdc44
    69ef:	e8 16 b1 ff ff       	call   1b0a <panic>
    69f4:	83 c4 10             	add    $0x10,%esp
    69f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    69fa:	c9                   	leave  
    69fb:	c3                   	ret    

000069fc <free_mem>:
    69fc:	55                   	push   %ebp
    69fd:	89 e5                	mov    %esp,%ebp
    69ff:	b8 00 00 00 00       	mov    $0x0,%eax
    6a04:	5d                   	pop    %ebp
    6a05:	c3                   	ret    

00006a06 <do_fork>:
    6a06:	55                   	push   %ebp
    6a07:	89 e5                	mov    %esp,%ebp
    6a09:	57                   	push   %edi
    6a0a:	56                   	push   %esi
    6a0b:	53                   	push   %ebx
    6a0c:	81 ec ac 00 00 00    	sub    $0xac,%esp
    6a12:	c7 45 e4 a0 a4 03 00 	movl   $0x3a4a0,-0x1c(%ebp)
    6a19:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    6a20:	eb 16                	jmp    6a38 <do_fork+0x32>
    6a22:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6a25:	8b 40 74             	mov    0x74(%eax),%eax
    6a28:	83 f8 20             	cmp    $0x20,%eax
    6a2b:	74 13                	je     6a40 <do_fork+0x3a>
    6a2d:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    6a31:	81 45 e4 98 01 00 00 	addl   $0x198,-0x1c(%ebp)
    6a38:	83 7d e0 24          	cmpl   $0x24,-0x20(%ebp)
    6a3c:	7e e4                	jle    6a22 <do_fork+0x1c>
    6a3e:	eb 01                	jmp    6a41 <do_fork+0x3b>
    6a40:	90                   	nop
    6a41:	8b 45 e0             	mov    -0x20(%ebp),%eax
    6a44:	89 45 dc             	mov    %eax,-0x24(%ebp)
    6a47:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6a4a:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6a50:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6a55:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    6a58:	74 19                	je     6a73 <do_fork+0x6d>
    6a5a:	6a 2c                	push   $0x2c
    6a5c:	68 68 dc 00 00       	push   $0xdc68
    6a61:	68 68 dc 00 00       	push   $0xdc68
    6a66:	68 76 dc 00 00       	push   $0xdc76
    6a6b:	e8 6d 5a 00 00       	call   c4dd <assertion_failure>
    6a70:	83 c4 10             	add    $0x10,%esp
    6a73:	83 7d dc 08          	cmpl   $0x8,-0x24(%ebp)
    6a77:	7f 19                	jg     6a92 <do_fork+0x8c>
    6a79:	6a 2d                	push   $0x2d
    6a7b:	68 68 dc 00 00       	push   $0xdc68
    6a80:	68 68 dc 00 00       	push   $0xdc68
    6a85:	68 94 dc 00 00       	push   $0xdc94
    6a8a:	e8 4e 5a 00 00       	call   c4dd <assertion_failure>
    6a8f:	83 c4 10             	add    $0x10,%esp
    6a92:	83 7d e0 25          	cmpl   $0x25,-0x20(%ebp)
    6a96:	75 0a                	jne    6aa2 <do_fork+0x9c>
    6a98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6a9d:	e9 a1 02 00 00       	jmp    6d43 <do_fork+0x33d>
    6aa2:	83 7d e0 24          	cmpl   $0x24,-0x20(%ebp)
    6aa6:	7e 19                	jle    6ac1 <do_fork+0xbb>
    6aa8:	6a 30                	push   $0x30
    6aaa:	68 68 dc 00 00       	push   $0xdc68
    6aaf:	68 68 dc 00 00       	push   $0xdc68
    6ab4:	68 bc dc 00 00       	push   $0xdcbc
    6ab9:	e8 1f 5a 00 00       	call   c4dd <assertion_failure>
    6abe:	83 c4 10             	add    $0x10,%esp
    6ac1:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6ac6:	89 45 d8             	mov    %eax,-0x28(%ebp)
    6ac9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6acc:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    6ad0:	66 89 45 d6          	mov    %ax,-0x2a(%ebp)
    6ad4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6ad7:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6ada:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    6ae0:	8d 8a a0 a4 03 00    	lea    0x3a4a0(%edx),%ecx
    6ae6:	89 c2                	mov    %eax,%edx
    6ae8:	89 cb                	mov    %ecx,%ebx
    6aea:	b8 66 00 00 00       	mov    $0x66,%eax
    6aef:	89 d7                	mov    %edx,%edi
    6af1:	89 de                	mov    %ebx,%esi
    6af3:	89 c1                	mov    %eax,%ecx
    6af5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    6af7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6afa:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
    6afe:	66 89 50 48          	mov    %dx,0x48(%eax)
    6b02:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6b05:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6b08:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    6b0e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6b11:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6b17:	83 c0 60             	add    $0x60,%eax
    6b1a:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6b1f:	8d 50 04             	lea    0x4(%eax),%edx
    6b22:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6b25:	83 c0 64             	add    $0x64,%eax
    6b28:	ff 75 dc             	pushl  -0x24(%ebp)
    6b2b:	52                   	push   %edx
    6b2c:	68 d4 dc 00 00       	push   $0xdcd4
    6b31:	50                   	push   %eax
    6b32:	e8 f3 56 00 00       	call   c22a <sprintf>
    6b37:	83 c4 10             	add    $0x10,%esp
    6b3a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6b3d:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6b43:	83 c0 40             	add    $0x40,%eax
    6b46:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6b4b:	83 c0 0a             	add    $0xa,%eax
    6b4e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6b51:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b54:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6b58:	0f b6 c0             	movzbl %al,%eax
    6b5b:	c1 e0 18             	shl    $0x18,%eax
    6b5e:	89 c2                	mov    %eax,%edx
    6b60:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b63:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6b67:	0f b6 c0             	movzbl %al,%eax
    6b6a:	c1 e0 10             	shl    $0x10,%eax
    6b6d:	01 c2                	add    %eax,%edx
    6b6f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b72:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6b76:	0f b7 c0             	movzwl %ax,%eax
    6b79:	01 d0                	add    %edx,%eax
    6b7b:	89 45 cc             	mov    %eax,-0x34(%ebp)
    6b7e:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b81:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6b85:	0f b6 c0             	movzbl %al,%eax
    6b88:	c1 e0 10             	shl    $0x10,%eax
    6b8b:	25 00 00 0f 00       	and    $0xf0000,%eax
    6b90:	89 c2                	mov    %eax,%edx
    6b92:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6b95:	0f b7 00             	movzwl (%eax),%eax
    6b98:	0f b7 c0             	movzwl %ax,%eax
    6b9b:	01 d0                	add    %edx,%eax
    6b9d:	89 45 c8             	mov    %eax,-0x38(%ebp)
    6ba0:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6ba3:	8d 50 01             	lea    0x1(%eax),%edx
    6ba6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6ba9:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6bad:	84 c0                	test   %al,%al
    6baf:	79 07                	jns    6bb8 <do_fork+0x1b2>
    6bb1:	b8 00 10 00 00       	mov    $0x1000,%eax
    6bb6:	eb 05                	jmp    6bbd <do_fork+0x1b7>
    6bb8:	b8 01 00 00 00       	mov    $0x1,%eax
    6bbd:	0f af c2             	imul   %edx,%eax
    6bc0:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6bc3:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6bc6:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6bcc:	83 c0 48             	add    $0x48,%eax
    6bcf:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6bd4:	83 c0 0a             	add    $0xa,%eax
    6bd7:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6bda:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6bdd:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6be1:	0f b6 c0             	movzbl %al,%eax
    6be4:	c1 e0 18             	shl    $0x18,%eax
    6be7:	89 c2                	mov    %eax,%edx
    6be9:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6bec:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6bf0:	0f b6 c0             	movzbl %al,%eax
    6bf3:	c1 e0 10             	shl    $0x10,%eax
    6bf6:	01 c2                	add    %eax,%edx
    6bf8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6bfb:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6bff:	0f b7 c0             	movzwl %ax,%eax
    6c02:	01 d0                	add    %edx,%eax
    6c04:	89 45 c0             	mov    %eax,-0x40(%ebp)
    6c07:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6c0a:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6c0e:	0f b6 c0             	movzbl %al,%eax
    6c11:	c1 e0 10             	shl    $0x10,%eax
    6c14:	25 00 00 0f 00       	and    $0xf0000,%eax
    6c19:	89 c2                	mov    %eax,%edx
    6c1b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6c1e:	0f b7 00             	movzwl (%eax),%eax
    6c21:	0f b7 c0             	movzwl %ax,%eax
    6c24:	01 d0                	add    %edx,%eax
    6c26:	89 45 bc             	mov    %eax,-0x44(%ebp)
    6c29:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6c2c:	8d 50 01             	lea    0x1(%eax),%edx
    6c2f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6c32:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6c36:	84 c0                	test   %al,%al
    6c38:	79 07                	jns    6c41 <do_fork+0x23b>
    6c3a:	b8 00 10 00 00       	mov    $0x1000,%eax
    6c3f:	eb 05                	jmp    6c46 <do_fork+0x240>
    6c41:	b8 01 00 00 00       	mov    $0x1,%eax
    6c46:	0f af c2             	imul   %edx,%eax
    6c49:	89 45 b8             	mov    %eax,-0x48(%ebp)
    6c4c:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6c4f:	3b 45 c0             	cmp    -0x40(%ebp),%eax
    6c52:	75 10                	jne    6c64 <do_fork+0x25e>
    6c54:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6c57:	3b 45 bc             	cmp    -0x44(%ebp),%eax
    6c5a:	75 08                	jne    6c64 <do_fork+0x25e>
    6c5c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    6c5f:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    6c62:	74 19                	je     6c7d <do_fork+0x277>
    6c64:	6a 60                	push   $0x60
    6c66:	68 68 dc 00 00       	push   $0xdc68
    6c6b:	68 68 dc 00 00       	push   $0xdc68
    6c70:	68 dc dc 00 00       	push   $0xdcdc
    6c75:	e8 63 58 00 00       	call   c4dd <assertion_failure>
    6c7a:	83 c4 10             	add    $0x10,%esp
    6c7d:	83 ec 08             	sub    $0x8,%esp
    6c80:	ff 75 c4             	pushl  -0x3c(%ebp)
    6c83:	ff 75 dc             	pushl  -0x24(%ebp)
    6c86:	e8 f6 fc ff ff       	call   6981 <alloc_mem>
    6c8b:	83 c4 10             	add    $0x10,%esp
    6c8e:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    6c91:	8b 55 cc             	mov    -0x34(%ebp),%edx
    6c94:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6c97:	83 ec 04             	sub    $0x4,%esp
    6c9a:	ff 75 c4             	pushl  -0x3c(%ebp)
    6c9d:	52                   	push   %edx
    6c9e:	50                   	push   %eax
    6c9f:	e8 ac 55 00 00       	call   c250 <memcpy>
    6ca4:	83 c4 10             	add    $0x10,%esp
    6ca7:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6caa:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6cad:	83 c2 4a             	add    $0x4a,%edx
    6cb0:	68 f8 c0 00 00       	push   $0xc0f8
    6cb5:	68 ff 00 00 00       	push   $0xff
    6cba:	50                   	push   %eax
    6cbb:	52                   	push   %edx
    6cbc:	e8 6e ce ff ff       	call   3b2f <init_desc>
    6cc1:	83 c4 10             	add    $0x10,%esp
    6cc4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6cc7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6cca:	83 c2 52             	add    $0x52,%edx
    6ccd:	68 f2 c0 00 00       	push   $0xc0f2
    6cd2:	68 ff 00 00 00       	push   $0xff
    6cd7:	50                   	push   %eax
    6cd8:	52                   	push   %edx
    6cd9:	e8 51 ce ff ff       	call   3b2f <init_desc>
    6cde:	83 c4 10             	add    $0x10,%esp
    6ce1:	c7 45 88 10 00 00 00 	movl   $0x10,-0x78(%ebp)
    6ce8:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6ceb:	89 45 90             	mov    %eax,-0x70(%ebp)
    6cee:	83 ec 04             	sub    $0x4,%esp
    6cf1:	8d 45 84             	lea    -0x7c(%ebp),%eax
    6cf4:	50                   	push   %eax
    6cf5:	6a 03                	push   $0x3
    6cf7:	6a 03                	push   $0x3
    6cf9:	e8 ca 55 00 00       	call   c2c8 <send_recv>
    6cfe:	83 c4 10             	add    $0x10,%esp
    6d01:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6d04:	a3 cc 99 03 00       	mov    %eax,0x399cc
    6d09:	c7 85 58 ff ff ff 12 	movl   $0x12,-0xa8(%ebp)
    6d10:	00 00 00 
    6d13:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
    6d1a:	00 00 00 
    6d1d:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
    6d24:	00 00 00 
    6d27:	83 ec 04             	sub    $0x4,%esp
    6d2a:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    6d30:	50                   	push   %eax
    6d31:	ff 75 dc             	pushl  -0x24(%ebp)
    6d34:	6a 01                	push   $0x1
    6d36:	e8 8d 55 00 00       	call   c2c8 <send_recv>
    6d3b:	83 c4 10             	add    $0x10,%esp
    6d3e:	b8 00 00 00 00       	mov    $0x0,%eax
    6d43:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6d46:	5b                   	pop    %ebx
    6d47:	5e                   	pop    %esi
    6d48:	5f                   	pop    %edi
    6d49:	5d                   	pop    %ebp
    6d4a:	c3                   	ret    

00006d4b <do_exit>:
    6d4b:	55                   	push   %ebp
    6d4c:	89 e5                	mov    %esp,%ebp
    6d4e:	83 ec 48             	sub    $0x48,%esp
    6d51:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6d56:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6d59:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6d5c:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d62:	05 30 a5 03 00       	add    $0x3a530,%eax
    6d67:	8b 00                	mov    (%eax),%eax
    6d69:	89 45 ec             	mov    %eax,-0x14(%ebp)
    6d6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6d6f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d75:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6d7a:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6d7d:	c7 45 bc 11 00 00 00 	movl   $0x11,-0x44(%ebp)
    6d84:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6d87:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6d8a:	83 ec 04             	sub    $0x4,%esp
    6d8d:	8d 45 b8             	lea    -0x48(%ebp),%eax
    6d90:	50                   	push   %eax
    6d91:	6a 03                	push   $0x3
    6d93:	6a 03                	push   $0x3
    6d95:	e8 2e 55 00 00       	call   c2c8 <send_recv>
    6d9a:	83 c4 10             	add    $0x10,%esp
    6d9d:	83 ec 0c             	sub    $0xc,%esp
    6da0:	ff 75 f0             	pushl  -0x10(%ebp)
    6da3:	e8 54 fc ff ff       	call   69fc <free_mem>
    6da8:	83 c4 10             	add    $0x10,%esp
    6dab:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6dae:	8b 55 08             	mov    0x8(%ebp),%edx
    6db1:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
    6db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6dba:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6dc0:	05 14 a5 03 00       	add    $0x3a514,%eax
    6dc5:	8b 00                	mov    (%eax),%eax
    6dc7:	83 e0 08             	and    $0x8,%eax
    6dca:	85 c0                	test   %eax,%eax
    6dcc:	74 41                	je     6e0f <do_exit+0xc4>
    6dce:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6dd1:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6dd7:	05 14 a5 03 00       	add    $0x3a514,%eax
    6ddc:	8b 00                	mov    (%eax),%eax
    6dde:	83 e0 f7             	and    $0xfffffff7,%eax
    6de1:	89 c2                	mov    %eax,%edx
    6de3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6de6:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6dec:	05 14 a5 03 00       	add    $0x3a514,%eax
    6df1:	89 10                	mov    %edx,(%eax)
    6df3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6df6:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6dfc:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6e01:	83 ec 0c             	sub    $0xc,%esp
    6e04:	50                   	push   %eax
    6e05:	e8 b3 00 00 00       	call   6ebd <cleanup>
    6e0a:	83 c4 10             	add    $0x10,%esp
    6e0d:	eb 25                	jmp    6e34 <do_exit+0xe9>
    6e0f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6e12:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e18:	05 14 a5 03 00       	add    $0x3a514,%eax
    6e1d:	8b 00                	mov    (%eax),%eax
    6e1f:	83 c8 10             	or     $0x10,%eax
    6e22:	89 c2                	mov    %eax,%edx
    6e24:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6e27:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e2d:	05 14 a5 03 00       	add    $0x3a514,%eax
    6e32:	89 10                	mov    %edx,(%eax)
    6e34:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6e3b:	eb 77                	jmp    6eb4 <do_exit+0x169>
    6e3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6e40:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e46:	05 30 a5 03 00       	add    $0x3a530,%eax
    6e4b:	8b 00                	mov    (%eax),%eax
    6e4d:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6e50:	75 5e                	jne    6eb0 <do_exit+0x165>
    6e52:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6e55:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e5b:	05 30 a5 03 00       	add    $0x3a530,%eax
    6e60:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    6e66:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    6e6b:	83 e0 08             	and    $0x8,%eax
    6e6e:	85 c0                	test   %eax,%eax
    6e70:	74 3e                	je     6eb0 <do_exit+0x165>
    6e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6e75:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e7b:	05 14 a5 03 00       	add    $0x3a514,%eax
    6e80:	8b 00                	mov    (%eax),%eax
    6e82:	83 e0 10             	and    $0x10,%eax
    6e85:	85 c0                	test   %eax,%eax
    6e87:	74 27                	je     6eb0 <do_exit+0x165>
    6e89:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    6e8e:	83 e0 f7             	and    $0xfffffff7,%eax
    6e91:	a3 0c ad 03 00       	mov    %eax,0x3ad0c
    6e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
    6e99:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e9f:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6ea4:	83 ec 0c             	sub    $0xc,%esp
    6ea7:	50                   	push   %eax
    6ea8:	e8 10 00 00 00       	call   6ebd <cleanup>
    6ead:	83 c4 10             	add    $0x10,%esp
    6eb0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6eb4:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    6eb8:	7e 83                	jle    6e3d <do_exit+0xf2>
    6eba:	90                   	nop
    6ebb:	c9                   	leave  
    6ebc:	c3                   	ret    

00006ebd <cleanup>:
    6ebd:	55                   	push   %ebp
    6ebe:	89 e5                	mov    %esp,%ebp
    6ec0:	83 ec 38             	sub    $0x38,%esp
    6ec3:	c7 45 cc 12 00 00 00 	movl   $0x12,-0x34(%ebp)
    6eca:	8b 45 08             	mov    0x8(%ebp),%eax
    6ecd:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    6ed2:	c1 f8 03             	sar    $0x3,%eax
    6ed5:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    6edb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    6ede:	8b 45 08             	mov    0x8(%ebp),%eax
    6ee1:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
    6ee7:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6eea:	8b 45 08             	mov    0x8(%ebp),%eax
    6eed:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    6ef3:	83 ec 04             	sub    $0x4,%esp
    6ef6:	8d 55 c8             	lea    -0x38(%ebp),%edx
    6ef9:	52                   	push   %edx
    6efa:	50                   	push   %eax
    6efb:	6a 01                	push   $0x1
    6efd:	e8 c6 53 00 00       	call   c2c8 <send_recv>
    6f02:	83 c4 10             	add    $0x10,%esp
    6f05:	8b 45 08             	mov    0x8(%ebp),%eax
    6f08:	c7 40 74 20 00 00 00 	movl   $0x20,0x74(%eax)
    6f0f:	90                   	nop
    6f10:	c9                   	leave  
    6f11:	c3                   	ret    

00006f12 <do_wait>:
    6f12:	55                   	push   %ebp
    6f13:	89 e5                	mov    %esp,%ebp
    6f15:	83 ec 48             	sub    $0x48,%esp
    6f18:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6f1d:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6f20:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    6f27:	c7 45 ec a0 a4 03 00 	movl   $0x3a4a0,-0x14(%ebp)
    6f2e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6f35:	eb 3a                	jmp    6f71 <do_wait+0x5f>
    6f37:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6f3a:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    6f40:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    6f43:	75 21                	jne    6f66 <do_wait+0x54>
    6f45:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    6f49:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6f4c:	8b 40 74             	mov    0x74(%eax),%eax
    6f4f:	83 e0 10             	and    $0x10,%eax
    6f52:	85 c0                	test   %eax,%eax
    6f54:	74 10                	je     6f66 <do_wait+0x54>
    6f56:	83 ec 0c             	sub    $0xc,%esp
    6f59:	ff 75 ec             	pushl  -0x14(%ebp)
    6f5c:	e8 5c ff ff ff       	call   6ebd <cleanup>
    6f61:	83 c4 10             	add    $0x10,%esp
    6f64:	eb 60                	jmp    6fc6 <do_wait+0xb4>
    6f66:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    6f6a:	81 45 ec 98 01 00 00 	addl   $0x198,-0x14(%ebp)
    6f71:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    6f75:	7e c0                	jle    6f37 <do_wait+0x25>
    6f77:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    6f7b:	74 27                	je     6fa4 <do_wait+0x92>
    6f7d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6f80:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6f86:	05 14 a5 03 00       	add    $0x3a514,%eax
    6f8b:	8b 00                	mov    (%eax),%eax
    6f8d:	83 c8 08             	or     $0x8,%eax
    6f90:	89 c2                	mov    %eax,%edx
    6f92:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6f95:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6f9b:	05 14 a5 03 00       	add    $0x3a514,%eax
    6fa0:	89 10                	mov    %edx,(%eax)
    6fa2:	eb 22                	jmp    6fc6 <do_wait+0xb4>
    6fa4:	c7 45 bc 12 00 00 00 	movl   $0x12,-0x44(%ebp)
    6fab:	c7 45 c4 39 00 00 00 	movl   $0x39,-0x3c(%ebp)
    6fb2:	83 ec 04             	sub    $0x4,%esp
    6fb5:	8d 45 b8             	lea    -0x48(%ebp),%eax
    6fb8:	50                   	push   %eax
    6fb9:	ff 75 e8             	pushl  -0x18(%ebp)
    6fbc:	6a 01                	push   $0x1
    6fbe:	e8 05 53 00 00       	call   c2c8 <send_recv>
    6fc3:	83 c4 10             	add    $0x10,%esp
    6fc6:	c9                   	leave  
    6fc7:	c3                   	ret    

00006fc8 <do_exec>:
    6fc8:	55                   	push   %ebp
    6fc9:	89 e5                	mov    %esp,%ebp
    6fcb:	56                   	push   %esi
    6fcc:	53                   	push   %ebx
    6fcd:	81 ec d0 04 00 00    	sub    $0x4d0,%esp
    6fd3:	a1 cc 99 03 00       	mov    0x399cc,%eax
    6fd8:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6fdb:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6fe0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    6fe3:	83 7d e8 7f          	cmpl   $0x7f,-0x18(%ebp)
    6fe7:	7e 19                	jle    7002 <do_exec+0x3a>
    6fe9:	6a 26                	push   $0x26
    6feb:	68 50 dd 00 00       	push   $0xdd50
    6ff0:	68 50 dd 00 00       	push   $0xdd50
    6ff5:	68 5a dd 00 00       	push   $0xdd5a
    6ffa:	e8 de 54 00 00       	call   c4dd <assertion_failure>
    6fff:	83 c4 10             	add    $0x10,%esp
    7002:	a1 e8 99 03 00       	mov    0x399e8,%eax
    7007:	83 ec 08             	sub    $0x8,%esp
    700a:	50                   	push   %eax
    700b:	ff 75 e4             	pushl  -0x1c(%ebp)
    700e:	e8 b8 ce ff ff       	call   3ecb <va2la>
    7013:	83 c4 10             	add    $0x10,%esp
    7016:	89 c3                	mov    %eax,%ebx
    7018:	83 ec 08             	sub    $0x8,%esp
    701b:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    7021:	50                   	push   %eax
    7022:	6a 04                	push   $0x4
    7024:	e8 a2 ce ff ff       	call   3ecb <va2la>
    7029:	83 c4 10             	add    $0x10,%esp
    702c:	83 ec 04             	sub    $0x4,%esp
    702f:	ff 75 e8             	pushl  -0x18(%ebp)
    7032:	53                   	push   %ebx
    7033:	50                   	push   %eax
    7034:	e8 17 52 00 00       	call   c250 <memcpy>
    7039:	83 c4 10             	add    $0x10,%esp
    703c:	8d 95 48 ff ff ff    	lea    -0xb8(%ebp),%edx
    7042:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7045:	01 d0                	add    %edx,%eax
    7047:	c6 00 00             	movb   $0x0,(%eax)
    704a:	83 ec 08             	sub    $0x8,%esp
    704d:	8d 85 34 ff ff ff    	lea    -0xcc(%ebp),%eax
    7053:	50                   	push   %eax
    7054:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    705a:	50                   	push   %eax
    705b:	e8 f8 55 00 00       	call   c658 <stat>
    7060:	83 c4 10             	add    $0x10,%esp
    7063:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7066:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    706a:	74 21                	je     708d <do_exec+0xc5>
    706c:	83 ec 08             	sub    $0x8,%esp
    706f:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    7075:	50                   	push   %eax
    7076:	68 70 dd 00 00       	push   $0xdd70
    707b:	e8 85 4e 00 00       	call   bf05 <printl>
    7080:	83 c4 10             	add    $0x10,%esp
    7083:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7088:	e9 e1 02 00 00       	jmp    736e <do_exec+0x3a6>
    708d:	83 ec 08             	sub    $0x8,%esp
    7090:	6a 02                	push   $0x2
    7092:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    7098:	50                   	push   %eax
    7099:	e8 78 54 00 00       	call   c516 <open>
    709e:	83 c4 10             	add    $0x10,%esp
    70a1:	89 45 dc             	mov    %eax,-0x24(%ebp)
    70a4:	83 ec 08             	sub    $0x8,%esp
    70a7:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    70ad:	50                   	push   %eax
    70ae:	68 9d dd 00 00       	push   $0xdd9d
    70b3:	e8 e2 4d 00 00       	call   be9a <printf>
    70b8:	83 c4 10             	add    $0x10,%esp
    70bb:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    70bf:	75 0a                	jne    70cb <do_exec+0x103>
    70c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    70c6:	e9 a3 02 00 00       	jmp    736e <do_exec+0x3a6>
    70cb:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
    70d1:	a1 cc cd 00 00       	mov    0xcdcc,%eax
    70d6:	39 c2                	cmp    %eax,%edx
    70d8:	7c 19                	jl     70f3 <do_exec+0x12b>
    70da:	6a 3b                	push   $0x3b
    70dc:	68 50 dd 00 00       	push   $0xdd50
    70e1:	68 50 dd 00 00       	push   $0xdd50
    70e6:	68 ac dd 00 00       	push   $0xddac
    70eb:	e8 ed 53 00 00       	call   c4dd <assertion_failure>
    70f0:	83 c4 10             	add    $0x10,%esp
    70f3:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
    70f9:	a1 08 28 01 00       	mov    0x12808,%eax
    70fe:	83 ec 04             	sub    $0x4,%esp
    7101:	52                   	push   %edx
    7102:	50                   	push   %eax
    7103:	ff 75 dc             	pushl  -0x24(%ebp)
    7106:	e8 6e 54 00 00       	call   c579 <read>
    710b:	83 c4 10             	add    $0x10,%esp
    710e:	83 ec 0c             	sub    $0xc,%esp
    7111:	ff 75 dc             	pushl  -0x24(%ebp)
    7114:	e8 ce 54 00 00       	call   c5e7 <close>
    7119:	83 c4 10             	add    $0x10,%esp
    711c:	83 ec 0c             	sub    $0xc,%esp
    711f:	68 c3 dd 00 00       	push   $0xddc3
    7124:	e8 71 4d 00 00       	call   be9a <printf>
    7129:	83 c4 10             	add    $0x10,%esp
    712c:	a1 08 28 01 00       	mov    0x12808,%eax
    7131:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7134:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    713b:	e9 a6 00 00 00       	jmp    71e6 <do_exec+0x21e>
    7140:	8b 15 08 28 01 00    	mov    0x12808,%edx
    7146:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7149:	8b 48 1c             	mov    0x1c(%eax),%ecx
    714c:	8b 45 d8             	mov    -0x28(%ebp),%eax
    714f:	0f b7 40 2a          	movzwl 0x2a(%eax),%eax
    7153:	0f b7 c0             	movzwl %ax,%eax
    7156:	0f af 45 f4          	imul   -0xc(%ebp),%eax
    715a:	01 c8                	add    %ecx,%eax
    715c:	01 d0                	add    %edx,%eax
    715e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7161:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7164:	8b 00                	mov    (%eax),%eax
    7166:	83 f8 01             	cmp    $0x1,%eax
    7169:	75 77                	jne    71e2 <do_exec+0x21a>
    716b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    716e:	8b 50 08             	mov    0x8(%eax),%edx
    7171:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7174:	8b 40 14             	mov    0x14(%eax),%eax
    7177:	01 d0                	add    %edx,%eax
    7179:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
    717e:	76 19                	jbe    7199 <do_exec+0x1d1>
    7180:	6a 47                	push   $0x47
    7182:	68 50 dd 00 00       	push   $0xdd50
    7187:	68 50 dd 00 00       	push   $0xdd50
    718c:	68 c8 dd 00 00       	push   $0xddc8
    7191:	e8 47 53 00 00       	call   c4dd <assertion_failure>
    7196:	83 c4 10             	add    $0x10,%esp
    7199:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    719c:	8b 40 10             	mov    0x10(%eax),%eax
    719f:	89 c6                	mov    %eax,%esi
    71a1:	8b 15 08 28 01 00    	mov    0x12808,%edx
    71a7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    71aa:	8b 40 04             	mov    0x4(%eax),%eax
    71ad:	01 d0                	add    %edx,%eax
    71af:	83 ec 08             	sub    $0x8,%esp
    71b2:	50                   	push   %eax
    71b3:	6a 04                	push   $0x4
    71b5:	e8 11 cd ff ff       	call   3ecb <va2la>
    71ba:	83 c4 10             	add    $0x10,%esp
    71bd:	89 c3                	mov    %eax,%ebx
    71bf:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    71c2:	8b 40 08             	mov    0x8(%eax),%eax
    71c5:	83 ec 08             	sub    $0x8,%esp
    71c8:	50                   	push   %eax
    71c9:	ff 75 e4             	pushl  -0x1c(%ebp)
    71cc:	e8 fa cc ff ff       	call   3ecb <va2la>
    71d1:	83 c4 10             	add    $0x10,%esp
    71d4:	83 ec 04             	sub    $0x4,%esp
    71d7:	56                   	push   %esi
    71d8:	53                   	push   %ebx
    71d9:	50                   	push   %eax
    71da:	e8 71 50 00 00       	call   c250 <memcpy>
    71df:	83 c4 10             	add    $0x10,%esp
    71e2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    71e6:	8b 45 d8             	mov    -0x28(%ebp),%eax
    71e9:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    71ed:	0f b7 c0             	movzwl %ax,%eax
    71f0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    71f3:	0f 8c 47 ff ff ff    	jl     7140 <do_exec+0x178>
    71f9:	83 ec 0c             	sub    $0xc,%esp
    71fc:	68 08 de 00 00       	push   $0xde08
    7201:	e8 94 4c 00 00       	call   be9a <printf>
    7206:	83 c4 10             	add    $0x10,%esp
    7209:	a1 d0 99 03 00       	mov    0x399d0,%eax
    720e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7211:	a1 ec 99 03 00       	mov    0x399ec,%eax
    7216:	83 ec 08             	sub    $0x8,%esp
    7219:	50                   	push   %eax
    721a:	ff 75 e4             	pushl  -0x1c(%ebp)
    721d:	e8 a9 cc ff ff       	call   3ecb <va2la>
    7222:	83 c4 10             	add    $0x10,%esp
    7225:	89 c3                	mov    %eax,%ebx
    7227:	83 ec 08             	sub    $0x8,%esp
    722a:	8d 85 34 fb ff ff    	lea    -0x4cc(%ebp),%eax
    7230:	50                   	push   %eax
    7231:	6a 04                	push   $0x4
    7233:	e8 93 cc ff ff       	call   3ecb <va2la>
    7238:	83 c4 10             	add    $0x10,%esp
    723b:	83 ec 04             	sub    $0x4,%esp
    723e:	ff 75 d0             	pushl  -0x30(%ebp)
    7241:	53                   	push   %ebx
    7242:	50                   	push   %eax
    7243:	e8 08 50 00 00       	call   c250 <memcpy>
    7248:	83 c4 10             	add    $0x10,%esp
    724b:	c7 45 cc 00 fc 0f 00 	movl   $0xffc00,-0x34(%ebp)
    7252:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7255:	8b 15 ec 99 03 00    	mov    0x399ec,%edx
    725b:	29 d0                	sub    %edx,%eax
    725d:	89 45 c8             	mov    %eax,-0x38(%ebp)
    7260:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7267:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
    726b:	74 2b                	je     7298 <do_exec+0x2d0>
    726d:	8d 85 34 fb ff ff    	lea    -0x4cc(%ebp),%eax
    7273:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7276:	eb 17                	jmp    728f <do_exec+0x2c7>
    7278:	8b 45 ec             	mov    -0x14(%ebp),%eax
    727b:	8b 10                	mov    (%eax),%edx
    727d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7280:	01 c2                	add    %eax,%edx
    7282:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7285:	89 10                	mov    %edx,(%eax)
    7287:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
    728b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    728f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7292:	8b 00                	mov    (%eax),%eax
    7294:	85 c0                	test   %eax,%eax
    7296:	75 e0                	jne    7278 <do_exec+0x2b0>
    7298:	83 ec 0c             	sub    $0xc,%esp
    729b:	68 0b de 00 00       	push   $0xde0b
    72a0:	e8 f5 4b 00 00       	call   be9a <printf>
    72a5:	83 c4 10             	add    $0x10,%esp
    72a8:	83 ec 08             	sub    $0x8,%esp
    72ab:	8d 85 34 fb ff ff    	lea    -0x4cc(%ebp),%eax
    72b1:	50                   	push   %eax
    72b2:	6a 04                	push   $0x4
    72b4:	e8 12 cc ff ff       	call   3ecb <va2la>
    72b9:	83 c4 10             	add    $0x10,%esp
    72bc:	89 c3                	mov    %eax,%ebx
    72be:	83 ec 08             	sub    $0x8,%esp
    72c1:	ff 75 cc             	pushl  -0x34(%ebp)
    72c4:	ff 75 e4             	pushl  -0x1c(%ebp)
    72c7:	e8 ff cb ff ff       	call   3ecb <va2la>
    72cc:	83 c4 10             	add    $0x10,%esp
    72cf:	83 ec 04             	sub    $0x4,%esp
    72d2:	ff 75 d0             	pushl  -0x30(%ebp)
    72d5:	53                   	push   %ebx
    72d6:	50                   	push   %eax
    72d7:	e8 74 4f 00 00       	call   c250 <memcpy>
    72dc:	83 c4 10             	add    $0x10,%esp
    72df:	8b 45 f0             	mov    -0x10(%ebp),%eax
    72e2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    72e5:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    72eb:	81 c2 c8 a4 03 00    	add    $0x3a4c8,%edx
    72f1:	89 02                	mov    %eax,(%edx)
    72f3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    72f6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    72f9:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    72ff:	81 c2 cc a4 03 00    	add    $0x3a4cc,%edx
    7305:	89 02                	mov    %eax,(%edx)
    7307:	8b 45 d8             	mov    -0x28(%ebp),%eax
    730a:	8b 40 18             	mov    0x18(%eax),%eax
    730d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7310:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    7316:	81 c2 d4 a4 03 00    	add    $0x3a4d4,%edx
    731c:	89 02                	mov    %eax,(%edx)
    731e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7321:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7327:	05 e0 a4 03 00       	add    $0x3a4e0,%eax
    732c:	c7 00 00 fc 0f 00    	movl   $0xffc00,(%eax)
    7332:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7335:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    733b:	83 c0 60             	add    $0x60,%eax
    733e:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    7343:	8d 50 04             	lea    0x4(%eax),%edx
    7346:	83 ec 08             	sub    $0x8,%esp
    7349:	8d 85 48 ff ff ff    	lea    -0xb8(%ebp),%eax
    734f:	50                   	push   %eax
    7350:	52                   	push   %edx
    7351:	e8 44 4f 00 00       	call   c29a <strcpy>
    7356:	83 c4 10             	add    $0x10,%esp
    7359:	83 ec 0c             	sub    $0xc,%esp
    735c:	68 0e de 00 00       	push   $0xde0e
    7361:	e8 34 4b 00 00       	call   be9a <printf>
    7366:	83 c4 10             	add    $0x10,%esp
    7369:	b8 00 00 00 00       	mov    $0x0,%eax
    736e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    7371:	5b                   	pop    %ebx
    7372:	5e                   	pop    %esi
    7373:	5d                   	pop    %ebp
    7374:	c3                   	ret    

00007375 <task_fs>:
    7375:	55                   	push   %ebp
    7376:	89 e5                	mov    %esp,%ebp
    7378:	81 ec 18 02 00 00    	sub    $0x218,%esp
    737e:	83 ec 0c             	sub    $0xc,%esp
    7381:	68 14 de 00 00       	push   $0xde14
    7386:	e8 7a 4b 00 00       	call   bf05 <printl>
    738b:	83 c4 10             	add    $0x10,%esp
    738e:	e8 99 01 00 00       	call   752c <init_fs>
    7393:	83 ec 04             	sub    $0x4,%esp
    7396:	68 60 95 03 00       	push   $0x39560
    739b:	6a 2f                	push   $0x2f
    739d:	6a 02                	push   $0x2
    739f:	e8 24 4f 00 00       	call   c2c8 <send_recv>
    73a4:	83 c4 10             	add    $0x10,%esp
    73a7:	a1 64 95 03 00       	mov    0x39564,%eax
    73ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
    73af:	a1 60 95 03 00       	mov    0x39560,%eax
    73b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    73b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    73ba:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    73c0:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    73c5:	a3 44 88 03 00       	mov    %eax,0x38844
    73ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
    73cd:	83 e8 05             	sub    $0x5,%eax
    73d0:	83 f8 0c             	cmp    $0xc,%eax
    73d3:	77 6a                	ja     743f <task_fs+0xca>
    73d5:	8b 04 85 8c de 00 00 	mov    0xde8c(,%eax,4),%eax
    73dc:	ff e0                	jmp    *%eax
    73de:	e8 18 10 00 00       	call   83fb <do_open>
    73e3:	a3 68 95 03 00       	mov    %eax,0x39568
    73e8:	e9 81 00 00 00       	jmp    746e <task_fs+0xf9>
    73ed:	e8 3f 14 00 00       	call   8831 <do_close>
    73f2:	a3 68 95 03 00       	mov    %eax,0x39568
    73f7:	eb 75                	jmp    746e <task_fs+0xf9>
    73f9:	e8 4b 1e 00 00       	call   9249 <do_rdwt>
    73fe:	a3 6c 95 03 00       	mov    %eax,0x3956c
    7403:	eb 69                	jmp    746e <task_fs+0xf9>
    7405:	e8 d5 22 00 00       	call   96df <do_unlink>
    740a:	a3 68 95 03 00       	mov    %eax,0x39568
    740f:	eb 5d                	jmp    746e <task_fs+0xf9>
    7411:	a1 70 95 03 00       	mov    0x39570,%eax
    7416:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7419:	eb 53                	jmp    746e <task_fs+0xf9>
    741b:	e8 c9 0e 00 00       	call   82e9 <fs_fork>
    7420:	a3 68 95 03 00       	mov    %eax,0x39568
    7425:	eb 47                	jmp    746e <task_fs+0xf9>
    7427:	e8 30 0f 00 00       	call   835c <fs_exit>
    742c:	a3 68 95 03 00       	mov    %eax,0x39568
    7431:	eb 3b                	jmp    746e <task_fs+0xf9>
    7433:	e8 63 1a 00 00       	call   8e9b <do_stat>
    7438:	a3 68 95 03 00       	mov    %eax,0x39568
    743d:	eb 2f                	jmp    746e <task_fs+0xf9>
    743f:	83 ec 08             	sub    $0x8,%esp
    7442:	68 60 95 03 00       	push   $0x39560
    7447:	68 2a de 00 00       	push   $0xde2a
    744c:	e8 57 dd ff ff       	call   51a8 <dump_msg>
    7451:	83 c4 10             	add    $0x10,%esp
    7454:	6a 52                	push   $0x52
    7456:	68 3f de 00 00       	push   $0xde3f
    745b:	68 3f de 00 00       	push   $0xde3f
    7460:	68 49 de 00 00       	push   $0xde49
    7465:	e8 73 50 00 00       	call   c4dd <assertion_failure>
    746a:	83 c4 10             	add    $0x10,%esp
    746d:	90                   	nop
    746e:	c7 85 04 fe ff ff 4b 	movl   $0xde4b,-0x1fc(%ebp)
    7475:	de 00 00 
    7478:	c7 85 08 fe ff ff 50 	movl   $0xde50,-0x1f8(%ebp)
    747f:	de 00 00 
    7482:	c7 85 0c fe ff ff 56 	movl   $0xde56,-0x1f4(%ebp)
    7489:	de 00 00 
    748c:	c7 85 10 fe ff ff 5b 	movl   $0xde5b,-0x1f0(%ebp)
    7493:	de 00 00 
    7496:	c7 85 14 fe ff ff 61 	movl   $0xde61,-0x1ec(%ebp)
    749d:	de 00 00 
    74a0:	c7 85 1c fe ff ff 67 	movl   $0xde67,-0x1e4(%ebp)
    74a7:	de 00 00 
    74aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    74ad:	83 e8 05             	sub    $0x5,%eax
    74b0:	83 f8 0c             	cmp    $0xc,%eax
    74b3:	77 29                	ja     74de <task_fs+0x169>
    74b5:	8b 04 85 c0 de 00 00 	mov    0xdec0(,%eax,4),%eax
    74bc:	ff e0                	jmp    *%eax
    74be:	8b 45 f0             	mov    -0x10(%ebp),%eax
    74c1:	8b 84 85 f0 fd ff ff 	mov    -0x210(%ebp,%eax,4),%eax
    74c8:	83 ec 04             	sub    $0x4,%esp
    74cb:	ff 75 f4             	pushl  -0xc(%ebp)
    74ce:	50                   	push   %eax
    74cf:	68 6e de 00 00       	push   $0xde6e
    74d4:	e8 86 2f 00 00       	call   a45f <dump_fd_graph>
    74d9:	83 c4 10             	add    $0x10,%esp
    74dc:	eb 1b                	jmp    74f9 <task_fs+0x184>
    74de:	6a 73                	push   $0x73
    74e0:	68 3f de 00 00       	push   $0xde3f
    74e5:	68 3f de 00 00       	push   $0xde3f
    74ea:	68 49 de 00 00       	push   $0xde49
    74ef:	e8 e9 4f 00 00       	call   c4dd <assertion_failure>
    74f4:	83 c4 10             	add    $0x10,%esp
    74f7:	eb 01                	jmp    74fa <task_fs+0x185>
    74f9:	90                   	nop
    74fa:	a1 64 95 03 00       	mov    0x39564,%eax
    74ff:	83 f8 0c             	cmp    $0xc,%eax
    7502:	0f 84 8b fe ff ff    	je     7393 <task_fs+0x1e>
    7508:	c7 05 64 95 03 00 12 	movl   $0x12,0x39564
    750f:	00 00 00 
    7512:	83 ec 04             	sub    $0x4,%esp
    7515:	68 60 95 03 00       	push   $0x39560
    751a:	ff 75 f4             	pushl  -0xc(%ebp)
    751d:	6a 01                	push   $0x1
    751f:	e8 a4 4d 00 00       	call   c2c8 <send_recv>
    7524:	83 c4 10             	add    $0x10,%esp
    7527:	e9 67 fe ff ff       	jmp    7393 <task_fs+0x1e>

0000752c <init_fs>:
    752c:	55                   	push   %ebp
    752d:	89 e5                	mov    %esp,%ebp
    752f:	83 ec 48             	sub    $0x48,%esp
    7532:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7539:	eb 1f                	jmp    755a <init_fs+0x2e>
    753b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    753e:	c1 e0 04             	shl    $0x4,%eax
    7541:	05 a0 95 03 00       	add    $0x395a0,%eax
    7546:	83 ec 04             	sub    $0x4,%esp
    7549:	6a 10                	push   $0x10
    754b:	6a 00                	push   $0x0
    754d:	50                   	push   %eax
    754e:	e8 26 4d 00 00       	call   c279 <memset>
    7553:	83 c4 10             	add    $0x10,%esp
    7556:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    755a:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    755e:	7e db                	jle    753b <init_fs+0xf>
    7560:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7567:	eb 1f                	jmp    7588 <init_fs+0x5c>
    7569:	8b 45 f4             	mov    -0xc(%ebp),%eax
    756c:	6b c0 2c             	imul   $0x2c,%eax,%eax
    756f:	05 20 39 01 00       	add    $0x13920,%eax
    7574:	83 ec 04             	sub    $0x4,%esp
    7577:	6a 2c                	push   $0x2c
    7579:	6a 00                	push   $0x0
    757b:	50                   	push   %eax
    757c:	e8 f8 4c 00 00       	call   c279 <memset>
    7581:	83 c4 10             	add    $0x10,%esp
    7584:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7588:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    758c:	7e db                	jle    7569 <init_fs+0x3d>
    758e:	c7 45 f0 00 a2 03 00 	movl   $0x3a200,-0x10(%ebp)
    7595:	eb 0e                	jmp    75a5 <init_fs+0x79>
    7597:	8b 45 f0             	mov    -0x10(%ebp),%eax
    759a:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
    75a1:	83 45 f0 3c          	addl   $0x3c,-0x10(%ebp)
    75a5:	81 7d f0 e0 a3 03 00 	cmpl   $0x3a3e0,-0x10(%ebp)
    75ac:	72 e9                	jb     7597 <init_fs+0x6b>
    75ae:	c7 45 c4 e9 03 00 00 	movl   $0x3e9,-0x3c(%ebp)
    75b5:	c7 45 d4 20 00 00 00 	movl   $0x20,-0x2c(%ebp)
    75bc:	a1 f8 27 01 00       	mov    0x127f8,%eax
    75c1:	83 f8 ec             	cmp    $0xffffffec,%eax
    75c4:	75 1c                	jne    75e2 <init_fs+0xb6>
    75c6:	68 9b 00 00 00       	push   $0x9b
    75cb:	68 3f de 00 00       	push   $0xde3f
    75d0:	68 3f de 00 00       	push   $0xde3f
    75d5:	68 f4 de 00 00       	push   $0xdef4
    75da:	e8 fe 4e 00 00       	call   c4dd <assertion_failure>
    75df:	83 c4 10             	add    $0x10,%esp
    75e2:	a1 f8 27 01 00       	mov    0x127f8,%eax
    75e7:	83 ec 04             	sub    $0x4,%esp
    75ea:	8d 55 c0             	lea    -0x40(%ebp),%edx
    75ed:	52                   	push   %edx
    75ee:	50                   	push   %eax
    75ef:	6a 03                	push   $0x3
    75f1:	e8 d2 4c 00 00       	call   c2c8 <send_recv>
    75f6:	83 c4 10             	add    $0x10,%esp
    75f9:	e8 65 00 00 00       	call   7663 <mkfs>
    75fe:	83 ec 0c             	sub    $0xc,%esp
    7601:	68 20 03 00 00       	push   $0x320
    7606:	e8 89 08 00 00       	call   7e94 <read_super_block>
    760b:	83 c4 10             	add    $0x10,%esp
    760e:	83 ec 0c             	sub    $0xc,%esp
    7611:	68 20 03 00 00       	push   $0x320
    7616:	e8 e8 09 00 00       	call   8003 <get_super_block>
    761b:	83 c4 10             	add    $0x10,%esp
    761e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7621:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7624:	8b 00                	mov    (%eax),%eax
    7626:	3d 11 01 00 00       	cmp    $0x111,%eax
    762b:	74 1c                	je     7649 <init_fs+0x11d>
    762d:	68 a5 00 00 00       	push   $0xa5
    7632:	68 3f de 00 00       	push   $0xde3f
    7637:	68 3f de 00 00       	push   $0xde3f
    763c:	68 28 df 00 00       	push   $0xdf28
    7641:	e8 97 4e 00 00       	call   c4dd <assertion_failure>
    7646:	83 c4 10             	add    $0x10,%esp
    7649:	83 ec 08             	sub    $0x8,%esp
    764c:	6a 01                	push   $0x1
    764e:	68 20 03 00 00       	push   $0x320
    7653:	e8 f1 09 00 00       	call   8049 <get_inode>
    7658:	83 c4 10             	add    $0x10,%esp
    765b:	a3 a0 99 03 00       	mov    %eax,0x399a0
    7660:	90                   	nop
    7661:	c9                   	leave  
    7662:	c3                   	ret    

00007663 <mkfs>:
    7663:	55                   	push   %ebp
    7664:	89 e5                	mov    %esp,%ebp
    7666:	57                   	push   %edi
    7667:	56                   	push   %esi
    7668:	53                   	push   %ebx
    7669:	81 ec ec 00 00 00    	sub    $0xec,%esp
    766f:	c7 45 90 ed 03 00 00 	movl   $0x3ed,-0x70(%ebp)
    7676:	c7 45 a0 20 00 00 00 	movl   $0x20,-0x60(%ebp)
    767d:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
    7684:	8d 45 84             	lea    -0x7c(%ebp),%eax
    7687:	89 45 b8             	mov    %eax,-0x48(%ebp)
    768a:	c7 45 9c 03 00 00 00 	movl   $0x3,-0x64(%ebp)
    7691:	a1 f8 27 01 00       	mov    0x127f8,%eax
    7696:	83 f8 ec             	cmp    $0xffffffec,%eax
    7699:	75 1c                	jne    76b7 <mkfs+0x54>
    769b:	68 c6 00 00 00       	push   $0xc6
    76a0:	68 3f de 00 00       	push   $0xde3f
    76a5:	68 3f de 00 00       	push   $0xde3f
    76aa:	68 f4 de 00 00       	push   $0xdef4
    76af:	e8 29 4e 00 00       	call   c4dd <assertion_failure>
    76b4:	83 c4 10             	add    $0x10,%esp
    76b7:	a1 f8 27 01 00       	mov    0x127f8,%eax
    76bc:	83 ec 04             	sub    $0x4,%esp
    76bf:	8d 55 8c             	lea    -0x74(%ebp),%edx
    76c2:	52                   	push   %edx
    76c3:	50                   	push   %eax
    76c4:	6a 03                	push   $0x3
    76c6:	e8 fd 4b 00 00       	call   c2c8 <send_recv>
    76cb:	83 c4 10             	add    $0x10,%esp
    76ce:	8b 45 88             	mov    -0x78(%ebp),%eax
    76d1:	83 ec 08             	sub    $0x8,%esp
    76d4:	50                   	push   %eax
    76d5:	68 3e df 00 00       	push   $0xdf3e
    76da:	e8 26 48 00 00       	call   bf05 <printl>
    76df:	83 c4 10             	add    $0x10,%esp
    76e2:	c7 45 cc 00 10 00 00 	movl   $0x1000,-0x34(%ebp)
    76e9:	c7 85 48 ff ff ff 11 	movl   $0x111,-0xb8(%ebp)
    76f0:	01 00 00 
    76f3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    76f6:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
    76fc:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
    7702:	c1 e0 05             	shl    $0x5,%eax
    7705:	c1 e8 09             	shr    $0x9,%eax
    7708:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    770e:	8b 45 88             	mov    -0x78(%ebp),%eax
    7711:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
    7717:	c7 85 54 ff ff ff 01 	movl   $0x1,-0xac(%ebp)
    771e:	00 00 00 
    7721:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7727:	8b 75 cc             	mov    -0x34(%ebp),%esi
    772a:	ba 00 00 00 00       	mov    $0x0,%edx
    772f:	f7 f6                	div    %esi
    7731:	83 c0 01             	add    $0x1,%eax
    7734:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
    773a:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7740:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7746:	01 c2                	add    %eax,%edx
    7748:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    774e:	01 d0                	add    %edx,%eax
    7750:	83 c0 02             	add    $0x2,%eax
    7753:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
    7759:	c7 85 64 ff ff ff 01 	movl   $0x1,-0x9c(%ebp)
    7760:	00 00 00 
    7763:	c7 85 68 ff ff ff 20 	movl   $0x20,-0x98(%ebp)
    776a:	00 00 00 
    776d:	c7 85 6c ff ff ff 04 	movl   $0x4,-0x94(%ebp)
    7774:	00 00 00 
    7777:	c7 85 70 ff ff ff 08 	movl   $0x8,-0x90(%ebp)
    777e:	00 00 00 
    7781:	c7 85 74 ff ff ff 10 	movl   $0x10,-0x8c(%ebp)
    7788:	00 00 00 
    778b:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
    7792:	00 00 00 
    7795:	c7 85 7c ff ff ff 04 	movl   $0x4,-0x84(%ebp)
    779c:	00 00 00 
    779f:	a1 04 28 01 00       	mov    0x12804,%eax
    77a4:	83 ec 04             	sub    $0x4,%esp
    77a7:	68 00 02 00 00       	push   $0x200
    77ac:	6a 90                	push   $0xffffff90
    77ae:	50                   	push   %eax
    77af:	e8 c5 4a 00 00       	call   c279 <memset>
    77b4:	83 c4 10             	add    $0x10,%esp
    77b7:	a1 04 28 01 00       	mov    0x12804,%eax
    77bc:	83 ec 04             	sub    $0x4,%esp
    77bf:	6a 38                	push   $0x38
    77c1:	8d 95 48 ff ff ff    	lea    -0xb8(%ebp),%edx
    77c7:	52                   	push   %edx
    77c8:	50                   	push   %eax
    77c9:	e8 82 4a 00 00       	call   c250 <memcpy>
    77ce:	83 c4 10             	add    $0x10,%esp
    77d1:	a1 04 28 01 00       	mov    0x12804,%eax
    77d6:	83 ec 04             	sub    $0x4,%esp
    77d9:	50                   	push   %eax
    77da:	6a 03                	push   $0x3
    77dc:	68 00 02 00 00       	push   $0x200
    77e1:	6a 00                	push   $0x0
    77e3:	68 00 02 00 00       	push   $0x200
    77e8:	68 20 03 00 00       	push   $0x320
    77ed:	68 ec 03 00 00       	push   $0x3ec
    77f2:	e8 04 06 00 00       	call   7dfb <rw_sector>
    77f7:	83 c4 20             	add    $0x20,%esp
    77fa:	8b 55 84             	mov    -0x7c(%ebp),%edx
    77fd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7803:	01 d0                	add    %edx,%eax
    7805:	8d 3c 00             	lea    (%eax,%eax,1),%edi
    7808:	8b 55 84             	mov    -0x7c(%ebp),%edx
    780b:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7811:	01 c2                	add    %eax,%edx
    7813:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7819:	01 d0                	add    %edx,%eax
    781b:	83 c0 02             	add    $0x2,%eax
    781e:	8d 34 00             	lea    (%eax,%eax,1),%esi
    7821:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7824:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    782a:	01 d0                	add    %edx,%eax
    782c:	83 c0 02             	add    $0x2,%eax
    782f:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
    7832:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7835:	83 c0 02             	add    $0x2,%eax
    7838:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    783b:	8b 45 84             	mov    -0x7c(%ebp),%eax
    783e:	83 c0 01             	add    $0x1,%eax
    7841:	8d 14 00             	lea    (%eax,%eax,1),%edx
    7844:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7847:	01 c0                	add    %eax,%eax
    7849:	83 ec 04             	sub    $0x4,%esp
    784c:	57                   	push   %edi
    784d:	56                   	push   %esi
    784e:	53                   	push   %ebx
    784f:	51                   	push   %ecx
    7850:	52                   	push   %edx
    7851:	50                   	push   %eax
    7852:	68 5c df 00 00       	push   $0xdf5c
    7857:	e8 a9 46 00 00       	call   bf05 <printl>
    785c:	83 c4 20             	add    $0x20,%esp
    785f:	a1 04 28 01 00       	mov    0x12804,%eax
    7864:	83 ec 04             	sub    $0x4,%esp
    7867:	68 00 02 00 00       	push   $0x200
    786c:	6a 00                	push   $0x0
    786e:	50                   	push   %eax
    786f:	e8 05 4a 00 00       	call   c279 <memset>
    7874:	83 c4 10             	add    $0x10,%esp
    7877:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    787e:	eb 27                	jmp    78a7 <mkfs+0x244>
    7880:	a1 04 28 01 00       	mov    0x12804,%eax
    7885:	0f b6 00             	movzbl (%eax),%eax
    7888:	89 c3                	mov    %eax,%ebx
    788a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    788d:	ba 01 00 00 00       	mov    $0x1,%edx
    7892:	89 c1                	mov    %eax,%ecx
    7894:	d3 e2                	shl    %cl,%edx
    7896:	89 d0                	mov    %edx,%eax
    7898:	09 c3                	or     %eax,%ebx
    789a:	89 da                	mov    %ebx,%edx
    789c:	a1 04 28 01 00       	mov    0x12804,%eax
    78a1:	88 10                	mov    %dl,(%eax)
    78a3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    78a7:	83 7d e4 05          	cmpl   $0x5,-0x1c(%ebp)
    78ab:	7e d3                	jle    7880 <mkfs+0x21d>
    78ad:	a1 04 28 01 00       	mov    0x12804,%eax
    78b2:	0f b6 00             	movzbl (%eax),%eax
    78b5:	3c 3f                	cmp    $0x3f,%al
    78b7:	74 1c                	je     78d5 <mkfs+0x272>
    78b9:	68 f6 00 00 00       	push   $0xf6
    78be:	68 3f de 00 00       	push   $0xde3f
    78c3:	68 3f de 00 00       	push   $0xde3f
    78c8:	68 bf df 00 00       	push   $0xdfbf
    78cd:	e8 0b 4c 00 00       	call   c4dd <assertion_failure>
    78d2:	83 c4 10             	add    $0x10,%esp
    78d5:	a1 04 28 01 00       	mov    0x12804,%eax
    78da:	83 ec 04             	sub    $0x4,%esp
    78dd:	50                   	push   %eax
    78de:	6a 03                	push   $0x3
    78e0:	68 00 02 00 00       	push   $0x200
    78e5:	6a 00                	push   $0x0
    78e7:	68 00 04 00 00       	push   $0x400
    78ec:	68 20 03 00 00       	push   $0x320
    78f1:	68 ec 03 00 00       	push   $0x3ec
    78f6:	e8 00 05 00 00       	call   7dfb <rw_sector>
    78fb:	83 c4 20             	add    $0x20,%esp
    78fe:	a1 04 28 01 00       	mov    0x12804,%eax
    7903:	83 ec 04             	sub    $0x4,%esp
    7906:	68 00 02 00 00       	push   $0x200
    790b:	6a 00                	push   $0x0
    790d:	50                   	push   %eax
    790e:	e8 66 49 00 00       	call   c279 <memset>
    7913:	83 c4 10             	add    $0x10,%esp
    7916:	c7 45 c8 01 08 00 00 	movl   $0x801,-0x38(%ebp)
    791d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7924:	eb 12                	jmp    7938 <mkfs+0x2d5>
    7926:	8b 15 04 28 01 00    	mov    0x12804,%edx
    792c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    792f:	01 d0                	add    %edx,%eax
    7931:	c6 00 ff             	movb   $0xff,(%eax)
    7934:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7938:	8b 45 c8             	mov    -0x38(%ebp),%eax
    793b:	8d 50 07             	lea    0x7(%eax),%edx
    793e:	85 c0                	test   %eax,%eax
    7940:	0f 48 c2             	cmovs  %edx,%eax
    7943:	c1 f8 03             	sar    $0x3,%eax
    7946:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    7949:	7c db                	jl     7926 <mkfs+0x2c3>
    794b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    7952:	eb 35                	jmp    7989 <mkfs+0x326>
    7954:	8b 15 04 28 01 00    	mov    0x12804,%edx
    795a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    795d:	01 d0                	add    %edx,%eax
    795f:	0f b6 00             	movzbl (%eax),%eax
    7962:	89 c3                	mov    %eax,%ebx
    7964:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7967:	ba 01 00 00 00       	mov    $0x1,%edx
    796c:	89 c1                	mov    %eax,%ecx
    796e:	d3 e2                	shl    %cl,%edx
    7970:	89 d0                	mov    %edx,%eax
    7972:	09 c3                	or     %eax,%ebx
    7974:	89 d9                	mov    %ebx,%ecx
    7976:	8b 15 04 28 01 00    	mov    0x12804,%edx
    797c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    797f:	01 d0                	add    %edx,%eax
    7981:	89 ca                	mov    %ecx,%edx
    7983:	88 10                	mov    %dl,(%eax)
    7985:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    7989:	8b 45 c8             	mov    -0x38(%ebp),%eax
    798c:	99                   	cltd   
    798d:	c1 ea 1d             	shr    $0x1d,%edx
    7990:	01 d0                	add    %edx,%eax
    7992:	83 e0 07             	and    $0x7,%eax
    7995:	29 d0                	sub    %edx,%eax
    7997:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    799a:	7c b8                	jl     7954 <mkfs+0x2f1>
    799c:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    79a2:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    79a8:	83 c0 02             	add    $0x2,%eax
    79ab:	c1 e0 09             	shl    $0x9,%eax
    79ae:	ba 00 00 00 00       	mov    $0x0,%edx
    79b3:	83 ec 04             	sub    $0x4,%esp
    79b6:	51                   	push   %ecx
    79b7:	6a 03                	push   $0x3
    79b9:	68 00 02 00 00       	push   $0x200
    79be:	52                   	push   %edx
    79bf:	50                   	push   %eax
    79c0:	68 20 03 00 00       	push   $0x320
    79c5:	68 ec 03 00 00       	push   $0x3ec
    79ca:	e8 2c 04 00 00       	call   7dfb <rw_sector>
    79cf:	83 c4 20             	add    $0x20,%esp
    79d2:	a1 04 28 01 00       	mov    0x12804,%eax
    79d7:	83 ec 04             	sub    $0x4,%esp
    79da:	68 00 02 00 00       	push   $0x200
    79df:	6a 00                	push   $0x0
    79e1:	50                   	push   %eax
    79e2:	e8 92 48 00 00       	call   c279 <memset>
    79e7:	83 c4 10             	add    $0x10,%esp
    79ea:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    79f1:	eb 3f                	jmp    7a32 <mkfs+0x3cf>
    79f3:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    79f9:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    79ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7a02:	01 d0                	add    %edx,%eax
    7a04:	83 c0 02             	add    $0x2,%eax
    7a07:	c1 e0 09             	shl    $0x9,%eax
    7a0a:	ba 00 00 00 00       	mov    $0x0,%edx
    7a0f:	83 ec 04             	sub    $0x4,%esp
    7a12:	51                   	push   %ecx
    7a13:	6a 03                	push   $0x3
    7a15:	68 00 02 00 00       	push   $0x200
    7a1a:	52                   	push   %edx
    7a1b:	50                   	push   %eax
    7a1c:	68 20 03 00 00       	push   $0x320
    7a21:	68 ec 03 00 00       	push   $0x3ec
    7a26:	e8 d0 03 00 00       	call   7dfb <rw_sector>
    7a2b:	83 c4 20             	add    $0x20,%esp
    7a2e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7a32:	8b 95 58 ff ff ff    	mov    -0xa8(%ebp),%edx
    7a38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7a3b:	39 c2                	cmp    %eax,%edx
    7a3d:	77 b4                	ja     79f3 <mkfs+0x390>
    7a3f:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7a45:	2d 00 08 00 00       	sub    $0x800,%eax
    7a4a:	3d 00 68 00 00       	cmp    $0x6800,%eax
    7a4f:	77 1c                	ja     7a6d <mkfs+0x40a>
    7a51:	68 1b 01 00 00       	push   $0x11b
    7a56:	68 3f de 00 00       	push   $0xde3f
    7a5b:	68 3f de 00 00       	push   $0xde3f
    7a60:	68 d0 df 00 00       	push   $0xdfd0
    7a65:	e8 73 4a 00 00       	call   c4dd <assertion_failure>
    7a6a:	83 c4 10             	add    $0x10,%esp
    7a6d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7a73:	ba 01 60 00 00       	mov    $0x6001,%edx
    7a78:	29 c2                	sub    %eax,%edx
    7a7a:	89 d0                	mov    %edx,%eax
    7a7c:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    7a7f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7a82:	99                   	cltd   
    7a83:	c1 ea 14             	shr    $0x14,%edx
    7a86:	01 d0                	add    %edx,%eax
    7a88:	25 ff 0f 00 00       	and    $0xfff,%eax
    7a8d:	29 d0                	sub    %edx,%eax
    7a8f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7a92:	c7 45 d8 00 08 00 00 	movl   $0x800,-0x28(%ebp)
    7a99:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7a9c:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
    7aa2:	85 c0                	test   %eax,%eax
    7aa4:	0f 48 c2             	cmovs  %edx,%eax
    7aa7:	c1 f8 0c             	sar    $0xc,%eax
    7aaa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7aad:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7ab3:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7ab9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7abc:	01 d0                	add    %edx,%eax
    7abe:	83 c0 02             	add    $0x2,%eax
    7ac1:	c1 e0 09             	shl    $0x9,%eax
    7ac4:	ba 00 00 00 00       	mov    $0x0,%edx
    7ac9:	83 ec 04             	sub    $0x4,%esp
    7acc:	51                   	push   %ecx
    7acd:	6a 03                	push   $0x3
    7acf:	68 00 02 00 00       	push   $0x200
    7ad4:	52                   	push   %edx
    7ad5:	50                   	push   %eax
    7ad6:	68 20 03 00 00       	push   $0x320
    7adb:	68 eb 03 00 00       	push   $0x3eb
    7ae0:	e8 16 03 00 00       	call   7dfb <rw_sector>
    7ae5:	83 c4 20             	add    $0x20,%esp
    7ae8:	e9 e3 00 00 00       	jmp    7bd0 <mkfs+0x56d>
    7aed:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7af0:	8d 50 07             	lea    0x7(%eax),%edx
    7af3:	85 c0                	test   %eax,%eax
    7af5:	0f 48 c2             	cmovs  %edx,%eax
    7af8:	c1 f8 03             	sar    $0x3,%eax
    7afb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7afe:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b04:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7b07:	01 d0                	add    %edx,%eax
    7b09:	0f b6 00             	movzbl (%eax),%eax
    7b0c:	89 c3                	mov    %eax,%ebx
    7b0e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7b11:	99                   	cltd   
    7b12:	c1 ea 1d             	shr    $0x1d,%edx
    7b15:	01 d0                	add    %edx,%eax
    7b17:	83 e0 07             	and    $0x7,%eax
    7b1a:	29 d0                	sub    %edx,%eax
    7b1c:	ba 01 00 00 00       	mov    $0x1,%edx
    7b21:	89 c1                	mov    %eax,%ecx
    7b23:	d3 e2                	shl    %cl,%edx
    7b25:	89 d0                	mov    %edx,%eax
    7b27:	09 c3                	or     %eax,%ebx
    7b29:	89 d9                	mov    %ebx,%ecx
    7b2b:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b31:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7b34:	01 d0                	add    %edx,%eax
    7b36:	89 ca                	mov    %ecx,%edx
    7b38:	88 10                	mov    %dl,(%eax)
    7b3a:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
    7b3e:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    7b42:	81 7d dc 00 10 00 00 	cmpl   $0x1000,-0x24(%ebp)
    7b49:	0f 85 81 00 00 00    	jne    7bd0 <mkfs+0x56d>
    7b4f:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7b55:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7b5b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7b5e:	01 d0                	add    %edx,%eax
    7b60:	83 c0 02             	add    $0x2,%eax
    7b63:	c1 e0 09             	shl    $0x9,%eax
    7b66:	ba 00 00 00 00       	mov    $0x0,%edx
    7b6b:	83 ec 04             	sub    $0x4,%esp
    7b6e:	51                   	push   %ecx
    7b6f:	6a 03                	push   $0x3
    7b71:	68 00 02 00 00       	push   $0x200
    7b76:	52                   	push   %edx
    7b77:	50                   	push   %eax
    7b78:	68 20 03 00 00       	push   $0x320
    7b7d:	68 ec 03 00 00       	push   $0x3ec
    7b82:	e8 74 02 00 00       	call   7dfb <rw_sector>
    7b87:	83 c4 20             	add    $0x20,%esp
    7b8a:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    7b8e:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7b94:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7b9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7b9d:	01 d0                	add    %edx,%eax
    7b9f:	83 c0 02             	add    $0x2,%eax
    7ba2:	c1 e0 09             	shl    $0x9,%eax
    7ba5:	ba 00 00 00 00       	mov    $0x0,%edx
    7baa:	83 ec 04             	sub    $0x4,%esp
    7bad:	51                   	push   %ecx
    7bae:	6a 03                	push   $0x3
    7bb0:	68 00 02 00 00       	push   $0x200
    7bb5:	52                   	push   %edx
    7bb6:	50                   	push   %eax
    7bb7:	68 20 03 00 00       	push   $0x320
    7bbc:	68 eb 03 00 00       	push   $0x3eb
    7bc1:	e8 35 02 00 00       	call   7dfb <rw_sector>
    7bc6:	83 c4 20             	add    $0x20,%esp
    7bc9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    7bd0:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
    7bd4:	0f 85 13 ff ff ff    	jne    7aed <mkfs+0x48a>
    7bda:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7be0:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7be6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7be9:	01 d0                	add    %edx,%eax
    7beb:	83 c0 02             	add    $0x2,%eax
    7bee:	c1 e0 09             	shl    $0x9,%eax
    7bf1:	ba 00 00 00 00       	mov    $0x0,%edx
    7bf6:	83 ec 04             	sub    $0x4,%esp
    7bf9:	51                   	push   %ecx
    7bfa:	6a 03                	push   $0x3
    7bfc:	68 00 02 00 00       	push   $0x200
    7c01:	52                   	push   %edx
    7c02:	50                   	push   %eax
    7c03:	68 20 03 00 00       	push   $0x320
    7c08:	68 ec 03 00 00       	push   $0x3ec
    7c0d:	e8 e9 01 00 00       	call   7dfb <rw_sector>
    7c12:	83 c4 20             	add    $0x20,%esp
    7c15:	a1 04 28 01 00       	mov    0x12804,%eax
    7c1a:	83 ec 04             	sub    $0x4,%esp
    7c1d:	68 00 02 00 00       	push   $0x200
    7c22:	6a 00                	push   $0x0
    7c24:	50                   	push   %eax
    7c25:	e8 4f 46 00 00       	call   c279 <memset>
    7c2a:	83 c4 10             	add    $0x10,%esp
    7c2d:	a1 04 28 01 00       	mov    0x12804,%eax
    7c32:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7c35:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c38:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
    7c3e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c41:	c7 40 04 50 00 00 00 	movl   $0x50,0x4(%eax)
    7c48:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
    7c4e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c51:	89 50 08             	mov    %edx,0x8(%eax)
    7c54:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c57:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7c5e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7c65:	eb 42                	jmp    7ca9 <mkfs+0x646>
    7c67:	a1 04 28 01 00       	mov    0x12804,%eax
    7c6c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7c6f:	83 c2 01             	add    $0x1,%edx
    7c72:	c1 e2 05             	shl    $0x5,%edx
    7c75:	01 d0                	add    %edx,%eax
    7c77:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7c7a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c7d:	c7 00 00 20 00 00    	movl   $0x2000,(%eax)
    7c83:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c86:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    7c8d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7c90:	80 cc 04             	or     $0x4,%ah
    7c93:	89 c2                	mov    %eax,%edx
    7c95:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c98:	89 50 08             	mov    %edx,0x8(%eax)
    7c9b:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7c9e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    7ca5:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7ca9:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7cad:	7e b8                	jle    7c67 <mkfs+0x604>
    7caf:	a1 04 28 01 00       	mov    0x12804,%eax
    7cb4:	83 e8 80             	sub    $0xffffff80,%eax
    7cb7:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7cba:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7cbd:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    7cc3:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7cc6:	c7 40 04 00 00 10 00 	movl   $0x100000,0x4(%eax)
    7ccd:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7cd0:	c7 40 08 00 60 00 00 	movl   $0x6000,0x8(%eax)
    7cd7:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7cda:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7ce1:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7ce7:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7ced:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7cf3:	01 d0                	add    %edx,%eax
    7cf5:	83 c0 02             	add    $0x2,%eax
    7cf8:	c1 e0 09             	shl    $0x9,%eax
    7cfb:	ba 00 00 00 00       	mov    $0x0,%edx
    7d00:	83 ec 04             	sub    $0x4,%esp
    7d03:	51                   	push   %ecx
    7d04:	6a 03                	push   $0x3
    7d06:	68 00 02 00 00       	push   $0x200
    7d0b:	52                   	push   %edx
    7d0c:	50                   	push   %eax
    7d0d:	68 20 03 00 00       	push   $0x320
    7d12:	68 ec 03 00 00       	push   $0x3ec
    7d17:	e8 df 00 00 00       	call   7dfb <rw_sector>
    7d1c:	83 c4 20             	add    $0x20,%esp
    7d1f:	a1 04 28 01 00       	mov    0x12804,%eax
    7d24:	83 ec 04             	sub    $0x4,%esp
    7d27:	68 00 02 00 00       	push   $0x200
    7d2c:	6a 00                	push   $0x0
    7d2e:	50                   	push   %eax
    7d2f:	e8 45 45 00 00       	call   c279 <memset>
    7d34:	83 c4 10             	add    $0x10,%esp
    7d37:	a1 04 28 01 00       	mov    0x12804,%eax
    7d3c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7d3f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7d42:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    7d48:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7d4b:	83 c0 04             	add    $0x4,%eax
    7d4e:	83 ec 08             	sub    $0x8,%esp
    7d51:	68 17 e0 00 00       	push   $0xe017
    7d56:	50                   	push   %eax
    7d57:	e8 3e 45 00 00       	call   c29a <strcpy>
    7d5c:	83 c4 10             	add    $0x10,%esp
    7d5f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7d66:	eb 2d                	jmp    7d95 <mkfs+0x732>
    7d68:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7d6c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7d6f:	8d 50 02             	lea    0x2(%eax),%edx
    7d72:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7d75:	89 10                	mov    %edx,(%eax)
    7d77:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7d7a:	83 c0 04             	add    $0x4,%eax
    7d7d:	83 ec 04             	sub    $0x4,%esp
    7d80:	ff 75 e4             	pushl  -0x1c(%ebp)
    7d83:	68 19 e0 00 00       	push   $0xe019
    7d88:	50                   	push   %eax
    7d89:	e8 9c 44 00 00       	call   c22a <sprintf>
    7d8e:	83 c4 10             	add    $0x10,%esp
    7d91:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7d95:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7d99:	7e cd                	jle    7d68 <mkfs+0x705>
    7d9b:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7d9f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7da2:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    7da8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7dab:	83 c0 04             	add    $0x4,%eax
    7dae:	83 ec 08             	sub    $0x8,%esp
    7db1:	68 23 e0 00 00       	push   $0xe023
    7db6:	50                   	push   %eax
    7db7:	e8 de 44 00 00       	call   c29a <strcpy>
    7dbc:	83 c4 10             	add    $0x10,%esp
    7dbf:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7dc5:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7dcb:	c1 e0 09             	shl    $0x9,%eax
    7dce:	ba 00 00 00 00       	mov    $0x0,%edx
    7dd3:	83 ec 04             	sub    $0x4,%esp
    7dd6:	51                   	push   %ecx
    7dd7:	6a 03                	push   $0x3
    7dd9:	68 00 02 00 00       	push   $0x200
    7dde:	52                   	push   %edx
    7ddf:	50                   	push   %eax
    7de0:	68 20 03 00 00       	push   $0x320
    7de5:	68 ec 03 00 00       	push   $0x3ec
    7dea:	e8 0c 00 00 00       	call   7dfb <rw_sector>
    7def:	83 c4 20             	add    $0x20,%esp
    7df2:	90                   	nop
    7df3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7df6:	5b                   	pop    %ebx
    7df7:	5e                   	pop    %esi
    7df8:	5f                   	pop    %edi
    7df9:	5d                   	pop    %ebp
    7dfa:	c3                   	ret    

00007dfb <rw_sector>:
    7dfb:	55                   	push   %ebp
    7dfc:	89 e5                	mov    %esp,%ebp
    7dfe:	83 ec 48             	sub    $0x48,%esp
    7e01:	8b 45 10             	mov    0x10(%ebp),%eax
    7e04:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7e07:	8b 45 14             	mov    0x14(%ebp),%eax
    7e0a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    7e0d:	8b 45 08             	mov    0x8(%ebp),%eax
    7e10:	89 45 cc             	mov    %eax,-0x34(%ebp)
    7e13:	8b 45 0c             	mov    0xc(%ebp),%eax
    7e16:	0f b6 c0             	movzbl %al,%eax
    7e19:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7e1c:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7e1f:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    7e22:	89 45 e0             	mov    %eax,-0x20(%ebp)
    7e25:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    7e28:	8b 45 20             	mov    0x20(%ebp),%eax
    7e2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7e2e:	8b 45 18             	mov    0x18(%ebp),%eax
    7e31:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7e34:	8b 45 1c             	mov    0x1c(%ebp),%eax
    7e37:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7e3a:	8b 45 0c             	mov    0xc(%ebp),%eax
    7e3d:	c1 f8 08             	sar    $0x8,%eax
    7e40:	0f b6 c0             	movzbl %al,%eax
    7e43:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    7e4a:	83 f8 ec             	cmp    $0xffffffec,%eax
    7e4d:	75 1c                	jne    7e6b <rw_sector+0x70>
    7e4f:	68 7d 01 00 00       	push   $0x17d
    7e54:	68 3f de 00 00       	push   $0xde3f
    7e59:	68 3f de 00 00       	push   $0xde3f
    7e5e:	68 2c e0 00 00       	push   $0xe02c
    7e63:	e8 75 46 00 00       	call   c4dd <assertion_failure>
    7e68:	83 c4 10             	add    $0x10,%esp
    7e6b:	8b 45 0c             	mov    0xc(%ebp),%eax
    7e6e:	c1 f8 08             	sar    $0x8,%eax
    7e71:	0f b6 c0             	movzbl %al,%eax
    7e74:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    7e7b:	83 ec 04             	sub    $0x4,%esp
    7e7e:	8d 55 c8             	lea    -0x38(%ebp),%edx
    7e81:	52                   	push   %edx
    7e82:	50                   	push   %eax
    7e83:	6a 03                	push   $0x3
    7e85:	e8 3e 44 00 00       	call   c2c8 <send_recv>
    7e8a:	83 c4 10             	add    $0x10,%esp
    7e8d:	b8 00 00 00 00       	mov    $0x0,%eax
    7e92:	c9                   	leave  
    7e93:	c3                   	ret    

00007e94 <read_super_block>:
    7e94:	55                   	push   %ebp
    7e95:	89 e5                	mov    %esp,%ebp
    7e97:	83 ec 48             	sub    $0x48,%esp
    7e9a:	c7 45 c4 eb 03 00 00 	movl   $0x3eb,-0x3c(%ebp)
    7ea1:	8b 45 08             	mov    0x8(%ebp),%eax
    7ea4:	0f b6 c0             	movzbl %al,%eax
    7ea7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7eaa:	c7 45 d8 00 02 00 00 	movl   $0x200,-0x28(%ebp)
    7eb1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    7eb8:	a1 04 28 01 00       	mov    0x12804,%eax
    7ebd:	89 45 ec             	mov    %eax,-0x14(%ebp)
    7ec0:	c7 45 cc 00 02 00 00 	movl   $0x200,-0x34(%ebp)
    7ec7:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    7ece:	8b 45 08             	mov    0x8(%ebp),%eax
    7ed1:	c1 f8 08             	sar    $0x8,%eax
    7ed4:	0f b6 c0             	movzbl %al,%eax
    7ed7:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    7ede:	83 f8 ec             	cmp    $0xffffffec,%eax
    7ee1:	75 1c                	jne    7eff <read_super_block+0x6b>
    7ee3:	68 98 01 00 00       	push   $0x198
    7ee8:	68 3f de 00 00       	push   $0xde3f
    7eed:	68 3f de 00 00       	push   $0xde3f
    7ef2:	68 2c e0 00 00       	push   $0xe02c
    7ef7:	e8 e1 45 00 00       	call   c4dd <assertion_failure>
    7efc:	83 c4 10             	add    $0x10,%esp
    7eff:	8b 45 08             	mov    0x8(%ebp),%eax
    7f02:	c1 f8 08             	sar    $0x8,%eax
    7f05:	0f b6 c0             	movzbl %al,%eax
    7f08:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    7f0f:	83 ec 04             	sub    $0x4,%esp
    7f12:	8d 55 c0             	lea    -0x40(%ebp),%edx
    7f15:	52                   	push   %edx
    7f16:	50                   	push   %eax
    7f17:	6a 03                	push   $0x3
    7f19:	e8 aa 43 00 00       	call   c2c8 <send_recv>
    7f1e:	83 c4 10             	add    $0x10,%esp
    7f21:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7f28:	eb 15                	jmp    7f3f <read_super_block+0xab>
    7f2a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f2d:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7f30:	05 38 a2 03 00       	add    $0x3a238,%eax
    7f35:	8b 00                	mov    (%eax),%eax
    7f37:	85 c0                	test   %eax,%eax
    7f39:	74 0c                	je     7f47 <read_super_block+0xb3>
    7f3b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7f3f:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
    7f43:	7e e5                	jle    7f2a <read_super_block+0x96>
    7f45:	eb 01                	jmp    7f48 <read_super_block+0xb4>
    7f47:	90                   	nop
    7f48:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    7f4c:	75 10                	jne    7f5e <read_super_block+0xca>
    7f4e:	83 ec 0c             	sub    $0xc,%esp
    7f51:	68 5b e0 00 00       	push   $0xe05b
    7f56:	e8 af 9b ff ff       	call   1b0a <panic>
    7f5b:	83 c4 10             	add    $0x10,%esp
    7f5e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    7f62:	74 1c                	je     7f80 <read_super_block+0xec>
    7f64:	68 a2 01 00 00       	push   $0x1a2
    7f69:	68 3f de 00 00       	push   $0xde3f
    7f6e:	68 3f de 00 00       	push   $0xde3f
    7f73:	68 75 e0 00 00       	push   $0xe075
    7f78:	e8 60 45 00 00       	call   c4dd <assertion_failure>
    7f7d:	83 c4 10             	add    $0x10,%esp
    7f80:	a1 04 28 01 00       	mov    0x12804,%eax
    7f85:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7f88:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7f8b:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7f8e:	8d 90 00 a2 03 00    	lea    0x3a200(%eax),%edx
    7f94:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7f97:	8b 08                	mov    (%eax),%ecx
    7f99:	89 0a                	mov    %ecx,(%edx)
    7f9b:	8b 48 04             	mov    0x4(%eax),%ecx
    7f9e:	89 4a 04             	mov    %ecx,0x4(%edx)
    7fa1:	8b 48 08             	mov    0x8(%eax),%ecx
    7fa4:	89 4a 08             	mov    %ecx,0x8(%edx)
    7fa7:	8b 48 0c             	mov    0xc(%eax),%ecx
    7faa:	89 4a 0c             	mov    %ecx,0xc(%edx)
    7fad:	8b 48 10             	mov    0x10(%eax),%ecx
    7fb0:	89 4a 10             	mov    %ecx,0x10(%edx)
    7fb3:	8b 48 14             	mov    0x14(%eax),%ecx
    7fb6:	89 4a 14             	mov    %ecx,0x14(%edx)
    7fb9:	8b 48 18             	mov    0x18(%eax),%ecx
    7fbc:	89 4a 18             	mov    %ecx,0x18(%edx)
    7fbf:	8b 48 1c             	mov    0x1c(%eax),%ecx
    7fc2:	89 4a 1c             	mov    %ecx,0x1c(%edx)
    7fc5:	8b 48 20             	mov    0x20(%eax),%ecx
    7fc8:	89 4a 20             	mov    %ecx,0x20(%edx)
    7fcb:	8b 48 24             	mov    0x24(%eax),%ecx
    7fce:	89 4a 24             	mov    %ecx,0x24(%edx)
    7fd1:	8b 48 28             	mov    0x28(%eax),%ecx
    7fd4:	89 4a 28             	mov    %ecx,0x28(%edx)
    7fd7:	8b 48 2c             	mov    0x2c(%eax),%ecx
    7fda:	89 4a 2c             	mov    %ecx,0x2c(%edx)
    7fdd:	8b 48 30             	mov    0x30(%eax),%ecx
    7fe0:	89 4a 30             	mov    %ecx,0x30(%edx)
    7fe3:	8b 48 34             	mov    0x34(%eax),%ecx
    7fe6:	89 4a 34             	mov    %ecx,0x34(%edx)
    7fe9:	8b 40 38             	mov    0x38(%eax),%eax
    7fec:	89 42 38             	mov    %eax,0x38(%edx)
    7fef:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7ff2:	6b c0 3c             	imul   $0x3c,%eax,%eax
    7ff5:	8d 90 38 a2 03 00    	lea    0x3a238(%eax),%edx
    7ffb:	8b 45 08             	mov    0x8(%ebp),%eax
    7ffe:	89 02                	mov    %eax,(%edx)
    8000:	90                   	nop
    8001:	c9                   	leave  
    8002:	c3                   	ret    

00008003 <get_super_block>:
    8003:	55                   	push   %ebp
    8004:	89 e5                	mov    %esp,%ebp
    8006:	83 ec 18             	sub    $0x18,%esp
    8009:	c7 45 f4 00 a2 03 00 	movl   $0x3a200,-0xc(%ebp)
    8010:	eb 14                	jmp    8026 <get_super_block+0x23>
    8012:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8015:	8b 40 38             	mov    0x38(%eax),%eax
    8018:	39 45 08             	cmp    %eax,0x8(%ebp)
    801b:	75 05                	jne    8022 <get_super_block+0x1f>
    801d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8020:	eb 25                	jmp    8047 <get_super_block+0x44>
    8022:	83 45 f4 3c          	addl   $0x3c,-0xc(%ebp)
    8026:	81 7d f4 e0 a3 03 00 	cmpl   $0x3a3e0,-0xc(%ebp)
    802d:	72 e3                	jb     8012 <get_super_block+0xf>
    802f:	83 ec 08             	sub    $0x8,%esp
    8032:	ff 75 08             	pushl  0x8(%ebp)
    8035:	68 7c e0 00 00       	push   $0xe07c
    803a:	e8 cb 9a ff ff       	call   1b0a <panic>
    803f:	83 c4 10             	add    $0x10,%esp
    8042:	b8 00 00 00 00       	mov    $0x0,%eax
    8047:	c9                   	leave  
    8048:	c3                   	ret    

00008049 <get_inode>:
    8049:	55                   	push   %ebp
    804a:	89 e5                	mov    %esp,%ebp
    804c:	83 ec 28             	sub    $0x28,%esp
    804f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8053:	75 0a                	jne    805f <get_inode+0x16>
    8055:	b8 00 00 00 00       	mov    $0x0,%eax
    805a:	e9 4b 01 00 00       	jmp    81aa <get_inode+0x161>
    805f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8066:	c7 45 f4 20 39 01 00 	movl   $0x13920,-0xc(%ebp)
    806d:	eb 47                	jmp    80b6 <get_inode+0x6d>
    806f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8072:	8b 40 24             	mov    0x24(%eax),%eax
    8075:	85 c0                	test   %eax,%eax
    8077:	74 2d                	je     80a6 <get_inode+0x5d>
    8079:	8b 45 f4             	mov    -0xc(%ebp),%eax
    807c:	8b 40 20             	mov    0x20(%eax),%eax
    807f:	39 45 08             	cmp    %eax,0x8(%ebp)
    8082:	75 2e                	jne    80b2 <get_inode+0x69>
    8084:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8087:	8b 40 28             	mov    0x28(%eax),%eax
    808a:	39 45 0c             	cmp    %eax,0xc(%ebp)
    808d:	75 23                	jne    80b2 <get_inode+0x69>
    808f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8092:	8b 40 24             	mov    0x24(%eax),%eax
    8095:	8d 50 01             	lea    0x1(%eax),%edx
    8098:	8b 45 f4             	mov    -0xc(%ebp),%eax
    809b:	89 50 24             	mov    %edx,0x24(%eax)
    809e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80a1:	e9 04 01 00 00       	jmp    81aa <get_inode+0x161>
    80a6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    80aa:	75 06                	jne    80b2 <get_inode+0x69>
    80ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80af:	89 45 f0             	mov    %eax,-0x10(%ebp)
    80b2:	83 45 f4 2c          	addl   $0x2c,-0xc(%ebp)
    80b6:	81 7d f4 20 44 01 00 	cmpl   $0x14420,-0xc(%ebp)
    80bd:	72 b0                	jb     806f <get_inode+0x26>
    80bf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    80c3:	75 10                	jne    80d5 <get_inode+0x8c>
    80c5:	83 ec 0c             	sub    $0xc,%esp
    80c8:	68 a0 e0 00 00       	push   $0xe0a0
    80cd:	e8 38 9a ff ff       	call   1b0a <panic>
    80d2:	83 c4 10             	add    $0x10,%esp
    80d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    80d8:	8b 55 08             	mov    0x8(%ebp),%edx
    80db:	89 50 20             	mov    %edx,0x20(%eax)
    80de:	8b 45 f0             	mov    -0x10(%ebp),%eax
    80e1:	8b 55 0c             	mov    0xc(%ebp),%edx
    80e4:	89 50 28             	mov    %edx,0x28(%eax)
    80e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    80ea:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    80f1:	83 ec 0c             	sub    $0xc,%esp
    80f4:	ff 75 08             	pushl  0x8(%ebp)
    80f7:	e8 07 ff ff ff       	call   8003 <get_super_block>
    80fc:	83 c4 10             	add    $0x10,%esp
    80ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8102:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8105:	8b 50 0c             	mov    0xc(%eax),%edx
    8108:	8b 45 ec             	mov    -0x14(%ebp),%eax
    810b:	8b 40 10             	mov    0x10(%eax),%eax
    810e:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8111:	8b 45 0c             	mov    0xc(%ebp),%eax
    8114:	83 e8 01             	sub    $0x1,%eax
    8117:	8d 50 0f             	lea    0xf(%eax),%edx
    811a:	85 c0                	test   %eax,%eax
    811c:	0f 48 c2             	cmovs  %edx,%eax
    811f:	c1 f8 04             	sar    $0x4,%eax
    8122:	01 c8                	add    %ecx,%eax
    8124:	83 c0 02             	add    $0x2,%eax
    8127:	89 45 e8             	mov    %eax,-0x18(%ebp)
    812a:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8130:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8133:	c1 e0 09             	shl    $0x9,%eax
    8136:	99                   	cltd   
    8137:	83 ec 04             	sub    $0x4,%esp
    813a:	51                   	push   %ecx
    813b:	6a 03                	push   $0x3
    813d:	68 00 02 00 00       	push   $0x200
    8142:	52                   	push   %edx
    8143:	50                   	push   %eax
    8144:	ff 75 08             	pushl  0x8(%ebp)
    8147:	68 eb 03 00 00       	push   $0x3eb
    814c:	e8 aa fc ff ff       	call   7dfb <rw_sector>
    8151:	83 c4 20             	add    $0x20,%esp
    8154:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    815a:	8b 45 0c             	mov    0xc(%ebp),%eax
    815d:	8d 50 ff             	lea    -0x1(%eax),%edx
    8160:	89 d0                	mov    %edx,%eax
    8162:	c1 f8 1f             	sar    $0x1f,%eax
    8165:	c1 e8 1c             	shr    $0x1c,%eax
    8168:	01 c2                	add    %eax,%edx
    816a:	83 e2 0f             	and    $0xf,%edx
    816d:	29 c2                	sub    %eax,%edx
    816f:	89 d0                	mov    %edx,%eax
    8171:	c1 e0 05             	shl    $0x5,%eax
    8174:	01 c8                	add    %ecx,%eax
    8176:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8179:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    817c:	8b 10                	mov    (%eax),%edx
    817e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8181:	89 10                	mov    %edx,(%eax)
    8183:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8186:	8b 50 04             	mov    0x4(%eax),%edx
    8189:	8b 45 f0             	mov    -0x10(%ebp),%eax
    818c:	89 50 04             	mov    %edx,0x4(%eax)
    818f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8192:	8b 50 08             	mov    0x8(%eax),%edx
    8195:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8198:	89 50 08             	mov    %edx,0x8(%eax)
    819b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    819e:	8b 50 0c             	mov    0xc(%eax),%edx
    81a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81a4:	89 50 0c             	mov    %edx,0xc(%eax)
    81a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81aa:	c9                   	leave  
    81ab:	c3                   	ret    

000081ac <put_inode>:
    81ac:	55                   	push   %ebp
    81ad:	89 e5                	mov    %esp,%ebp
    81af:	83 ec 08             	sub    $0x8,%esp
    81b2:	8b 45 08             	mov    0x8(%ebp),%eax
    81b5:	8b 40 24             	mov    0x24(%eax),%eax
    81b8:	85 c0                	test   %eax,%eax
    81ba:	7f 1c                	jg     81d8 <put_inode+0x2c>
    81bc:	68 06 02 00 00       	push   $0x206
    81c1:	68 3f de 00 00       	push   $0xde3f
    81c6:	68 3f de 00 00       	push   $0xde3f
    81cb:	68 b8 e0 00 00       	push   $0xe0b8
    81d0:	e8 08 43 00 00       	call   c4dd <assertion_failure>
    81d5:	83 c4 10             	add    $0x10,%esp
    81d8:	8b 45 08             	mov    0x8(%ebp),%eax
    81db:	8b 40 24             	mov    0x24(%eax),%eax
    81de:	8d 50 ff             	lea    -0x1(%eax),%edx
    81e1:	8b 45 08             	mov    0x8(%ebp),%eax
    81e4:	89 50 24             	mov    %edx,0x24(%eax)
    81e7:	90                   	nop
    81e8:	c9                   	leave  
    81e9:	c3                   	ret    

000081ea <sync_inode>:
    81ea:	55                   	push   %ebp
    81eb:	89 e5                	mov    %esp,%ebp
    81ed:	53                   	push   %ebx
    81ee:	83 ec 14             	sub    $0x14,%esp
    81f1:	8b 45 08             	mov    0x8(%ebp),%eax
    81f4:	8b 40 20             	mov    0x20(%eax),%eax
    81f7:	83 ec 0c             	sub    $0xc,%esp
    81fa:	50                   	push   %eax
    81fb:	e8 03 fe ff ff       	call   8003 <get_super_block>
    8200:	83 c4 10             	add    $0x10,%esp
    8203:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8206:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8209:	8b 50 0c             	mov    0xc(%eax),%edx
    820c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    820f:	8b 40 10             	mov    0x10(%eax),%eax
    8212:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8215:	8b 45 08             	mov    0x8(%ebp),%eax
    8218:	8b 40 28             	mov    0x28(%eax),%eax
    821b:	83 e8 01             	sub    $0x1,%eax
    821e:	8d 50 0f             	lea    0xf(%eax),%edx
    8221:	85 c0                	test   %eax,%eax
    8223:	0f 48 c2             	cmovs  %edx,%eax
    8226:	c1 f8 04             	sar    $0x4,%eax
    8229:	01 c8                	add    %ecx,%eax
    822b:	83 c0 02             	add    $0x2,%eax
    822e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8231:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8237:	8b 45 f0             	mov    -0x10(%ebp),%eax
    823a:	c1 e0 09             	shl    $0x9,%eax
    823d:	99                   	cltd   
    823e:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8241:	8b 49 20             	mov    0x20(%ecx),%ecx
    8244:	83 ec 04             	sub    $0x4,%esp
    8247:	53                   	push   %ebx
    8248:	6a 03                	push   $0x3
    824a:	68 00 02 00 00       	push   $0x200
    824f:	52                   	push   %edx
    8250:	50                   	push   %eax
    8251:	51                   	push   %ecx
    8252:	68 eb 03 00 00       	push   $0x3eb
    8257:	e8 9f fb ff ff       	call   7dfb <rw_sector>
    825c:	83 c4 20             	add    $0x20,%esp
    825f:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8265:	8b 45 08             	mov    0x8(%ebp),%eax
    8268:	8b 40 28             	mov    0x28(%eax),%eax
    826b:	8d 50 ff             	lea    -0x1(%eax),%edx
    826e:	89 d0                	mov    %edx,%eax
    8270:	c1 f8 1f             	sar    $0x1f,%eax
    8273:	c1 e8 1c             	shr    $0x1c,%eax
    8276:	01 c2                	add    %eax,%edx
    8278:	83 e2 0f             	and    $0xf,%edx
    827b:	29 c2                	sub    %eax,%edx
    827d:	89 d0                	mov    %edx,%eax
    827f:	c1 e0 05             	shl    $0x5,%eax
    8282:	01 c8                	add    %ecx,%eax
    8284:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8287:	8b 45 08             	mov    0x8(%ebp),%eax
    828a:	8b 10                	mov    (%eax),%edx
    828c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    828f:	89 10                	mov    %edx,(%eax)
    8291:	8b 45 08             	mov    0x8(%ebp),%eax
    8294:	8b 50 04             	mov    0x4(%eax),%edx
    8297:	8b 45 ec             	mov    -0x14(%ebp),%eax
    829a:	89 50 04             	mov    %edx,0x4(%eax)
    829d:	8b 45 08             	mov    0x8(%ebp),%eax
    82a0:	8b 50 08             	mov    0x8(%eax),%edx
    82a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    82a6:	89 50 08             	mov    %edx,0x8(%eax)
    82a9:	8b 45 08             	mov    0x8(%ebp),%eax
    82ac:	8b 50 0c             	mov    0xc(%eax),%edx
    82af:	8b 45 ec             	mov    -0x14(%ebp),%eax
    82b2:	89 50 0c             	mov    %edx,0xc(%eax)
    82b5:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    82bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82be:	c1 e0 09             	shl    $0x9,%eax
    82c1:	99                   	cltd   
    82c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
    82c5:	8b 49 20             	mov    0x20(%ecx),%ecx
    82c8:	83 ec 04             	sub    $0x4,%esp
    82cb:	53                   	push   %ebx
    82cc:	6a 03                	push   $0x3
    82ce:	68 00 02 00 00       	push   $0x200
    82d3:	52                   	push   %edx
    82d4:	50                   	push   %eax
    82d5:	51                   	push   %ecx
    82d6:	68 ec 03 00 00       	push   $0x3ec
    82db:	e8 1b fb ff ff       	call   7dfb <rw_sector>
    82e0:	83 c4 20             	add    $0x20,%esp
    82e3:	90                   	nop
    82e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    82e7:	c9                   	leave  
    82e8:	c3                   	ret    

000082e9 <fs_fork>:
    82e9:	55                   	push   %ebp
    82ea:	89 e5                	mov    %esp,%ebp
    82ec:	83 ec 10             	sub    $0x10,%esp
    82ef:	a1 6c 95 03 00       	mov    0x3956c,%eax
    82f4:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    82fa:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    82ff:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8302:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    8309:	eb 44                	jmp    834f <fs_fork+0x66>
    830b:	8b 45 f8             	mov    -0x8(%ebp),%eax
    830e:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8311:	83 c2 24             	add    $0x24,%edx
    8314:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8318:	85 c0                	test   %eax,%eax
    831a:	74 2f                	je     834b <fs_fork+0x62>
    831c:	8b 45 f8             	mov    -0x8(%ebp),%eax
    831f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8322:	83 c2 24             	add    $0x24,%edx
    8325:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8329:	8b 50 08             	mov    0x8(%eax),%edx
    832c:	83 c2 01             	add    $0x1,%edx
    832f:	89 50 08             	mov    %edx,0x8(%eax)
    8332:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8335:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8338:	83 c2 24             	add    $0x24,%edx
    833b:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    833f:	8b 40 0c             	mov    0xc(%eax),%eax
    8342:	8b 50 24             	mov    0x24(%eax),%edx
    8345:	83 c2 01             	add    $0x1,%edx
    8348:	89 50 24             	mov    %edx,0x24(%eax)
    834b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    834f:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    8353:	7e b6                	jle    830b <fs_fork+0x22>
    8355:	b8 00 00 00 00       	mov    $0x0,%eax
    835a:	c9                   	leave  
    835b:	c3                   	ret    

0000835c <fs_exit>:
    835c:	55                   	push   %ebp
    835d:	89 e5                	mov    %esp,%ebp
    835f:	83 ec 10             	sub    $0x10,%esp
    8362:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8367:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    836d:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    8372:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8375:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    837c:	eb 70                	jmp    83ee <fs_exit+0x92>
    837e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8381:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8384:	83 c2 24             	add    $0x24,%edx
    8387:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    838b:	85 c0                	test   %eax,%eax
    838d:	74 5b                	je     83ea <fs_exit+0x8e>
    838f:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8392:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8395:	83 c2 24             	add    $0x24,%edx
    8398:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    839c:	8b 40 0c             	mov    0xc(%eax),%eax
    839f:	8b 50 24             	mov    0x24(%eax),%edx
    83a2:	83 ea 01             	sub    $0x1,%edx
    83a5:	89 50 24             	mov    %edx,0x24(%eax)
    83a8:	8b 45 f8             	mov    -0x8(%ebp),%eax
    83ab:	8b 55 fc             	mov    -0x4(%ebp),%edx
    83ae:	83 c2 24             	add    $0x24,%edx
    83b1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    83b5:	8b 50 08             	mov    0x8(%eax),%edx
    83b8:	83 ea 01             	sub    $0x1,%edx
    83bb:	89 50 08             	mov    %edx,0x8(%eax)
    83be:	8b 40 08             	mov    0x8(%eax),%eax
    83c1:	85 c0                	test   %eax,%eax
    83c3:	75 14                	jne    83d9 <fs_exit+0x7d>
    83c5:	8b 45 f8             	mov    -0x8(%ebp),%eax
    83c8:	8b 55 fc             	mov    -0x4(%ebp),%edx
    83cb:	83 c2 24             	add    $0x24,%edx
    83ce:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    83d2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    83d9:	8b 45 f8             	mov    -0x8(%ebp),%eax
    83dc:	8b 55 fc             	mov    -0x4(%ebp),%edx
    83df:	83 c2 24             	add    $0x24,%edx
    83e2:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    83e9:	00 
    83ea:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    83ee:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    83f2:	7e 8a                	jle    837e <fs_exit+0x22>
    83f4:	b8 00 00 00 00       	mov    $0x0,%eax
    83f9:	c9                   	leave  
    83fa:	c3                   	ret    

000083fb <do_open>:
    83fb:	55                   	push   %ebp
    83fc:	89 e5                	mov    %esp,%ebp
    83fe:	53                   	push   %ebx
    83ff:	81 ec 34 01 00 00    	sub    $0x134,%esp
    8405:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
    840c:	a1 68 95 03 00       	mov    0x39568,%eax
    8411:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8414:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8419:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    841c:	a1 60 95 03 00       	mov    0x39560,%eax
    8421:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8424:	83 7d e4 7f          	cmpl   $0x7f,-0x1c(%ebp)
    8428:	7e 19                	jle    8443 <do_open+0x48>
    842a:	6a 33                	push   $0x33
    842c:	68 cc e0 00 00       	push   $0xe0cc
    8431:	68 cc e0 00 00       	push   $0xe0cc
    8436:	68 d6 e0 00 00       	push   $0xe0d6
    843b:	e8 9d 40 00 00       	call   c4dd <assertion_failure>
    8440:	83 c4 10             	add    $0x10,%esp
    8443:	a1 88 95 03 00       	mov    0x39588,%eax
    8448:	83 ec 08             	sub    $0x8,%esp
    844b:	50                   	push   %eax
    844c:	ff 75 e0             	pushl  -0x20(%ebp)
    844f:	e8 77 ba ff ff       	call   3ecb <va2la>
    8454:	83 c4 10             	add    $0x10,%esp
    8457:	89 c3                	mov    %eax,%ebx
    8459:	83 ec 08             	sub    $0x8,%esp
    845c:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8462:	50                   	push   %eax
    8463:	6a 03                	push   $0x3
    8465:	e8 61 ba ff ff       	call   3ecb <va2la>
    846a:	83 c4 10             	add    $0x10,%esp
    846d:	83 ec 04             	sub    $0x4,%esp
    8470:	ff 75 e4             	pushl  -0x1c(%ebp)
    8473:	53                   	push   %ebx
    8474:	50                   	push   %eax
    8475:	e8 d6 3d 00 00       	call   c250 <memcpy>
    847a:	83 c4 10             	add    $0x10,%esp
    847d:	8d 95 54 ff ff ff    	lea    -0xac(%ebp),%edx
    8483:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8486:	01 d0                	add    %edx,%eax
    8488:	c6 00 00             	movb   $0x0,(%eax)
    848b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8492:	eb 1f                	jmp    84b3 <do_open+0xb8>
    8494:	a1 44 88 03 00       	mov    0x38844,%eax
    8499:	8b 55 f0             	mov    -0x10(%ebp),%edx
    849c:	83 c2 24             	add    $0x24,%edx
    849f:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    84a3:	85 c0                	test   %eax,%eax
    84a5:	75 08                	jne    84af <do_open+0xb4>
    84a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    84aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    84ad:	eb 0a                	jmp    84b9 <do_open+0xbe>
    84af:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    84b3:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    84b7:	7e db                	jle    8494 <do_open+0x99>
    84b9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    84bd:	78 06                	js     84c5 <do_open+0xca>
    84bf:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    84c3:	7e 24                	jle    84e9 <do_open+0xee>
    84c5:	a1 44 88 03 00       	mov    0x38844,%eax
    84ca:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    84cf:	c1 f8 03             	sar    $0x3,%eax
    84d2:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    84d8:	83 ec 08             	sub    $0x8,%esp
    84db:	50                   	push   %eax
    84dc:	68 ea e0 00 00       	push   $0xe0ea
    84e1:	e8 24 96 ff ff       	call   1b0a <panic>
    84e6:	83 c4 10             	add    $0x10,%esp
    84e9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    84f0:	eb 15                	jmp    8507 <do_open+0x10c>
    84f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    84f5:	c1 e0 04             	shl    $0x4,%eax
    84f8:	05 ac 95 03 00       	add    $0x395ac,%eax
    84fd:	8b 00                	mov    (%eax),%eax
    84ff:	85 c0                	test   %eax,%eax
    8501:	74 0c                	je     850f <do_open+0x114>
    8503:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8507:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    850b:	7e e5                	jle    84f2 <do_open+0xf7>
    850d:	eb 01                	jmp    8510 <do_open+0x115>
    850f:	90                   	nop
    8510:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    8514:	7e 24                	jle    853a <do_open+0x13f>
    8516:	a1 44 88 03 00       	mov    0x38844,%eax
    851b:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    8520:	c1 f8 03             	sar    $0x3,%eax
    8523:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    8529:	83 ec 08             	sub    $0x8,%esp
    852c:	50                   	push   %eax
    852d:	68 04 e1 00 00       	push   $0xe104
    8532:	e8 d3 95 ff ff       	call   1b0a <panic>
    8537:	83 c4 10             	add    $0x10,%esp
    853a:	83 ec 0c             	sub    $0xc,%esp
    853d:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8543:	50                   	push   %eax
    8544:	e8 23 0b 00 00       	call   906c <search_file>
    8549:	83 c4 10             	add    $0x10,%esp
    854c:	89 45 dc             	mov    %eax,-0x24(%ebp)
    854f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8556:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8559:	83 e0 01             	and    $0x1,%eax
    855c:	85 c0                	test   %eax,%eax
    855e:	74 3a                	je     859a <do_open+0x19f>
    8560:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    8564:	74 1a                	je     8580 <do_open+0x185>
    8566:	83 ec 0c             	sub    $0xc,%esp
    8569:	68 24 e1 00 00       	push   $0xe124
    856e:	e8 92 39 00 00       	call   bf05 <printl>
    8573:	83 c4 10             	add    $0x10,%esp
    8576:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    857b:	e9 04 02 00 00       	jmp    8784 <do_open+0x389>
    8580:	83 ec 08             	sub    $0x8,%esp
    8583:	ff 75 e8             	pushl  -0x18(%ebp)
    8586:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    858c:	50                   	push   %eax
    858d:	e8 f7 01 00 00       	call   8789 <create_file>
    8592:	83 c4 10             	add    $0x10,%esp
    8595:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8598:	eb 6c                	jmp    8606 <do_open+0x20b>
    859a:	8b 45 e8             	mov    -0x18(%ebp),%eax
    859d:	83 e0 02             	and    $0x2,%eax
    85a0:	85 c0                	test   %eax,%eax
    85a2:	75 19                	jne    85bd <do_open+0x1c2>
    85a4:	6a 58                	push   $0x58
    85a6:	68 cc e0 00 00       	push   $0xe0cc
    85ab:	68 cc e0 00 00       	push   $0xe0cc
    85b0:	68 37 e1 00 00       	push   $0xe137
    85b5:	e8 23 3f 00 00       	call   c4dd <assertion_failure>
    85ba:	83 c4 10             	add    $0x10,%esp
    85bd:	83 ec 04             	sub    $0x4,%esp
    85c0:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    85c6:	50                   	push   %eax
    85c7:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    85cd:	50                   	push   %eax
    85ce:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    85d4:	50                   	push   %eax
    85d5:	e8 e8 0b 00 00       	call   91c2 <strip_path>
    85da:	83 c4 10             	add    $0x10,%esp
    85dd:	85 c0                	test   %eax,%eax
    85df:	74 0a                	je     85eb <do_open+0x1f0>
    85e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    85e6:	e9 99 01 00 00       	jmp    8784 <do_open+0x389>
    85eb:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    85f1:	8b 40 20             	mov    0x20(%eax),%eax
    85f4:	83 ec 08             	sub    $0x8,%esp
    85f7:	ff 75 dc             	pushl  -0x24(%ebp)
    85fa:	50                   	push   %eax
    85fb:	e8 49 fa ff ff       	call   8049 <get_inode>
    8600:	83 c4 10             	add    $0x10,%esp
    8603:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8606:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    860a:	0f 84 6a 01 00 00    	je     877a <do_open+0x37f>
    8610:	a1 44 88 03 00       	mov    0x38844,%eax
    8615:	8b 55 f0             	mov    -0x10(%ebp),%edx
    8618:	c1 e2 04             	shl    $0x4,%edx
    861b:	8d 8a a0 95 03 00    	lea    0x395a0(%edx),%ecx
    8621:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8624:	83 c2 24             	add    $0x24,%edx
    8627:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
    862b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    862e:	c1 e0 04             	shl    $0x4,%eax
    8631:	8d 90 ac 95 03 00    	lea    0x395ac(%eax),%edx
    8637:	8b 45 ec             	mov    -0x14(%ebp),%eax
    863a:	89 02                	mov    %eax,(%edx)
    863c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    863f:	c1 e0 04             	shl    $0x4,%eax
    8642:	8d 90 a0 95 03 00    	lea    0x395a0(%eax),%edx
    8648:	8b 45 e8             	mov    -0x18(%ebp),%eax
    864b:	89 02                	mov    %eax,(%edx)
    864d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8650:	c1 e0 04             	shl    $0x4,%eax
    8653:	05 a8 95 03 00       	add    $0x395a8,%eax
    8658:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    865e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8661:	c1 e0 04             	shl    $0x4,%eax
    8664:	05 a4 95 03 00       	add    $0x395a4,%eax
    8669:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    866f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8672:	8b 00                	mov    (%eax),%eax
    8674:	25 00 f0 00 00       	and    $0xf000,%eax
    8679:	89 45 d8             	mov    %eax,-0x28(%ebp)
    867c:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
    8683:	0f 85 9b 00 00 00    	jne    8724 <do_open+0x329>
    8689:	c7 85 d4 fe ff ff e9 	movl   $0x3e9,-0x12c(%ebp)
    8690:	03 00 00 
    8693:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8696:	8b 40 08             	mov    0x8(%eax),%eax
    8699:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    869c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    869f:	0f b6 c0             	movzbl %al,%eax
    86a2:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
    86a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    86ab:	c1 f8 08             	sar    $0x8,%eax
    86ae:	0f b6 c0             	movzbl %al,%eax
    86b1:	83 f8 04             	cmp    $0x4,%eax
    86b4:	74 19                	je     86cf <do_open+0x2d4>
    86b6:	6a 73                	push   $0x73
    86b8:	68 cc e0 00 00       	push   $0xe0cc
    86bd:	68 cc e0 00 00       	push   $0xe0cc
    86c2:	68 46 e1 00 00       	push   $0xe146
    86c7:	e8 11 3e 00 00       	call   c4dd <assertion_failure>
    86cc:	83 c4 10             	add    $0x10,%esp
    86cf:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    86d2:	c1 f8 08             	sar    $0x8,%eax
    86d5:	0f b6 c0             	movzbl %al,%eax
    86d8:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    86df:	83 f8 ec             	cmp    $0xffffffec,%eax
    86e2:	75 19                	jne    86fd <do_open+0x302>
    86e4:	6a 74                	push   $0x74
    86e6:	68 cc e0 00 00       	push   $0xe0cc
    86eb:	68 cc e0 00 00       	push   $0xe0cc
    86f0:	68 58 e1 00 00       	push   $0xe158
    86f5:	e8 e3 3d 00 00       	call   c4dd <assertion_failure>
    86fa:	83 c4 10             	add    $0x10,%esp
    86fd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    8700:	c1 f8 08             	sar    $0x8,%eax
    8703:	0f b6 c0             	movzbl %al,%eax
    8706:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    870d:	83 ec 04             	sub    $0x4,%esp
    8710:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
    8716:	52                   	push   %edx
    8717:	50                   	push   %eax
    8718:	6a 03                	push   $0x3
    871a:	e8 a9 3b 00 00       	call   c2c8 <send_recv>
    871f:	83 c4 10             	add    $0x10,%esp
    8722:	eb 5d                	jmp    8781 <do_open+0x386>
    8724:	81 7d d8 00 40 00 00 	cmpl   $0x4000,-0x28(%ebp)
    872b:	75 26                	jne    8753 <do_open+0x358>
    872d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8730:	8b 40 28             	mov    0x28(%eax),%eax
    8733:	83 f8 01             	cmp    $0x1,%eax
    8736:	74 49                	je     8781 <do_open+0x386>
    8738:	6a 7a                	push   $0x7a
    873a:	68 cc e0 00 00       	push   $0xe0cc
    873f:	68 cc e0 00 00       	push   $0xe0cc
    8744:	68 87 e1 00 00       	push   $0xe187
    8749:	e8 8f 3d 00 00       	call   c4dd <assertion_failure>
    874e:	83 c4 10             	add    $0x10,%esp
    8751:	eb 2e                	jmp    8781 <do_open+0x386>
    8753:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8756:	8b 00                	mov    (%eax),%eax
    8758:	3d 00 80 00 00       	cmp    $0x8000,%eax
    875d:	74 22                	je     8781 <do_open+0x386>
    875f:	6a 7d                	push   $0x7d
    8761:	68 cc e0 00 00       	push   $0xe0cc
    8766:	68 cc e0 00 00       	push   $0xe0cc
    876b:	68 a0 e1 00 00       	push   $0xe1a0
    8770:	e8 68 3d 00 00       	call   c4dd <assertion_failure>
    8775:	83 c4 10             	add    $0x10,%esp
    8778:	eb 07                	jmp    8781 <do_open+0x386>
    877a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    877f:	eb 03                	jmp    8784 <do_open+0x389>
    8781:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8784:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8787:	c9                   	leave  
    8788:	c3                   	ret    

00008789 <create_file>:
    8789:	55                   	push   %ebp
    878a:	89 e5                	mov    %esp,%ebp
    878c:	81 ec 98 00 00 00    	sub    $0x98,%esp
    8792:	83 ec 04             	sub    $0x4,%esp
    8795:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    879b:	50                   	push   %eax
    879c:	ff 75 08             	pushl  0x8(%ebp)
    879f:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
    87a5:	50                   	push   %eax
    87a6:	e8 17 0a 00 00       	call   91c2 <strip_path>
    87ab:	83 c4 10             	add    $0x10,%esp
    87ae:	85 c0                	test   %eax,%eax
    87b0:	74 07                	je     87b9 <create_file+0x30>
    87b2:	b8 00 00 00 00       	mov    $0x0,%eax
    87b7:	eb 76                	jmp    882f <create_file+0xa6>
    87b9:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    87bf:	8b 40 20             	mov    0x20(%eax),%eax
    87c2:	83 ec 0c             	sub    $0xc,%esp
    87c5:	50                   	push   %eax
    87c6:	e8 91 01 00 00       	call   895c <alloc_imap_bit>
    87cb:	83 c4 10             	add    $0x10,%esp
    87ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
    87d1:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    87d7:	8b 40 20             	mov    0x20(%eax),%eax
    87da:	83 ec 08             	sub    $0x8,%esp
    87dd:	68 00 08 00 00       	push   $0x800
    87e2:	50                   	push   %eax
    87e3:	e8 e1 02 00 00       	call   8ac9 <alloc_smap_bit>
    87e8:	83 c4 10             	add    $0x10,%esp
    87eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    87ee:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    87f4:	8b 40 20             	mov    0x20(%eax),%eax
    87f7:	83 ec 04             	sub    $0x4,%esp
    87fa:	ff 75 f0             	pushl  -0x10(%ebp)
    87fd:	ff 75 f4             	pushl  -0xc(%ebp)
    8800:	50                   	push   %eax
    8801:	e8 ce 04 00 00       	call   8cd4 <new_inode>
    8806:	83 c4 10             	add    $0x10,%esp
    8809:	89 45 ec             	mov    %eax,-0x14(%ebp)
    880c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    880f:	8b 50 28             	mov    0x28(%eax),%edx
    8812:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    8818:	83 ec 04             	sub    $0x4,%esp
    881b:	8d 8d 6c ff ff ff    	lea    -0x94(%ebp),%ecx
    8821:	51                   	push   %ecx
    8822:	52                   	push   %edx
    8823:	50                   	push   %eax
    8824:	e8 1a 05 00 00       	call   8d43 <new_dir_entry>
    8829:	83 c4 10             	add    $0x10,%esp
    882c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    882f:	c9                   	leave  
    8830:	c3                   	ret    

00008831 <do_close>:
    8831:	55                   	push   %ebp
    8832:	89 e5                	mov    %esp,%ebp
    8834:	83 ec 18             	sub    $0x18,%esp
    8837:	a1 68 95 03 00       	mov    0x39568,%eax
    883c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    883f:	a1 44 88 03 00       	mov    0x38844,%eax
    8844:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8847:	83 c2 24             	add    $0x24,%edx
    884a:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    884e:	8b 40 0c             	mov    0xc(%eax),%eax
    8851:	83 ec 0c             	sub    $0xc,%esp
    8854:	50                   	push   %eax
    8855:	e8 52 f9 ff ff       	call   81ac <put_inode>
    885a:	83 c4 10             	add    $0x10,%esp
    885d:	a1 44 88 03 00       	mov    0x38844,%eax
    8862:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8865:	83 c2 24             	add    $0x24,%edx
    8868:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    886c:	8b 50 08             	mov    0x8(%eax),%edx
    886f:	83 ea 01             	sub    $0x1,%edx
    8872:	89 50 08             	mov    %edx,0x8(%eax)
    8875:	8b 40 08             	mov    0x8(%eax),%eax
    8878:	85 c0                	test   %eax,%eax
    887a:	75 16                	jne    8892 <do_close+0x61>
    887c:	a1 44 88 03 00       	mov    0x38844,%eax
    8881:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8884:	83 c2 24             	add    $0x24,%edx
    8887:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    888b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    8892:	a1 44 88 03 00       	mov    0x38844,%eax
    8897:	8b 55 f4             	mov    -0xc(%ebp),%edx
    889a:	83 c2 24             	add    $0x24,%edx
    889d:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    88a4:	00 
    88a5:	b8 00 00 00 00       	mov    $0x0,%eax
    88aa:	c9                   	leave  
    88ab:	c3                   	ret    

000088ac <do_lseek>:
    88ac:	55                   	push   %ebp
    88ad:	89 e5                	mov    %esp,%ebp
    88af:	83 ec 20             	sub    $0x20,%esp
    88b2:	a1 68 95 03 00       	mov    0x39568,%eax
    88b7:	89 45 f8             	mov    %eax,-0x8(%ebp)
    88ba:	a1 6c 95 03 00       	mov    0x3956c,%eax
    88bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    88c2:	a1 70 95 03 00       	mov    0x39570,%eax
    88c7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    88ca:	a1 44 88 03 00       	mov    0x38844,%eax
    88cf:	8b 55 f8             	mov    -0x8(%ebp),%edx
    88d2:	83 c2 24             	add    $0x24,%edx
    88d5:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    88d9:	8b 40 04             	mov    0x4(%eax),%eax
    88dc:	89 45 fc             	mov    %eax,-0x4(%ebp)
    88df:	a1 44 88 03 00       	mov    0x38844,%eax
    88e4:	8b 55 f8             	mov    -0x8(%ebp),%edx
    88e7:	83 c2 24             	add    $0x24,%edx
    88ea:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    88ee:	8b 40 0c             	mov    0xc(%eax),%eax
    88f1:	8b 40 04             	mov    0x4(%eax),%eax
    88f4:	89 45 ec             	mov    %eax,-0x14(%ebp)
    88f7:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    88fb:	74 14                	je     8911 <do_lseek+0x65>
    88fd:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
    8901:	74 16                	je     8919 <do_lseek+0x6d>
    8903:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    8907:	75 1d                	jne    8926 <do_lseek+0x7a>
    8909:	8b 45 f4             	mov    -0xc(%ebp),%eax
    890c:	89 45 fc             	mov    %eax,-0x4(%ebp)
    890f:	eb 1c                	jmp    892d <do_lseek+0x81>
    8911:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8914:	01 45 fc             	add    %eax,-0x4(%ebp)
    8917:	eb 14                	jmp    892d <do_lseek+0x81>
    8919:	8b 55 ec             	mov    -0x14(%ebp),%edx
    891c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    891f:	01 d0                	add    %edx,%eax
    8921:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8924:	eb 07                	jmp    892d <do_lseek+0x81>
    8926:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    892b:	eb 2d                	jmp    895a <do_lseek+0xae>
    892d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8930:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    8933:	7f 06                	jg     893b <do_lseek+0x8f>
    8935:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    8939:	79 07                	jns    8942 <do_lseek+0x96>
    893b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8940:	eb 18                	jmp    895a <do_lseek+0xae>
    8942:	a1 44 88 03 00       	mov    0x38844,%eax
    8947:	8b 55 f8             	mov    -0x8(%ebp),%edx
    894a:	83 c2 24             	add    $0x24,%edx
    894d:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8951:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8954:	89 50 04             	mov    %edx,0x4(%eax)
    8957:	8b 45 fc             	mov    -0x4(%ebp),%eax
    895a:	c9                   	leave  
    895b:	c3                   	ret    

0000895c <alloc_imap_bit>:
    895c:	55                   	push   %ebp
    895d:	89 e5                	mov    %esp,%ebp
    895f:	53                   	push   %ebx
    8960:	83 ec 24             	sub    $0x24,%esp
    8963:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    896a:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%ebp)
    8971:	83 ec 0c             	sub    $0xc,%esp
    8974:	ff 75 08             	pushl  0x8(%ebp)
    8977:	e8 87 f6 ff ff       	call   8003 <get_super_block>
    897c:	83 c4 10             	add    $0x10,%esp
    897f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8982:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    8989:	90                   	nop
    898a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    898d:	8b 50 0c             	mov    0xc(%eax),%edx
    8990:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8993:	39 c2                	cmp    %eax,%edx
    8995:	0f 86 14 01 00 00    	jbe    8aaf <alloc_imap_bit+0x153>
    899b:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    89a1:	8b 55 e8             	mov    -0x18(%ebp),%edx
    89a4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    89a7:	01 d0                	add    %edx,%eax
    89a9:	c1 e0 09             	shl    $0x9,%eax
    89ac:	99                   	cltd   
    89ad:	83 ec 04             	sub    $0x4,%esp
    89b0:	51                   	push   %ecx
    89b1:	6a 03                	push   $0x3
    89b3:	68 00 02 00 00       	push   $0x200
    89b8:	52                   	push   %edx
    89b9:	50                   	push   %eax
    89ba:	ff 75 08             	pushl  0x8(%ebp)
    89bd:	68 eb 03 00 00       	push   $0x3eb
    89c2:	e8 34 f4 ff ff       	call   7dfb <rw_sector>
    89c7:	83 c4 20             	add    $0x20,%esp
    89ca:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    89d1:	e9 c7 00 00 00       	jmp    8a9d <alloc_imap_bit+0x141>
    89d6:	8b 15 04 28 01 00    	mov    0x12804,%edx
    89dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    89df:	01 d0                	add    %edx,%eax
    89e1:	0f b6 00             	movzbl (%eax),%eax
    89e4:	3c ff                	cmp    $0xff,%al
    89e6:	75 09                	jne    89f1 <alloc_imap_bit+0x95>
    89e8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    89ec:	e9 ac 00 00 00       	jmp    8a9d <alloc_imap_bit+0x141>
    89f1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    89f8:	eb 04                	jmp    89fe <alloc_imap_bit+0xa2>
    89fa:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    89fe:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8a04:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a07:	01 d0                	add    %edx,%eax
    8a09:	0f b6 00             	movzbl (%eax),%eax
    8a0c:	0f b6 d0             	movzbl %al,%edx
    8a0f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a12:	89 c1                	mov    %eax,%ecx
    8a14:	d3 fa                	sar    %cl,%edx
    8a16:	89 d0                	mov    %edx,%eax
    8a18:	83 e0 01             	and    $0x1,%eax
    8a1b:	85 c0                	test   %eax,%eax
    8a1d:	75 db                	jne    89fa <alloc_imap_bit+0x9e>
    8a1f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8a22:	c1 e0 09             	shl    $0x9,%eax
    8a25:	89 c2                	mov    %eax,%edx
    8a27:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a2a:	01 d0                	add    %edx,%eax
    8a2c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8a33:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a36:	01 d0                	add    %edx,%eax
    8a38:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8a3b:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8a41:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a44:	01 d0                	add    %edx,%eax
    8a46:	0f b6 00             	movzbl (%eax),%eax
    8a49:	89 c3                	mov    %eax,%ebx
    8a4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a4e:	ba 01 00 00 00       	mov    $0x1,%edx
    8a53:	89 c1                	mov    %eax,%ecx
    8a55:	d3 e2                	shl    %cl,%edx
    8a57:	89 d0                	mov    %edx,%eax
    8a59:	09 c3                	or     %eax,%ebx
    8a5b:	89 d9                	mov    %ebx,%ecx
    8a5d:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8a63:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8a66:	01 d0                	add    %edx,%eax
    8a68:	89 ca                	mov    %ecx,%edx
    8a6a:	88 10                	mov    %dl,(%eax)
    8a6c:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8a72:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8a75:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8a78:	01 d0                	add    %edx,%eax
    8a7a:	c1 e0 09             	shl    $0x9,%eax
    8a7d:	99                   	cltd   
    8a7e:	83 ec 04             	sub    $0x4,%esp
    8a81:	51                   	push   %ecx
    8a82:	6a 03                	push   $0x3
    8a84:	68 00 02 00 00       	push   $0x200
    8a89:	52                   	push   %edx
    8a8a:	50                   	push   %eax
    8a8b:	ff 75 08             	pushl  0x8(%ebp)
    8a8e:	68 ec 03 00 00       	push   $0x3ec
    8a93:	e8 63 f3 ff ff       	call   7dfb <rw_sector>
    8a98:	83 c4 20             	add    $0x20,%esp
    8a9b:	eb 0d                	jmp    8aaa <alloc_imap_bit+0x14e>
    8a9d:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8aa4:	0f 8e 2c ff ff ff    	jle    89d6 <alloc_imap_bit+0x7a>
    8aaa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8aad:	eb 15                	jmp    8ac4 <alloc_imap_bit+0x168>
    8aaf:	83 ec 0c             	sub    $0xc,%esp
    8ab2:	68 b9 e1 00 00       	push   $0xe1b9
    8ab7:	e8 4e 90 ff ff       	call   1b0a <panic>
    8abc:	83 c4 10             	add    $0x10,%esp
    8abf:	b8 00 00 00 00       	mov    $0x0,%eax
    8ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8ac7:	c9                   	leave  
    8ac8:	c3                   	ret    

00008ac9 <alloc_smap_bit>:
    8ac9:	55                   	push   %ebp
    8aca:	89 e5                	mov    %esp,%ebp
    8acc:	53                   	push   %ebx
    8acd:	83 ec 24             	sub    $0x24,%esp
    8ad0:	83 ec 0c             	sub    $0xc,%esp
    8ad3:	ff 75 08             	pushl  0x8(%ebp)
    8ad6:	e8 28 f5 ff ff       	call   8003 <get_super_block>
    8adb:	83 c4 10             	add    $0x10,%esp
    8ade:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8ae1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ae4:	8b 40 0c             	mov    0xc(%eax),%eax
    8ae7:	83 c0 02             	add    $0x2,%eax
    8aea:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8aed:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8af4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8afb:	e9 96 01 00 00       	jmp    8c96 <alloc_smap_bit+0x1cd>
    8b00:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8b06:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8b09:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b0c:	01 d0                	add    %edx,%eax
    8b0e:	c1 e0 09             	shl    $0x9,%eax
    8b11:	99                   	cltd   
    8b12:	83 ec 04             	sub    $0x4,%esp
    8b15:	51                   	push   %ecx
    8b16:	6a 03                	push   $0x3
    8b18:	68 00 02 00 00       	push   $0x200
    8b1d:	52                   	push   %edx
    8b1e:	50                   	push   %eax
    8b1f:	ff 75 08             	pushl  0x8(%ebp)
    8b22:	68 eb 03 00 00       	push   $0x3eb
    8b27:	e8 cf f2 ff ff       	call   7dfb <rw_sector>
    8b2c:	83 c4 20             	add    $0x20,%esp
    8b2f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8b36:	e9 09 01 00 00       	jmp    8c44 <alloc_smap_bit+0x17b>
    8b3b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8b42:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8b46:	0f 85 e4 00 00 00    	jne    8c30 <alloc_smap_bit+0x167>
    8b4c:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8b52:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8b55:	01 d0                	add    %edx,%eax
    8b57:	0f b6 00             	movzbl (%eax),%eax
    8b5a:	3c ff                	cmp    $0xff,%al
    8b5c:	0f 84 da 00 00 00    	je     8c3c <alloc_smap_bit+0x173>
    8b62:	eb 04                	jmp    8b68 <alloc_smap_bit+0x9f>
    8b64:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8b68:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8b6e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8b71:	01 d0                	add    %edx,%eax
    8b73:	0f b6 00             	movzbl (%eax),%eax
    8b76:	0f b6 d0             	movzbl %al,%edx
    8b79:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8b7c:	89 c1                	mov    %eax,%ecx
    8b7e:	d3 fa                	sar    %cl,%edx
    8b80:	89 d0                	mov    %edx,%eax
    8b82:	83 e0 01             	and    $0x1,%eax
    8b85:	85 c0                	test   %eax,%eax
    8b87:	75 db                	jne    8b64 <alloc_smap_bit+0x9b>
    8b89:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b8c:	c1 e0 09             	shl    $0x9,%eax
    8b8f:	89 c2                	mov    %eax,%edx
    8b91:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8b94:	01 d0                	add    %edx,%eax
    8b96:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8b9d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8ba0:	01 d0                	add    %edx,%eax
    8ba2:	89 c2                	mov    %eax,%edx
    8ba4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ba7:	8b 40 14             	mov    0x14(%eax),%eax
    8baa:	01 d0                	add    %edx,%eax
    8bac:	83 e8 01             	sub    $0x1,%eax
    8baf:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8bb2:	eb 7c                	jmp    8c30 <alloc_smap_bit+0x167>
    8bb4:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8bba:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8bbd:	01 d0                	add    %edx,%eax
    8bbf:	0f b6 00             	movzbl (%eax),%eax
    8bc2:	0f b6 d0             	movzbl %al,%edx
    8bc5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8bc8:	89 c1                	mov    %eax,%ecx
    8bca:	d3 fa                	sar    %cl,%edx
    8bcc:	89 d0                	mov    %edx,%eax
    8bce:	83 e0 01             	and    $0x1,%eax
    8bd1:	85 c0                	test   %eax,%eax
    8bd3:	74 1c                	je     8bf1 <alloc_smap_bit+0x128>
    8bd5:	68 35 01 00 00       	push   $0x135
    8bda:	68 cc e0 00 00       	push   $0xe0cc
    8bdf:	68 cc e0 00 00       	push   $0xe0cc
    8be4:	68 d6 e1 00 00       	push   $0xe1d6
    8be9:	e8 ef 38 00 00       	call   c4dd <assertion_failure>
    8bee:	83 c4 10             	add    $0x10,%esp
    8bf1:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8bf7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8bfa:	01 d0                	add    %edx,%eax
    8bfc:	0f b6 00             	movzbl (%eax),%eax
    8bff:	89 c3                	mov    %eax,%ebx
    8c01:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c04:	ba 01 00 00 00       	mov    $0x1,%edx
    8c09:	89 c1                	mov    %eax,%ecx
    8c0b:	d3 e2                	shl    %cl,%edx
    8c0d:	89 d0                	mov    %edx,%eax
    8c0f:	09 c3                	or     %eax,%ebx
    8c11:	89 d9                	mov    %ebx,%ecx
    8c13:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c19:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c1c:	01 d0                	add    %edx,%eax
    8c1e:	89 ca                	mov    %ecx,%edx
    8c20:	88 10                	mov    %dl,(%eax)
    8c22:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    8c26:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8c2a:	74 13                	je     8c3f <alloc_smap_bit+0x176>
    8c2c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8c30:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8c34:	0f 8e 7a ff ff ff    	jle    8bb4 <alloc_smap_bit+0xeb>
    8c3a:	eb 04                	jmp    8c40 <alloc_smap_bit+0x177>
    8c3c:	90                   	nop
    8c3d:	eb 01                	jmp    8c40 <alloc_smap_bit+0x177>
    8c3f:	90                   	nop
    8c40:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8c44:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8c4b:	7f 0a                	jg     8c57 <alloc_smap_bit+0x18e>
    8c4d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8c51:	0f 8f e4 fe ff ff    	jg     8b3b <alloc_smap_bit+0x72>
    8c57:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8c5b:	74 2f                	je     8c8c <alloc_smap_bit+0x1c3>
    8c5d:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8c63:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8c66:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8c69:	01 d0                	add    %edx,%eax
    8c6b:	c1 e0 09             	shl    $0x9,%eax
    8c6e:	99                   	cltd   
    8c6f:	83 ec 04             	sub    $0x4,%esp
    8c72:	51                   	push   %ecx
    8c73:	6a 03                	push   $0x3
    8c75:	68 00 02 00 00       	push   $0x200
    8c7a:	52                   	push   %edx
    8c7b:	50                   	push   %eax
    8c7c:	ff 75 08             	pushl  0x8(%ebp)
    8c7f:	68 ec 03 00 00       	push   $0x3ec
    8c84:	e8 72 f1 ff ff       	call   7dfb <rw_sector>
    8c89:	83 c4 20             	add    $0x20,%esp
    8c8c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8c90:	74 17                	je     8ca9 <alloc_smap_bit+0x1e0>
    8c92:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8c96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8c99:	8b 50 10             	mov    0x10(%eax),%edx
    8c9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8c9f:	39 c2                	cmp    %eax,%edx
    8ca1:	0f 87 59 fe ff ff    	ja     8b00 <alloc_smap_bit+0x37>
    8ca7:	eb 01                	jmp    8caa <alloc_smap_bit+0x1e1>
    8ca9:	90                   	nop
    8caa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8cae:	74 1c                	je     8ccc <alloc_smap_bit+0x203>
    8cb0:	68 43 01 00 00       	push   $0x143
    8cb5:	68 cc e0 00 00       	push   $0xe0cc
    8cba:	68 cc e0 00 00       	push   $0xe0cc
    8cbf:	68 f1 e1 00 00       	push   $0xe1f1
    8cc4:	e8 14 38 00 00       	call   c4dd <assertion_failure>
    8cc9:	83 c4 10             	add    $0x10,%esp
    8ccc:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8ccf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8cd2:	c9                   	leave  
    8cd3:	c3                   	ret    

00008cd4 <new_inode>:
    8cd4:	55                   	push   %ebp
    8cd5:	89 e5                	mov    %esp,%ebp
    8cd7:	83 ec 18             	sub    $0x18,%esp
    8cda:	83 ec 08             	sub    $0x8,%esp
    8cdd:	ff 75 0c             	pushl  0xc(%ebp)
    8ce0:	ff 75 08             	pushl  0x8(%ebp)
    8ce3:	e8 61 f3 ff ff       	call   8049 <get_inode>
    8ce8:	83 c4 10             	add    $0x10,%esp
    8ceb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8cee:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8cf1:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    8cf7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8cfa:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    8d01:	8b 55 10             	mov    0x10(%ebp),%edx
    8d04:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d07:	89 50 08             	mov    %edx,0x8(%eax)
    8d0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d0d:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    8d14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d17:	8b 55 08             	mov    0x8(%ebp),%edx
    8d1a:	89 50 20             	mov    %edx,0x20(%eax)
    8d1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d20:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8d27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d2a:	8b 55 0c             	mov    0xc(%ebp),%edx
    8d2d:	89 50 28             	mov    %edx,0x28(%eax)
    8d30:	83 ec 0c             	sub    $0xc,%esp
    8d33:	ff 75 f4             	pushl  -0xc(%ebp)
    8d36:	e8 af f4 ff ff       	call   81ea <sync_inode>
    8d3b:	83 c4 10             	add    $0x10,%esp
    8d3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d41:	c9                   	leave  
    8d42:	c3                   	ret    

00008d43 <new_dir_entry>:
    8d43:	55                   	push   %ebp
    8d44:	89 e5                	mov    %esp,%ebp
    8d46:	53                   	push   %ebx
    8d47:	83 ec 24             	sub    $0x24,%esp
    8d4a:	8b 45 08             	mov    0x8(%ebp),%eax
    8d4d:	8b 40 08             	mov    0x8(%eax),%eax
    8d50:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8d53:	8b 45 08             	mov    0x8(%ebp),%eax
    8d56:	8b 40 04             	mov    0x4(%eax),%eax
    8d59:	05 00 02 00 00       	add    $0x200,%eax
    8d5e:	c1 e8 09             	shr    $0x9,%eax
    8d61:	89 45 dc             	mov    %eax,-0x24(%ebp)
    8d64:	8b 45 08             	mov    0x8(%ebp),%eax
    8d67:	8b 40 04             	mov    0x4(%eax),%eax
    8d6a:	c1 e8 04             	shr    $0x4,%eax
    8d6d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    8d70:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8d77:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8d7e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8d85:	e9 86 00 00 00       	jmp    8e10 <new_dir_entry+0xcd>
    8d8a:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8d90:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8d93:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8d96:	01 d0                	add    %edx,%eax
    8d98:	c1 e0 09             	shl    $0x9,%eax
    8d9b:	99                   	cltd   
    8d9c:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8d9f:	8b 49 20             	mov    0x20(%ecx),%ecx
    8da2:	83 ec 04             	sub    $0x4,%esp
    8da5:	53                   	push   %ebx
    8da6:	6a 03                	push   $0x3
    8da8:	68 00 02 00 00       	push   $0x200
    8dad:	52                   	push   %edx
    8dae:	50                   	push   %eax
    8daf:	51                   	push   %ecx
    8db0:	68 eb 03 00 00       	push   $0x3eb
    8db5:	e8 41 f0 ff ff       	call   7dfb <rw_sector>
    8dba:	83 c4 20             	add    $0x20,%esp
    8dbd:	a1 04 28 01 00       	mov    0x12804,%eax
    8dc2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8dc5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    8dcc:	eb 25                	jmp    8df3 <new_dir_entry+0xb0>
    8dce:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8dd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8dd5:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8dd8:	7f 23                	jg     8dfd <new_dir_entry+0xba>
    8dda:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8ddd:	8b 00                	mov    (%eax),%eax
    8ddf:	85 c0                	test   %eax,%eax
    8de1:	75 08                	jne    8deb <new_dir_entry+0xa8>
    8de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8de6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8de9:	eb 13                	jmp    8dfe <new_dir_entry+0xbb>
    8deb:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    8def:	83 45 f0 10          	addl   $0x10,-0x10(%ebp)
    8df3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8df6:	83 f8 1f             	cmp    $0x1f,%eax
    8df9:	76 d3                	jbe    8dce <new_dir_entry+0x8b>
    8dfb:	eb 01                	jmp    8dfe <new_dir_entry+0xbb>
    8dfd:	90                   	nop
    8dfe:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e01:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8e04:	7f 16                	jg     8e1c <new_dir_entry+0xd9>
    8e06:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    8e0a:	75 10                	jne    8e1c <new_dir_entry+0xd9>
    8e0c:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    8e10:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8e13:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    8e16:	0f 8c 6e ff ff ff    	jl     8d8a <new_dir_entry+0x47>
    8e1c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    8e20:	75 15                	jne    8e37 <new_dir_entry+0xf4>
    8e22:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8e25:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8e28:	8b 45 08             	mov    0x8(%ebp),%eax
    8e2b:	8b 40 04             	mov    0x4(%eax),%eax
    8e2e:	8d 50 10             	lea    0x10(%eax),%edx
    8e31:	8b 45 08             	mov    0x8(%ebp),%eax
    8e34:	89 50 04             	mov    %edx,0x4(%eax)
    8e37:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8e3a:	8b 55 0c             	mov    0xc(%ebp),%edx
    8e3d:	89 10                	mov    %edx,(%eax)
    8e3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8e42:	83 c0 04             	add    $0x4,%eax
    8e45:	83 ec 08             	sub    $0x8,%esp
    8e48:	ff 75 10             	pushl  0x10(%ebp)
    8e4b:	50                   	push   %eax
    8e4c:	e8 49 34 00 00       	call   c29a <strcpy>
    8e51:	83 c4 10             	add    $0x10,%esp
    8e54:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8e5a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8e5d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8e60:	01 d0                	add    %edx,%eax
    8e62:	c1 e0 09             	shl    $0x9,%eax
    8e65:	99                   	cltd   
    8e66:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8e69:	8b 49 20             	mov    0x20(%ecx),%ecx
    8e6c:	83 ec 04             	sub    $0x4,%esp
    8e6f:	53                   	push   %ebx
    8e70:	6a 03                	push   $0x3
    8e72:	68 00 02 00 00       	push   $0x200
    8e77:	52                   	push   %edx
    8e78:	50                   	push   %eax
    8e79:	51                   	push   %ecx
    8e7a:	68 ec 03 00 00       	push   $0x3ec
    8e7f:	e8 77 ef ff ff       	call   7dfb <rw_sector>
    8e84:	83 c4 20             	add    $0x20,%esp
    8e87:	83 ec 0c             	sub    $0xc,%esp
    8e8a:	ff 75 08             	pushl  0x8(%ebp)
    8e8d:	e8 58 f3 ff ff       	call   81ea <sync_inode>
    8e92:	83 c4 10             	add    $0x10,%esp
    8e95:	90                   	nop
    8e96:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8e99:	c9                   	leave  
    8e9a:	c3                   	ret    

00008e9b <do_stat>:
    8e9b:	55                   	push   %ebp
    8e9c:	89 e5                	mov    %esp,%ebp
    8e9e:	53                   	push   %ebx
    8e9f:	81 ec 34 01 00 00    	sub    $0x134,%esp
    8ea5:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8eaa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8ead:	a1 60 95 03 00       	mov    0x39560,%eax
    8eb2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8eb5:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
    8eb9:	7e 19                	jle    8ed4 <do_stat+0x39>
    8ebb:	6a 2a                	push   $0x2a
    8ebd:	68 08 e2 00 00       	push   $0xe208
    8ec2:	68 08 e2 00 00       	push   $0xe208
    8ec7:	68 12 e2 00 00       	push   $0xe212
    8ecc:	e8 0c 36 00 00       	call   c4dd <assertion_failure>
    8ed1:	83 c4 10             	add    $0x10,%esp
    8ed4:	a1 88 95 03 00       	mov    0x39588,%eax
    8ed9:	83 ec 08             	sub    $0x8,%esp
    8edc:	50                   	push   %eax
    8edd:	ff 75 f0             	pushl  -0x10(%ebp)
    8ee0:	e8 e6 af ff ff       	call   3ecb <va2la>
    8ee5:	83 c4 10             	add    $0x10,%esp
    8ee8:	89 c3                	mov    %eax,%ebx
    8eea:	83 ec 08             	sub    $0x8,%esp
    8eed:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    8ef3:	50                   	push   %eax
    8ef4:	6a 03                	push   $0x3
    8ef6:	e8 d0 af ff ff       	call   3ecb <va2la>
    8efb:	83 c4 10             	add    $0x10,%esp
    8efe:	83 ec 04             	sub    $0x4,%esp
    8f01:	ff 75 f4             	pushl  -0xc(%ebp)
    8f04:	53                   	push   %ebx
    8f05:	50                   	push   %eax
    8f06:	e8 45 33 00 00       	call   c250 <memcpy>
    8f0b:	83 c4 10             	add    $0x10,%esp
    8f0e:	8d 95 68 ff ff ff    	lea    -0x98(%ebp),%edx
    8f14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f17:	01 d0                	add    %edx,%eax
    8f19:	c6 00 00             	movb   $0x0,(%eax)
    8f1c:	83 ec 0c             	sub    $0xc,%esp
    8f1f:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    8f25:	50                   	push   %eax
    8f26:	e8 41 01 00 00       	call   906c <search_file>
    8f2b:	83 c4 10             	add    $0x10,%esp
    8f2e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8f31:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    8f35:	75 21                	jne    8f58 <do_stat+0xbd>
    8f37:	83 ec 08             	sub    $0x8,%esp
    8f3a:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    8f40:	50                   	push   %eax
    8f41:	68 28 e2 00 00       	push   $0xe228
    8f46:	e8 ba 2f 00 00       	call   bf05 <printl>
    8f4b:	83 c4 10             	add    $0x10,%esp
    8f4e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8f53:	e9 0f 01 00 00       	jmp    9067 <do_stat+0x1cc>
    8f58:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8f5f:	83 ec 04             	sub    $0x4,%esp
    8f62:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
    8f68:	50                   	push   %eax
    8f69:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    8f6f:	50                   	push   %eax
    8f70:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
    8f76:	50                   	push   %eax
    8f77:	e8 46 02 00 00       	call   91c2 <strip_path>
    8f7c:	83 c4 10             	add    $0x10,%esp
    8f7f:	85 c0                	test   %eax,%eax
    8f81:	74 19                	je     8f9c <do_stat+0x101>
    8f83:	6a 3f                	push   $0x3f
    8f85:	68 08 e2 00 00       	push   $0xe208
    8f8a:	68 08 e2 00 00       	push   $0xe208
    8f8f:	68 66 e2 00 00       	push   $0xe266
    8f94:	e8 44 35 00 00       	call   c4dd <assertion_failure>
    8f99:	83 c4 10             	add    $0x10,%esp
    8f9c:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
    8fa2:	8b 40 20             	mov    0x20(%eax),%eax
    8fa5:	83 ec 08             	sub    $0x8,%esp
    8fa8:	ff 75 ec             	pushl  -0x14(%ebp)
    8fab:	50                   	push   %eax
    8fac:	e8 98 f0 ff ff       	call   8049 <get_inode>
    8fb1:	83 c4 10             	add    $0x10,%esp
    8fb4:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8fb7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fba:	8b 40 20             	mov    0x20(%eax),%eax
    8fbd:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
    8fc3:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fc6:	8b 40 28             	mov    0x28(%eax),%eax
    8fc9:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
    8fcf:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fd2:	8b 00                	mov    (%eax),%eax
    8fd4:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%ebp)
    8fda:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fdd:	8b 00                	mov    (%eax),%eax
    8fdf:	25 00 f0 00 00       	and    $0xf000,%eax
    8fe4:	3d 00 60 00 00       	cmp    $0x6000,%eax
    8fe9:	74 11                	je     8ffc <do_stat+0x161>
    8feb:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fee:	8b 00                	mov    (%eax),%eax
    8ff0:	25 00 f0 00 00       	and    $0xf000,%eax
    8ff5:	3d 00 20 00 00       	cmp    $0x2000,%eax
    8ffa:	75 08                	jne    9004 <do_stat+0x169>
    8ffc:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8fff:	8b 40 08             	mov    0x8(%eax),%eax
    9002:	eb 05                	jmp    9009 <do_stat+0x16e>
    9004:	b8 00 00 00 00       	mov    $0x0,%eax
    9009:	89 85 dc fe ff ff    	mov    %eax,-0x124(%ebp)
    900f:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9012:	8b 40 04             	mov    0x4(%eax),%eax
    9015:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%ebp)
    901b:	83 ec 0c             	sub    $0xc,%esp
    901e:	ff 75 e8             	pushl  -0x18(%ebp)
    9021:	e8 86 f1 ff ff       	call   81ac <put_inode>
    9026:	83 c4 10             	add    $0x10,%esp
    9029:	83 ec 08             	sub    $0x8,%esp
    902c:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    9032:	50                   	push   %eax
    9033:	6a 03                	push   $0x3
    9035:	e8 91 ae ff ff       	call   3ecb <va2la>
    903a:	83 c4 10             	add    $0x10,%esp
    903d:	89 c3                	mov    %eax,%ebx
    903f:	a1 8c 95 03 00       	mov    0x3958c,%eax
    9044:	83 ec 08             	sub    $0x8,%esp
    9047:	50                   	push   %eax
    9048:	ff 75 f0             	pushl  -0x10(%ebp)
    904b:	e8 7b ae ff ff       	call   3ecb <va2la>
    9050:	83 c4 10             	add    $0x10,%esp
    9053:	83 ec 04             	sub    $0x4,%esp
    9056:	6a 14                	push   $0x14
    9058:	53                   	push   %ebx
    9059:	50                   	push   %eax
    905a:	e8 f1 31 00 00       	call   c250 <memcpy>
    905f:	83 c4 10             	add    $0x10,%esp
    9062:	b8 00 00 00 00       	mov    $0x0,%eax
    9067:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    906a:	c9                   	leave  
    906b:	c3                   	ret    

0000906c <search_file>:
    906c:	55                   	push   %ebp
    906d:	89 e5                	mov    %esp,%ebp
    906f:	53                   	push   %ebx
    9070:	81 ec a4 00 00 00    	sub    $0xa4,%esp
    9076:	83 ec 04             	sub    $0x4,%esp
    9079:	6a 0c                	push   $0xc
    907b:	6a 00                	push   $0x0
    907d:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    9083:	50                   	push   %eax
    9084:	e8 f0 31 00 00       	call   c279 <memset>
    9089:	83 c4 10             	add    $0x10,%esp
    908c:	83 ec 04             	sub    $0x4,%esp
    908f:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    9095:	50                   	push   %eax
    9096:	ff 75 08             	pushl  0x8(%ebp)
    9099:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    909f:	50                   	push   %eax
    90a0:	e8 1d 01 00 00       	call   91c2 <strip_path>
    90a5:	83 c4 10             	add    $0x10,%esp
    90a8:	85 c0                	test   %eax,%eax
    90aa:	74 0a                	je     90b6 <search_file+0x4a>
    90ac:	b8 00 00 00 00       	mov    $0x0,%eax
    90b1:	e9 07 01 00 00       	jmp    91bd <search_file+0x151>
    90b6:	0f b6 85 5c ff ff ff 	movzbl -0xa4(%ebp),%eax
    90bd:	84 c0                	test   %al,%al
    90bf:	75 0e                	jne    90cf <search_file+0x63>
    90c1:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    90c7:	8b 40 28             	mov    0x28(%eax),%eax
    90ca:	e9 ee 00 00 00       	jmp    91bd <search_file+0x151>
    90cf:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    90d5:	8b 40 08             	mov    0x8(%eax),%eax
    90d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    90db:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    90e1:	8b 40 04             	mov    0x4(%eax),%eax
    90e4:	05 ff 01 00 00       	add    $0x1ff,%eax
    90e9:	c1 e8 09             	shr    $0x9,%eax
    90ec:	89 45 e0             	mov    %eax,-0x20(%ebp)
    90ef:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    90f5:	8b 40 04             	mov    0x4(%eax),%eax
    90f8:	c1 e8 04             	shr    $0x4,%eax
    90fb:	89 45 dc             	mov    %eax,-0x24(%ebp)
    90fe:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9105:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    910c:	e9 98 00 00 00       	jmp    91a9 <search_file+0x13d>
    9111:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9117:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    911a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    911d:	01 d0                	add    %edx,%eax
    911f:	c1 e0 09             	shl    $0x9,%eax
    9122:	99                   	cltd   
    9123:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
    9129:	8b 49 20             	mov    0x20(%ecx),%ecx
    912c:	83 ec 04             	sub    $0x4,%esp
    912f:	53                   	push   %ebx
    9130:	6a 03                	push   $0x3
    9132:	68 00 02 00 00       	push   $0x200
    9137:	52                   	push   %edx
    9138:	50                   	push   %eax
    9139:	51                   	push   %ecx
    913a:	68 eb 03 00 00       	push   $0x3eb
    913f:	e8 b7 ec ff ff       	call   7dfb <rw_sector>
    9144:	83 c4 20             	add    $0x20,%esp
    9147:	a1 04 28 01 00       	mov    0x12804,%eax
    914c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    914f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    9156:	eb 3a                	jmp    9192 <search_file+0x126>
    9158:	8b 45 e8             	mov    -0x18(%ebp),%eax
    915b:	83 c0 04             	add    $0x4,%eax
    915e:	83 ec 04             	sub    $0x4,%esp
    9161:	6a 0c                	push   $0xc
    9163:	50                   	push   %eax
    9164:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    916a:	50                   	push   %eax
    916b:	e8 12 32 00 00       	call   c382 <memcmp>
    9170:	83 c4 10             	add    $0x10,%esp
    9173:	85 c0                	test   %eax,%eax
    9175:	75 07                	jne    917e <search_file+0x112>
    9177:	8b 45 e8             	mov    -0x18(%ebp),%eax
    917a:	8b 00                	mov    (%eax),%eax
    917c:	eb 3f                	jmp    91bd <search_file+0x151>
    917e:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9182:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9185:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    9188:	7f 12                	jg     919c <search_file+0x130>
    918a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    918e:	83 45 e8 10          	addl   $0x10,-0x18(%ebp)
    9192:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9195:	83 f8 1f             	cmp    $0x1f,%eax
    9198:	76 be                	jbe    9158 <search_file+0xec>
    919a:	eb 01                	jmp    919d <search_file+0x131>
    919c:	90                   	nop
    919d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    91a0:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    91a3:	7f 12                	jg     91b7 <search_file+0x14b>
    91a5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    91a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    91ac:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    91af:	0f 8c 5c ff ff ff    	jl     9111 <search_file+0xa5>
    91b5:	eb 01                	jmp    91b8 <search_file+0x14c>
    91b7:	90                   	nop
    91b8:	b8 00 00 00 00       	mov    $0x0,%eax
    91bd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    91c0:	c9                   	leave  
    91c1:	c3                   	ret    

000091c2 <strip_path>:
    91c2:	55                   	push   %ebp
    91c3:	89 e5                	mov    %esp,%ebp
    91c5:	83 ec 10             	sub    $0x10,%esp
    91c8:	8b 45 0c             	mov    0xc(%ebp),%eax
    91cb:	89 45 fc             	mov    %eax,-0x4(%ebp)
    91ce:	8b 45 08             	mov    0x8(%ebp),%eax
    91d1:	89 45 f8             	mov    %eax,-0x8(%ebp)
    91d4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    91d8:	75 07                	jne    91e1 <strip_path+0x1f>
    91da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    91df:	eb 66                	jmp    9247 <strip_path+0x85>
    91e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    91e4:	0f b6 00             	movzbl (%eax),%eax
    91e7:	3c 2f                	cmp    $0x2f,%al
    91e9:	75 39                	jne    9224 <strip_path+0x62>
    91eb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    91ef:	eb 33                	jmp    9224 <strip_path+0x62>
    91f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    91f4:	0f b6 00             	movzbl (%eax),%eax
    91f7:	3c 2f                	cmp    $0x2f,%al
    91f9:	75 07                	jne    9202 <strip_path+0x40>
    91fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9200:	eb 45                	jmp    9247 <strip_path+0x85>
    9202:	8b 55 fc             	mov    -0x4(%ebp),%edx
    9205:	8d 42 01             	lea    0x1(%edx),%eax
    9208:	89 45 fc             	mov    %eax,-0x4(%ebp)
    920b:	8b 45 f8             	mov    -0x8(%ebp),%eax
    920e:	8d 48 01             	lea    0x1(%eax),%ecx
    9211:	89 4d f8             	mov    %ecx,-0x8(%ebp)
    9214:	0f b6 12             	movzbl (%edx),%edx
    9217:	88 10                	mov    %dl,(%eax)
    9219:	8b 45 f8             	mov    -0x8(%ebp),%eax
    921c:	2b 45 08             	sub    0x8(%ebp),%eax
    921f:	83 f8 0b             	cmp    $0xb,%eax
    9222:	7f 0c                	jg     9230 <strip_path+0x6e>
    9224:	8b 45 fc             	mov    -0x4(%ebp),%eax
    9227:	0f b6 00             	movzbl (%eax),%eax
    922a:	84 c0                	test   %al,%al
    922c:	75 c3                	jne    91f1 <strip_path+0x2f>
    922e:	eb 01                	jmp    9231 <strip_path+0x6f>
    9230:	90                   	nop
    9231:	8b 45 f8             	mov    -0x8(%ebp),%eax
    9234:	c6 00 00             	movb   $0x0,(%eax)
    9237:	8b 15 a0 99 03 00    	mov    0x399a0,%edx
    923d:	8b 45 10             	mov    0x10(%ebp),%eax
    9240:	89 10                	mov    %edx,(%eax)
    9242:	b8 00 00 00 00       	mov    $0x0,%eax
    9247:	c9                   	leave  
    9248:	c3                   	ret    

00009249 <do_rdwt>:
    9249:	55                   	push   %ebp
    924a:	89 e5                	mov    %esp,%ebp
    924c:	56                   	push   %esi
    924d:	53                   	push   %ebx
    924e:	83 ec 50             	sub    $0x50,%esp
    9251:	a1 68 95 03 00       	mov    0x39568,%eax
    9256:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9259:	a1 8c 95 03 00       	mov    0x3958c,%eax
    925e:	89 45 dc             	mov    %eax,-0x24(%ebp)
    9261:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9266:	89 45 d8             	mov    %eax,-0x28(%ebp)
    9269:	a1 60 95 03 00       	mov    0x39560,%eax
    926e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    9271:	a1 44 88 03 00       	mov    0x38844,%eax
    9276:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9279:	83 c2 24             	add    $0x24,%edx
    927c:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9280:	3d a0 95 03 00       	cmp    $0x395a0,%eax
    9285:	72 16                	jb     929d <do_rdwt+0x54>
    9287:	a1 44 88 03 00       	mov    0x38844,%eax
    928c:	8b 55 e0             	mov    -0x20(%ebp),%edx
    928f:	83 c2 24             	add    $0x24,%edx
    9292:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9296:	3d a0 99 03 00       	cmp    $0x399a0,%eax
    929b:	72 19                	jb     92b6 <do_rdwt+0x6d>
    929d:	6a 44                	push   $0x44
    929f:	68 68 e2 00 00       	push   $0xe268
    92a4:	68 68 e2 00 00       	push   $0xe268
    92a9:	68 78 e2 00 00       	push   $0xe278
    92ae:	e8 2a 32 00 00       	call   c4dd <assertion_failure>
    92b3:	83 c4 10             	add    $0x10,%esp
    92b6:	a1 44 88 03 00       	mov    0x38844,%eax
    92bb:	8b 55 e0             	mov    -0x20(%ebp),%edx
    92be:	83 c2 24             	add    $0x24,%edx
    92c1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    92c5:	8b 00                	mov    (%eax),%eax
    92c7:	83 e0 02             	and    $0x2,%eax
    92ca:	85 c0                	test   %eax,%eax
    92cc:	75 0a                	jne    92d8 <do_rdwt+0x8f>
    92ce:	b8 00 00 00 00       	mov    $0x0,%eax
    92d3:	e9 00 04 00 00       	jmp    96d8 <do_rdwt+0x48f>
    92d8:	a1 44 88 03 00       	mov    0x38844,%eax
    92dd:	8b 55 e0             	mov    -0x20(%ebp),%edx
    92e0:	83 c2 24             	add    $0x24,%edx
    92e3:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    92e7:	8b 40 04             	mov    0x4(%eax),%eax
    92ea:	89 45 d0             	mov    %eax,-0x30(%ebp)
    92ed:	a1 44 88 03 00       	mov    0x38844,%eax
    92f2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    92f5:	83 c2 24             	add    $0x24,%edx
    92f8:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    92fc:	8b 40 0c             	mov    0xc(%eax),%eax
    92ff:	89 45 cc             	mov    %eax,-0x34(%ebp)
    9302:	81 7d cc 20 39 01 00 	cmpl   $0x13920,-0x34(%ebp)
    9309:	72 09                	jb     9314 <do_rdwt+0xcb>
    930b:	81 7d cc 20 44 01 00 	cmpl   $0x14420,-0x34(%ebp)
    9312:	72 19                	jb     932d <do_rdwt+0xe4>
    9314:	6a 4d                	push   $0x4d
    9316:	68 68 e2 00 00       	push   $0xe268
    931b:	68 68 e2 00 00       	push   $0xe268
    9320:	68 d8 e2 00 00       	push   $0xe2d8
    9325:	e8 b3 31 00 00       	call   c4dd <assertion_failure>
    932a:	83 c4 10             	add    $0x10,%esp
    932d:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9330:	8b 00                	mov    (%eax),%eax
    9332:	25 00 f0 00 00       	and    $0xf000,%eax
    9337:	89 45 c8             	mov    %eax,-0x38(%ebp)
    933a:	81 7d c8 00 20 00 00 	cmpl   $0x2000,-0x38(%ebp)
    9341:	0f 85 f2 00 00 00    	jne    9439 <do_rdwt+0x1f0>
    9347:	a1 64 95 03 00       	mov    0x39564,%eax
    934c:	83 f8 07             	cmp    $0x7,%eax
    934f:	75 07                	jne    9358 <do_rdwt+0x10f>
    9351:	b8 eb 03 00 00       	mov    $0x3eb,%eax
    9356:	eb 05                	jmp    935d <do_rdwt+0x114>
    9358:	b8 ec 03 00 00       	mov    $0x3ec,%eax
    935d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9360:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9363:	a3 64 95 03 00       	mov    %eax,0x39564
    9368:	8b 45 cc             	mov    -0x34(%ebp),%eax
    936b:	8b 40 08             	mov    0x8(%eax),%eax
    936e:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9371:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9374:	c1 f8 08             	sar    $0x8,%eax
    9377:	0f b6 c0             	movzbl %al,%eax
    937a:	83 f8 04             	cmp    $0x4,%eax
    937d:	74 19                	je     9398 <do_rdwt+0x14f>
    937f:	6a 56                	push   $0x56
    9381:	68 68 e2 00 00       	push   $0xe268
    9386:	68 68 e2 00 00       	push   $0xe268
    938b:	68 0f e3 00 00       	push   $0xe30f
    9390:	e8 48 31 00 00       	call   c4dd <assertion_failure>
    9395:	83 c4 10             	add    $0x10,%esp
    9398:	8b 45 c0             	mov    -0x40(%ebp),%eax
    939b:	0f b6 c0             	movzbl %al,%eax
    939e:	a3 74 95 03 00       	mov    %eax,0x39574
    93a3:	8b 45 dc             	mov    -0x24(%ebp),%eax
    93a6:	a3 8c 95 03 00       	mov    %eax,0x3958c
    93ab:	8b 45 d8             	mov    -0x28(%ebp),%eax
    93ae:	a3 6c 95 03 00       	mov    %eax,0x3956c
    93b3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    93b6:	a3 70 95 03 00       	mov    %eax,0x39570
    93bb:	8b 45 c0             	mov    -0x40(%ebp),%eax
    93be:	c1 f8 08             	sar    $0x8,%eax
    93c1:	0f b6 c0             	movzbl %al,%eax
    93c4:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    93cb:	83 f8 ec             	cmp    $0xffffffec,%eax
    93ce:	75 19                	jne    93e9 <do_rdwt+0x1a0>
    93d0:	6a 5c                	push   $0x5c
    93d2:	68 68 e2 00 00       	push   $0xe268
    93d7:	68 68 e2 00 00       	push   $0xe268
    93dc:	68 20 e3 00 00       	push   $0xe320
    93e1:	e8 f7 30 00 00       	call   c4dd <assertion_failure>
    93e6:	83 c4 10             	add    $0x10,%esp
    93e9:	8b 45 c0             	mov    -0x40(%ebp),%eax
    93ec:	c1 f8 08             	sar    $0x8,%eax
    93ef:	0f b6 c0             	movzbl %al,%eax
    93f2:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    93f9:	83 ec 04             	sub    $0x4,%esp
    93fc:	68 60 95 03 00       	push   $0x39560
    9401:	50                   	push   %eax
    9402:	6a 03                	push   $0x3
    9404:	e8 bf 2e 00 00       	call   c2c8 <send_recv>
    9409:	83 c4 10             	add    $0x10,%esp
    940c:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9411:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    9414:	74 19                	je     942f <do_rdwt+0x1e6>
    9416:	6a 5e                	push   $0x5e
    9418:	68 68 e2 00 00       	push   $0xe268
    941d:	68 68 e2 00 00       	push   $0xe268
    9422:	68 4f e3 00 00       	push   $0xe34f
    9427:	e8 b1 30 00 00       	call   c4dd <assertion_failure>
    942c:	83 c4 10             	add    $0x10,%esp
    942f:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9434:	e9 9f 02 00 00       	jmp    96d8 <do_rdwt+0x48f>
    9439:	8b 45 cc             	mov    -0x34(%ebp),%eax
    943c:	8b 00                	mov    (%eax),%eax
    943e:	3d 00 80 00 00       	cmp    $0x8000,%eax
    9443:	74 25                	je     946a <do_rdwt+0x221>
    9445:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9448:	8b 00                	mov    (%eax),%eax
    944a:	3d 00 40 00 00       	cmp    $0x4000,%eax
    944f:	74 19                	je     946a <do_rdwt+0x221>
    9451:	6a 63                	push   $0x63
    9453:	68 68 e2 00 00       	push   $0xe268
    9458:	68 68 e2 00 00       	push   $0xe268
    945d:	68 64 e3 00 00       	push   $0xe364
    9462:	e8 76 30 00 00       	call   c4dd <assertion_failure>
    9467:	83 c4 10             	add    $0x10,%esp
    946a:	a1 64 95 03 00       	mov    0x39564,%eax
    946f:	83 f8 07             	cmp    $0x7,%eax
    9472:	74 23                	je     9497 <do_rdwt+0x24e>
    9474:	a1 64 95 03 00       	mov    0x39564,%eax
    9479:	83 f8 08             	cmp    $0x8,%eax
    947c:	74 19                	je     9497 <do_rdwt+0x24e>
    947e:	6a 64                	push   $0x64
    9480:	68 68 e2 00 00       	push   $0xe268
    9485:	68 68 e2 00 00       	push   $0xe268
    948a:	68 9c e3 00 00       	push   $0xe39c
    948f:	e8 49 30 00 00       	call   c4dd <assertion_failure>
    9494:	83 c4 10             	add    $0x10,%esp
    9497:	a1 64 95 03 00       	mov    0x39564,%eax
    949c:	83 f8 07             	cmp    $0x7,%eax
    949f:	75 18                	jne    94b9 <do_rdwt+0x270>
    94a1:	8b 45 cc             	mov    -0x34(%ebp),%eax
    94a4:	8b 40 04             	mov    0x4(%eax),%eax
    94a7:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    94aa:	8b 55 d8             	mov    -0x28(%ebp),%edx
    94ad:	01 ca                	add    %ecx,%edx
    94af:	39 d0                	cmp    %edx,%eax
    94b1:	0f 47 c2             	cmova  %edx,%eax
    94b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    94b7:	eb 19                	jmp    94d2 <do_rdwt+0x289>
    94b9:	8b 45 cc             	mov    -0x34(%ebp),%eax
    94bc:	8b 40 0c             	mov    0xc(%eax),%eax
    94bf:	c1 e0 09             	shl    $0x9,%eax
    94c2:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    94c5:	8b 55 d8             	mov    -0x28(%ebp),%edx
    94c8:	01 ca                	add    %ecx,%edx
    94ca:	39 d0                	cmp    %edx,%eax
    94cc:	0f 47 c2             	cmova  %edx,%eax
    94cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    94d2:	8b 45 d0             	mov    -0x30(%ebp),%eax
    94d5:	99                   	cltd   
    94d6:	c1 ea 17             	shr    $0x17,%edx
    94d9:	01 d0                	add    %edx,%eax
    94db:	25 ff 01 00 00       	and    $0x1ff,%eax
    94e0:	29 d0                	sub    %edx,%eax
    94e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    94e5:	8b 45 cc             	mov    -0x34(%ebp),%eax
    94e8:	8b 40 08             	mov    0x8(%eax),%eax
    94eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
    94ee:	c1 fa 09             	sar    $0x9,%edx
    94f1:	01 d0                	add    %edx,%eax
    94f3:	89 45 bc             	mov    %eax,-0x44(%ebp)
    94f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
    94f9:	8b 40 08             	mov    0x8(%eax),%eax
    94fc:	8b 55 f4             	mov    -0xc(%ebp),%edx
    94ff:	c1 fa 09             	sar    $0x9,%edx
    9502:	01 d0                	add    %edx,%eax
    9504:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9507:	a1 c8 cd 00 00       	mov    0xcdc8,%eax
    950c:	c1 f8 09             	sar    $0x9,%eax
    950f:	89 c2                	mov    %eax,%edx
    9511:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9514:	2b 45 bc             	sub    -0x44(%ebp),%eax
    9517:	83 c0 01             	add    $0x1,%eax
    951a:	39 c2                	cmp    %eax,%edx
    951c:	0f 4e c2             	cmovle %edx,%eax
    951f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9522:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9529:	8b 45 d8             	mov    -0x28(%ebp),%eax
    952c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    952f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9532:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    9535:	e9 49 01 00 00       	jmp    9683 <do_rdwt+0x43a>
    953a:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    953d:	c1 e0 09             	shl    $0x9,%eax
    9540:	2b 45 f0             	sub    -0x10(%ebp),%eax
    9543:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    9546:	0f 4e 45 e8          	cmovle -0x18(%ebp),%eax
    954a:	89 45 b0             	mov    %eax,-0x50(%ebp)
    954d:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9553:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9556:	c1 e0 09             	shl    $0x9,%eax
    9559:	89 c6                	mov    %eax,%esi
    955b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    955e:	c1 e0 09             	shl    $0x9,%eax
    9561:	99                   	cltd   
    9562:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    9565:	8b 49 20             	mov    0x20(%ecx),%ecx
    9568:	83 ec 04             	sub    $0x4,%esp
    956b:	53                   	push   %ebx
    956c:	6a 03                	push   $0x3
    956e:	56                   	push   %esi
    956f:	52                   	push   %edx
    9570:	50                   	push   %eax
    9571:	51                   	push   %ecx
    9572:	68 eb 03 00 00       	push   $0x3eb
    9577:	e8 7f e8 ff ff       	call   7dfb <rw_sector>
    957c:	83 c4 20             	add    $0x20,%esp
    957f:	a1 64 95 03 00       	mov    0x39564,%eax
    9584:	83 f8 07             	cmp    $0x7,%eax
    9587:	75 44                	jne    95cd <do_rdwt+0x384>
    9589:	8b 15 04 28 01 00    	mov    0x12804,%edx
    958f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9592:	01 d0                	add    %edx,%eax
    9594:	83 ec 08             	sub    $0x8,%esp
    9597:	50                   	push   %eax
    9598:	6a 03                	push   $0x3
    959a:	e8 2c a9 ff ff       	call   3ecb <va2la>
    959f:	83 c4 10             	add    $0x10,%esp
    95a2:	89 c3                	mov    %eax,%ebx
    95a4:	8b 55 ec             	mov    -0x14(%ebp),%edx
    95a7:	8b 45 dc             	mov    -0x24(%ebp),%eax
    95aa:	01 d0                	add    %edx,%eax
    95ac:	83 ec 08             	sub    $0x8,%esp
    95af:	50                   	push   %eax
    95b0:	ff 75 d4             	pushl  -0x2c(%ebp)
    95b3:	e8 13 a9 ff ff       	call   3ecb <va2la>
    95b8:	83 c4 10             	add    $0x10,%esp
    95bb:	83 ec 04             	sub    $0x4,%esp
    95be:	ff 75 b0             	pushl  -0x50(%ebp)
    95c1:	53                   	push   %ebx
    95c2:	50                   	push   %eax
    95c3:	e8 88 2c 00 00       	call   c250 <memcpy>
    95c8:	83 c4 10             	add    $0x10,%esp
    95cb:	eb 74                	jmp    9641 <do_rdwt+0x3f8>
    95cd:	8b 55 ec             	mov    -0x14(%ebp),%edx
    95d0:	8b 45 dc             	mov    -0x24(%ebp),%eax
    95d3:	01 d0                	add    %edx,%eax
    95d5:	83 ec 08             	sub    $0x8,%esp
    95d8:	50                   	push   %eax
    95d9:	ff 75 d4             	pushl  -0x2c(%ebp)
    95dc:	e8 ea a8 ff ff       	call   3ecb <va2la>
    95e1:	83 c4 10             	add    $0x10,%esp
    95e4:	89 c3                	mov    %eax,%ebx
    95e6:	8b 15 04 28 01 00    	mov    0x12804,%edx
    95ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
    95ef:	01 d0                	add    %edx,%eax
    95f1:	83 ec 08             	sub    $0x8,%esp
    95f4:	50                   	push   %eax
    95f5:	6a 03                	push   $0x3
    95f7:	e8 cf a8 ff ff       	call   3ecb <va2la>
    95fc:	83 c4 10             	add    $0x10,%esp
    95ff:	83 ec 04             	sub    $0x4,%esp
    9602:	ff 75 b0             	pushl  -0x50(%ebp)
    9605:	53                   	push   %ebx
    9606:	50                   	push   %eax
    9607:	e8 44 2c 00 00       	call   c250 <memcpy>
    960c:	83 c4 10             	add    $0x10,%esp
    960f:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9615:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9618:	c1 e0 09             	shl    $0x9,%eax
    961b:	89 c6                	mov    %eax,%esi
    961d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9620:	c1 e0 09             	shl    $0x9,%eax
    9623:	99                   	cltd   
    9624:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    9627:	8b 49 20             	mov    0x20(%ecx),%ecx
    962a:	83 ec 04             	sub    $0x4,%esp
    962d:	53                   	push   %ebx
    962e:	6a 03                	push   $0x3
    9630:	56                   	push   %esi
    9631:	52                   	push   %edx
    9632:	50                   	push   %eax
    9633:	51                   	push   %ecx
    9634:	68 ec 03 00 00       	push   $0x3ec
    9639:	e8 bd e7 ff ff       	call   7dfb <rw_sector>
    963e:	83 c4 20             	add    $0x20,%esp
    9641:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    9648:	8b 45 b0             	mov    -0x50(%ebp),%eax
    964b:	01 45 ec             	add    %eax,-0x14(%ebp)
    964e:	a1 44 88 03 00       	mov    0x38844,%eax
    9653:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9656:	83 c2 24             	add    $0x24,%edx
    9659:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    965d:	8b 48 04             	mov    0x4(%eax),%ecx
    9660:	a1 44 88 03 00       	mov    0x38844,%eax
    9665:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9668:	83 c2 24             	add    $0x24,%edx
    966b:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    966f:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9672:	01 ca                	add    %ecx,%edx
    9674:	89 50 04             	mov    %edx,0x4(%eax)
    9677:	8b 45 b0             	mov    -0x50(%ebp),%eax
    967a:	29 45 e8             	sub    %eax,-0x18(%ebp)
    967d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9680:	01 45 e4             	add    %eax,-0x1c(%ebp)
    9683:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9686:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    9689:	0f 8e ab fe ff ff    	jle    953a <do_rdwt+0x2f1>
    968f:	a1 44 88 03 00       	mov    0x38844,%eax
    9694:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9697:	83 c2 24             	add    $0x24,%edx
    969a:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    969e:	8b 40 04             	mov    0x4(%eax),%eax
    96a1:	89 c2                	mov    %eax,%edx
    96a3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96a6:	8b 40 04             	mov    0x4(%eax),%eax
    96a9:	39 c2                	cmp    %eax,%edx
    96ab:	76 28                	jbe    96d5 <do_rdwt+0x48c>
    96ad:	a1 44 88 03 00       	mov    0x38844,%eax
    96b2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    96b5:	83 c2 24             	add    $0x24,%edx
    96b8:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    96bc:	8b 40 04             	mov    0x4(%eax),%eax
    96bf:	89 c2                	mov    %eax,%edx
    96c1:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96c4:	89 50 04             	mov    %edx,0x4(%eax)
    96c7:	83 ec 0c             	sub    $0xc,%esp
    96ca:	ff 75 cc             	pushl  -0x34(%ebp)
    96cd:	e8 18 eb ff ff       	call   81ea <sync_inode>
    96d2:	83 c4 10             	add    $0x10,%esp
    96d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    96d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    96db:	5b                   	pop    %ebx
    96dc:	5e                   	pop    %esi
    96dd:	5d                   	pop    %ebp
    96de:	c3                   	ret    

000096df <do_unlink>:
    96df:	55                   	push   %ebp
    96e0:	89 e5                	mov    %esp,%ebp
    96e2:	56                   	push   %esi
    96e3:	53                   	push   %ebx
    96e4:	81 ec 60 01 00 00    	sub    $0x160,%esp
    96ea:	a1 6c 95 03 00       	mov    0x3956c,%eax
    96ef:	89 45 d0             	mov    %eax,-0x30(%ebp)
    96f2:	a1 60 95 03 00       	mov    0x39560,%eax
    96f7:	89 45 cc             	mov    %eax,-0x34(%ebp)
    96fa:	83 7d d0 7f          	cmpl   $0x7f,-0x30(%ebp)
    96fe:	7e 19                	jle    9719 <do_unlink+0x3a>
    9700:	6a 2a                	push   $0x2a
    9702:	68 cc e3 00 00       	push   $0xe3cc
    9707:	68 cc e3 00 00       	push   $0xe3cc
    970c:	68 d6 e3 00 00       	push   $0xe3d6
    9711:	e8 c7 2d 00 00       	call   c4dd <assertion_failure>
    9716:	83 c4 10             	add    $0x10,%esp
    9719:	a1 88 95 03 00       	mov    0x39588,%eax
    971e:	83 ec 08             	sub    $0x8,%esp
    9721:	50                   	push   %eax
    9722:	ff 75 cc             	pushl  -0x34(%ebp)
    9725:	e8 a1 a7 ff ff       	call   3ecb <va2la>
    972a:	83 c4 10             	add    $0x10,%esp
    972d:	89 c3                	mov    %eax,%ebx
    972f:	83 ec 08             	sub    $0x8,%esp
    9732:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9738:	50                   	push   %eax
    9739:	6a 03                	push   $0x3
    973b:	e8 8b a7 ff ff       	call   3ecb <va2la>
    9740:	83 c4 10             	add    $0x10,%esp
    9743:	83 ec 04             	sub    $0x4,%esp
    9746:	ff 75 d0             	pushl  -0x30(%ebp)
    9749:	53                   	push   %ebx
    974a:	50                   	push   %eax
    974b:	e8 00 2b 00 00       	call   c250 <memcpy>
    9750:	83 c4 10             	add    $0x10,%esp
    9753:	8d 95 24 ff ff ff    	lea    -0xdc(%ebp),%edx
    9759:	8b 45 d0             	mov    -0x30(%ebp),%eax
    975c:	01 d0                	add    %edx,%eax
    975e:	c6 00 00             	movb   $0x0,(%eax)
    9761:	83 ec 08             	sub    $0x8,%esp
    9764:	68 ea e3 00 00       	push   $0xe3ea
    9769:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    976f:	50                   	push   %eax
    9770:	e8 7f 2c 00 00       	call   c3f4 <strcmp>
    9775:	83 c4 10             	add    $0x10,%esp
    9778:	85 c0                	test   %eax,%eax
    977a:	75 1a                	jne    9796 <do_unlink+0xb7>
    977c:	83 ec 0c             	sub    $0xc,%esp
    977f:	68 ec e3 00 00       	push   $0xe3ec
    9784:	e8 7c 27 00 00       	call   bf05 <printl>
    9789:	83 c4 10             	add    $0x10,%esp
    978c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9791:	e9 54 07 00 00       	jmp    9eea <do_unlink+0x80b>
    9796:	83 ec 0c             	sub    $0xc,%esp
    9799:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    979f:	50                   	push   %eax
    97a0:	e8 c7 f8 ff ff       	call   906c <search_file>
    97a5:	83 c4 10             	add    $0x10,%esp
    97a8:	89 45 c8             	mov    %eax,-0x38(%ebp)
    97ab:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
    97af:	75 21                	jne    97d2 <do_unlink+0xf3>
    97b1:	83 ec 08             	sub    $0x8,%esp
    97b4:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    97ba:	50                   	push   %eax
    97bb:	68 1c e4 00 00       	push   $0xe41c
    97c0:	e8 40 27 00 00       	call   bf05 <printl>
    97c5:	83 c4 10             	add    $0x10,%esp
    97c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    97cd:	e9 18 07 00 00       	jmp    9eea <do_unlink+0x80b>
    97d2:	83 ec 04             	sub    $0x4,%esp
    97d5:	8d 85 a0 fe ff ff    	lea    -0x160(%ebp),%eax
    97db:	50                   	push   %eax
    97dc:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    97e2:	50                   	push   %eax
    97e3:	8d 85 a4 fe ff ff    	lea    -0x15c(%ebp),%eax
    97e9:	50                   	push   %eax
    97ea:	e8 d3 f9 ff ff       	call   91c2 <strip_path>
    97ef:	83 c4 10             	add    $0x10,%esp
    97f2:	85 c0                	test   %eax,%eax
    97f4:	74 0a                	je     9800 <do_unlink+0x121>
    97f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    97fb:	e9 ea 06 00 00       	jmp    9eea <do_unlink+0x80b>
    9800:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9806:	8b 40 20             	mov    0x20(%eax),%eax
    9809:	83 ec 08             	sub    $0x8,%esp
    980c:	ff 75 c8             	pushl  -0x38(%ebp)
    980f:	50                   	push   %eax
    9810:	e8 34 e8 ff ff       	call   8049 <get_inode>
    9815:	83 c4 10             	add    $0x10,%esp
    9818:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    981b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    981e:	8b 00                	mov    (%eax),%eax
    9820:	3d 00 80 00 00       	cmp    $0x8000,%eax
    9825:	74 21                	je     9848 <do_unlink+0x169>
    9827:	83 ec 08             	sub    $0x8,%esp
    982a:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9830:	50                   	push   %eax
    9831:	68 5c e4 00 00       	push   $0xe45c
    9836:	e8 ca 26 00 00       	call   bf05 <printl>
    983b:	83 c4 10             	add    $0x10,%esp
    983e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9843:	e9 a2 06 00 00       	jmp    9eea <do_unlink+0x80b>
    9848:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    984b:	8b 40 24             	mov    0x24(%eax),%eax
    984e:	83 f8 01             	cmp    $0x1,%eax
    9851:	7e 28                	jle    987b <do_unlink+0x19c>
    9853:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9856:	8b 40 24             	mov    0x24(%eax),%eax
    9859:	83 ec 04             	sub    $0x4,%esp
    985c:	50                   	push   %eax
    985d:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9863:	50                   	push   %eax
    9864:	68 9c e4 00 00       	push   $0xe49c
    9869:	e8 97 26 00 00       	call   bf05 <printl>
    986e:	83 c4 10             	add    $0x10,%esp
    9871:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9876:	e9 6f 06 00 00       	jmp    9eea <do_unlink+0x80b>
    987b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    987e:	8b 40 20             	mov    0x20(%eax),%eax
    9881:	83 ec 0c             	sub    $0xc,%esp
    9884:	50                   	push   %eax
    9885:	e8 79 e7 ff ff       	call   8003 <get_super_block>
    988a:	83 c4 10             	add    $0x10,%esp
    988d:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9890:	8b 45 c8             	mov    -0x38(%ebp),%eax
    9893:	8d 50 07             	lea    0x7(%eax),%edx
    9896:	85 c0                	test   %eax,%eax
    9898:	0f 48 c2             	cmovs  %edx,%eax
    989b:	c1 f8 03             	sar    $0x3,%eax
    989e:	89 45 bc             	mov    %eax,-0x44(%ebp)
    98a1:	8b 45 c8             	mov    -0x38(%ebp),%eax
    98a4:	99                   	cltd   
    98a5:	c1 ea 1d             	shr    $0x1d,%edx
    98a8:	01 d0                	add    %edx,%eax
    98aa:	83 e0 07             	and    $0x7,%eax
    98ad:	29 d0                	sub    %edx,%eax
    98af:	89 45 b8             	mov    %eax,-0x48(%ebp)
    98b2:	81 7d bc ff 01 00 00 	cmpl   $0x1ff,-0x44(%ebp)
    98b9:	7e 19                	jle    98d4 <do_unlink+0x1f5>
    98bb:	6a 57                	push   $0x57
    98bd:	68 cc e3 00 00       	push   $0xe3cc
    98c2:	68 cc e3 00 00       	push   $0xe3cc
    98c7:	68 d3 e4 00 00       	push   $0xe4d3
    98cc:	e8 0c 2c 00 00       	call   c4dd <assertion_failure>
    98d1:	83 c4 10             	add    $0x10,%esp
    98d4:	8b 15 04 28 01 00    	mov    0x12804,%edx
    98da:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    98dd:	8b 40 20             	mov    0x20(%eax),%eax
    98e0:	83 ec 04             	sub    $0x4,%esp
    98e3:	52                   	push   %edx
    98e4:	6a 03                	push   $0x3
    98e6:	68 00 02 00 00       	push   $0x200
    98eb:	6a 00                	push   $0x0
    98ed:	68 00 04 00 00       	push   $0x400
    98f2:	50                   	push   %eax
    98f3:	68 eb 03 00 00       	push   $0x3eb
    98f8:	e8 fe e4 ff ff       	call   7dfb <rw_sector>
    98fd:	83 c4 20             	add    $0x20,%esp
    9900:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9906:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9909:	99                   	cltd   
    990a:	c1 ea 17             	shr    $0x17,%edx
    990d:	01 d0                	add    %edx,%eax
    990f:	25 ff 01 00 00       	and    $0x1ff,%eax
    9914:	29 d0                	sub    %edx,%eax
    9916:	01 c8                	add    %ecx,%eax
    9918:	0f b6 00             	movzbl (%eax),%eax
    991b:	0f b6 d0             	movzbl %al,%edx
    991e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9921:	89 c1                	mov    %eax,%ecx
    9923:	d3 fa                	sar    %cl,%edx
    9925:	89 d0                	mov    %edx,%eax
    9927:	83 e0 01             	and    $0x1,%eax
    992a:	85 c0                	test   %eax,%eax
    992c:	75 19                	jne    9947 <do_unlink+0x268>
    992e:	6a 5a                	push   $0x5a
    9930:	68 cc e3 00 00       	push   $0xe3cc
    9935:	68 cc e3 00 00       	push   $0xe3cc
    993a:	68 ec e4 00 00       	push   $0xe4ec
    993f:	e8 99 2b 00 00       	call   c4dd <assertion_failure>
    9944:	83 c4 10             	add    $0x10,%esp
    9947:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    994d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9950:	99                   	cltd   
    9951:	c1 ea 17             	shr    $0x17,%edx
    9954:	01 d0                	add    %edx,%eax
    9956:	25 ff 01 00 00       	and    $0x1ff,%eax
    995b:	29 d0                	sub    %edx,%eax
    995d:	89 c2                	mov    %eax,%edx
    995f:	89 d0                	mov    %edx,%eax
    9961:	01 c8                	add    %ecx,%eax
    9963:	0f b6 00             	movzbl (%eax),%eax
    9966:	89 c3                	mov    %eax,%ebx
    9968:	8b 45 b8             	mov    -0x48(%ebp),%eax
    996b:	be 01 00 00 00       	mov    $0x1,%esi
    9970:	89 c1                	mov    %eax,%ecx
    9972:	d3 e6                	shl    %cl,%esi
    9974:	89 f0                	mov    %esi,%eax
    9976:	f7 d0                	not    %eax
    9978:	21 c3                	and    %eax,%ebx
    997a:	89 d9                	mov    %ebx,%ecx
    997c:	a1 04 28 01 00       	mov    0x12804,%eax
    9981:	01 d0                	add    %edx,%eax
    9983:	89 ca                	mov    %ecx,%edx
    9985:	88 10                	mov    %dl,(%eax)
    9987:	8b 15 04 28 01 00    	mov    0x12804,%edx
    998d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9990:	8b 40 20             	mov    0x20(%eax),%eax
    9993:	83 ec 04             	sub    $0x4,%esp
    9996:	52                   	push   %edx
    9997:	6a 03                	push   $0x3
    9999:	68 00 02 00 00       	push   $0x200
    999e:	6a 00                	push   $0x0
    99a0:	68 00 04 00 00       	push   $0x400
    99a5:	50                   	push   %eax
    99a6:	68 ec 03 00 00       	push   $0x3ec
    99ab:	e8 4b e4 ff ff       	call   7dfb <rw_sector>
    99b0:	83 c4 20             	add    $0x20,%esp
    99b3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    99b6:	8b 50 08             	mov    0x8(%eax),%edx
    99b9:	8b 45 c0             	mov    -0x40(%ebp),%eax
    99bc:	8b 40 14             	mov    0x14(%eax),%eax
    99bf:	29 c2                	sub    %eax,%edx
    99c1:	89 d0                	mov    %edx,%eax
    99c3:	83 c0 01             	add    $0x1,%eax
    99c6:	89 45 b8             	mov    %eax,-0x48(%ebp)
    99c9:	8b 45 b8             	mov    -0x48(%ebp),%eax
    99cc:	8d 50 07             	lea    0x7(%eax),%edx
    99cf:	85 c0                	test   %eax,%eax
    99d1:	0f 48 c2             	cmovs  %edx,%eax
    99d4:	c1 f8 03             	sar    $0x3,%eax
    99d7:	89 45 bc             	mov    %eax,-0x44(%ebp)
    99da:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    99dd:	8b 40 0c             	mov    0xc(%eax),%eax
    99e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    99e3:	8b 45 b8             	mov    -0x48(%ebp),%eax
    99e6:	99                   	cltd   
    99e7:	c1 ea 1d             	shr    $0x1d,%edx
    99ea:	01 d0                	add    %edx,%eax
    99ec:	83 e0 07             	and    $0x7,%eax
    99ef:	29 d0                	sub    %edx,%eax
    99f1:	ba 08 00 00 00       	mov    $0x8,%edx
    99f6:	29 c2                	sub    %eax,%edx
    99f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    99fb:	29 d0                	sub    %edx,%eax
    99fd:	8d 50 07             	lea    0x7(%eax),%edx
    9a00:	85 c0                	test   %eax,%eax
    9a02:	0f 48 c2             	cmovs  %edx,%eax
    9a05:	c1 f8 03             	sar    $0x3,%eax
    9a08:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9a0b:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9a0e:	8b 50 0c             	mov    0xc(%eax),%edx
    9a11:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9a14:	8d 88 ff 01 00 00    	lea    0x1ff(%eax),%ecx
    9a1a:	85 c0                	test   %eax,%eax
    9a1c:	0f 48 c1             	cmovs  %ecx,%eax
    9a1f:	c1 f8 09             	sar    $0x9,%eax
    9a22:	01 d0                	add    %edx,%eax
    9a24:	83 c0 02             	add    $0x2,%eax
    9a27:	89 45 f0             	mov    %eax,-0x10(%ebp)
    9a2a:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9a30:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9a33:	c1 e0 09             	shl    $0x9,%eax
    9a36:	99                   	cltd   
    9a37:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9a3a:	8b 49 20             	mov    0x20(%ecx),%ecx
    9a3d:	83 ec 04             	sub    $0x4,%esp
    9a40:	53                   	push   %ebx
    9a41:	6a 03                	push   $0x3
    9a43:	68 00 02 00 00       	push   $0x200
    9a48:	52                   	push   %edx
    9a49:	50                   	push   %eax
    9a4a:	51                   	push   %ecx
    9a4b:	68 eb 03 00 00       	push   $0x3eb
    9a50:	e8 a6 e3 ff ff       	call   7dfb <rw_sector>
    9a55:	83 c4 20             	add    $0x20,%esp
    9a58:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9a5b:	99                   	cltd   
    9a5c:	c1 ea 1d             	shr    $0x1d,%edx
    9a5f:	01 d0                	add    %edx,%eax
    9a61:	83 e0 07             	and    $0x7,%eax
    9a64:	29 d0                	sub    %edx,%eax
    9a66:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9a69:	e9 8f 00 00 00       	jmp    9afd <do_unlink+0x41e>
    9a6e:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9a74:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9a77:	99                   	cltd   
    9a78:	c1 ea 17             	shr    $0x17,%edx
    9a7b:	01 d0                	add    %edx,%eax
    9a7d:	25 ff 01 00 00       	and    $0x1ff,%eax
    9a82:	29 d0                	sub    %edx,%eax
    9a84:	01 c8                	add    %ecx,%eax
    9a86:	0f b6 00             	movzbl (%eax),%eax
    9a89:	0f b6 d0             	movzbl %al,%edx
    9a8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9a8f:	89 c1                	mov    %eax,%ecx
    9a91:	d3 fa                	sar    %cl,%edx
    9a93:	89 d0                	mov    %edx,%eax
    9a95:	83 e0 01             	and    $0x1,%eax
    9a98:	85 c0                	test   %eax,%eax
    9a9a:	75 19                	jne    9ab5 <do_unlink+0x3d6>
    9a9c:	6a 7b                	push   $0x7b
    9a9e:	68 cc e3 00 00       	push   $0xe3cc
    9aa3:	68 cc e3 00 00       	push   $0xe3cc
    9aa8:	68 1c e5 00 00       	push   $0xe51c
    9aad:	e8 2b 2a 00 00       	call   c4dd <assertion_failure>
    9ab2:	83 c4 10             	add    $0x10,%esp
    9ab5:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9abb:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9abe:	99                   	cltd   
    9abf:	c1 ea 17             	shr    $0x17,%edx
    9ac2:	01 d0                	add    %edx,%eax
    9ac4:	25 ff 01 00 00       	and    $0x1ff,%eax
    9ac9:	29 d0                	sub    %edx,%eax
    9acb:	89 c2                	mov    %eax,%edx
    9acd:	89 d0                	mov    %edx,%eax
    9acf:	01 c8                	add    %ecx,%eax
    9ad1:	0f b6 00             	movzbl (%eax),%eax
    9ad4:	89 c3                	mov    %eax,%ebx
    9ad6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ad9:	be 01 00 00 00       	mov    $0x1,%esi
    9ade:	89 c1                	mov    %eax,%ecx
    9ae0:	d3 e6                	shl    %cl,%esi
    9ae2:	89 f0                	mov    %esi,%eax
    9ae4:	f7 d0                	not    %eax
    9ae6:	21 c3                	and    %eax,%ebx
    9ae8:	89 d9                	mov    %ebx,%ecx
    9aea:	a1 04 28 01 00       	mov    0x12804,%eax
    9aef:	01 d0                	add    %edx,%eax
    9af1:	89 ca                	mov    %ecx,%edx
    9af3:	88 10                	mov    %dl,(%eax)
    9af5:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9af9:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    9afd:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    9b01:	7f 0a                	jg     9b0d <do_unlink+0x42e>
    9b03:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    9b07:	0f 85 61 ff ff ff    	jne    9a6e <do_unlink+0x38f>
    9b0d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9b10:	99                   	cltd   
    9b11:	c1 ea 17             	shr    $0x17,%edx
    9b14:	01 d0                	add    %edx,%eax
    9b16:	25 ff 01 00 00       	and    $0x1ff,%eax
    9b1b:	29 d0                	sub    %edx,%eax
    9b1d:	83 c0 01             	add    $0x1,%eax
    9b20:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9b23:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    9b2a:	e9 b8 00 00 00       	jmp    9be7 <do_unlink+0x508>
    9b2f:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9b36:	75 67                	jne    9b9f <do_unlink+0x4c0>
    9b38:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9b3f:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9b45:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9b48:	c1 e0 09             	shl    $0x9,%eax
    9b4b:	99                   	cltd   
    9b4c:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9b4f:	8b 49 20             	mov    0x20(%ecx),%ecx
    9b52:	83 ec 04             	sub    $0x4,%esp
    9b55:	53                   	push   %ebx
    9b56:	6a 03                	push   $0x3
    9b58:	68 00 02 00 00       	push   $0x200
    9b5d:	52                   	push   %edx
    9b5e:	50                   	push   %eax
    9b5f:	51                   	push   %ecx
    9b60:	68 ec 03 00 00       	push   $0x3ec
    9b65:	e8 91 e2 ff ff       	call   7dfb <rw_sector>
    9b6a:	83 c4 20             	add    $0x20,%esp
    9b6d:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9b73:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9b77:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9b7a:	c1 e0 09             	shl    $0x9,%eax
    9b7d:	99                   	cltd   
    9b7e:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9b81:	8b 49 20             	mov    0x20(%ecx),%ecx
    9b84:	83 ec 04             	sub    $0x4,%esp
    9b87:	53                   	push   %ebx
    9b88:	6a 03                	push   $0x3
    9b8a:	68 00 02 00 00       	push   $0x200
    9b8f:	52                   	push   %edx
    9b90:	50                   	push   %eax
    9b91:	51                   	push   %ecx
    9b92:	68 eb 03 00 00       	push   $0x3eb
    9b97:	e8 5f e2 ff ff       	call   7dfb <rw_sector>
    9b9c:	83 c4 20             	add    $0x20,%esp
    9b9f:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ba5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ba8:	01 d0                	add    %edx,%eax
    9baa:	0f b6 00             	movzbl (%eax),%eax
    9bad:	3c ff                	cmp    $0xff,%al
    9baf:	74 1c                	je     9bcd <do_unlink+0x4ee>
    9bb1:	68 88 00 00 00       	push   $0x88
    9bb6:	68 cc e3 00 00       	push   $0xe3cc
    9bbb:	68 cc e3 00 00       	push   $0xe3cc
    9bc0:	68 4a e5 00 00       	push   $0xe54a
    9bc5:	e8 13 29 00 00       	call   c4dd <assertion_failure>
    9bca:	83 c4 10             	add    $0x10,%esp
    9bcd:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9bd3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9bd6:	01 d0                	add    %edx,%eax
    9bd8:	c6 00 00             	movb   $0x0,(%eax)
    9bdb:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    9bdf:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9be3:	83 6d f4 08          	subl   $0x8,-0xc(%ebp)
    9be7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9bea:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    9bed:	0f 8c 3c ff ff ff    	jl     9b2f <do_unlink+0x450>
    9bf3:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9bfa:	75 67                	jne    9c63 <do_unlink+0x584>
    9bfc:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9c03:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9c09:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9c0c:	c1 e0 09             	shl    $0x9,%eax
    9c0f:	99                   	cltd   
    9c10:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9c13:	8b 49 20             	mov    0x20(%ecx),%ecx
    9c16:	83 ec 04             	sub    $0x4,%esp
    9c19:	53                   	push   %ebx
    9c1a:	6a 03                	push   $0x3
    9c1c:	68 00 02 00 00       	push   $0x200
    9c21:	52                   	push   %edx
    9c22:	50                   	push   %eax
    9c23:	51                   	push   %ecx
    9c24:	68 ec 03 00 00       	push   $0x3ec
    9c29:	e8 cd e1 ff ff       	call   7dfb <rw_sector>
    9c2e:	83 c4 20             	add    $0x20,%esp
    9c31:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9c37:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9c3b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9c3e:	c1 e0 09             	shl    $0x9,%eax
    9c41:	99                   	cltd   
    9c42:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9c45:	8b 49 20             	mov    0x20(%ecx),%ecx
    9c48:	83 ec 04             	sub    $0x4,%esp
    9c4b:	53                   	push   %ebx
    9c4c:	6a 03                	push   $0x3
    9c4e:	68 00 02 00 00       	push   $0x200
    9c53:	52                   	push   %edx
    9c54:	50                   	push   %eax
    9c55:	51                   	push   %ecx
    9c56:	68 eb 03 00 00       	push   $0x3eb
    9c5b:	e8 9b e1 ff ff       	call   7dfb <rw_sector>
    9c60:	83 c4 20             	add    $0x20,%esp
    9c63:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9c66:	ba ff 00 00 00       	mov    $0xff,%edx
    9c6b:	89 c1                	mov    %eax,%ecx
    9c6d:	d3 e2                	shl    %cl,%edx
    9c6f:	89 d0                	mov    %edx,%eax
    9c71:	f7 d0                	not    %eax
    9c73:	88 45 b3             	mov    %al,-0x4d(%ebp)
    9c76:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9c7c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9c7f:	01 d0                	add    %edx,%eax
    9c81:	0f b6 00             	movzbl (%eax),%eax
    9c84:	22 45 b3             	and    -0x4d(%ebp),%al
    9c87:	38 45 b3             	cmp    %al,-0x4d(%ebp)
    9c8a:	74 1c                	je     9ca8 <do_unlink+0x5c9>
    9c8c:	68 93 00 00 00       	push   $0x93
    9c91:	68 cc e3 00 00       	push   $0xe3cc
    9c96:	68 cc e3 00 00       	push   $0xe3cc
    9c9b:	68 5b e5 00 00       	push   $0xe55b
    9ca0:	e8 38 28 00 00       	call   c4dd <assertion_failure>
    9ca5:	83 c4 10             	add    $0x10,%esp
    9ca8:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9cae:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9cb1:	01 d0                	add    %edx,%eax
    9cb3:	0f b6 00             	movzbl (%eax),%eax
    9cb6:	89 c2                	mov    %eax,%edx
    9cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9cbb:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    9cc0:	89 c1                	mov    %eax,%ecx
    9cc2:	d3 e3                	shl    %cl,%ebx
    9cc4:	89 d8                	mov    %ebx,%eax
    9cc6:	89 d1                	mov    %edx,%ecx
    9cc8:	21 c1                	and    %eax,%ecx
    9cca:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9cd0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9cd3:	01 d0                	add    %edx,%eax
    9cd5:	89 ca                	mov    %ecx,%edx
    9cd7:	88 10                	mov    %dl,(%eax)
    9cd9:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9cdf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9ce2:	c1 e0 09             	shl    $0x9,%eax
    9ce5:	99                   	cltd   
    9ce6:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9ce9:	8b 49 20             	mov    0x20(%ecx),%ecx
    9cec:	83 ec 04             	sub    $0x4,%esp
    9cef:	53                   	push   %ebx
    9cf0:	6a 03                	push   $0x3
    9cf2:	68 00 02 00 00       	push   $0x200
    9cf7:	52                   	push   %edx
    9cf8:	50                   	push   %eax
    9cf9:	51                   	push   %ecx
    9cfa:	68 ec 03 00 00       	push   $0x3ec
    9cff:	e8 f7 e0 ff ff       	call   7dfb <rw_sector>
    9d04:	83 c4 20             	add    $0x20,%esp
    9d07:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9d0a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    9d10:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9d13:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    9d1a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9d1d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    9d24:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9d27:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    9d2e:	83 ec 0c             	sub    $0xc,%esp
    9d31:	ff 75 c4             	pushl  -0x3c(%ebp)
    9d34:	e8 b1 e4 ff ff       	call   81ea <sync_inode>
    9d39:	83 c4 10             	add    $0x10,%esp
    9d3c:	83 ec 0c             	sub    $0xc,%esp
    9d3f:	ff 75 c4             	pushl  -0x3c(%ebp)
    9d42:	e8 65 e4 ff ff       	call   81ac <put_inode>
    9d47:	83 c4 10             	add    $0x10,%esp
    9d4a:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9d50:	8b 40 08             	mov    0x8(%eax),%eax
    9d53:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9d56:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9d5c:	8b 40 04             	mov    0x4(%eax),%eax
    9d5f:	05 00 02 00 00       	add    $0x200,%eax
    9d64:	c1 e8 09             	shr    $0x9,%eax
    9d67:	89 45 a8             	mov    %eax,-0x58(%ebp)
    9d6a:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9d70:	8b 40 04             	mov    0x4(%eax),%eax
    9d73:	c1 e8 04             	shr    $0x4,%eax
    9d76:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    9d79:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9d80:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    9d87:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    9d8e:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9d95:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9d9c:	e9 f0 00 00 00       	jmp    9e91 <do_unlink+0x7b2>
    9da1:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9da7:	8b 55 ac             	mov    -0x54(%ebp),%edx
    9daa:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9dad:	01 d0                	add    %edx,%eax
    9daf:	c1 e0 09             	shl    $0x9,%eax
    9db2:	99                   	cltd   
    9db3:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9db9:	8b 49 20             	mov    0x20(%ecx),%ecx
    9dbc:	83 ec 04             	sub    $0x4,%esp
    9dbf:	53                   	push   %ebx
    9dc0:	6a 03                	push   $0x3
    9dc2:	68 00 02 00 00       	push   $0x200
    9dc7:	52                   	push   %edx
    9dc8:	50                   	push   %eax
    9dc9:	51                   	push   %ecx
    9dca:	68 eb 03 00 00       	push   $0x3eb
    9dcf:	e8 27 e0 ff ff       	call   7dfb <rw_sector>
    9dd4:	83 c4 20             	add    $0x20,%esp
    9dd7:	a1 04 28 01 00       	mov    0x12804,%eax
    9ddc:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9ddf:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    9de6:	e9 85 00 00 00       	jmp    9e70 <do_unlink+0x791>
    9deb:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9def:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9df2:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9df5:	0f 8f 83 00 00 00    	jg     9e7e <do_unlink+0x79f>
    9dfb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    9dfe:	8b 00                	mov    (%eax),%eax
    9e00:	39 45 c8             	cmp    %eax,-0x38(%ebp)
    9e03:	75 51                	jne    9e56 <do_unlink+0x777>
    9e05:	83 ec 04             	sub    $0x4,%esp
    9e08:	6a 10                	push   $0x10
    9e0a:	6a 00                	push   $0x0
    9e0c:	ff 75 e0             	pushl  -0x20(%ebp)
    9e0f:	e8 65 24 00 00       	call   c279 <memset>
    9e14:	83 c4 10             	add    $0x10,%esp
    9e17:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9e1d:	8b 55 ac             	mov    -0x54(%ebp),%edx
    9e20:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9e23:	01 d0                	add    %edx,%eax
    9e25:	c1 e0 09             	shl    $0x9,%eax
    9e28:	99                   	cltd   
    9e29:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9e2f:	8b 49 20             	mov    0x20(%ecx),%ecx
    9e32:	83 ec 04             	sub    $0x4,%esp
    9e35:	53                   	push   %ebx
    9e36:	6a 03                	push   $0x3
    9e38:	68 00 02 00 00       	push   $0x200
    9e3d:	52                   	push   %edx
    9e3e:	50                   	push   %eax
    9e3f:	51                   	push   %ecx
    9e40:	68 ec 03 00 00       	push   $0x3ec
    9e45:	e8 b1 df ff ff       	call   7dfb <rw_sector>
    9e4a:	83 c4 20             	add    $0x20,%esp
    9e4d:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    9e54:	eb 29                	jmp    9e7f <do_unlink+0x7a0>
    9e56:	8b 45 e0             	mov    -0x20(%ebp),%eax
    9e59:	8b 00                	mov    (%eax),%eax
    9e5b:	85 c0                	test   %eax,%eax
    9e5d:	74 09                	je     9e68 <do_unlink+0x789>
    9e5f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9e62:	83 c0 10             	add    $0x10,%eax
    9e65:	89 45 d8             	mov    %eax,-0x28(%ebp)
    9e68:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    9e6c:	83 45 e0 10          	addl   $0x10,-0x20(%ebp)
    9e70:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    9e73:	83 f8 1f             	cmp    $0x1f,%eax
    9e76:	0f 86 6f ff ff ff    	jbe    9deb <do_unlink+0x70c>
    9e7c:	eb 01                	jmp    9e7f <do_unlink+0x7a0>
    9e7e:	90                   	nop
    9e7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9e82:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9e85:	7f 16                	jg     9e9d <do_unlink+0x7be>
    9e87:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    9e8b:	75 10                	jne    9e9d <do_unlink+0x7be>
    9e8d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9e91:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9e94:	3b 45 a8             	cmp    -0x58(%ebp),%eax
    9e97:	0f 8c 04 ff ff ff    	jl     9da1 <do_unlink+0x6c2>
    9e9d:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    9ea1:	75 1c                	jne    9ebf <do_unlink+0x7e0>
    9ea3:	68 cb 00 00 00       	push   $0xcb
    9ea8:	68 cc e3 00 00       	push   $0xe3cc
    9ead:	68 cc e3 00 00       	push   $0xe3cc
    9eb2:	68 75 e5 00 00       	push   $0xe575
    9eb7:	e8 21 26 00 00       	call   c4dd <assertion_failure>
    9ebc:	83 c4 10             	add    $0x10,%esp
    9ebf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9ec2:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9ec5:	75 1e                	jne    9ee5 <do_unlink+0x806>
    9ec7:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9ecd:	8b 55 d8             	mov    -0x28(%ebp),%edx
    9ed0:	89 50 04             	mov    %edx,0x4(%eax)
    9ed3:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9ed9:	83 ec 0c             	sub    $0xc,%esp
    9edc:	50                   	push   %eax
    9edd:	e8 08 e3 ff ff       	call   81ea <sync_inode>
    9ee2:	83 c4 10             	add    $0x10,%esp
    9ee5:	b8 00 00 00 00       	mov    $0x0,%eax
    9eea:	8d 65 f8             	lea    -0x8(%ebp),%esp
    9eed:	5b                   	pop    %ebx
    9eee:	5e                   	pop    %esi
    9eef:	5d                   	pop    %ebp
    9ef0:	c3                   	ret    

00009ef1 <disklog>:
    9ef1:	55                   	push   %ebp
    9ef2:	89 e5                	mov    %esp,%ebp
    9ef4:	57                   	push   %edi
    9ef5:	56                   	push   %esi
    9ef6:	53                   	push   %ebx
    9ef7:	81 ec ac 00 00 00    	sub    $0xac,%esp
    9efd:	a1 a0 99 03 00       	mov    0x399a0,%eax
    9f02:	8b 40 20             	mov    0x20(%eax),%eax
    9f05:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9f08:	83 ec 0c             	sub    $0xc,%esp
    9f0b:	ff 75 c4             	pushl  -0x3c(%ebp)
    9f0e:	e8 f0 e0 ff ff       	call   8003 <get_super_block>
    9f13:	83 c4 10             	add    $0x10,%esp
    9f16:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9f19:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9f1c:	8b 40 08             	mov    0x8(%eax),%eax
    9f1f:	2d 00 08 00 00       	sub    $0x800,%eax
    9f24:	89 45 bc             	mov    %eax,-0x44(%ebp)
    9f27:	a1 e0 38 01 00       	mov    0x138e0,%eax
    9f2c:	85 c0                	test   %eax,%eax
    9f2e:	0f 85 9c 02 00 00    	jne    a1d0 <disklog+0x2df>
    9f34:	c7 45 b8 00 10 00 00 	movl   $0x1000,-0x48(%ebp)
    9f3b:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9f3e:	8b 40 0c             	mov    0xc(%eax),%eax
    9f41:	83 c0 02             	add    $0x2,%eax
    9f44:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9f47:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9f4a:	99                   	cltd   
    9f4b:	f7 7d b8             	idivl  -0x48(%ebp)
    9f4e:	89 c2                	mov    %eax,%edx
    9f50:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9f53:	01 d0                	add    %edx,%eax
    9f55:	89 45 b0             	mov    %eax,-0x50(%ebp)
    9f58:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9f5b:	99                   	cltd   
    9f5c:	f7 7d b8             	idivl  -0x48(%ebp)
    9f5f:	89 d0                	mov    %edx,%eax
    9f61:	8d 50 07             	lea    0x7(%eax),%edx
    9f64:	85 c0                	test   %eax,%eax
    9f66:	0f 48 c2             	cmovs  %edx,%eax
    9f69:	c1 f8 03             	sar    $0x3,%eax
    9f6c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    9f6f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9f72:	99                   	cltd   
    9f73:	f7 7d b8             	idivl  -0x48(%ebp)
    9f76:	89 d0                	mov    %edx,%eax
    9f78:	c1 f8 1f             	sar    $0x1f,%eax
    9f7b:	c1 e8 1d             	shr    $0x1d,%eax
    9f7e:	01 c2                	add    %eax,%edx
    9f80:	83 e2 07             	and    $0x7,%edx
    9f83:	29 c2                	sub    %eax,%edx
    9f85:	89 d0                	mov    %edx,%eax
    9f87:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9f8a:	b8 00 08 00 00       	mov    $0x800,%eax
    9f8f:	99                   	cltd   
    9f90:	f7 7d b8             	idivl  -0x48(%ebp)
    9f93:	83 c0 02             	add    $0x2,%eax
    9f96:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9f99:	c7 45 dc 00 08 00 00 	movl   $0x800,-0x24(%ebp)
    9fa0:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9fa7:	e9 21 01 00 00       	jmp    a0cd <disklog+0x1dc>
    9fac:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    9fb2:	e8 5b 26 00 00       	call   c612 <getpid>
    9fb7:	89 c1                	mov    %eax,%ecx
    9fb9:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9fbc:	8b 45 d8             	mov    -0x28(%ebp),%eax
    9fbf:	01 d0                	add    %edx,%eax
    9fc1:	c1 e0 09             	shl    $0x9,%eax
    9fc4:	99                   	cltd   
    9fc5:	83 ec 04             	sub    $0x4,%esp
    9fc8:	53                   	push   %ebx
    9fc9:	51                   	push   %ecx
    9fca:	68 00 02 00 00       	push   $0x200
    9fcf:	52                   	push   %edx
    9fd0:	50                   	push   %eax
    9fd1:	ff 75 c4             	pushl  -0x3c(%ebp)
    9fd4:	68 eb 03 00 00       	push   $0x3eb
    9fd9:	e8 1d de ff ff       	call   7dfb <rw_sector>
    9fde:	83 c4 20             	add    $0x20,%esp
    9fe1:	e9 8b 00 00 00       	jmp    a071 <disklog+0x180>
    9fe6:	8b 15 10 28 01 00    	mov    0x12810,%edx
    9fec:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9fef:	01 d0                	add    %edx,%eax
    9ff1:	0f b6 00             	movzbl (%eax),%eax
    9ff4:	0f be d0             	movsbl %al,%edx
    9ff7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    9ffa:	89 c1                	mov    %eax,%ecx
    9ffc:	d3 fa                	sar    %cl,%edx
    9ffe:	89 d0                	mov    %edx,%eax
    a000:	83 e0 01             	and    $0x1,%eax
    a003:	85 c0                	test   %eax,%eax
    a005:	74 19                	je     a020 <disklog+0x12f>
    a007:	6a 65                	push   $0x65
    a009:	68 7c e5 00 00       	push   $0xe57c
    a00e:	68 7c e5 00 00       	push   $0xe57c
    a013:	68 8c e5 00 00       	push   $0xe58c
    a018:	e8 c0 24 00 00       	call   c4dd <assertion_failure>
    a01d:	83 c4 10             	add    $0x10,%esp
    a020:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a026:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a029:	01 d0                	add    %edx,%eax
    a02b:	0f b6 18             	movzbl (%eax),%ebx
    a02e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a031:	ba 01 00 00 00       	mov    $0x1,%edx
    a036:	89 c1                	mov    %eax,%ecx
    a038:	d3 e2                	shl    %cl,%edx
    a03a:	89 d0                	mov    %edx,%eax
    a03c:	89 c1                	mov    %eax,%ecx
    a03e:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a044:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a047:	01 d0                	add    %edx,%eax
    a049:	09 cb                	or     %ecx,%ebx
    a04b:	89 da                	mov    %ebx,%edx
    a04d:	88 10                	mov    %dl,(%eax)
    a04f:	83 6d dc 01          	subl   $0x1,-0x24(%ebp)
    a053:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a057:	74 0c                	je     a065 <disklog+0x174>
    a059:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    a05d:	83 7d e0 07          	cmpl   $0x7,-0x20(%ebp)
    a061:	7e 83                	jle    9fe6 <disklog+0xf5>
    a063:	eb 01                	jmp    a066 <disklog+0x175>
    a065:	90                   	nop
    a066:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a06d:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a071:	81 7d e4 ff 01 00 00 	cmpl   $0x1ff,-0x1c(%ebp)
    a078:	7f 06                	jg     a080 <disklog+0x18f>
    a07a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a07e:	7f dd                	jg     a05d <disklog+0x16c>
    a080:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a087:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a08e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a094:	e8 79 25 00 00       	call   c612 <getpid>
    a099:	89 c1                	mov    %eax,%ecx
    a09b:	8b 55 b0             	mov    -0x50(%ebp),%edx
    a09e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a0a1:	01 d0                	add    %edx,%eax
    a0a3:	c1 e0 09             	shl    $0x9,%eax
    a0a6:	99                   	cltd   
    a0a7:	83 ec 04             	sub    $0x4,%esp
    a0aa:	53                   	push   %ebx
    a0ab:	51                   	push   %ecx
    a0ac:	68 00 02 00 00       	push   $0x200
    a0b1:	52                   	push   %edx
    a0b2:	50                   	push   %eax
    a0b3:	ff 75 c4             	pushl  -0x3c(%ebp)
    a0b6:	68 ec 03 00 00       	push   $0x3ec
    a0bb:	e8 3b dd ff ff       	call   7dfb <rw_sector>
    a0c0:	83 c4 20             	add    $0x20,%esp
    a0c3:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a0c7:	74 12                	je     a0db <disklog+0x1ea>
    a0c9:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a0cd:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a0d0:	3b 45 ac             	cmp    -0x54(%ebp),%eax
    a0d3:	0f 8c d3 fe ff ff    	jl     9fac <disklog+0xbb>
    a0d9:	eb 01                	jmp    a0dc <disklog+0x1eb>
    a0db:	90                   	nop
    a0dc:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a0e0:	74 19                	je     a0fb <disklog+0x20a>
    a0e2:	6a 74                	push   $0x74
    a0e4:	68 7c e5 00 00       	push   $0xe57c
    a0e9:	68 7c e5 00 00       	push   $0xe57c
    a0ee:	68 b9 e5 00 00       	push   $0xe5b9
    a0f3:	e8 e5 23 00 00       	call   c4dd <assertion_failure>
    a0f8:	83 c4 10             	add    $0x10,%esp
    a0fb:	c7 05 e0 38 01 00 40 	movl   $0x40,0x138e0
    a102:	00 00 00 
    a105:	a1 d4 cd 00 00       	mov    0xcdd4,%eax
    a10a:	c1 f8 09             	sar    $0x9,%eax
    a10d:	ba 00 01 00 00       	mov    $0x100,%edx
    a112:	3d 00 01 00 00       	cmp    $0x100,%eax
    a117:	0f 4f c2             	cmovg  %edx,%eax
    a11a:	89 45 a8             	mov    %eax,-0x58(%ebp)
    a11d:	81 7d a8 00 01 00 00 	cmpl   $0x100,-0x58(%ebp)
    a124:	74 19                	je     a13f <disklog+0x24e>
    a126:	6a 7c                	push   $0x7c
    a128:	68 7c e5 00 00       	push   $0xe57c
    a12d:	68 7c e5 00 00       	push   $0xe57c
    a132:	68 c8 e5 00 00       	push   $0xe5c8
    a137:	e8 a1 23 00 00       	call   c4dd <assertion_failure>
    a13c:	83 c4 10             	add    $0x10,%esp
    a13f:	c7 45 d4 00 08 00 00 	movl   $0x800,-0x2c(%ebp)
    a146:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a149:	89 45 d8             	mov    %eax,-0x28(%ebp)
    a14c:	eb 5c                	jmp    a1aa <disklog+0x2b9>
    a14e:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a151:	c1 e0 09             	shl    $0x9,%eax
    a154:	89 c2                	mov    %eax,%edx
    a156:	a1 10 28 01 00       	mov    0x12810,%eax
    a15b:	83 ec 04             	sub    $0x4,%esp
    a15e:	52                   	push   %edx
    a15f:	6a 20                	push   $0x20
    a161:	50                   	push   %eax
    a162:	e8 12 21 00 00       	call   c279 <memset>
    a167:	83 c4 10             	add    $0x10,%esp
    a16a:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a170:	e8 9d 24 00 00       	call   c612 <getpid>
    a175:	89 c6                	mov    %eax,%esi
    a177:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a17a:	c1 e0 09             	shl    $0x9,%eax
    a17d:	89 c1                	mov    %eax,%ecx
    a17f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a182:	c1 e0 09             	shl    $0x9,%eax
    a185:	99                   	cltd   
    a186:	83 ec 04             	sub    $0x4,%esp
    a189:	53                   	push   %ebx
    a18a:	56                   	push   %esi
    a18b:	51                   	push   %ecx
    a18c:	52                   	push   %edx
    a18d:	50                   	push   %eax
    a18e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a191:	68 ec 03 00 00       	push   $0x3ec
    a196:	e8 60 dc ff ff       	call   7dfb <rw_sector>
    a19b:	83 c4 20             	add    $0x20,%esp
    a19e:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a1a1:	29 45 d4             	sub    %eax,-0x2c(%ebp)
    a1a4:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a1a7:	01 45 d8             	add    %eax,-0x28(%ebp)
    a1aa:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a1ad:	05 ff 07 00 00       	add    $0x7ff,%eax
    a1b2:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    a1b5:	7e 97                	jle    a14e <disklog+0x25d>
    a1b7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    a1bb:	74 13                	je     a1d0 <disklog+0x2df>
    a1bd:	83 ec 08             	sub    $0x8,%esp
    a1c0:	ff 75 d4             	pushl  -0x2c(%ebp)
    a1c3:	68 d8 e5 00 00       	push   $0xe5d8
    a1c8:	e8 3d 79 ff ff       	call   1b0a <panic>
    a1cd:	83 c4 10             	add    $0x10,%esp
    a1d0:	8b 45 08             	mov    0x8(%ebp),%eax
    a1d3:	89 45 d0             	mov    %eax,-0x30(%ebp)
    a1d6:	83 ec 0c             	sub    $0xc,%esp
    a1d9:	ff 75 08             	pushl  0x8(%ebp)
    a1dc:	e8 d1 20 00 00       	call   c2b2 <strlen>
    a1e1:	83 c4 10             	add    $0x10,%esp
    a1e4:	89 45 cc             	mov    %eax,-0x34(%ebp)
    a1e7:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a1ec:	c1 f8 09             	sar    $0x9,%eax
    a1ef:	89 c2                	mov    %eax,%edx
    a1f1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a1f4:	01 d0                	add    %edx,%eax
    a1f6:	89 45 c8             	mov    %eax,-0x38(%ebp)
    a1f9:	e9 ca 00 00 00       	jmp    a2c8 <disklog+0x3d7>
    a1fe:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a204:	e8 09 24 00 00       	call   c612 <getpid>
    a209:	89 c1                	mov    %eax,%ecx
    a20b:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a20e:	c1 e0 09             	shl    $0x9,%eax
    a211:	99                   	cltd   
    a212:	83 ec 04             	sub    $0x4,%esp
    a215:	53                   	push   %ebx
    a216:	51                   	push   %ecx
    a217:	68 00 02 00 00       	push   $0x200
    a21c:	52                   	push   %edx
    a21d:	50                   	push   %eax
    a21e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a221:	68 eb 03 00 00       	push   $0x3eb
    a226:	e8 d0 db ff ff       	call   7dfb <rw_sector>
    a22b:	83 c4 20             	add    $0x20,%esp
    a22e:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a233:	99                   	cltd   
    a234:	c1 ea 17             	shr    $0x17,%edx
    a237:	01 d0                	add    %edx,%eax
    a239:	25 ff 01 00 00       	and    $0x1ff,%eax
    a23e:	29 d0                	sub    %edx,%eax
    a240:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a243:	b8 00 02 00 00       	mov    $0x200,%eax
    a248:	2b 45 a4             	sub    -0x5c(%ebp),%eax
    a24b:	39 45 cc             	cmp    %eax,-0x34(%ebp)
    a24e:	0f 4e 45 cc          	cmovle -0x34(%ebp),%eax
    a252:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a255:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a25b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    a25e:	01 d0                	add    %edx,%eax
    a260:	83 ec 04             	sub    $0x4,%esp
    a263:	ff 75 a0             	pushl  -0x60(%ebp)
    a266:	ff 75 d0             	pushl  -0x30(%ebp)
    a269:	50                   	push   %eax
    a26a:	e8 e1 1f 00 00       	call   c250 <memcpy>
    a26f:	83 c4 10             	add    $0x10,%esp
    a272:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a275:	01 45 a4             	add    %eax,-0x5c(%ebp)
    a278:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a27b:	29 45 cc             	sub    %eax,-0x34(%ebp)
    a27e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a284:	e8 89 23 00 00       	call   c612 <getpid>
    a289:	89 c1                	mov    %eax,%ecx
    a28b:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a28e:	c1 e0 09             	shl    $0x9,%eax
    a291:	99                   	cltd   
    a292:	83 ec 04             	sub    $0x4,%esp
    a295:	53                   	push   %ebx
    a296:	51                   	push   %ecx
    a297:	68 00 02 00 00       	push   $0x200
    a29c:	52                   	push   %edx
    a29d:	50                   	push   %eax
    a29e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a2a1:	68 ec 03 00 00       	push   $0x3ec
    a2a6:	e8 50 db ff ff       	call   7dfb <rw_sector>
    a2ab:	83 c4 20             	add    $0x20,%esp
    a2ae:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    a2b2:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a2b8:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a2bb:	01 d0                	add    %edx,%eax
    a2bd:	a3 e0 38 01 00       	mov    %eax,0x138e0
    a2c2:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a2c5:	01 45 d0             	add    %eax,-0x30(%ebp)
    a2c8:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
    a2cc:	0f 85 2c ff ff ff    	jne    a1fe <disklog+0x30d>
    a2d2:	c7 85 5c ff ff ff 04 	movl   $0x4,-0xa4(%ebp)
    a2d9:	00 00 00 
    a2dc:	8d 45 88             	lea    -0x78(%ebp),%eax
    a2df:	89 45 84             	mov    %eax,-0x7c(%ebp)
    a2e2:	83 ec 04             	sub    $0x4,%esp
    a2e5:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    a2eb:	50                   	push   %eax
    a2ec:	6a 01                	push   $0x1
    a2ee:	6a 03                	push   $0x3
    a2f0:	e8 d3 1f 00 00       	call   c2c8 <send_recv>
    a2f5:	83 c4 10             	add    $0x10,%esp
    a2f8:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a2fe:	e8 0f 23 00 00       	call   c612 <getpid>
    a303:	89 c1                	mov    %eax,%ecx
    a305:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a308:	c1 e0 09             	shl    $0x9,%eax
    a30b:	99                   	cltd   
    a30c:	83 ec 04             	sub    $0x4,%esp
    a30f:	53                   	push   %ebx
    a310:	51                   	push   %ecx
    a311:	68 00 02 00 00       	push   $0x200
    a316:	52                   	push   %edx
    a317:	50                   	push   %eax
    a318:	ff 75 c4             	pushl  -0x3c(%ebp)
    a31b:	68 eb 03 00 00       	push   $0x3eb
    a320:	e8 d6 da ff ff       	call   7dfb <rw_sector>
    a325:	83 c4 20             	add    $0x20,%esp
    a328:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a32e:	a1 10 28 01 00       	mov    0x12810,%eax
    a333:	83 ec 04             	sub    $0x4,%esp
    a336:	52                   	push   %edx
    a337:	68 fd e5 00 00       	push   $0xe5fd
    a33c:	50                   	push   %eax
    a33d:	e8 e8 1e 00 00       	call   c22a <sprintf>
    a342:	83 c4 10             	add    $0x10,%esp
    a345:	a1 10 28 01 00       	mov    0x12810,%eax
    a34a:	83 c0 09             	add    $0x9,%eax
    a34d:	83 ec 04             	sub    $0x4,%esp
    a350:	6a 16                	push   $0x16
    a352:	6a 20                	push   $0x20
    a354:	50                   	push   %eax
    a355:	e8 1f 1f 00 00       	call   c279 <memset>
    a35a:	83 c4 10             	add    $0x10,%esp
    a35d:	a1 10 28 01 00       	mov    0x12810,%eax
    a362:	83 c0 1f             	add    $0x1f,%eax
    a365:	c6 00 0a             	movb   $0xa,(%eax)
    a368:	8b 45 9c             	mov    -0x64(%ebp),%eax
    a36b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
    a371:	8b 7d 98             	mov    -0x68(%ebp),%edi
    a374:	8b 75 94             	mov    -0x6c(%ebp),%esi
    a377:	8b 5d 90             	mov    -0x70(%ebp),%ebx
    a37a:	8b 4d 8c             	mov    -0x74(%ebp),%ecx
    a37d:	8b 55 88             	mov    -0x78(%ebp),%edx
    a380:	a1 10 28 01 00       	mov    0x12810,%eax
    a385:	83 c0 20             	add    $0x20,%eax
    a388:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
    a38e:	57                   	push   %edi
    a38f:	56                   	push   %esi
    a390:	53                   	push   %ebx
    a391:	51                   	push   %ecx
    a392:	52                   	push   %edx
    a393:	68 04 e6 00 00       	push   $0xe604
    a398:	50                   	push   %eax
    a399:	e8 8c 1e 00 00       	call   c22a <sprintf>
    a39e:	83 c4 20             	add    $0x20,%esp
    a3a1:	a1 10 28 01 00       	mov    0x12810,%eax
    a3a6:	83 c0 36             	add    $0x36,%eax
    a3a9:	83 ec 04             	sub    $0x4,%esp
    a3ac:	6a 09                	push   $0x9
    a3ae:	6a 20                	push   $0x20
    a3b0:	50                   	push   %eax
    a3b1:	e8 c3 1e 00 00       	call   c279 <memset>
    a3b6:	83 c4 10             	add    $0x10,%esp
    a3b9:	a1 10 28 01 00       	mov    0x12810,%eax
    a3be:	83 c0 3f             	add    $0x3f,%eax
    a3c1:	c6 00 0a             	movb   $0xa,(%eax)
    a3c4:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a3ca:	e8 43 22 00 00       	call   c612 <getpid>
    a3cf:	89 c1                	mov    %eax,%ecx
    a3d1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a3d4:	c1 e0 09             	shl    $0x9,%eax
    a3d7:	99                   	cltd   
    a3d8:	83 ec 04             	sub    $0x4,%esp
    a3db:	53                   	push   %ebx
    a3dc:	51                   	push   %ecx
    a3dd:	68 00 02 00 00       	push   $0x200
    a3e2:	52                   	push   %edx
    a3e3:	50                   	push   %eax
    a3e4:	ff 75 c4             	pushl  -0x3c(%ebp)
    a3e7:	68 ec 03 00 00       	push   $0x3ec
    a3ec:	e8 0a da ff ff       	call   7dfb <rw_sector>
    a3f1:	83 c4 20             	add    $0x20,%esp
    a3f4:	a1 10 28 01 00       	mov    0x12810,%eax
    a3f9:	83 c0 33             	add    $0x33,%eax
    a3fc:	0f b6 00             	movzbl (%eax),%eax
    a3ff:	0f be c0             	movsbl %al,%eax
    a402:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a408:	83 c2 40             	add    $0x40,%edx
    a40b:	83 ec 04             	sub    $0x4,%esp
    a40e:	68 c0 01 00 00       	push   $0x1c0
    a413:	50                   	push   %eax
    a414:	52                   	push   %edx
    a415:	e8 5f 1e 00 00       	call   c279 <memset>
    a41a:	83 c4 10             	add    $0x10,%esp
    a41d:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a423:	e8 ea 21 00 00       	call   c612 <getpid>
    a428:	89 c1                	mov    %eax,%ecx
    a42a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a42d:	05 ff 07 00 00       	add    $0x7ff,%eax
    a432:	c1 e0 09             	shl    $0x9,%eax
    a435:	99                   	cltd   
    a436:	83 ec 04             	sub    $0x4,%esp
    a439:	53                   	push   %ebx
    a43a:	51                   	push   %ecx
    a43b:	68 00 02 00 00       	push   $0x200
    a440:	52                   	push   %edx
    a441:	50                   	push   %eax
    a442:	ff 75 c4             	pushl  -0x3c(%ebp)
    a445:	68 ec 03 00 00       	push   $0x3ec
    a44a:	e8 ac d9 ff ff       	call   7dfb <rw_sector>
    a44f:	83 c4 20             	add    $0x20,%esp
    a452:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a457:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a45a:	5b                   	pop    %ebx
    a45b:	5e                   	pop    %esi
    a45c:	5f                   	pop    %edi
    a45d:	5d                   	pop    %ebp
    a45e:	c3                   	ret    

0000a45f <dump_fd_graph>:
    a45f:	55                   	push   %ebp
    a460:	89 e5                	mov    %esp,%ebp
    a462:	57                   	push   %edi
    a463:	56                   	push   %esi
    a464:	53                   	push   %ebx
    a465:	81 ec 5c 30 00 00    	sub    $0x305c,%esp
    a46b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a472:	8d 45 0c             	lea    0xc(%ebp),%eax
    a475:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a478:	8b 45 08             	mov    0x8(%ebp),%eax
    a47b:	83 ec 04             	sub    $0x4,%esp
    a47e:	ff 75 a4             	pushl  -0x5c(%ebp)
    a481:	50                   	push   %eax
    a482:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a488:	50                   	push   %eax
    a489:	e8 1f 1b 00 00       	call   bfad <vsprintf>
    a48e:	83 c4 10             	add    $0x10,%esp
    a491:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a494:	83 ec 0c             	sub    $0xc,%esp
    a497:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a49d:	50                   	push   %eax
    a49e:	e8 0f 1e 00 00       	call   c2b2 <strlen>
    a4a3:	83 c4 10             	add    $0x10,%esp
    a4a6:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    a4a9:	74 1c                	je     a4c7 <dump_fd_graph+0x68>
    a4ab:	68 21 01 00 00       	push   $0x121
    a4b0:	68 7c e5 00 00       	push   $0xe57c
    a4b5:	68 7c e5 00 00       	push   $0xe57c
    a4ba:	68 23 e6 00 00       	push   $0xe623
    a4bf:	e8 19 20 00 00       	call   c4dd <assertion_failure>
    a4c4:	83 c4 10             	add    $0x10,%esp
    a4c7:	83 ec 08             	sub    $0x8,%esp
    a4ca:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a4d0:	50                   	push   %eax
    a4d1:	68 36 e6 00 00       	push   $0xe636
    a4d6:	e8 2a 1a 00 00       	call   bf05 <printl>
    a4db:	83 c4 10             	add    $0x10,%esp
    a4de:	e8 2f 21 00 00       	call   c612 <getpid>
    a4e3:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a4e6:	83 ec 0c             	sub    $0xc,%esp
    a4e9:	68 49 e6 00 00       	push   $0xe649
    a4ee:	e8 12 1a 00 00       	call   bf05 <printl>
    a4f3:	83 c4 10             	add    $0x10,%esp
    a4f6:	e8 a2 bf ff ff       	call   649d <disable_int>
    a4fb:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a502:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a509:	eb 6a                	jmp    a575 <dump_fd_graph+0x116>
    a50b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a50e:	8b 40 74             	mov    0x74(%eax),%eax
    a511:	83 f8 20             	cmp    $0x20,%eax
    a514:	74 50                	je     a566 <dump_fd_graph+0x107>
    a516:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    a51a:	74 4d                	je     a569 <dump_fd_graph+0x10a>
    a51c:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    a520:	74 47                	je     a569 <dump_fd_graph+0x10a>
    a522:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    a526:	74 41                	je     a569 <dump_fd_graph+0x10a>
    a528:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a52b:	3b 45 a0             	cmp    -0x60(%ebp),%eax
    a52e:	74 39                	je     a569 <dump_fd_graph+0x10a>
    a530:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a533:	8b 50 5c             	mov    0x5c(%eax),%edx
    a536:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a539:	89 94 85 cc fa ff ff 	mov    %edx,-0x534(%ebp,%eax,4)
    a540:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a543:	8b 50 60             	mov    0x60(%eax),%edx
    a546:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a549:	89 94 85 38 fa ff ff 	mov    %edx,-0x5c8(%ebp,%eax,4)
    a550:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a553:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
    a55a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a55d:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
    a564:	eb 04                	jmp    a56a <dump_fd_graph+0x10b>
    a566:	90                   	nop
    a567:	eb 01                	jmp    a56a <dump_fd_graph+0x10b>
    a569:	90                   	nop
    a56a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a56e:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    a575:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    a579:	7e 90                	jle    a50b <dump_fd_graph+0xac>
    a57b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a582:	eb 12                	jmp    a596 <dump_fd_graph+0x137>
    a584:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a587:	c7 84 85 a8 f9 ff ff 	movl   $0xe64c,-0x658(%ebp,%eax,4)
    a58e:	4c e6 00 00 
    a592:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a596:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a599:	83 f8 1f             	cmp    $0x1f,%eax
    a59c:	76 e6                	jbe    a584 <dump_fd_graph+0x125>
    a59e:	c7 85 a8 f9 ff ff 5c 	movl   $0xe65c,-0x658(%ebp)
    a5a5:	e6 00 00 
    a5a8:	c7 85 b0 f9 ff ff 64 	movl   $0xe664,-0x650(%ebp)
    a5af:	e6 00 00 
    a5b2:	c7 85 b8 f9 ff ff 6c 	movl   $0xe66c,-0x648(%ebp)
    a5b9:	e6 00 00 
    a5bc:	c7 85 c8 f9 ff ff 76 	movl   $0xe676,-0x638(%ebp)
    a5c3:	e6 00 00 
    a5c6:	c7 85 e8 f9 ff ff 7e 	movl   $0xe67e,-0x618(%ebp)
    a5cd:	e6 00 00 
    a5d0:	c7 85 28 fa ff ff 86 	movl   $0xe686,-0x5d8(%ebp)
    a5d7:	e6 00 00 
    a5da:	c7 85 d0 f9 ff ff 90 	movl   $0xe690,-0x630(%ebp)
    a5e1:	e6 00 00 
    a5e4:	c7 85 d8 f9 ff ff a1 	movl   $0xe6a1,-0x628(%ebp)
    a5eb:	e6 00 00 
    a5ee:	c7 85 f8 f9 ff ff b4 	movl   $0xe6b4,-0x608(%ebp)
    a5f5:	e6 00 00 
    a5f8:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a5ff:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    a606:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    a60d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    a614:	83 ec 0c             	sub    $0xc,%esp
    a617:	68 c7 e6 00 00       	push   $0xe6c7
    a61c:	e8 e4 18 00 00       	call   bf05 <printl>
    a621:	83 c4 10             	add    $0x10,%esp
    a624:	a1 e4 38 01 00       	mov    0x138e4,%eax
    a629:	8d 50 01             	lea    0x1(%eax),%edx
    a62c:	89 15 e4 38 01 00    	mov    %edx,0x138e4
    a632:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    a638:	8b 55 e0             	mov    -0x20(%ebp),%edx
    a63b:	01 ca                	add    %ecx,%edx
    a63d:	83 ec 04             	sub    $0x4,%esp
    a640:	50                   	push   %eax
    a641:	68 cb e6 00 00       	push   $0xe6cb
    a646:	52                   	push   %edx
    a647:	e8 de 1b 00 00       	call   c22a <sprintf>
    a64c:	83 c4 10             	add    $0x10,%esp
    a64f:	01 45 e0             	add    %eax,-0x20(%ebp)
    a652:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a658:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a65b:	01 d0                	add    %edx,%eax
    a65d:	83 ec 08             	sub    $0x8,%esp
    a660:	68 e3 e6 00 00       	push   $0xe6e3
    a665:	50                   	push   %eax
    a666:	e8 bf 1b 00 00       	call   c22a <sprintf>
    a66b:	83 c4 10             	add    $0x10,%esp
    a66e:	01 45 e0             	add    %eax,-0x20(%ebp)
    a671:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a677:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a67a:	01 d0                	add    %edx,%eax
    a67c:	83 ec 08             	sub    $0x8,%esp
    a67f:	68 ed e6 00 00       	push   $0xe6ed
    a684:	50                   	push   %eax
    a685:	e8 a0 1b 00 00       	call   c22a <sprintf>
    a68a:	83 c4 10             	add    $0x10,%esp
    a68d:	01 45 e0             	add    %eax,-0x20(%ebp)
    a690:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a696:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a699:	01 d0                	add    %edx,%eax
    a69b:	83 ec 08             	sub    $0x8,%esp
    a69e:	68 ff e6 00 00       	push   $0xe6ff
    a6a3:	50                   	push   %eax
    a6a4:	e8 81 1b 00 00       	call   c22a <sprintf>
    a6a9:	83 c4 10             	add    $0x10,%esp
    a6ac:	01 45 e0             	add    %eax,-0x20(%ebp)
    a6af:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a6b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a6b8:	01 d0                	add    %edx,%eax
    a6ba:	83 ec 08             	sub    $0x8,%esp
    a6bd:	68 04 e7 00 00       	push   $0xe704
    a6c2:	50                   	push   %eax
    a6c3:	e8 62 1b 00 00       	call   c22a <sprintf>
    a6c8:	83 c4 10             	add    $0x10,%esp
    a6cb:	01 45 e0             	add    %eax,-0x20(%ebp)
    a6ce:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a6d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a6d7:	01 d0                	add    %edx,%eax
    a6d9:	83 ec 08             	sub    $0x8,%esp
    a6dc:	68 0d e7 00 00       	push   $0xe70d
    a6e1:	50                   	push   %eax
    a6e2:	e8 43 1b 00 00       	call   c22a <sprintf>
    a6e7:	83 c4 10             	add    $0x10,%esp
    a6ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    a6ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a6f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a6f6:	01 d0                	add    %edx,%eax
    a6f8:	83 ec 08             	sub    $0x8,%esp
    a6fb:	68 20 e7 00 00       	push   $0xe720
    a700:	50                   	push   %eax
    a701:	e8 24 1b 00 00       	call   c22a <sprintf>
    a706:	83 c4 10             	add    $0x10,%esp
    a709:	01 45 e0             	add    %eax,-0x20(%ebp)
    a70c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a712:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a715:	01 d0                	add    %edx,%eax
    a717:	83 ec 08             	sub    $0x8,%esp
    a71a:	68 ff e6 00 00       	push   $0xe6ff
    a71f:	50                   	push   %eax
    a720:	e8 05 1b 00 00       	call   c22a <sprintf>
    a725:	83 c4 10             	add    $0x10,%esp
    a728:	01 45 e0             	add    %eax,-0x20(%ebp)
    a72b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a731:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a734:	01 d0                	add    %edx,%eax
    a736:	83 ec 08             	sub    $0x8,%esp
    a739:	68 35 e7 00 00       	push   $0xe735
    a73e:	50                   	push   %eax
    a73f:	e8 e6 1a 00 00       	call   c22a <sprintf>
    a744:	83 c4 10             	add    $0x10,%esp
    a747:	01 45 e0             	add    %eax,-0x20(%ebp)
    a74a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a750:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a753:	01 d0                	add    %edx,%eax
    a755:	83 ec 08             	sub    $0x8,%esp
    a758:	68 ff e6 00 00       	push   $0xe6ff
    a75d:	50                   	push   %eax
    a75e:	e8 c7 1a 00 00       	call   c22a <sprintf>
    a763:	83 c4 10             	add    $0x10,%esp
    a766:	01 45 e0             	add    %eax,-0x20(%ebp)
    a769:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a770:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a776:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a779:	01 d0                	add    %edx,%eax
    a77b:	83 ec 08             	sub    $0x8,%esp
    a77e:	68 3e e7 00 00       	push   $0xe73e
    a783:	50                   	push   %eax
    a784:	e8 a1 1a 00 00       	call   c22a <sprintf>
    a789:	83 c4 10             	add    $0x10,%esp
    a78c:	01 45 e0             	add    %eax,-0x20(%ebp)
    a78f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a796:	e9 f7 02 00 00       	jmp    aa92 <dump_fd_graph+0x633>
    a79b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a79e:	8b 40 74             	mov    0x74(%eax),%eax
    a7a1:	83 f8 20             	cmp    $0x20,%eax
    a7a4:	0f 84 dc 02 00 00    	je     aa86 <dump_fd_graph+0x627>
    a7aa:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a7ad:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    a7b3:	83 f8 39             	cmp    $0x39,%eax
    a7b6:	74 24                	je     a7dc <dump_fd_graph+0x37d>
    a7b8:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a7bb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a7be:	89 94 c5 a8 f1 ff ff 	mov    %edx,-0xe58(%ebp,%eax,8)
    a7c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a7c8:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    a7ce:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a7d1:	89 94 c5 ac f1 ff ff 	mov    %edx,-0xe54(%ebp,%eax,8)
    a7d8:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a7dc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a7df:	8b 40 74             	mov    0x74(%eax),%eax
    a7e2:	83 e0 04             	and    $0x4,%eax
    a7e5:	85 c0                	test   %eax,%eax
    a7e7:	74 69                	je     a852 <dump_fd_graph+0x3f3>
    a7e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a7ec:	8b 48 7c             	mov    0x7c(%eax),%ecx
    a7ef:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a7f2:	89 d0                	mov    %edx,%eax
    a7f4:	01 c0                	add    %eax,%eax
    a7f6:	01 d0                	add    %edx,%eax
    a7f8:	c1 e0 02             	shl    $0x2,%eax
    a7fb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a7fe:	01 f8                	add    %edi,%eax
    a800:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    a805:	89 08                	mov    %ecx,(%eax)
    a807:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a80a:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    a80f:	c1 f8 03             	sar    $0x3,%eax
    a812:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    a818:	89 c1                	mov    %eax,%ecx
    a81a:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a81d:	89 d0                	mov    %edx,%eax
    a81f:	01 c0                	add    %eax,%eax
    a821:	01 d0                	add    %edx,%eax
    a823:	c1 e0 02             	shl    $0x2,%eax
    a826:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a829:	01 f8                	add    %edi,%eax
    a82b:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    a830:	89 08                	mov    %ecx,(%eax)
    a832:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a835:	89 d0                	mov    %edx,%eax
    a837:	01 c0                	add    %eax,%eax
    a839:	01 d0                	add    %edx,%eax
    a83b:	c1 e0 02             	shl    $0x2,%eax
    a83e:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a841:	01 f8                	add    %edi,%eax
    a843:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    a848:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
    a84e:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    a852:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a855:	8b 40 74             	mov    0x74(%eax),%eax
    a858:	83 e0 02             	and    $0x2,%eax
    a85b:	85 c0                	test   %eax,%eax
    a85d:	74 6c                	je     a8cb <dump_fd_graph+0x46c>
    a85f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a862:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    a867:	c1 f8 03             	sar    $0x3,%eax
    a86a:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    a870:	89 c1                	mov    %eax,%ecx
    a872:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a875:	89 d0                	mov    %edx,%eax
    a877:	01 c0                	add    %eax,%eax
    a879:	01 d0                	add    %edx,%eax
    a87b:	c1 e0 02             	shl    $0x2,%eax
    a87e:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a881:	01 f8                	add    %edi,%eax
    a883:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    a888:	89 08                	mov    %ecx,(%eax)
    a88a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a88d:	8b 88 80 00 00 00    	mov    0x80(%eax),%ecx
    a893:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a896:	89 d0                	mov    %edx,%eax
    a898:	01 c0                	add    %eax,%eax
    a89a:	01 d0                	add    %edx,%eax
    a89c:	c1 e0 02             	shl    $0x2,%eax
    a89f:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a8a2:	01 f8                	add    %edi,%eax
    a8a4:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    a8a9:	89 08                	mov    %ecx,(%eax)
    a8ab:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a8ae:	89 d0                	mov    %edx,%eax
    a8b0:	01 c0                	add    %eax,%eax
    a8b2:	01 d0                	add    %edx,%eax
    a8b4:	c1 e0 02             	shl    $0x2,%eax
    a8b7:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a8ba:	01 f8                	add    %edi,%eax
    a8bc:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    a8c1:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
    a8c7:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    a8cb:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a8ce:	8b 78 34             	mov    0x34(%eax),%edi
    a8d1:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a8d4:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    a8da:	83 f8 39             	cmp    $0x39,%eax
    a8dd:	75 0c                	jne    a8eb <dump_fd_graph+0x48c>
    a8df:	c7 85 a4 cf ff ff 56 	movl   $0xe756,-0x305c(%ebp)
    a8e6:	e7 00 00 
    a8e9:	eb 0a                	jmp    a8f5 <dump_fd_graph+0x496>
    a8eb:	c7 85 a4 cf ff ff 60 	movl   $0xe760,-0x305c(%ebp)
    a8f2:	e7 00 00 
    a8f5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a8f8:	8b b0 90 00 00 00    	mov    0x90(%eax),%esi
    a8fe:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a901:	8b 40 74             	mov    0x74(%eax),%eax
    a904:	8b 9c 85 a8 f9 ff ff 	mov    -0x658(%ebp,%eax,4),%ebx
    a90b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a90e:	8b 48 74             	mov    0x74(%eax),%ecx
    a911:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a914:	83 c0 64             	add    $0x64,%eax
    a917:	89 85 a0 cf ff ff    	mov    %eax,-0x3060(%ebp)
    a91d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a923:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a926:	01 d0                	add    %edx,%eax
    a928:	83 ec 08             	sub    $0x8,%esp
    a92b:	57                   	push   %edi
    a92c:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    a932:	56                   	push   %esi
    a933:	53                   	push   %ebx
    a934:	51                   	push   %ecx
    a935:	ff 75 e4             	pushl  -0x1c(%ebp)
    a938:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    a93e:	ff 75 e4             	pushl  -0x1c(%ebp)
    a941:	68 64 e7 00 00       	push   $0xe764
    a946:	50                   	push   %eax
    a947:	e8 de 18 00 00       	call   c22a <sprintf>
    a94c:	83 c4 30             	add    $0x30,%esp
    a94f:	01 45 e0             	add    %eax,-0x20(%ebp)
    a952:	c7 45 c4 03 00 00 00 	movl   $0x3,-0x3c(%ebp)
    a959:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    a960:	e9 b8 00 00 00       	jmp    aa1d <dump_fd_graph+0x5be>
    a965:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a968:	8b 55 c8             	mov    -0x38(%ebp),%edx
    a96b:	83 c2 24             	add    $0x24,%edx
    a96e:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    a972:	85 c0                	test   %eax,%eax
    a974:	0f 84 9e 00 00 00    	je     aa18 <dump_fd_graph+0x5b9>
    a97a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a97d:	8b 55 c8             	mov    -0x38(%ebp),%edx
    a980:	83 c2 24             	add    $0x24,%edx
    a983:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    a987:	2d a0 95 03 00       	sub    $0x395a0,%eax
    a98c:	c1 f8 04             	sar    $0x4,%eax
    a98f:	89 45 9c             	mov    %eax,-0x64(%ebp)
    a992:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a998:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a99b:	01 d0                	add    %edx,%eax
    a99d:	83 ec 0c             	sub    $0xc,%esp
    a9a0:	ff 75 9c             	pushl  -0x64(%ebp)
    a9a3:	ff 75 c8             	pushl  -0x38(%ebp)
    a9a6:	ff 75 c4             	pushl  -0x3c(%ebp)
    a9a9:	68 bf e7 00 00       	push   $0xe7bf
    a9ae:	50                   	push   %eax
    a9af:	e8 76 18 00 00       	call   c22a <sprintf>
    a9b4:	83 c4 20             	add    $0x20,%esp
    a9b7:	01 45 e0             	add    %eax,-0x20(%ebp)
    a9ba:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    a9bd:	89 d0                	mov    %edx,%eax
    a9bf:	01 c0                	add    %eax,%eax
    a9c1:	01 d0                	add    %edx,%eax
    a9c3:	c1 e0 02             	shl    $0x2,%eax
    a9c6:	8d 75 e8             	lea    -0x18(%ebp),%esi
    a9c9:	01 f0                	add    %esi,%eax
    a9cb:	8d 90 c0 e5 ff ff    	lea    -0x1a40(%eax),%edx
    a9d1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a9d4:	89 02                	mov    %eax,(%edx)
    a9d6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    a9d9:	89 d0                	mov    %edx,%eax
    a9db:	01 c0                	add    %eax,%eax
    a9dd:	01 d0                	add    %edx,%eax
    a9df:	c1 e0 02             	shl    $0x2,%eax
    a9e2:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a9e5:	01 f8                	add    %edi,%eax
    a9e7:	8d 90 c4 e5 ff ff    	lea    -0x1a3c(%eax),%edx
    a9ed:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    a9f0:	89 02                	mov    %eax,(%edx)
    a9f2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    a9f5:	89 d0                	mov    %edx,%eax
    a9f7:	01 c0                	add    %eax,%eax
    a9f9:	01 d0                	add    %edx,%eax
    a9fb:	c1 e0 02             	shl    $0x2,%eax
    a9fe:	8d 75 e8             	lea    -0x18(%ebp),%esi
    aa01:	01 f0                	add    %esi,%eax
    aa03:	8d 90 c8 e5 ff ff    	lea    -0x1a38(%eax),%edx
    aa09:	8b 45 9c             	mov    -0x64(%ebp),%eax
    aa0c:	89 02                	mov    %eax,(%edx)
    aa0e:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    aa12:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    aa16:	eb 01                	jmp    aa19 <dump_fd_graph+0x5ba>
    aa18:	90                   	nop
    aa19:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    aa1d:	83 7d c8 3f          	cmpl   $0x3f,-0x38(%ebp)
    aa21:	0f 8e 3e ff ff ff    	jle    a965 <dump_fd_graph+0x506>
    aa27:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aa2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aa30:	01 d0                	add    %edx,%eax
    aa32:	83 ec 08             	sub    $0x8,%esp
    aa35:	68 d4 e7 00 00       	push   $0xe7d4
    aa3a:	50                   	push   %eax
    aa3b:	e8 ea 17 00 00       	call   c22a <sprintf>
    aa40:	83 c4 10             	add    $0x10,%esp
    aa43:	01 45 e0             	add    %eax,-0x20(%ebp)
    aa46:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aa4c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aa4f:	01 d0                	add    %edx,%eax
    aa51:	83 ec 08             	sub    $0x8,%esp
    aa54:	68 d8 e7 00 00       	push   $0xe7d8
    aa59:	50                   	push   %eax
    aa5a:	e8 cb 17 00 00       	call   c22a <sprintf>
    aa5f:	83 c4 10             	add    $0x10,%esp
    aa62:	01 45 e0             	add    %eax,-0x20(%ebp)
    aa65:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aa6b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aa6e:	01 d0                	add    %edx,%eax
    aa70:	83 ec 08             	sub    $0x8,%esp
    aa73:	68 ed e7 00 00       	push   $0xe7ed
    aa78:	50                   	push   %eax
    aa79:	e8 ac 17 00 00       	call   c22a <sprintf>
    aa7e:	83 c4 10             	add    $0x10,%esp
    aa81:	01 45 e0             	add    %eax,-0x20(%ebp)
    aa84:	eb 01                	jmp    aa87 <dump_fd_graph+0x628>
    aa86:	90                   	nop
    aa87:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    aa8b:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    aa92:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    aa96:	0f 8e ff fc ff ff    	jle    a79b <dump_fd_graph+0x33c>
    aa9c:	c7 45 e4 2f 00 00 00 	movl   $0x2f,-0x1c(%ebp)
    aaa3:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aaa9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aaac:	01 d0                	add    %edx,%eax
    aaae:	83 ec 04             	sub    $0x4,%esp
    aab1:	ff 75 e4             	pushl  -0x1c(%ebp)
    aab4:	68 f3 e7 00 00       	push   $0xe7f3
    aab9:	50                   	push   %eax
    aaba:	e8 6b 17 00 00       	call   c22a <sprintf>
    aabf:	83 c4 10             	add    $0x10,%esp
    aac2:	01 45 e0             	add    %eax,-0x20(%ebp)
    aac5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aacb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aace:	01 d0                	add    %edx,%eax
    aad0:	83 ec 08             	sub    $0x8,%esp
    aad3:	68 01 e8 00 00       	push   $0xe801
    aad8:	50                   	push   %eax
    aad9:	e8 4c 17 00 00       	call   c22a <sprintf>
    aade:	83 c4 10             	add    $0x10,%esp
    aae1:	01 45 e0             	add    %eax,-0x20(%ebp)
    aae4:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aaea:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aaed:	01 d0                	add    %edx,%eax
    aaef:	83 ec 08             	sub    $0x8,%esp
    aaf2:	68 d4 e7 00 00       	push   $0xe7d4
    aaf7:	50                   	push   %eax
    aaf8:	e8 2d 17 00 00       	call   c22a <sprintf>
    aafd:	83 c4 10             	add    $0x10,%esp
    ab00:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab03:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab09:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab0c:	01 d0                	add    %edx,%eax
    ab0e:	83 ec 08             	sub    $0x8,%esp
    ab11:	68 d8 e7 00 00       	push   $0xe7d8
    ab16:	50                   	push   %eax
    ab17:	e8 0e 17 00 00       	call   c22a <sprintf>
    ab1c:	83 c4 10             	add    $0x10,%esp
    ab1f:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab22:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab28:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab2b:	01 d0                	add    %edx,%eax
    ab2d:	83 ec 08             	sub    $0x8,%esp
    ab30:	68 ed e7 00 00       	push   $0xe7ed
    ab35:	50                   	push   %eax
    ab36:	e8 ef 16 00 00       	call   c22a <sprintf>
    ab3b:	83 c4 10             	add    $0x10,%esp
    ab3e:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab41:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab47:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab4a:	01 d0                	add    %edx,%eax
    ab4c:	83 ec 08             	sub    $0x8,%esp
    ab4f:	68 1c e8 00 00       	push   $0xe81c
    ab54:	50                   	push   %eax
    ab55:	e8 d0 16 00 00       	call   c22a <sprintf>
    ab5a:	83 c4 10             	add    $0x10,%esp
    ab5d:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab60:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab66:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab69:	01 d0                	add    %edx,%eax
    ab6b:	83 ec 08             	sub    $0x8,%esp
    ab6e:	68 30 e8 00 00       	push   $0xe830
    ab73:	50                   	push   %eax
    ab74:	e8 b1 16 00 00       	call   c22a <sprintf>
    ab79:	83 c4 10             	add    $0x10,%esp
    ab7c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab7f:	83 ec 0c             	sub    $0xc,%esp
    ab82:	68 34 e8 00 00       	push   $0xe834
    ab87:	e8 79 13 00 00       	call   bf05 <printl>
    ab8c:	83 c4 10             	add    $0x10,%esp
    ab8f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab95:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab98:	01 d0                	add    %edx,%eax
    ab9a:	83 ec 08             	sub    $0x8,%esp
    ab9d:	68 36 e8 00 00       	push   $0xe836
    aba2:	50                   	push   %eax
    aba3:	e8 82 16 00 00       	call   c22a <sprintf>
    aba8:	83 c4 10             	add    $0x10,%esp
    abab:	01 45 e0             	add    %eax,-0x20(%ebp)
    abae:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    abb5:	e9 26 01 00 00       	jmp    ace0 <dump_fd_graph+0x881>
    abba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    abbd:	c1 e0 04             	shl    $0x4,%eax
    abc0:	05 ac 95 03 00       	add    $0x395ac,%eax
    abc5:	8b 00                	mov    (%eax),%eax
    abc7:	85 c0                	test   %eax,%eax
    abc9:	0f 84 0c 01 00 00    	je     acdb <dump_fd_graph+0x87c>
    abcf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    abd2:	c1 e0 04             	shl    $0x4,%eax
    abd5:	05 ac 95 03 00       	add    $0x395ac,%eax
    abda:	8b 00                	mov    (%eax),%eax
    abdc:	2d 20 39 01 00       	sub    $0x13920,%eax
    abe1:	c1 f8 02             	sar    $0x2,%eax
    abe4:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
    abea:	89 45 98             	mov    %eax,-0x68(%ebp)
    abed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    abf3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    abf6:	01 d0                	add    %edx,%eax
    abf8:	83 ec 04             	sub    $0x4,%esp
    abfb:	ff 75 e4             	pushl  -0x1c(%ebp)
    abfe:	68 4e e8 00 00       	push   $0xe84e
    ac03:	50                   	push   %eax
    ac04:	e8 21 16 00 00       	call   c22a <sprintf>
    ac09:	83 c4 10             	add    $0x10,%esp
    ac0c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac0f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ac12:	c1 e0 04             	shl    $0x4,%eax
    ac15:	05 a8 95 03 00       	add    $0x395a8,%eax
    ac1a:	8b 08                	mov    (%eax),%ecx
    ac1c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ac1f:	c1 e0 04             	shl    $0x4,%eax
    ac22:	05 a4 95 03 00       	add    $0x395a4,%eax
    ac27:	8b 10                	mov    (%eax),%edx
    ac29:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ac2c:	c1 e0 04             	shl    $0x4,%eax
    ac2f:	05 a0 95 03 00       	add    $0x395a0,%eax
    ac34:	8b 00                	mov    (%eax),%eax
    ac36:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    ac3c:	8b 5d e0             	mov    -0x20(%ebp),%ebx
    ac3f:	01 f3                	add    %esi,%ebx
    ac41:	83 ec 04             	sub    $0x4,%esp
    ac44:	ff 75 98             	pushl  -0x68(%ebp)
    ac47:	51                   	push   %ecx
    ac48:	52                   	push   %edx
    ac49:	50                   	push   %eax
    ac4a:	ff 75 e4             	pushl  -0x1c(%ebp)
    ac4d:	68 60 e8 00 00       	push   $0xe860
    ac52:	53                   	push   %ebx
    ac53:	e8 d2 15 00 00       	call   c22a <sprintf>
    ac58:	83 c4 20             	add    $0x20,%esp
    ac5b:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac5e:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ac61:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    ac64:	89 94 c5 a8 dd ff ff 	mov    %edx,-0x2258(%ebp,%eax,8)
    ac6b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ac6e:	8b 55 98             	mov    -0x68(%ebp),%edx
    ac71:	89 94 c5 ac dd ff ff 	mov    %edx,-0x2254(%ebp,%eax,8)
    ac78:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
    ac7c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac82:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac85:	01 d0                	add    %edx,%eax
    ac87:	83 ec 08             	sub    $0x8,%esp
    ac8a:	68 d4 e7 00 00       	push   $0xe7d4
    ac8f:	50                   	push   %eax
    ac90:	e8 95 15 00 00       	call   c22a <sprintf>
    ac95:	83 c4 10             	add    $0x10,%esp
    ac98:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac9b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aca1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aca4:	01 d0                	add    %edx,%eax
    aca6:	83 ec 08             	sub    $0x8,%esp
    aca9:	68 d8 e7 00 00       	push   $0xe7d8
    acae:	50                   	push   %eax
    acaf:	e8 76 15 00 00       	call   c22a <sprintf>
    acb4:	83 c4 10             	add    $0x10,%esp
    acb7:	01 45 e0             	add    %eax,-0x20(%ebp)
    acba:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    acc0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    acc3:	01 d0                	add    %edx,%eax
    acc5:	83 ec 08             	sub    $0x8,%esp
    acc8:	68 ed e7 00 00       	push   $0xe7ed
    accd:	50                   	push   %eax
    acce:	e8 57 15 00 00       	call   c22a <sprintf>
    acd3:	83 c4 10             	add    $0x10,%esp
    acd6:	01 45 e0             	add    %eax,-0x20(%ebp)
    acd9:	eb 01                	jmp    acdc <dump_fd_graph+0x87d>
    acdb:	90                   	nop
    acdc:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    ace0:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    ace4:	0f 8e d0 fe ff ff    	jle    abba <dump_fd_graph+0x75b>
    acea:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    acf0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    acf3:	01 d0                	add    %edx,%eax
    acf5:	83 ec 08             	sub    $0x8,%esp
    acf8:	68 bb e8 00 00       	push   $0xe8bb
    acfd:	50                   	push   %eax
    acfe:	e8 27 15 00 00       	call   c22a <sprintf>
    ad03:	83 c4 10             	add    $0x10,%esp
    ad06:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad09:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad0f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad12:	01 d0                	add    %edx,%eax
    ad14:	83 ec 08             	sub    $0x8,%esp
    ad17:	68 30 e8 00 00       	push   $0xe830
    ad1c:	50                   	push   %eax
    ad1d:	e8 08 15 00 00       	call   c22a <sprintf>
    ad22:	83 c4 10             	add    $0x10,%esp
    ad25:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad28:	83 ec 0c             	sub    $0xc,%esp
    ad2b:	68 d3 e8 00 00       	push   $0xe8d3
    ad30:	e8 d0 11 00 00       	call   bf05 <printl>
    ad35:	83 c4 10             	add    $0x10,%esp
    ad38:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad3e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad41:	01 d0                	add    %edx,%eax
    ad43:	83 ec 08             	sub    $0x8,%esp
    ad46:	68 d5 e8 00 00       	push   $0xe8d5
    ad4b:	50                   	push   %eax
    ad4c:	e8 d9 14 00 00       	call   c22a <sprintf>
    ad51:	83 c4 10             	add    $0x10,%esp
    ad54:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad57:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    ad5e:	e9 40 01 00 00       	jmp    aea3 <dump_fd_graph+0xa44>
    ad63:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ad66:	6b c0 2c             	imul   $0x2c,%eax,%eax
    ad69:	05 44 39 01 00       	add    $0x13944,%eax
    ad6e:	8b 00                	mov    (%eax),%eax
    ad70:	85 c0                	test   %eax,%eax
    ad72:	0f 84 26 01 00 00    	je     ae9e <dump_fd_graph+0xa3f>
    ad78:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad7e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad81:	01 d0                	add    %edx,%eax
    ad83:	83 ec 04             	sub    $0x4,%esp
    ad86:	ff 75 e4             	pushl  -0x1c(%ebp)
    ad89:	68 ed e8 00 00       	push   $0xe8ed
    ad8e:	50                   	push   %eax
    ad8f:	e8 96 14 00 00       	call   c22a <sprintf>
    ad94:	83 c4 10             	add    $0x10,%esp
    ad97:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ad9d:	6b c0 2c             	imul   $0x2c,%eax,%eax
    ada0:	05 48 39 01 00       	add    $0x13948,%eax
    ada5:	8b 18                	mov    (%eax),%ebx
    ada7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    adaa:	6b c0 2c             	imul   $0x2c,%eax,%eax
    adad:	05 44 39 01 00       	add    $0x13944,%eax
    adb2:	8b 00                	mov    (%eax),%eax
    adb4:	89 85 a4 cf ff ff    	mov    %eax,-0x305c(%ebp)
    adba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    adbd:	6b c0 2c             	imul   $0x2c,%eax,%eax
    adc0:	05 40 39 01 00       	add    $0x13940,%eax
    adc5:	8b 38                	mov    (%eax),%edi
    adc7:	89 bd a0 cf ff ff    	mov    %edi,-0x3060(%ebp)
    adcd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    add0:	6b c0 2c             	imul   $0x2c,%eax,%eax
    add3:	05 2c 39 01 00       	add    $0x1392c,%eax
    add8:	8b 30                	mov    (%eax),%esi
    adda:	89 b5 9c cf ff ff    	mov    %esi,-0x3064(%ebp)
    ade0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ade3:	6b c0 2c             	imul   $0x2c,%eax,%eax
    ade6:	05 28 39 01 00       	add    $0x13928,%eax
    adeb:	8b 38                	mov    (%eax),%edi
    aded:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    adf0:	6b c0 2c             	imul   $0x2c,%eax,%eax
    adf3:	05 24 39 01 00       	add    $0x13924,%eax
    adf8:	8b 30                	mov    (%eax),%esi
    adfa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    adfd:	6b c0 2c             	imul   $0x2c,%eax,%eax
    ae00:	05 20 39 01 00       	add    $0x13920,%eax
    ae05:	8b 08                	mov    (%eax),%ecx
    ae07:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae0d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae10:	01 d0                	add    %edx,%eax
    ae12:	83 ec 08             	sub    $0x8,%esp
    ae15:	53                   	push   %ebx
    ae16:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    ae1c:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    ae22:	ff b5 9c cf ff ff    	pushl  -0x3064(%ebp)
    ae28:	57                   	push   %edi
    ae29:	56                   	push   %esi
    ae2a:	51                   	push   %ecx
    ae2b:	ff 75 e4             	pushl  -0x1c(%ebp)
    ae2e:	68 fc e8 00 00       	push   $0xe8fc
    ae33:	50                   	push   %eax
    ae34:	e8 f1 13 00 00       	call   c22a <sprintf>
    ae39:	83 c4 30             	add    $0x30,%esp
    ae3c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae3f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae45:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae48:	01 d0                	add    %edx,%eax
    ae4a:	83 ec 08             	sub    $0x8,%esp
    ae4d:	68 d4 e7 00 00       	push   $0xe7d4
    ae52:	50                   	push   %eax
    ae53:	e8 d2 13 00 00       	call   c22a <sprintf>
    ae58:	83 c4 10             	add    $0x10,%esp
    ae5b:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae5e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae64:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae67:	01 d0                	add    %edx,%eax
    ae69:	83 ec 08             	sub    $0x8,%esp
    ae6c:	68 d8 e7 00 00       	push   $0xe7d8
    ae71:	50                   	push   %eax
    ae72:	e8 b3 13 00 00       	call   c22a <sprintf>
    ae77:	83 c4 10             	add    $0x10,%esp
    ae7a:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae7d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae83:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae86:	01 d0                	add    %edx,%eax
    ae88:	83 ec 08             	sub    $0x8,%esp
    ae8b:	68 ed e7 00 00       	push   $0xe7ed
    ae90:	50                   	push   %eax
    ae91:	e8 94 13 00 00       	call   c22a <sprintf>
    ae96:	83 c4 10             	add    $0x10,%esp
    ae99:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae9c:	eb 01                	jmp    ae9f <dump_fd_graph+0xa40>
    ae9e:	90                   	nop
    ae9f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    aea3:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    aea7:	0f 8e b6 fe ff ff    	jle    ad63 <dump_fd_graph+0x904>
    aead:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aeb3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aeb6:	01 d0                	add    %edx,%eax
    aeb8:	83 ec 08             	sub    $0x8,%esp
    aebb:	68 8f e9 00 00       	push   $0xe98f
    aec0:	50                   	push   %eax
    aec1:	e8 64 13 00 00       	call   c22a <sprintf>
    aec6:	83 c4 10             	add    $0x10,%esp
    aec9:	01 45 e0             	add    %eax,-0x20(%ebp)
    aecc:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aed2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aed5:	01 d0                	add    %edx,%eax
    aed7:	83 ec 08             	sub    $0x8,%esp
    aeda:	68 30 e8 00 00       	push   $0xe830
    aedf:	50                   	push   %eax
    aee0:	e8 45 13 00 00       	call   c22a <sprintf>
    aee5:	83 c4 10             	add    $0x10,%esp
    aee8:	01 45 e0             	add    %eax,-0x20(%ebp)
    aeeb:	83 ec 0c             	sub    $0xc,%esp
    aeee:	68 a4 e9 00 00       	push   $0xe9a4
    aef3:	e8 0d 10 00 00       	call   bf05 <printl>
    aef8:	83 c4 10             	add    $0x10,%esp
    aefb:	e8 9f b5 ff ff       	call   649f <enable_int>
    af00:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af06:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af09:	01 d0                	add    %edx,%eax
    af0b:	83 ec 08             	sub    $0x8,%esp
    af0e:	68 a6 e9 00 00       	push   $0xe9a6
    af13:	50                   	push   %eax
    af14:	e8 11 13 00 00       	call   c22a <sprintf>
    af19:	83 c4 10             	add    $0x10,%esp
    af1c:	01 45 e0             	add    %eax,-0x20(%ebp)
    af1f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af25:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af28:	01 d0                	add    %edx,%eax
    af2a:	83 ec 08             	sub    $0x8,%esp
    af2d:	68 be e9 00 00       	push   $0xe9be
    af32:	50                   	push   %eax
    af33:	e8 f2 12 00 00       	call   c22a <sprintf>
    af38:	83 c4 10             	add    $0x10,%esp
    af3b:	01 45 e0             	add    %eax,-0x20(%ebp)
    af3e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af44:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af47:	01 d0                	add    %edx,%eax
    af49:	83 ec 08             	sub    $0x8,%esp
    af4c:	68 d0 e9 00 00       	push   $0xe9d0
    af51:	50                   	push   %eax
    af52:	e8 d3 12 00 00       	call   c22a <sprintf>
    af57:	83 c4 10             	add    $0x10,%esp
    af5a:	01 45 e0             	add    %eax,-0x20(%ebp)
    af5d:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    af64:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    af6b:	a1 a0 99 03 00       	mov    0x399a0,%eax
    af70:	8b 40 20             	mov    0x20(%eax),%eax
    af73:	83 ec 0c             	sub    $0xc,%esp
    af76:	50                   	push   %eax
    af77:	e8 87 d0 ff ff       	call   8003 <get_super_block>
    af7c:	83 c4 10             	add    $0x10,%esp
    af7f:	89 45 94             	mov    %eax,-0x6c(%ebp)
    af82:	8b 45 94             	mov    -0x6c(%ebp),%eax
    af85:	8b 40 0c             	mov    0xc(%eax),%eax
    af88:	83 c0 02             	add    $0x2,%eax
    af8b:	89 45 90             	mov    %eax,-0x70(%ebp)
    af8e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    af95:	e9 d1 01 00 00       	jmp    b16b <dump_fd_graph+0xd0c>
    af9a:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    afa0:	e8 6d 16 00 00       	call   c612 <getpid>
    afa5:	89 c6                	mov    %eax,%esi
    afa7:	8b 55 90             	mov    -0x70(%ebp),%edx
    afaa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afad:	01 d0                	add    %edx,%eax
    afaf:	c1 e0 09             	shl    $0x9,%eax
    afb2:	99                   	cltd   
    afb3:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    afb9:	8b 49 20             	mov    0x20(%ecx),%ecx
    afbc:	83 ec 04             	sub    $0x4,%esp
    afbf:	53                   	push   %ebx
    afc0:	56                   	push   %esi
    afc1:	68 00 02 00 00       	push   $0x200
    afc6:	52                   	push   %edx
    afc7:	50                   	push   %eax
    afc8:	51                   	push   %ecx
    afc9:	68 eb 03 00 00       	push   $0x3eb
    afce:	e8 28 ce ff ff       	call   7dfb <rw_sector>
    afd3:	83 c4 20             	add    $0x20,%esp
    afd6:	a1 10 28 01 00       	mov    0x12810,%eax
    afdb:	83 ec 04             	sub    $0x4,%esp
    afde:	68 00 02 00 00       	push   $0x200
    afe3:	50                   	push   %eax
    afe4:	68 e0 36 01 00       	push   $0x136e0
    afe9:	e8 62 12 00 00       	call   c250 <memcpy>
    afee:	83 c4 10             	add    $0x10,%esp
    aff1:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    aff8:	e9 5d 01 00 00       	jmp    b15a <dump_fd_graph+0xcfb>
    affd:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b004:	e9 43 01 00 00       	jmp    b14c <dump_fd_graph+0xced>
    b009:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
    b00d:	75 4a                	jne    b059 <dump_fd_graph+0xbfa>
    b00f:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b012:	05 e0 36 01 00       	add    $0x136e0,%eax
    b017:	0f b6 00             	movzbl (%eax),%eax
    b01a:	0f be d0             	movsbl %al,%edx
    b01d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b020:	89 c1                	mov    %eax,%ecx
    b022:	d3 fa                	sar    %cl,%edx
    b024:	89 d0                	mov    %edx,%eax
    b026:	83 e0 01             	and    $0x1,%eax
    b029:	85 c0                	test   %eax,%eax
    b02b:	0f 84 13 01 00 00    	je     b144 <dump_fd_graph+0xce5>
    b031:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    b038:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b03b:	c1 e0 09             	shl    $0x9,%eax
    b03e:	89 c2                	mov    %eax,%edx
    b040:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b043:	01 d0                	add    %edx,%eax
    b045:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b04c:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b04f:	01 d0                	add    %edx,%eax
    b051:	89 45 bc             	mov    %eax,-0x44(%ebp)
    b054:	e9 ef 00 00 00       	jmp    b148 <dump_fd_graph+0xce9>
    b059:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b05c:	05 e0 36 01 00       	add    $0x136e0,%eax
    b061:	0f b6 00             	movzbl (%eax),%eax
    b064:	0f be d0             	movsbl %al,%edx
    b067:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b06a:	89 c1                	mov    %eax,%ecx
    b06c:	d3 fa                	sar    %cl,%edx
    b06e:	89 d0                	mov    %edx,%eax
    b070:	83 e0 01             	and    $0x1,%eax
    b073:	85 c0                	test   %eax,%eax
    b075:	0f 85 cc 00 00 00    	jne    b147 <dump_fd_graph+0xce8>
    b07b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    b082:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b085:	c1 e0 09             	shl    $0x9,%eax
    b088:	89 c2                	mov    %eax,%edx
    b08a:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b08d:	01 d0                	add    %edx,%eax
    b08f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b096:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b099:	01 d0                	add    %edx,%eax
    b09b:	83 e8 01             	sub    $0x1,%eax
    b09e:	89 45 8c             	mov    %eax,-0x74(%ebp)
    b0a1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0a7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0aa:	01 d0                	add    %edx,%eax
    b0ac:	83 ec 04             	sub    $0x4,%esp
    b0af:	ff 75 bc             	pushl  -0x44(%ebp)
    b0b2:	68 e5 e9 00 00       	push   $0xe9e5
    b0b7:	50                   	push   %eax
    b0b8:	e8 6d 11 00 00       	call   c22a <sprintf>
    b0bd:	83 c4 10             	add    $0x10,%esp
    b0c0:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0c3:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0c9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0cc:	01 d0                	add    %edx,%eax
    b0ce:	ff 75 8c             	pushl  -0x74(%ebp)
    b0d1:	ff 75 bc             	pushl  -0x44(%ebp)
    b0d4:	68 f7 e9 00 00       	push   $0xe9f7
    b0d9:	50                   	push   %eax
    b0da:	e8 4b 11 00 00       	call   c22a <sprintf>
    b0df:	83 c4 10             	add    $0x10,%esp
    b0e2:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0e5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0ee:	01 d0                	add    %edx,%eax
    b0f0:	83 ec 08             	sub    $0x8,%esp
    b0f3:	68 d4 e7 00 00       	push   $0xe7d4
    b0f8:	50                   	push   %eax
    b0f9:	e8 2c 11 00 00       	call   c22a <sprintf>
    b0fe:	83 c4 10             	add    $0x10,%esp
    b101:	01 45 e0             	add    %eax,-0x20(%ebp)
    b104:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b10a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b10d:	01 d0                	add    %edx,%eax
    b10f:	83 ec 08             	sub    $0x8,%esp
    b112:	68 d8 e7 00 00       	push   $0xe7d8
    b117:	50                   	push   %eax
    b118:	e8 0d 11 00 00       	call   c22a <sprintf>
    b11d:	83 c4 10             	add    $0x10,%esp
    b120:	01 45 e0             	add    %eax,-0x20(%ebp)
    b123:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b129:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b12c:	01 d0                	add    %edx,%eax
    b12e:	83 ec 08             	sub    $0x8,%esp
    b131:	68 ed e7 00 00       	push   $0xe7ed
    b136:	50                   	push   %eax
    b137:	e8 ee 10 00 00       	call   c22a <sprintf>
    b13c:	83 c4 10             	add    $0x10,%esp
    b13f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b142:	eb 04                	jmp    b148 <dump_fd_graph+0xce9>
    b144:	90                   	nop
    b145:	eb 01                	jmp    b148 <dump_fd_graph+0xce9>
    b147:	90                   	nop
    b148:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b14c:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b150:	0f 8e b3 fe ff ff    	jle    b009 <dump_fd_graph+0xbaa>
    b156:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b15a:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b161:	0f 8e 96 fe ff ff    	jle    affd <dump_fd_graph+0xb9e>
    b167:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b16b:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b16e:	8b 50 10             	mov    0x10(%eax),%edx
    b171:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b174:	39 c2                	cmp    %eax,%edx
    b176:	0f 87 1e fe ff ff    	ja     af9a <dump_fd_graph+0xb3b>
    b17c:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b17f:	8b 40 08             	mov    0x8(%eax),%eax
    b182:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b188:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b18b:	01 ca                	add    %ecx,%edx
    b18d:	83 ec 04             	sub    $0x4,%esp
    b190:	50                   	push   %eax
    b191:	68 14 ea 00 00       	push   $0xea14
    b196:	52                   	push   %edx
    b197:	e8 8e 10 00 00       	call   c22a <sprintf>
    b19c:	83 c4 10             	add    $0x10,%esp
    b19f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b1a2:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b1a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b1ab:	01 d0                	add    %edx,%eax
    b1ad:	83 ec 08             	sub    $0x8,%esp
    b1b0:	68 30 e8 00 00       	push   $0xe830
    b1b5:	50                   	push   %eax
    b1b6:	e8 6f 10 00 00       	call   c22a <sprintf>
    b1bb:	83 c4 10             	add    $0x10,%esp
    b1be:	01 45 e0             	add    %eax,-0x20(%ebp)
    b1c1:	83 ec 0c             	sub    $0xc,%esp
    b1c4:	68 3d ea 00 00       	push   $0xea3d
    b1c9:	e8 37 0d 00 00       	call   bf05 <printl>
    b1ce:	83 c4 10             	add    $0x10,%esp
    b1d1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b1d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b1da:	01 d0                	add    %edx,%eax
    b1dc:	83 ec 08             	sub    $0x8,%esp
    b1df:	68 3f ea 00 00       	push   $0xea3f
    b1e4:	50                   	push   %eax
    b1e5:	e8 40 10 00 00       	call   c22a <sprintf>
    b1ea:	83 c4 10             	add    $0x10,%esp
    b1ed:	01 45 e0             	add    %eax,-0x20(%ebp)
    b1f0:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b1f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b1f9:	01 d0                	add    %edx,%eax
    b1fb:	83 ec 08             	sub    $0x8,%esp
    b1fe:	68 be e9 00 00       	push   $0xe9be
    b203:	50                   	push   %eax
    b204:	e8 21 10 00 00       	call   c22a <sprintf>
    b209:	83 c4 10             	add    $0x10,%esp
    b20c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b20f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b215:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b218:	01 d0                	add    %edx,%eax
    b21a:	83 ec 08             	sub    $0x8,%esp
    b21d:	68 d0 e9 00 00       	push   $0xe9d0
    b222:	50                   	push   %eax
    b223:	e8 02 10 00 00       	call   c22a <sprintf>
    b228:	83 c4 10             	add    $0x10,%esp
    b22b:	01 45 e0             	add    %eax,-0x20(%ebp)
    b22e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b234:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b237:	01 d0                	add    %edx,%eax
    b239:	83 ec 08             	sub    $0x8,%esp
    b23c:	68 57 ea 00 00       	push   $0xea57
    b241:	50                   	push   %eax
    b242:	e8 e3 0f 00 00       	call   c22a <sprintf>
    b247:	83 c4 10             	add    $0x10,%esp
    b24a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b24d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b253:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b256:	01 d0                	add    %edx,%eax
    b258:	83 ec 08             	sub    $0x8,%esp
    b25b:	68 63 ea 00 00       	push   $0xea63
    b260:	50                   	push   %eax
    b261:	e8 c4 0f 00 00       	call   c22a <sprintf>
    b266:	83 c4 10             	add    $0x10,%esp
    b269:	01 45 e0             	add    %eax,-0x20(%ebp)
    b26c:	c7 45 88 02 00 00 00 	movl   $0x2,-0x78(%ebp)
    b273:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b27a:	e9 e0 00 00 00       	jmp    b35f <dump_fd_graph+0xf00>
    b27f:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b285:	e8 88 13 00 00       	call   c612 <getpid>
    b28a:	89 c6                	mov    %eax,%esi
    b28c:	8b 55 88             	mov    -0x78(%ebp),%edx
    b28f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b292:	01 d0                	add    %edx,%eax
    b294:	c1 e0 09             	shl    $0x9,%eax
    b297:	99                   	cltd   
    b298:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b29e:	8b 49 20             	mov    0x20(%ecx),%ecx
    b2a1:	83 ec 04             	sub    $0x4,%esp
    b2a4:	53                   	push   %ebx
    b2a5:	56                   	push   %esi
    b2a6:	68 00 02 00 00       	push   $0x200
    b2ab:	52                   	push   %edx
    b2ac:	50                   	push   %eax
    b2ad:	51                   	push   %ecx
    b2ae:	68 eb 03 00 00       	push   $0x3eb
    b2b3:	e8 43 cb ff ff       	call   7dfb <rw_sector>
    b2b8:	83 c4 20             	add    $0x20,%esp
    b2bb:	a1 10 28 01 00       	mov    0x12810,%eax
    b2c0:	83 ec 04             	sub    $0x4,%esp
    b2c3:	68 00 02 00 00       	push   $0x200
    b2c8:	50                   	push   %eax
    b2c9:	68 e0 36 01 00       	push   $0x136e0
    b2ce:	e8 7d 0f 00 00       	call   c250 <memcpy>
    b2d3:	83 c4 10             	add    $0x10,%esp
    b2d6:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b2dd:	eb 73                	jmp    b352 <dump_fd_graph+0xef3>
    b2df:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b2e6:	eb 60                	jmp    b348 <dump_fd_graph+0xee9>
    b2e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b2eb:	05 e0 36 01 00       	add    $0x136e0,%eax
    b2f0:	0f b6 00             	movzbl (%eax),%eax
    b2f3:	0f be d0             	movsbl %al,%edx
    b2f6:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b2f9:	89 c1                	mov    %eax,%ecx
    b2fb:	d3 fa                	sar    %cl,%edx
    b2fd:	89 d0                	mov    %edx,%eax
    b2ff:	83 e0 01             	and    $0x1,%eax
    b302:	85 c0                	test   %eax,%eax
    b304:	74 3e                	je     b344 <dump_fd_graph+0xee5>
    b306:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b309:	c1 e0 09             	shl    $0x9,%eax
    b30c:	89 c2                	mov    %eax,%edx
    b30e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b311:	01 d0                	add    %edx,%eax
    b313:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b31a:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b31d:	01 d0                	add    %edx,%eax
    b31f:	89 45 84             	mov    %eax,-0x7c(%ebp)
    b322:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b328:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b32b:	01 d0                	add    %edx,%eax
    b32d:	83 ec 04             	sub    $0x4,%esp
    b330:	ff 75 84             	pushl  -0x7c(%ebp)
    b333:	68 78 ea 00 00       	push   $0xea78
    b338:	50                   	push   %eax
    b339:	e8 ec 0e 00 00       	call   c22a <sprintf>
    b33e:	83 c4 10             	add    $0x10,%esp
    b341:	01 45 e0             	add    %eax,-0x20(%ebp)
    b344:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b348:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b34c:	7e 9a                	jle    b2e8 <dump_fd_graph+0xe89>
    b34e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b352:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b359:	7e 84                	jle    b2df <dump_fd_graph+0xe80>
    b35b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b35f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b362:	8b 50 0c             	mov    0xc(%eax),%edx
    b365:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b368:	39 c2                	cmp    %eax,%edx
    b36a:	0f 87 0f ff ff ff    	ja     b27f <dump_fd_graph+0xe20>
    b370:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b376:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b379:	01 d0                	add    %edx,%eax
    b37b:	83 ec 08             	sub    $0x8,%esp
    b37e:	68 d4 e7 00 00       	push   $0xe7d4
    b383:	50                   	push   %eax
    b384:	e8 a1 0e 00 00       	call   c22a <sprintf>
    b389:	83 c4 10             	add    $0x10,%esp
    b38c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b38f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b395:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b398:	01 d0                	add    %edx,%eax
    b39a:	83 ec 08             	sub    $0x8,%esp
    b39d:	68 d8 e7 00 00       	push   $0xe7d8
    b3a2:	50                   	push   %eax
    b3a3:	e8 82 0e 00 00       	call   c22a <sprintf>
    b3a8:	83 c4 10             	add    $0x10,%esp
    b3ab:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3ae:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3b7:	01 d0                	add    %edx,%eax
    b3b9:	83 ec 08             	sub    $0x8,%esp
    b3bc:	68 ed e7 00 00       	push   $0xe7ed
    b3c1:	50                   	push   %eax
    b3c2:	e8 63 0e 00 00       	call   c22a <sprintf>
    b3c7:	83 c4 10             	add    $0x10,%esp
    b3ca:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3cd:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3d6:	01 d0                	add    %edx,%eax
    b3d8:	83 ec 08             	sub    $0x8,%esp
    b3db:	68 7f ea 00 00       	push   $0xea7f
    b3e0:	50                   	push   %eax
    b3e1:	e8 44 0e 00 00       	call   c22a <sprintf>
    b3e6:	83 c4 10             	add    $0x10,%esp
    b3e9:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3ec:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3f2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3f5:	01 d0                	add    %edx,%eax
    b3f7:	83 ec 08             	sub    $0x8,%esp
    b3fa:	68 30 e8 00 00       	push   $0xe830
    b3ff:	50                   	push   %eax
    b400:	e8 25 0e 00 00       	call   c22a <sprintf>
    b405:	83 c4 10             	add    $0x10,%esp
    b408:	01 45 e0             	add    %eax,-0x20(%ebp)
    b40b:	83 ec 0c             	sub    $0xc,%esp
    b40e:	68 97 ea 00 00       	push   $0xea97
    b413:	e8 ed 0a 00 00       	call   bf05 <printl>
    b418:	83 c4 10             	add    $0x10,%esp
    b41b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b421:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b424:	01 d0                	add    %edx,%eax
    b426:	83 ec 08             	sub    $0x8,%esp
    b429:	68 99 ea 00 00       	push   $0xea99
    b42e:	50                   	push   %eax
    b42f:	e8 f6 0d 00 00       	call   c22a <sprintf>
    b434:	83 c4 10             	add    $0x10,%esp
    b437:	01 45 e0             	add    %eax,-0x20(%ebp)
    b43a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b440:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b443:	01 d0                	add    %edx,%eax
    b445:	83 ec 08             	sub    $0x8,%esp
    b448:	68 be e9 00 00       	push   $0xe9be
    b44d:	50                   	push   %eax
    b44e:	e8 d7 0d 00 00       	call   c22a <sprintf>
    b453:	83 c4 10             	add    $0x10,%esp
    b456:	01 45 e0             	add    %eax,-0x20(%ebp)
    b459:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b45f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b462:	01 d0                	add    %edx,%eax
    b464:	83 ec 08             	sub    $0x8,%esp
    b467:	68 d0 e9 00 00       	push   $0xe9d0
    b46c:	50                   	push   %eax
    b46d:	e8 b8 0d 00 00       	call   c22a <sprintf>
    b472:	83 c4 10             	add    $0x10,%esp
    b475:	01 45 e0             	add    %eax,-0x20(%ebp)
    b478:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b47d:	8b 40 20             	mov    0x20(%eax),%eax
    b480:	83 ec 0c             	sub    $0xc,%esp
    b483:	50                   	push   %eax
    b484:	e8 7a cb ff ff       	call   8003 <get_super_block>
    b489:	83 c4 10             	add    $0x10,%esp
    b48c:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b48f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b492:	8b 50 0c             	mov    0xc(%eax),%edx
    b495:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b498:	8b 40 10             	mov    0x10(%eax),%eax
    b49b:	01 d0                	add    %edx,%eax
    b49d:	83 c0 02             	add    $0x2,%eax
    b4a0:	89 45 80             	mov    %eax,-0x80(%ebp)
    b4a3:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b4a9:	e8 64 11 00 00       	call   c612 <getpid>
    b4ae:	89 c6                	mov    %eax,%esi
    b4b0:	8b 45 80             	mov    -0x80(%ebp),%eax
    b4b3:	c1 e0 09             	shl    $0x9,%eax
    b4b6:	99                   	cltd   
    b4b7:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b4bd:	8b 49 20             	mov    0x20(%ecx),%ecx
    b4c0:	83 ec 04             	sub    $0x4,%esp
    b4c3:	53                   	push   %ebx
    b4c4:	56                   	push   %esi
    b4c5:	68 00 02 00 00       	push   $0x200
    b4ca:	52                   	push   %edx
    b4cb:	50                   	push   %eax
    b4cc:	51                   	push   %ecx
    b4cd:	68 eb 03 00 00       	push   $0x3eb
    b4d2:	e8 24 c9 ff ff       	call   7dfb <rw_sector>
    b4d7:	83 c4 20             	add    $0x20,%esp
    b4da:	a1 10 28 01 00       	mov    0x12810,%eax
    b4df:	83 ec 04             	sub    $0x4,%esp
    b4e2:	68 00 02 00 00       	push   $0x200
    b4e7:	50                   	push   %eax
    b4e8:	68 e0 36 01 00       	push   $0x136e0
    b4ed:	e8 5e 0d 00 00       	call   c250 <memcpy>
    b4f2:	83 c4 10             	add    $0x10,%esp
    b4f5:	c7 45 b4 e0 36 01 00 	movl   $0x136e0,-0x4c(%ebp)
    b4fc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b503:	e9 4d 02 00 00       	jmp    b755 <dump_fd_graph+0x12f6>
    b508:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    b50b:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
    b511:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b517:	8b 40 08             	mov    0x8(%eax),%eax
    b51a:	85 c0                	test   %eax,%eax
    b51c:	0f 84 2a 02 00 00    	je     b74c <dump_fd_graph+0x12ed>
    b522:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b528:	8b 00                	mov    (%eax),%eax
    b52a:	85 c0                	test   %eax,%eax
    b52c:	0f 84 2e 01 00 00    	je     b660 <dump_fd_graph+0x1201>
    b532:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b538:	8b 50 08             	mov    0x8(%eax),%edx
    b53b:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b53e:	8b 40 14             	mov    0x14(%eax),%eax
    b541:	39 c2                	cmp    %eax,%edx
    b543:	73 21                	jae    b566 <dump_fd_graph+0x1107>
    b545:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b548:	8b 50 14             	mov    0x14(%eax),%edx
    b54b:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b551:	8b 40 08             	mov    0x8(%eax),%eax
    b554:	83 ec 04             	sub    $0x4,%esp
    b557:	52                   	push   %edx
    b558:	50                   	push   %eax
    b559:	68 b1 ea 00 00       	push   $0xeab1
    b55e:	e8 a7 65 ff ff       	call   1b0a <panic>
    b563:	83 c4 10             	add    $0x10,%esp
    b566:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b56c:	8b 50 08             	mov    0x8(%eax),%edx
    b56f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b572:	8b 40 14             	mov    0x14(%eax),%eax
    b575:	29 c2                	sub    %eax,%edx
    b577:	89 d0                	mov    %edx,%eax
    b579:	83 c0 01             	add    $0x1,%eax
    b57c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b582:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b588:	8b 50 0c             	mov    0xc(%eax),%edx
    b58b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
    b591:	01 d0                	add    %edx,%eax
    b593:	83 e8 01             	sub    $0x1,%eax
    b596:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b59c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b59f:	8d 50 01             	lea    0x1(%eax),%edx
    b5a2:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b5a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5ab:	01 c8                	add    %ecx,%eax
    b5ad:	83 ec 04             	sub    $0x4,%esp
    b5b0:	52                   	push   %edx
    b5b1:	68 cd ea 00 00       	push   $0xeacd
    b5b6:	50                   	push   %eax
    b5b7:	e8 6e 0c 00 00       	call   c22a <sprintf>
    b5bc:	83 c4 10             	add    $0x10,%esp
    b5bf:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5c2:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b5c8:	8b 40 04             	mov    0x4(%eax),%eax
    b5cb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b5ce:	8d 4a 01             	lea    0x1(%edx),%ecx
    b5d1:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b5d7:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b5da:	01 da                	add    %ebx,%edx
    b5dc:	83 ec 08             	sub    $0x8,%esp
    b5df:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b5e5:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b5eb:	50                   	push   %eax
    b5ec:	51                   	push   %ecx
    b5ed:	68 e4 ea 00 00       	push   $0xeae4
    b5f2:	52                   	push   %edx
    b5f3:	e8 32 0c 00 00       	call   c22a <sprintf>
    b5f8:	83 c4 20             	add    $0x20,%esp
    b5fb:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5fe:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b604:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b607:	01 d0                	add    %edx,%eax
    b609:	83 ec 08             	sub    $0x8,%esp
    b60c:	68 d4 e7 00 00       	push   $0xe7d4
    b611:	50                   	push   %eax
    b612:	e8 13 0c 00 00       	call   c22a <sprintf>
    b617:	83 c4 10             	add    $0x10,%esp
    b61a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b61d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b623:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b626:	01 d0                	add    %edx,%eax
    b628:	83 ec 08             	sub    $0x8,%esp
    b62b:	68 d8 e7 00 00       	push   $0xe7d8
    b630:	50                   	push   %eax
    b631:	e8 f4 0b 00 00       	call   c22a <sprintf>
    b636:	83 c4 10             	add    $0x10,%esp
    b639:	01 45 e0             	add    %eax,-0x20(%ebp)
    b63c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b642:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b645:	01 d0                	add    %edx,%eax
    b647:	83 ec 08             	sub    $0x8,%esp
    b64a:	68 ed e7 00 00       	push   $0xe7ed
    b64f:	50                   	push   %eax
    b650:	e8 d5 0b 00 00       	call   c22a <sprintf>
    b655:	83 c4 10             	add    $0x10,%esp
    b658:	01 45 e0             	add    %eax,-0x20(%ebp)
    b65b:	e9 ed 00 00 00       	jmp    b74d <dump_fd_graph+0x12ee>
    b660:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b666:	8b 40 08             	mov    0x8(%eax),%eax
    b669:	c1 e8 08             	shr    $0x8,%eax
    b66c:	25 ff 00 00 00       	and    $0xff,%eax
    b671:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b677:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b67d:	8b 40 08             	mov    0x8(%eax),%eax
    b680:	25 ff 00 00 00       	and    $0xff,%eax
    b685:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b68b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b68e:	8d 50 01             	lea    0x1(%eax),%edx
    b691:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b697:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b69a:	01 c8                	add    %ecx,%eax
    b69c:	83 ec 04             	sub    $0x4,%esp
    b69f:	52                   	push   %edx
    b6a0:	68 cd ea 00 00       	push   $0xeacd
    b6a5:	50                   	push   %eax
    b6a6:	e8 7f 0b 00 00       	call   c22a <sprintf>
    b6ab:	83 c4 10             	add    $0x10,%esp
    b6ae:	01 45 e0             	add    %eax,-0x20(%ebp)
    b6b1:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b6b7:	8b 40 04             	mov    0x4(%eax),%eax
    b6ba:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b6bd:	8d 4a 01             	lea    0x1(%edx),%ecx
    b6c0:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b6c6:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b6c9:	01 da                	add    %ebx,%edx
    b6cb:	83 ec 08             	sub    $0x8,%esp
    b6ce:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b6d4:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b6da:	50                   	push   %eax
    b6db:	51                   	push   %ecx
    b6dc:	68 1c eb 00 00       	push   $0xeb1c
    b6e1:	52                   	push   %edx
    b6e2:	e8 43 0b 00 00       	call   c22a <sprintf>
    b6e7:	83 c4 20             	add    $0x20,%esp
    b6ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    b6ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b6f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b6f6:	01 d0                	add    %edx,%eax
    b6f8:	83 ec 08             	sub    $0x8,%esp
    b6fb:	68 d4 e7 00 00       	push   $0xe7d4
    b700:	50                   	push   %eax
    b701:	e8 24 0b 00 00       	call   c22a <sprintf>
    b706:	83 c4 10             	add    $0x10,%esp
    b709:	01 45 e0             	add    %eax,-0x20(%ebp)
    b70c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b712:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b715:	01 d0                	add    %edx,%eax
    b717:	83 ec 08             	sub    $0x8,%esp
    b71a:	68 d8 e7 00 00       	push   $0xe7d8
    b71f:	50                   	push   %eax
    b720:	e8 05 0b 00 00       	call   c22a <sprintf>
    b725:	83 c4 10             	add    $0x10,%esp
    b728:	01 45 e0             	add    %eax,-0x20(%ebp)
    b72b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b731:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b734:	01 d0                	add    %edx,%eax
    b736:	83 ec 08             	sub    $0x8,%esp
    b739:	68 ed e7 00 00       	push   $0xe7ed
    b73e:	50                   	push   %eax
    b73f:	e8 e6 0a 00 00       	call   c22a <sprintf>
    b744:	83 c4 10             	add    $0x10,%esp
    b747:	01 45 e0             	add    %eax,-0x20(%ebp)
    b74a:	eb 01                	jmp    b74d <dump_fd_graph+0x12ee>
    b74c:	90                   	nop
    b74d:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b751:	83 45 b4 20          	addl   $0x20,-0x4c(%ebp)
    b755:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b758:	83 f8 0a             	cmp    $0xa,%eax
    b75b:	0f 86 a7 fd ff ff    	jbe    b508 <dump_fd_graph+0x10a9>
    b761:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b767:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b76a:	01 d0                	add    %edx,%eax
    b76c:	83 ec 08             	sub    $0x8,%esp
    b76f:	68 58 eb 00 00       	push   $0xeb58
    b774:	50                   	push   %eax
    b775:	e8 b0 0a 00 00       	call   c22a <sprintf>
    b77a:	83 c4 10             	add    $0x10,%esp
    b77d:	01 45 e0             	add    %eax,-0x20(%ebp)
    b780:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b786:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b789:	01 d0                	add    %edx,%eax
    b78b:	83 ec 08             	sub    $0x8,%esp
    b78e:	68 30 e8 00 00       	push   $0xe830
    b793:	50                   	push   %eax
    b794:	e8 91 0a 00 00       	call   c22a <sprintf>
    b799:	83 c4 10             	add    $0x10,%esp
    b79c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b79f:	83 ec 0c             	sub    $0xc,%esp
    b7a2:	68 72 eb 00 00       	push   $0xeb72
    b7a7:	e8 59 07 00 00       	call   bf05 <printl>
    b7ac:	83 c4 10             	add    $0x10,%esp
    b7af:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b7b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b7b8:	01 d0                	add    %edx,%eax
    b7ba:	83 ec 08             	sub    $0x8,%esp
    b7bd:	68 74 eb 00 00       	push   $0xeb74
    b7c2:	50                   	push   %eax
    b7c3:	e8 62 0a 00 00       	call   c22a <sprintf>
    b7c8:	83 c4 10             	add    $0x10,%esp
    b7cb:	01 45 e0             	add    %eax,-0x20(%ebp)
    b7ce:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b7d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b7d7:	01 d0                	add    %edx,%eax
    b7d9:	83 ec 08             	sub    $0x8,%esp
    b7dc:	68 be e9 00 00       	push   $0xe9be
    b7e1:	50                   	push   %eax
    b7e2:	e8 43 0a 00 00       	call   c22a <sprintf>
    b7e7:	83 c4 10             	add    $0x10,%esp
    b7ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    b7ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b7f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b7f6:	01 d0                	add    %edx,%eax
    b7f8:	83 ec 08             	sub    $0x8,%esp
    b7fb:	68 d0 e9 00 00       	push   $0xe9d0
    b800:	50                   	push   %eax
    b801:	e8 24 0a 00 00       	call   c22a <sprintf>
    b806:	83 c4 10             	add    $0x10,%esp
    b809:	01 45 e0             	add    %eax,-0x20(%ebp)
    b80c:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b811:	8b 40 20             	mov    0x20(%eax),%eax
    b814:	83 ec 0c             	sub    $0xc,%esp
    b817:	50                   	push   %eax
    b818:	e8 e6 c7 ff ff       	call   8003 <get_super_block>
    b81d:	83 c4 10             	add    $0x10,%esp
    b820:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b823:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b828:	8b 40 08             	mov    0x8(%eax),%eax
    b82b:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
    b831:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b836:	8b 40 04             	mov    0x4(%eax),%eax
    b839:	05 ff 01 00 00       	add    $0x1ff,%eax
    b83e:	c1 e8 09             	shr    $0x9,%eax
    b841:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    b847:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b84c:	8b 40 04             	mov    0x4(%eax),%eax
    b84f:	c1 e8 04             	shr    $0x4,%eax
    b852:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
    b858:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
    b85f:	00 00 00 
    b862:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b869:	e9 a0 01 00 00       	jmp    ba0e <dump_fd_graph+0x15af>
    b86e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b874:	e8 99 0d 00 00       	call   c612 <getpid>
    b879:	89 c6                	mov    %eax,%esi
    b87b:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
    b881:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b884:	01 d0                	add    %edx,%eax
    b886:	c1 e0 09             	shl    $0x9,%eax
    b889:	99                   	cltd   
    b88a:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b890:	8b 49 20             	mov    0x20(%ecx),%ecx
    b893:	83 ec 04             	sub    $0x4,%esp
    b896:	53                   	push   %ebx
    b897:	56                   	push   %esi
    b898:	68 00 02 00 00       	push   $0x200
    b89d:	52                   	push   %edx
    b89e:	50                   	push   %eax
    b89f:	51                   	push   %ecx
    b8a0:	68 eb 03 00 00       	push   $0x3eb
    b8a5:	e8 51 c5 ff ff       	call   7dfb <rw_sector>
    b8aa:	83 c4 20             	add    $0x20,%esp
    b8ad:	a1 10 28 01 00       	mov    0x12810,%eax
    b8b2:	83 ec 04             	sub    $0x4,%esp
    b8b5:	68 00 02 00 00       	push   $0x200
    b8ba:	50                   	push   %eax
    b8bb:	68 e0 36 01 00       	push   $0x136e0
    b8c0:	e8 8b 09 00 00       	call   c250 <memcpy>
    b8c5:	83 c4 10             	add    $0x10,%esp
    b8c8:	c7 45 b0 e0 36 01 00 	movl   $0x136e0,-0x50(%ebp)
    b8cf:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b8d6:	e9 15 01 00 00       	jmp    b9f0 <dump_fd_graph+0x1591>
    b8db:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b8de:	8b 00                	mov    (%eax),%eax
    b8e0:	85 c0                	test   %eax,%eax
    b8e2:	0f 84 00 01 00 00    	je     b9e8 <dump_fd_graph+0x1589>
    b8e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b8eb:	83 c0 04             	add    $0x4,%eax
    b8ee:	83 ec 04             	sub    $0x4,%esp
    b8f1:	6a 0c                	push   $0xc
    b8f3:	50                   	push   %eax
    b8f4:	8d 85 2b fa ff ff    	lea    -0x5d5(%ebp),%eax
    b8fa:	50                   	push   %eax
    b8fb:	e8 50 09 00 00       	call   c250 <memcpy>
    b900:	83 c4 10             	add    $0x10,%esp
    b903:	0f b6 85 2b fa ff ff 	movzbl -0x5d5(%ebp),%eax
    b90a:	3c 2e                	cmp    $0x2e,%al
    b90c:	75 07                	jne    b915 <dump_fd_graph+0x14b6>
    b90e:	c6 85 2b fa ff ff 2f 	movb   $0x2f,-0x5d5(%ebp)
    b915:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b918:	8b 00                	mov    (%eax),%eax
    b91a:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b920:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b923:	01 ca                	add    %ecx,%edx
    b925:	83 ec 04             	sub    $0x4,%esp
    b928:	50                   	push   %eax
    b929:	68 8c eb 00 00       	push   $0xeb8c
    b92e:	52                   	push   %edx
    b92f:	e8 f6 08 00 00       	call   c22a <sprintf>
    b934:	83 c4 10             	add    $0x10,%esp
    b937:	01 45 e0             	add    %eax,-0x20(%ebp)
    b93a:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b93d:	8b 00                	mov    (%eax),%eax
    b93f:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b945:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b948:	01 d1                	add    %edx,%ecx
    b94a:	8d 95 2b fa ff ff    	lea    -0x5d5(%ebp),%edx
    b950:	52                   	push   %edx
    b951:	50                   	push   %eax
    b952:	68 a0 eb 00 00       	push   $0xeba0
    b957:	51                   	push   %ecx
    b958:	e8 cd 08 00 00       	call   c22a <sprintf>
    b95d:	83 c4 10             	add    $0x10,%esp
    b960:	01 45 e0             	add    %eax,-0x20(%ebp)
    b963:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b969:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b96c:	01 d0                	add    %edx,%eax
    b96e:	83 ec 08             	sub    $0x8,%esp
    b971:	68 d4 e7 00 00       	push   $0xe7d4
    b976:	50                   	push   %eax
    b977:	e8 ae 08 00 00       	call   c22a <sprintf>
    b97c:	83 c4 10             	add    $0x10,%esp
    b97f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b982:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b988:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b98b:	01 d0                	add    %edx,%eax
    b98d:	83 ec 08             	sub    $0x8,%esp
    b990:	68 d8 e7 00 00       	push   $0xe7d8
    b995:	50                   	push   %eax
    b996:	e8 8f 08 00 00       	call   c22a <sprintf>
    b99b:	83 c4 10             	add    $0x10,%esp
    b99e:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9a1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9a7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9aa:	01 d0                	add    %edx,%eax
    b9ac:	83 ec 08             	sub    $0x8,%esp
    b9af:	68 ed e7 00 00       	push   $0xe7ed
    b9b4:	50                   	push   %eax
    b9b5:	e8 70 08 00 00       	call   c22a <sprintf>
    b9ba:	83 c4 10             	add    $0x10,%esp
    b9bd:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9c0:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b9c3:	8b 10                	mov    (%eax),%edx
    b9c5:	8b 45 b0             	mov    -0x50(%ebp),%eax
    b9c8:	8b 00                	mov    (%eax),%eax
    b9ca:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b9d0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    b9d3:	01 d9                	add    %ebx,%ecx
    b9d5:	52                   	push   %edx
    b9d6:	50                   	push   %eax
    b9d7:	68 bc eb 00 00       	push   $0xebbc
    b9dc:	51                   	push   %ecx
    b9dd:	e8 48 08 00 00       	call   c22a <sprintf>
    b9e2:	83 c4 10             	add    $0x10,%esp
    b9e5:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9e8:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b9ec:	83 45 b0 10          	addl   $0x10,-0x50(%ebp)
    b9f0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b9f3:	83 f8 1f             	cmp    $0x1f,%eax
    b9f6:	0f 86 df fe ff ff    	jbe    b8db <dump_fd_graph+0x147c>
    b9fc:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
    ba02:	3b 85 68 ff ff ff    	cmp    -0x98(%ebp),%eax
    ba08:	7f 15                	jg     ba1f <dump_fd_graph+0x15c0>
    ba0a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    ba0e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ba11:	3b 85 6c ff ff ff    	cmp    -0x94(%ebp),%eax
    ba17:	0f 8c 51 fe ff ff    	jl     b86e <dump_fd_graph+0x140f>
    ba1d:	eb 01                	jmp    ba20 <dump_fd_graph+0x15c1>
    ba1f:	90                   	nop
    ba20:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ba26:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ba29:	01 d0                	add    %edx,%eax
    ba2b:	83 ec 08             	sub    $0x8,%esp
    ba2e:	68 e6 eb 00 00       	push   $0xebe6
    ba33:	50                   	push   %eax
    ba34:	e8 f1 07 00 00       	call   c22a <sprintf>
    ba39:	83 c4 10             	add    $0x10,%esp
    ba3c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ba3f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ba45:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ba48:	01 d0                	add    %edx,%eax
    ba4a:	83 ec 08             	sub    $0x8,%esp
    ba4d:	68 30 e8 00 00       	push   $0xe830
    ba52:	50                   	push   %eax
    ba53:	e8 d2 07 00 00       	call   c22a <sprintf>
    ba58:	83 c4 10             	add    $0x10,%esp
    ba5b:	01 45 e0             	add    %eax,-0x20(%ebp)
    ba5e:	83 ec 0c             	sub    $0xc,%esp
    ba61:	68 fd eb 00 00       	push   $0xebfd
    ba66:	e8 9a 04 00 00       	call   bf05 <printl>
    ba6b:	83 c4 10             	add    $0x10,%esp
    ba6e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    ba75:	e9 09 01 00 00       	jmp    bb83 <dump_fd_graph+0x1724>
    ba7a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    ba7d:	89 d0                	mov    %edx,%eax
    ba7f:	01 c0                	add    %eax,%eax
    ba81:	01 d0                	add    %edx,%eax
    ba83:	c1 e0 02             	shl    $0x2,%eax
    ba86:	8d 7d e8             	lea    -0x18(%ebp),%edi
    ba89:	01 f8                	add    %edi,%eax
    ba8b:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    ba90:	8b 00                	mov    (%eax),%eax
    ba92:	83 f8 04             	cmp    $0x4,%eax
    ba95:	75 59                	jne    baf0 <dump_fd_graph+0x1691>
    ba97:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    ba9a:	89 d0                	mov    %edx,%eax
    ba9c:	01 c0                	add    %eax,%eax
    ba9e:	01 d0                	add    %edx,%eax
    baa0:	c1 e0 02             	shl    $0x2,%eax
    baa3:	8d 75 e8             	lea    -0x18(%ebp),%esi
    baa6:	01 f0                	add    %esi,%eax
    baa8:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    baad:	8b 08                	mov    (%eax),%ecx
    baaf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bab2:	89 d0                	mov    %edx,%eax
    bab4:	01 c0                	add    %eax,%eax
    bab6:	01 d0                	add    %edx,%eax
    bab8:	c1 e0 02             	shl    $0x2,%eax
    babb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    babe:	01 f8                	add    %edi,%eax
    bac0:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bac5:	8b 00                	mov    (%eax),%eax
    bac7:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bacd:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bad0:	01 da                	add    %ebx,%edx
    bad2:	83 ec 0c             	sub    $0xc,%esp
    bad5:	ff 75 e4             	pushl  -0x1c(%ebp)
    bad8:	51                   	push   %ecx
    bad9:	50                   	push   %eax
    bada:	68 00 ec 00 00       	push   $0xec00
    badf:	52                   	push   %edx
    bae0:	e8 45 07 00 00       	call   c22a <sprintf>
    bae5:	83 c4 20             	add    $0x20,%esp
    bae8:	01 45 e0             	add    %eax,-0x20(%ebp)
    baeb:	e9 8f 00 00 00       	jmp    bb7f <dump_fd_graph+0x1720>
    baf0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    baf3:	89 d0                	mov    %edx,%eax
    baf5:	01 c0                	add    %eax,%eax
    baf7:	01 d0                	add    %edx,%eax
    baf9:	c1 e0 02             	shl    $0x2,%eax
    bafc:	8d 75 e8             	lea    -0x18(%ebp),%esi
    baff:	01 f0                	add    %esi,%eax
    bb01:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    bb06:	8b 00                	mov    (%eax),%eax
    bb08:	83 f8 02             	cmp    $0x2,%eax
    bb0b:	75 56                	jne    bb63 <dump_fd_graph+0x1704>
    bb0d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bb10:	89 d0                	mov    %edx,%eax
    bb12:	01 c0                	add    %eax,%eax
    bb14:	01 d0                	add    %edx,%eax
    bb16:	c1 e0 02             	shl    $0x2,%eax
    bb19:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bb1c:	01 f8                	add    %edi,%eax
    bb1e:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bb23:	8b 08                	mov    (%eax),%ecx
    bb25:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bb28:	89 d0                	mov    %edx,%eax
    bb2a:	01 c0                	add    %eax,%eax
    bb2c:	01 d0                	add    %edx,%eax
    bb2e:	c1 e0 02             	shl    $0x2,%eax
    bb31:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bb34:	01 f0                	add    %esi,%eax
    bb36:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    bb3b:	8b 00                	mov    (%eax),%eax
    bb3d:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bb43:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bb46:	01 da                	add    %ebx,%edx
    bb48:	83 ec 0c             	sub    $0xc,%esp
    bb4b:	ff 75 e4             	pushl  -0x1c(%ebp)
    bb4e:	51                   	push   %ecx
    bb4f:	50                   	push   %eax
    bb50:	68 4c ec 00 00       	push   $0xec4c
    bb55:	52                   	push   %edx
    bb56:	e8 cf 06 00 00       	call   c22a <sprintf>
    bb5b:	83 c4 20             	add    $0x20,%esp
    bb5e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb61:	eb 1c                	jmp    bb7f <dump_fd_graph+0x1720>
    bb63:	68 f0 02 00 00       	push   $0x2f0
    bb68:	68 7c e5 00 00       	push   $0xe57c
    bb6d:	68 7c e5 00 00       	push   $0xe57c
    bb72:	68 34 e8 00 00       	push   $0xe834
    bb77:	e8 61 09 00 00       	call   c4dd <assertion_failure>
    bb7c:	83 c4 10             	add    $0x10,%esp
    bb7f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bb83:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bb86:	3b 45 cc             	cmp    -0x34(%ebp),%eax
    bb89:	0f 8c eb fe ff ff    	jl     ba7a <dump_fd_graph+0x161b>
    bb8f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bb96:	eb 36                	jmp    bbce <dump_fd_graph+0x176f>
    bb98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bb9b:	8b 94 c5 a8 f1 ff ff 	mov    -0xe58(%ebp,%eax,8),%edx
    bba2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bba5:	8b 84 c5 ac f1 ff ff 	mov    -0xe54(%ebp,%eax,8),%eax
    bbac:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bbb2:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bbb5:	01 d9                	add    %ebx,%ecx
    bbb7:	52                   	push   %edx
    bbb8:	50                   	push   %eax
    bbb9:	68 98 ec 00 00       	push   $0xec98
    bbbe:	51                   	push   %ecx
    bbbf:	e8 66 06 00 00       	call   c22a <sprintf>
    bbc4:	83 c4 10             	add    $0x10,%esp
    bbc7:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbca:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bbce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bbd1:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    bbd4:	7c c2                	jl     bb98 <dump_fd_graph+0x1739>
    bbd6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bbdd:	eb 6e                	jmp    bc4d <dump_fd_graph+0x17ee>
    bbdf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bbe2:	89 d0                	mov    %edx,%eax
    bbe4:	01 c0                	add    %eax,%eax
    bbe6:	01 d0                	add    %edx,%eax
    bbe8:	c1 e0 02             	shl    $0x2,%eax
    bbeb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bbee:	01 f8                	add    %edi,%eax
    bbf0:	2d 38 1a 00 00       	sub    $0x1a38,%eax
    bbf5:	8b 18                	mov    (%eax),%ebx
    bbf7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bbfa:	89 d0                	mov    %edx,%eax
    bbfc:	01 c0                	add    %eax,%eax
    bbfe:	01 d0                	add    %edx,%eax
    bc00:	c1 e0 02             	shl    $0x2,%eax
    bc03:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bc06:	01 f0                	add    %esi,%eax
    bc08:	2d 3c 1a 00 00       	sub    $0x1a3c,%eax
    bc0d:	8b 08                	mov    (%eax),%ecx
    bc0f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bc12:	89 d0                	mov    %edx,%eax
    bc14:	01 c0                	add    %eax,%eax
    bc16:	01 d0                	add    %edx,%eax
    bc18:	c1 e0 02             	shl    $0x2,%eax
    bc1b:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bc1e:	01 f8                	add    %edi,%eax
    bc20:	2d 40 1a 00 00       	sub    $0x1a40,%eax
    bc25:	8b 00                	mov    (%eax),%eax
    bc27:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    bc2d:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bc30:	01 f2                	add    %esi,%edx
    bc32:	83 ec 0c             	sub    $0xc,%esp
    bc35:	53                   	push   %ebx
    bc36:	51                   	push   %ecx
    bc37:	50                   	push   %eax
    bc38:	68 d8 ec 00 00       	push   $0xecd8
    bc3d:	52                   	push   %edx
    bc3e:	e8 e7 05 00 00       	call   c22a <sprintf>
    bc43:	83 c4 20             	add    $0x20,%esp
    bc46:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc49:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bc4d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc50:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
    bc53:	7c 8a                	jl     bbdf <dump_fd_graph+0x1780>
    bc55:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bc5c:	eb 36                	jmp    bc94 <dump_fd_graph+0x1835>
    bc5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc61:	8b 94 c5 ac dd ff ff 	mov    -0x2254(%ebp,%eax,8),%edx
    bc68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc6b:	8b 84 c5 a8 dd ff ff 	mov    -0x2258(%ebp,%eax,8),%eax
    bc72:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bc78:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bc7b:	01 d9                	add    %ebx,%ecx
    bc7d:	52                   	push   %edx
    bc7e:	50                   	push   %eax
    bc7f:	68 fc ec 00 00       	push   $0xecfc
    bc84:	51                   	push   %ecx
    bc85:	e8 a0 05 00 00       	call   c22a <sprintf>
    bc8a:	83 c4 10             	add    $0x10,%esp
    bc8d:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc90:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bc94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc97:	3b 45 d0             	cmp    -0x30(%ebp),%eax
    bc9a:	7c c2                	jl     bc5e <dump_fd_graph+0x17ff>
    bc9c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bca3:	eb 42                	jmp    bce7 <dump_fd_graph+0x1888>
    bca5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bca8:	6b c0 2c             	imul   $0x2c,%eax,%eax
    bcab:	05 44 39 01 00       	add    $0x13944,%eax
    bcb0:	8b 00                	mov    (%eax),%eax
    bcb2:	85 c0                	test   %eax,%eax
    bcb4:	74 2d                	je     bce3 <dump_fd_graph+0x1884>
    bcb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bcb9:	6b c0 2c             	imul   $0x2c,%eax,%eax
    bcbc:	05 48 39 01 00       	add    $0x13948,%eax
    bcc1:	8b 00                	mov    (%eax),%eax
    bcc3:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bcc9:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bccc:	01 ca                	add    %ecx,%edx
    bcce:	50                   	push   %eax
    bccf:	ff 75 e4             	pushl  -0x1c(%ebp)
    bcd2:	68 20 ed 00 00       	push   $0xed20
    bcd7:	52                   	push   %edx
    bcd8:	e8 4d 05 00 00       	call   c22a <sprintf>
    bcdd:	83 c4 10             	add    $0x10,%esp
    bce0:	01 45 e0             	add    %eax,-0x20(%ebp)
    bce3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bce7:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    bceb:	7e b8                	jle    bca5 <dump_fd_graph+0x1846>
    bced:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bcf3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bcf6:	01 c2                	add    %eax,%edx
    bcf8:	83 ec 04             	sub    $0x4,%esp
    bcfb:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    bd01:	50                   	push   %eax
    bd02:	68 45 ed 00 00       	push   $0xed45
    bd07:	52                   	push   %edx
    bd08:	e8 1d 05 00 00       	call   c22a <sprintf>
    bd0d:	83 c4 10             	add    $0x10,%esp
    bd10:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd13:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bd19:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bd1c:	01 d0                	add    %edx,%eax
    bd1e:	83 ec 08             	sub    $0x8,%esp
    bd21:	68 55 ed 00 00       	push   $0xed55
    bd26:	50                   	push   %eax
    bd27:	e8 fe 04 00 00       	call   c22a <sprintf>
    bd2c:	83 c4 10             	add    $0x10,%esp
    bd2f:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd32:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bd38:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bd3b:	01 d0                	add    %edx,%eax
    bd3d:	83 ec 08             	sub    $0x8,%esp
    bd40:	68 58 ed 00 00       	push   $0xed58
    bd45:	50                   	push   %eax
    bd46:	e8 df 04 00 00       	call   c22a <sprintf>
    bd4b:	83 c4 10             	add    $0x10,%esp
    bd4e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd51:	a1 d0 cd 00 00       	mov    0xcdd0,%eax
    bd56:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    bd59:	7c 1c                	jl     bd77 <dump_fd_graph+0x1918>
    bd5b:	68 22 03 00 00       	push   $0x322
    bd60:	68 7c e5 00 00       	push   $0xe57c
    bd65:	68 7c e5 00 00       	push   $0xe57c
    bd6a:	68 67 ed 00 00       	push   $0xed67
    bd6f:	e8 69 07 00 00       	call   c4dd <assertion_failure>
    bd74:	83 c4 10             	add    $0x10,%esp
    bd77:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bd7d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bd80:	01 d0                	add    %edx,%eax
    bd82:	c6 00 00             	movb   $0x0,(%eax)
    bd85:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bd88:	89 45 ac             	mov    %eax,-0x54(%ebp)
    bd8b:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
    bd92:	eb 6f                	jmp    be03 <dump_fd_graph+0x19a4>
    bd94:	b8 ff 01 00 00       	mov    $0x1ff,%eax
    bd99:	81 7d ac ff 01 00 00 	cmpl   $0x1ff,-0x54(%ebp)
    bda0:	0f 4e 45 ac          	cmovle -0x54(%ebp),%eax
    bda4:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    bdaa:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bdb0:	8b 45 a8             	mov    -0x58(%ebp),%eax
    bdb3:	01 d0                	add    %edx,%eax
    bdb5:	83 ec 04             	sub    $0x4,%esp
    bdb8:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
    bdbe:	50                   	push   %eax
    bdbf:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bdc5:	50                   	push   %eax
    bdc6:	e8 85 04 00 00       	call   c250 <memcpy>
    bdcb:	83 c4 10             	add    $0x10,%esp
    bdce:	8d 95 a8 cf ff ff    	lea    -0x3058(%ebp),%edx
    bdd4:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    bdda:	01 d0                	add    %edx,%eax
    bddc:	c6 00 00             	movb   $0x0,(%eax)
    bddf:	83 ec 0c             	sub    $0xc,%esp
    bde2:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bde8:	50                   	push   %eax
    bde9:	e8 03 e1 ff ff       	call   9ef1 <disklog>
    bdee:	83 c4 10             	add    $0x10,%esp
    bdf1:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    bdf7:	01 45 a8             	add    %eax,-0x58(%ebp)
    bdfa:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    be00:	29 45 ac             	sub    %eax,-0x54(%ebp)
    be03:	83 7d ac 00          	cmpl   $0x0,-0x54(%ebp)
    be07:	75 8b                	jne    bd94 <dump_fd_graph+0x1935>
    be09:	e8 8f a6 ff ff       	call   649d <disable_int>
    be0e:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    be15:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    be1c:	eb 58                	jmp    be76 <dump_fd_graph+0x1a17>
    be1e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    be21:	8b 40 74             	mov    0x74(%eax),%eax
    be24:	83 f8 20             	cmp    $0x20,%eax
    be27:	74 3e                	je     be67 <dump_fd_graph+0x1a08>
    be29:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    be2d:	74 3b                	je     be6a <dump_fd_graph+0x1a0b>
    be2f:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    be33:	74 35                	je     be6a <dump_fd_graph+0x1a0b>
    be35:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    be39:	74 2f                	je     be6a <dump_fd_graph+0x1a0b>
    be3b:	e8 d2 07 00 00       	call   c612 <getpid>
    be40:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    be43:	74 25                	je     be6a <dump_fd_graph+0x1a0b>
    be45:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be48:	8b 94 85 cc fa ff ff 	mov    -0x534(%ebp,%eax,4),%edx
    be4f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    be52:	89 50 5c             	mov    %edx,0x5c(%eax)
    be55:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be58:	8b 94 85 38 fa ff ff 	mov    -0x5c8(%ebp,%eax,4),%edx
    be5f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    be62:	89 50 60             	mov    %edx,0x60(%eax)
    be65:	eb 04                	jmp    be6b <dump_fd_graph+0x1a0c>
    be67:	90                   	nop
    be68:	eb 01                	jmp    be6b <dump_fd_graph+0x1a0c>
    be6a:	90                   	nop
    be6b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    be6f:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    be76:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    be7a:	7e a2                	jle    be1e <dump_fd_graph+0x19bf>
    be7c:	e8 1e a6 ff ff       	call   649f <enable_int>
    be81:	83 ec 0c             	sub    $0xc,%esp
    be84:	68 7f ed 00 00       	push   $0xed7f
    be89:	e8 77 00 00 00       	call   bf05 <printl>
    be8e:	83 c4 10             	add    $0x10,%esp
    be91:	90                   	nop
    be92:	8d 65 f4             	lea    -0xc(%ebp),%esp
    be95:	5b                   	pop    %ebx
    be96:	5e                   	pop    %esi
    be97:	5f                   	pop    %edi
    be98:	5d                   	pop    %ebp
    be99:	c3                   	ret    

0000be9a <printf>:
    be9a:	55                   	push   %ebp
    be9b:	89 e5                	mov    %esp,%ebp
    be9d:	81 ec 18 04 00 00    	sub    $0x418,%esp
    bea3:	8d 45 0c             	lea    0xc(%ebp),%eax
    bea6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    bea9:	8b 45 08             	mov    0x8(%ebp),%eax
    beac:	83 ec 04             	sub    $0x4,%esp
    beaf:	ff 75 f4             	pushl  -0xc(%ebp)
    beb2:	50                   	push   %eax
    beb3:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    beb9:	50                   	push   %eax
    beba:	e8 ee 00 00 00       	call   bfad <vsprintf>
    bebf:	83 c4 10             	add    $0x10,%esp
    bec2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    bec5:	83 ec 04             	sub    $0x4,%esp
    bec8:	ff 75 f0             	pushl  -0x10(%ebp)
    becb:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    bed1:	50                   	push   %eax
    bed2:	6a 01                	push   $0x1
    bed4:	e8 d7 06 00 00       	call   c5b0 <write>
    bed9:	83 c4 10             	add    $0x10,%esp
    bedc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    bedf:	8b 45 ec             	mov    -0x14(%ebp),%eax
    bee2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    bee5:	74 19                	je     bf00 <printf+0x66>
    bee7:	6a 50                	push   $0x50
    bee9:	68 82 ed 00 00       	push   $0xed82
    beee:	68 82 ed 00 00       	push   $0xed82
    bef3:	68 8f ed 00 00       	push   $0xed8f
    bef8:	e8 e0 05 00 00       	call   c4dd <assertion_failure>
    befd:	83 c4 10             	add    $0x10,%esp
    bf00:	8b 45 f0             	mov    -0x10(%ebp),%eax
    bf03:	c9                   	leave  
    bf04:	c3                   	ret    

0000bf05 <printl>:
    bf05:	55                   	push   %ebp
    bf06:	89 e5                	mov    %esp,%ebp
    bf08:	81 ec 18 04 00 00    	sub    $0x418,%esp
    bf0e:	8d 45 0c             	lea    0xc(%ebp),%eax
    bf11:	89 45 f4             	mov    %eax,-0xc(%ebp)
    bf14:	8b 45 08             	mov    0x8(%ebp),%eax
    bf17:	83 ec 04             	sub    $0x4,%esp
    bf1a:	ff 75 f4             	pushl  -0xc(%ebp)
    bf1d:	50                   	push   %eax
    bf1e:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    bf24:	50                   	push   %eax
    bf25:	e8 83 00 00 00       	call   bfad <vsprintf>
    bf2a:	83 c4 10             	add    $0x10,%esp
    bf2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    bf30:	83 ec 0c             	sub    $0xc,%esp
    bf33:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    bf39:	50                   	push   %eax
    bf3a:	e8 7b 0a 00 00       	call   c9ba <printx>
    bf3f:	83 c4 10             	add    $0x10,%esp
    bf42:	8b 45 f0             	mov    -0x10(%ebp),%eax
    bf45:	c9                   	leave  
    bf46:	c3                   	ret    

0000bf47 <i2a>:
    bf47:	55                   	push   %ebp
    bf48:	89 e5                	mov    %esp,%ebp
    bf4a:	53                   	push   %ebx
    bf4b:	83 ec 14             	sub    $0x14,%esp
    bf4e:	8b 45 08             	mov    0x8(%ebp),%eax
    bf51:	99                   	cltd   
    bf52:	f7 7d 0c             	idivl  0xc(%ebp)
    bf55:	89 55 f4             	mov    %edx,-0xc(%ebp)
    bf58:	8b 45 08             	mov    0x8(%ebp),%eax
    bf5b:	99                   	cltd   
    bf5c:	f7 7d 0c             	idivl  0xc(%ebp)
    bf5f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    bf62:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    bf66:	74 14                	je     bf7c <i2a+0x35>
    bf68:	83 ec 04             	sub    $0x4,%esp
    bf6b:	ff 75 10             	pushl  0x10(%ebp)
    bf6e:	ff 75 0c             	pushl  0xc(%ebp)
    bf71:	ff 75 f0             	pushl  -0x10(%ebp)
    bf74:	e8 ce ff ff ff       	call   bf47 <i2a>
    bf79:	83 c4 10             	add    $0x10,%esp
    bf7c:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    bf80:	7f 0a                	jg     bf8c <i2a+0x45>
    bf82:	8b 45 f4             	mov    -0xc(%ebp),%eax
    bf85:	83 c0 30             	add    $0x30,%eax
    bf88:	89 c3                	mov    %eax,%ebx
    bf8a:	eb 08                	jmp    bf94 <i2a+0x4d>
    bf8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    bf8f:	83 c0 37             	add    $0x37,%eax
    bf92:	89 c3                	mov    %eax,%ebx
    bf94:	8b 45 10             	mov    0x10(%ebp),%eax
    bf97:	8b 00                	mov    (%eax),%eax
    bf99:	8d 48 01             	lea    0x1(%eax),%ecx
    bf9c:	8b 55 10             	mov    0x10(%ebp),%edx
    bf9f:	89 0a                	mov    %ecx,(%edx)
    bfa1:	88 18                	mov    %bl,(%eax)
    bfa3:	8b 45 10             	mov    0x10(%ebp),%eax
    bfa6:	8b 00                	mov    (%eax),%eax
    bfa8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    bfab:	c9                   	leave  
    bfac:	c3                   	ret    

0000bfad <vsprintf>:
    bfad:	55                   	push   %ebp
    bfae:	89 e5                	mov    %esp,%ebp
    bfb0:	81 ec 28 04 00 00    	sub    $0x428,%esp
    bfb6:	8b 45 10             	mov    0x10(%ebp),%eax
    bfb9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    bfbc:	8b 45 08             	mov    0x8(%ebp),%eax
    bfbf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    bfc2:	e9 47 02 00 00       	jmp    c20e <vsprintf+0x261>
    bfc7:	8b 45 0c             	mov    0xc(%ebp),%eax
    bfca:	0f b6 00             	movzbl (%eax),%eax
    bfcd:	3c 25                	cmp    $0x25,%al
    bfcf:	74 16                	je     bfe7 <vsprintf+0x3a>
    bfd1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    bfd4:	8d 50 01             	lea    0x1(%eax),%edx
    bfd7:	89 55 f4             	mov    %edx,-0xc(%ebp)
    bfda:	8b 55 0c             	mov    0xc(%ebp),%edx
    bfdd:	0f b6 12             	movzbl (%edx),%edx
    bfe0:	88 10                	mov    %dl,(%eax)
    bfe2:	e9 23 02 00 00       	jmp    c20a <vsprintf+0x25d>
    bfe7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bfee:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    bff2:	8b 45 0c             	mov    0xc(%ebp),%eax
    bff5:	0f b6 00             	movzbl (%eax),%eax
    bff8:	3c 25                	cmp    $0x25,%al
    bffa:	75 16                	jne    c012 <vsprintf+0x65>
    bffc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    bfff:	8d 50 01             	lea    0x1(%eax),%edx
    c002:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c005:	8b 55 0c             	mov    0xc(%ebp),%edx
    c008:	0f b6 12             	movzbl (%edx),%edx
    c00b:	88 10                	mov    %dl,(%eax)
    c00d:	e9 f8 01 00 00       	jmp    c20a <vsprintf+0x25d>
    c012:	8b 45 0c             	mov    0xc(%ebp),%eax
    c015:	0f b6 00             	movzbl (%eax),%eax
    c018:	3c 30                	cmp    $0x30,%al
    c01a:	75 0a                	jne    c026 <vsprintf+0x79>
    c01c:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
    c020:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c024:	eb 28                	jmp    c04e <vsprintf+0xa1>
    c026:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
    c02a:	eb 22                	jmp    c04e <vsprintf+0xa1>
    c02c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    c02f:	89 d0                	mov    %edx,%eax
    c031:	c1 e0 02             	shl    $0x2,%eax
    c034:	01 d0                	add    %edx,%eax
    c036:	01 c0                	add    %eax,%eax
    c038:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    c03b:	8b 45 0c             	mov    0xc(%ebp),%eax
    c03e:	0f b6 00             	movzbl (%eax),%eax
    c041:	0f be c0             	movsbl %al,%eax
    c044:	83 e8 30             	sub    $0x30,%eax
    c047:	01 45 e4             	add    %eax,-0x1c(%ebp)
    c04a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c04e:	8b 45 0c             	mov    0xc(%ebp),%eax
    c051:	0f b6 00             	movzbl (%eax),%eax
    c054:	3c 2f                	cmp    $0x2f,%al
    c056:	76 0a                	jbe    c062 <vsprintf+0xb5>
    c058:	8b 45 0c             	mov    0xc(%ebp),%eax
    c05b:	0f b6 00             	movzbl (%eax),%eax
    c05e:	3c 39                	cmp    $0x39,%al
    c060:	76 ca                	jbe    c02c <vsprintf+0x7f>
    c062:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c068:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c06e:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c074:	83 ec 04             	sub    $0x4,%esp
    c077:	68 00 04 00 00       	push   $0x400
    c07c:	6a 00                	push   $0x0
    c07e:	50                   	push   %eax
    c07f:	e8 f5 01 00 00       	call   c279 <memset>
    c084:	83 c4 10             	add    $0x10,%esp
    c087:	8b 45 0c             	mov    0xc(%ebp),%eax
    c08a:	0f b6 00             	movzbl (%eax),%eax
    c08d:	0f be c0             	movsbl %al,%eax
    c090:	83 f8 64             	cmp    $0x64,%eax
    c093:	74 67                	je     c0fc <vsprintf+0x14f>
    c095:	83 f8 64             	cmp    $0x64,%eax
    c098:	7f 0a                	jg     c0a4 <vsprintf+0xf7>
    c09a:	83 f8 63             	cmp    $0x63,%eax
    c09d:	74 18                	je     c0b7 <vsprintf+0x10a>
    c09f:	e9 d6 00 00 00       	jmp    c17a <vsprintf+0x1cd>
    c0a4:	83 f8 73             	cmp    $0x73,%eax
    c0a7:	0f 84 8f 00 00 00    	je     c13c <vsprintf+0x18f>
    c0ad:	83 f8 78             	cmp    $0x78,%eax
    c0b0:	74 25                	je     c0d7 <vsprintf+0x12a>
    c0b2:	e9 c3 00 00 00       	jmp    c17a <vsprintf+0x1cd>
    c0b7:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c0bd:	8d 50 01             	lea    0x1(%eax),%edx
    c0c0:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c0c6:	8b 55 f0             	mov    -0x10(%ebp),%edx
    c0c9:	0f b6 12             	movzbl (%edx),%edx
    c0cc:	88 10                	mov    %dl,(%eax)
    c0ce:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c0d2:	e9 a3 00 00 00       	jmp    c17a <vsprintf+0x1cd>
    c0d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c0da:	8b 00                	mov    (%eax),%eax
    c0dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c0df:	83 ec 04             	sub    $0x4,%esp
    c0e2:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c0e8:	50                   	push   %eax
    c0e9:	6a 10                	push   $0x10
    c0eb:	ff 75 ec             	pushl  -0x14(%ebp)
    c0ee:	e8 54 fe ff ff       	call   bf47 <i2a>
    c0f3:	83 c4 10             	add    $0x10,%esp
    c0f6:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c0fa:	eb 7e                	jmp    c17a <vsprintf+0x1cd>
    c0fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c0ff:	8b 00                	mov    (%eax),%eax
    c101:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c104:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    c108:	79 15                	jns    c11f <vsprintf+0x172>
    c10a:	f7 5d ec             	negl   -0x14(%ebp)
    c10d:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c113:	8d 50 01             	lea    0x1(%eax),%edx
    c116:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c11c:	c6 00 2d             	movb   $0x2d,(%eax)
    c11f:	83 ec 04             	sub    $0x4,%esp
    c122:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c128:	50                   	push   %eax
    c129:	6a 0a                	push   $0xa
    c12b:	ff 75 ec             	pushl  -0x14(%ebp)
    c12e:	e8 14 fe ff ff       	call   bf47 <i2a>
    c133:	83 c4 10             	add    $0x10,%esp
    c136:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c13a:	eb 3e                	jmp    c17a <vsprintf+0x1cd>
    c13c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c13f:	8b 10                	mov    (%eax),%edx
    c141:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c147:	83 ec 08             	sub    $0x8,%esp
    c14a:	52                   	push   %edx
    c14b:	50                   	push   %eax
    c14c:	e8 49 01 00 00       	call   c29a <strcpy>
    c151:	83 c4 10             	add    $0x10,%esp
    c154:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c157:	8b 00                	mov    (%eax),%eax
    c159:	83 ec 0c             	sub    $0xc,%esp
    c15c:	50                   	push   %eax
    c15d:	e8 50 01 00 00       	call   c2b2 <strlen>
    c162:	83 c4 10             	add    $0x10,%esp
    c165:	89 c2                	mov    %eax,%edx
    c167:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c16d:	01 d0                	add    %edx,%eax
    c16f:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c175:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c179:	90                   	nop
    c17a:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    c181:	eb 13                	jmp    c196 <vsprintf+0x1e9>
    c183:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c186:	8d 50 01             	lea    0x1(%eax),%edx
    c189:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c18c:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
    c190:	88 10                	mov    %dl,(%eax)
    c192:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    c196:	83 ec 0c             	sub    $0xc,%esp
    c199:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c19f:	50                   	push   %eax
    c1a0:	e8 0d 01 00 00       	call   c2b2 <strlen>
    c1a5:	83 c4 10             	add    $0x10,%esp
    c1a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    c1ab:	7e 1b                	jle    c1c8 <vsprintf+0x21b>
    c1ad:	83 ec 0c             	sub    $0xc,%esp
    c1b0:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c1b6:	50                   	push   %eax
    c1b7:	e8 f6 00 00 00       	call   c2b2 <strlen>
    c1bc:	83 c4 10             	add    $0x10,%esp
    c1bf:	89 c2                	mov    %eax,%edx
    c1c1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c1c4:	29 d0                	sub    %edx,%eax
    c1c6:	eb 05                	jmp    c1cd <vsprintf+0x220>
    c1c8:	b8 00 00 00 00       	mov    $0x0,%eax
    c1cd:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    c1d0:	7f b1                	jg     c183 <vsprintf+0x1d6>
    c1d2:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c1d8:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c1de:	eb 1d                	jmp    c1fd <vsprintf+0x250>
    c1e0:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    c1e6:	8d 42 01             	lea    0x1(%edx),%eax
    c1e9:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c1ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c1f2:	8d 48 01             	lea    0x1(%eax),%ecx
    c1f5:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    c1f8:	0f b6 12             	movzbl (%edx),%edx
    c1fb:	88 10                	mov    %dl,(%eax)
    c1fd:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c203:	0f b6 00             	movzbl (%eax),%eax
    c206:	84 c0                	test   %al,%al
    c208:	75 d6                	jne    c1e0 <vsprintf+0x233>
    c20a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c20e:	8b 45 0c             	mov    0xc(%ebp),%eax
    c211:	0f b6 00             	movzbl (%eax),%eax
    c214:	84 c0                	test   %al,%al
    c216:	0f 85 ab fd ff ff    	jne    bfc7 <vsprintf+0x1a>
    c21c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c21f:	c6 00 00             	movb   $0x0,(%eax)
    c222:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c225:	2b 45 08             	sub    0x8(%ebp),%eax
    c228:	c9                   	leave  
    c229:	c3                   	ret    

0000c22a <sprintf>:
    c22a:	55                   	push   %ebp
    c22b:	89 e5                	mov    %esp,%ebp
    c22d:	83 ec 18             	sub    $0x18,%esp
    c230:	8d 45 0c             	lea    0xc(%ebp),%eax
    c233:	83 c0 04             	add    $0x4,%eax
    c236:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c239:	8b 45 0c             	mov    0xc(%ebp),%eax
    c23c:	83 ec 04             	sub    $0x4,%esp
    c23f:	ff 75 f4             	pushl  -0xc(%ebp)
    c242:	50                   	push   %eax
    c243:	ff 75 08             	pushl  0x8(%ebp)
    c246:	e8 62 fd ff ff       	call   bfad <vsprintf>
    c24b:	83 c4 10             	add    $0x10,%esp
    c24e:	c9                   	leave  
    c24f:	c3                   	ret    

0000c250 <memcpy>:
    c250:	55                   	push   %ebp
    c251:	89 e5                	mov    %esp,%ebp
    c253:	56                   	push   %esi
    c254:	57                   	push   %edi
    c255:	51                   	push   %ecx
    c256:	8b 7d 08             	mov    0x8(%ebp),%edi
    c259:	8b 75 0c             	mov    0xc(%ebp),%esi
    c25c:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c25f <memcpy.1>:
    c25f:	83 f9 00             	cmp    $0x0,%ecx
    c262:	74 0b                	je     c26f <memcpy.2>
    c264:	3e 8a 06             	mov    %ds:(%esi),%al
    c267:	46                   	inc    %esi
    c268:	26 88 07             	mov    %al,%es:(%edi)
    c26b:	47                   	inc    %edi
    c26c:	49                   	dec    %ecx
    c26d:	eb f0                	jmp    c25f <memcpy.1>

0000c26f <memcpy.2>:
    c26f:	8b 45 08             	mov    0x8(%ebp),%eax
    c272:	59                   	pop    %ecx
    c273:	5f                   	pop    %edi
    c274:	5e                   	pop    %esi
    c275:	89 ec                	mov    %ebp,%esp
    c277:	5d                   	pop    %ebp
    c278:	c3                   	ret    

0000c279 <memset>:
    c279:	55                   	push   %ebp
    c27a:	89 e5                	mov    %esp,%ebp
    c27c:	56                   	push   %esi
    c27d:	57                   	push   %edi
    c27e:	51                   	push   %ecx
    c27f:	8b 7d 08             	mov    0x8(%ebp),%edi
    c282:	8b 55 0c             	mov    0xc(%ebp),%edx
    c285:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c288 <memset.1>:
    c288:	83 f9 00             	cmp    $0x0,%ecx
    c28b:	74 06                	je     c293 <memset.2>
    c28d:	88 17                	mov    %dl,(%edi)
    c28f:	47                   	inc    %edi
    c290:	49                   	dec    %ecx
    c291:	eb f5                	jmp    c288 <memset.1>

0000c293 <memset.2>:
    c293:	59                   	pop    %ecx
    c294:	5f                   	pop    %edi
    c295:	5e                   	pop    %esi
    c296:	89 ec                	mov    %ebp,%esp
    c298:	5d                   	pop    %ebp
    c299:	c3                   	ret    

0000c29a <strcpy>:
    c29a:	55                   	push   %ebp
    c29b:	89 e5                	mov    %esp,%ebp
    c29d:	8b 75 0c             	mov    0xc(%ebp),%esi
    c2a0:	8b 7d 08             	mov    0x8(%ebp),%edi

0000c2a3 <strcpy.1>:
    c2a3:	8a 06                	mov    (%esi),%al
    c2a5:	46                   	inc    %esi
    c2a6:	88 07                	mov    %al,(%edi)
    c2a8:	47                   	inc    %edi
    c2a9:	3c 00                	cmp    $0x0,%al
    c2ab:	75 f6                	jne    c2a3 <strcpy.1>
    c2ad:	8b 45 08             	mov    0x8(%ebp),%eax
    c2b0:	5d                   	pop    %ebp
    c2b1:	c3                   	ret    

0000c2b2 <strlen>:
    c2b2:	55                   	push   %ebp
    c2b3:	89 e5                	mov    %esp,%ebp
    c2b5:	b8 00 00 00 00       	mov    $0x0,%eax
    c2ba:	8b 75 08             	mov    0x8(%ebp),%esi

0000c2bd <strlen.1>:
    c2bd:	80 3e 00             	cmpb   $0x0,(%esi)
    c2c0:	74 04                	je     c2c6 <strlen.2>
    c2c2:	46                   	inc    %esi
    c2c3:	40                   	inc    %eax
    c2c4:	eb f7                	jmp    c2bd <strlen.1>

0000c2c6 <strlen.2>:
    c2c6:	5d                   	pop    %ebp
    c2c7:	c3                   	ret    

0000c2c8 <send_recv>:
    c2c8:	55                   	push   %ebp
    c2c9:	89 e5                	mov    %esp,%ebp
    c2cb:	83 ec 18             	sub    $0x18,%esp
    c2ce:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c2d5:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c2d9:	75 12                	jne    c2ed <send_recv+0x25>
    c2db:	83 ec 04             	sub    $0x4,%esp
    c2de:	6a 30                	push   $0x30
    c2e0:	6a 00                	push   $0x0
    c2e2:	ff 75 10             	pushl  0x10(%ebp)
    c2e5:	e8 8f ff ff ff       	call   c279 <memset>
    c2ea:	83 c4 10             	add    $0x10,%esp
    c2ed:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c2f1:	7e 59                	jle    c34c <send_recv+0x84>
    c2f3:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c2f7:	7e 3a                	jle    c333 <send_recv+0x6b>
    c2f9:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c2fd:	75 4d                	jne    c34c <send_recv+0x84>
    c2ff:	83 ec 04             	sub    $0x4,%esp
    c302:	ff 75 10             	pushl  0x10(%ebp)
    c305:	ff 75 0c             	pushl  0xc(%ebp)
    c308:	6a 01                	push   $0x1
    c30a:	e8 91 06 00 00       	call   c9a0 <sendrec>
    c30f:	83 c4 10             	add    $0x10,%esp
    c312:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c315:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    c319:	75 5e                	jne    c379 <send_recv+0xb1>
    c31b:	83 ec 04             	sub    $0x4,%esp
    c31e:	ff 75 10             	pushl  0x10(%ebp)
    c321:	ff 75 0c             	pushl  0xc(%ebp)
    c324:	6a 02                	push   $0x2
    c326:	e8 75 06 00 00       	call   c9a0 <sendrec>
    c32b:	83 c4 10             	add    $0x10,%esp
    c32e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c331:	eb 46                	jmp    c379 <send_recv+0xb1>
    c333:	83 ec 04             	sub    $0x4,%esp
    c336:	ff 75 10             	pushl  0x10(%ebp)
    c339:	ff 75 0c             	pushl  0xc(%ebp)
    c33c:	ff 75 08             	pushl  0x8(%ebp)
    c33f:	e8 5c 06 00 00       	call   c9a0 <sendrec>
    c344:	83 c4 10             	add    $0x10,%esp
    c347:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c34a:	eb 31                	jmp    c37d <send_recv+0xb5>
    c34c:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c350:	74 2a                	je     c37c <send_recv+0xb4>
    c352:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    c356:	74 24                	je     c37c <send_recv+0xb4>
    c358:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c35c:	74 1e                	je     c37c <send_recv+0xb4>
    c35e:	6a 39                	push   $0x39
    c360:	68 98 ed 00 00       	push   $0xed98
    c365:	68 98 ed 00 00       	push   $0xed98
    c36a:	68 a4 ed 00 00       	push   $0xeda4
    c36f:	e8 69 01 00 00       	call   c4dd <assertion_failure>
    c374:	83 c4 10             	add    $0x10,%esp
    c377:	eb 03                	jmp    c37c <send_recv+0xb4>
    c379:	90                   	nop
    c37a:	eb 01                	jmp    c37d <send_recv+0xb5>
    c37c:	90                   	nop
    c37d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c380:	c9                   	leave  
    c381:	c3                   	ret    

0000c382 <memcmp>:
    c382:	55                   	push   %ebp
    c383:	89 e5                	mov    %esp,%ebp
    c385:	83 ec 10             	sub    $0x10,%esp
    c388:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c38c:	74 06                	je     c394 <memcmp+0x12>
    c38e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c392:	75 08                	jne    c39c <memcmp+0x1a>
    c394:	8b 45 08             	mov    0x8(%ebp),%eax
    c397:	2b 45 0c             	sub    0xc(%ebp),%eax
    c39a:	eb 56                	jmp    c3f2 <memcmp+0x70>
    c39c:	8b 45 08             	mov    0x8(%ebp),%eax
    c39f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c3a2:	8b 45 0c             	mov    0xc(%ebp),%eax
    c3a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c3a8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c3af:	eb 34                	jmp    c3e5 <memcmp+0x63>
    c3b1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c3b4:	0f b6 10             	movzbl (%eax),%edx
    c3b7:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c3ba:	0f b6 00             	movzbl (%eax),%eax
    c3bd:	38 c2                	cmp    %al,%dl
    c3bf:	74 18                	je     c3d9 <memcmp+0x57>
    c3c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c3c4:	0f b6 00             	movzbl (%eax),%eax
    c3c7:	0f be d0             	movsbl %al,%edx
    c3ca:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c3cd:	0f b6 00             	movzbl (%eax),%eax
    c3d0:	0f be c0             	movsbl %al,%eax
    c3d3:	29 c2                	sub    %eax,%edx
    c3d5:	89 d0                	mov    %edx,%eax
    c3d7:	eb 19                	jmp    c3f2 <memcmp+0x70>
    c3d9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    c3dd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c3e1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c3e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c3e8:	3b 45 10             	cmp    0x10(%ebp),%eax
    c3eb:	7c c4                	jl     c3b1 <memcmp+0x2f>
    c3ed:	b8 00 00 00 00       	mov    $0x0,%eax
    c3f2:	c9                   	leave  
    c3f3:	c3                   	ret    

0000c3f4 <strcmp>:
    c3f4:	55                   	push   %ebp
    c3f5:	89 e5                	mov    %esp,%ebp
    c3f7:	83 ec 10             	sub    $0x10,%esp
    c3fa:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c3fe:	74 06                	je     c406 <strcmp+0x12>
    c400:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c404:	75 08                	jne    c40e <strcmp+0x1a>
    c406:	8b 45 08             	mov    0x8(%ebp),%eax
    c409:	2b 45 0c             	sub    0xc(%ebp),%eax
    c40c:	eb 53                	jmp    c461 <strcmp+0x6d>
    c40e:	8b 45 08             	mov    0x8(%ebp),%eax
    c411:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c414:	8b 45 0c             	mov    0xc(%ebp),%eax
    c417:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c41a:	eb 18                	jmp    c434 <strcmp+0x40>
    c41c:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c41f:	0f b6 10             	movzbl (%eax),%edx
    c422:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c425:	0f b6 00             	movzbl (%eax),%eax
    c428:	38 c2                	cmp    %al,%dl
    c42a:	75 1e                	jne    c44a <strcmp+0x56>
    c42c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c430:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c434:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c437:	0f b6 00             	movzbl (%eax),%eax
    c43a:	84 c0                	test   %al,%al
    c43c:	74 0d                	je     c44b <strcmp+0x57>
    c43e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c441:	0f b6 00             	movzbl (%eax),%eax
    c444:	84 c0                	test   %al,%al
    c446:	75 d4                	jne    c41c <strcmp+0x28>
    c448:	eb 01                	jmp    c44b <strcmp+0x57>
    c44a:	90                   	nop
    c44b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c44e:	0f b6 00             	movzbl (%eax),%eax
    c451:	0f be d0             	movsbl %al,%edx
    c454:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c457:	0f b6 00             	movzbl (%eax),%eax
    c45a:	0f be c0             	movsbl %al,%eax
    c45d:	29 c2                	sub    %eax,%edx
    c45f:	89 d0                	mov    %edx,%eax
    c461:	c9                   	leave  
    c462:	c3                   	ret    

0000c463 <strcat>:
    c463:	55                   	push   %ebp
    c464:	89 e5                	mov    %esp,%ebp
    c466:	83 ec 10             	sub    $0x10,%esp
    c469:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c46d:	74 06                	je     c475 <strcat+0x12>
    c46f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c473:	75 07                	jne    c47c <strcat+0x19>
    c475:	b8 00 00 00 00       	mov    $0x0,%eax
    c47a:	eb 44                	jmp    c4c0 <strcat+0x5d>
    c47c:	8b 45 08             	mov    0x8(%ebp),%eax
    c47f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c482:	eb 04                	jmp    c488 <strcat+0x25>
    c484:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c488:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c48b:	0f b6 00             	movzbl (%eax),%eax
    c48e:	84 c0                	test   %al,%al
    c490:	75 f2                	jne    c484 <strcat+0x21>
    c492:	8b 45 0c             	mov    0xc(%ebp),%eax
    c495:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c498:	eb 13                	jmp    c4ad <strcat+0x4a>
    c49a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c49d:	0f b6 10             	movzbl (%eax),%edx
    c4a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c4a3:	88 10                	mov    %dl,(%eax)
    c4a5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c4a9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c4ad:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c4b0:	0f b6 00             	movzbl (%eax),%eax
    c4b3:	84 c0                	test   %al,%al
    c4b5:	75 e3                	jne    c49a <strcat+0x37>
    c4b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c4ba:	c6 00 00             	movb   $0x0,(%eax)
    c4bd:	8b 45 08             	mov    0x8(%ebp),%eax
    c4c0:	c9                   	leave  
    c4c1:	c3                   	ret    

0000c4c2 <spin>:
    c4c2:	55                   	push   %ebp
    c4c3:	89 e5                	mov    %esp,%ebp
    c4c5:	83 ec 08             	sub    $0x8,%esp
    c4c8:	83 ec 08             	sub    $0x8,%esp
    c4cb:	ff 75 08             	pushl  0x8(%ebp)
    c4ce:	68 e6 ed 00 00       	push   $0xede6
    c4d3:	e8 2d fa ff ff       	call   bf05 <printl>
    c4d8:	83 c4 10             	add    $0x10,%esp
    c4db:	eb fe                	jmp    c4db <spin+0x19>

0000c4dd <assertion_failure>:
    c4dd:	55                   	push   %ebp
    c4de:	89 e5                	mov    %esp,%ebp
    c4e0:	83 ec 08             	sub    $0x8,%esp
    c4e3:	83 ec 08             	sub    $0x8,%esp
    c4e6:	ff 75 14             	pushl  0x14(%ebp)
    c4e9:	ff 75 10             	pushl  0x10(%ebp)
    c4ec:	ff 75 0c             	pushl  0xc(%ebp)
    c4ef:	ff 75 08             	pushl  0x8(%ebp)
    c4f2:	6a 03                	push   $0x3
    c4f4:	68 fc ed 00 00       	push   $0xedfc
    c4f9:	e8 07 fa ff ff       	call   bf05 <printl>
    c4fe:	83 c4 20             	add    $0x20,%esp
    c501:	83 ec 0c             	sub    $0xc,%esp
    c504:	68 31 ee 00 00       	push   $0xee31
    c509:	e8 b4 ff ff ff       	call   c4c2 <spin>
    c50e:	83 c4 10             	add    $0x10,%esp
    c511:	0f 0b                	ud2    
    c513:	90                   	nop
    c514:	c9                   	leave  
    c515:	c3                   	ret    

0000c516 <open>:
    c516:	55                   	push   %ebp
    c517:	89 e5                	mov    %esp,%ebp
    c519:	83 ec 38             	sub    $0x38,%esp
    c51c:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%ebp)
    c523:	8b 45 08             	mov    0x8(%ebp),%eax
    c526:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c529:	8b 45 0c             	mov    0xc(%ebp),%eax
    c52c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c52f:	83 ec 0c             	sub    $0xc,%esp
    c532:	ff 75 08             	pushl  0x8(%ebp)
    c535:	e8 78 fd ff ff       	call   c2b2 <strlen>
    c53a:	83 c4 10             	add    $0x10,%esp
    c53d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c540:	83 ec 04             	sub    $0x4,%esp
    c543:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c546:	50                   	push   %eax
    c547:	6a 03                	push   $0x3
    c549:	6a 03                	push   $0x3
    c54b:	e8 78 fd ff ff       	call   c2c8 <send_recv>
    c550:	83 c4 10             	add    $0x10,%esp
    c553:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c556:	83 f8 12             	cmp    $0x12,%eax
    c559:	74 19                	je     c574 <open+0x5e>
    c55b:	6a 2c                	push   $0x2c
    c55d:	68 45 ee 00 00       	push   $0xee45
    c562:	68 45 ee 00 00       	push   $0xee45
    c567:	68 50 ee 00 00       	push   $0xee50
    c56c:	e8 6c ff ff ff       	call   c4dd <assertion_failure>
    c571:	83 c4 10             	add    $0x10,%esp
    c574:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c577:	c9                   	leave  
    c578:	c3                   	ret    

0000c579 <read>:
    c579:	55                   	push   %ebp
    c57a:	89 e5                	mov    %esp,%ebp
    c57c:	83 ec 38             	sub    $0x38,%esp
    c57f:	c7 45 cc 07 00 00 00 	movl   $0x7,-0x34(%ebp)
    c586:	8b 45 08             	mov    0x8(%ebp),%eax
    c589:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c58c:	8b 45 0c             	mov    0xc(%ebp),%eax
    c58f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c592:	8b 45 10             	mov    0x10(%ebp),%eax
    c595:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c598:	83 ec 04             	sub    $0x4,%esp
    c59b:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c59e:	50                   	push   %eax
    c59f:	6a 03                	push   $0x3
    c5a1:	6a 03                	push   $0x3
    c5a3:	e8 20 fd ff ff       	call   c2c8 <send_recv>
    c5a8:	83 c4 10             	add    $0x10,%esp
    c5ab:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c5ae:	c9                   	leave  
    c5af:	c3                   	ret    

0000c5b0 <write>:
    c5b0:	55                   	push   %ebp
    c5b1:	89 e5                	mov    %esp,%ebp
    c5b3:	83 ec 38             	sub    $0x38,%esp
    c5b6:	c7 45 cc 08 00 00 00 	movl   $0x8,-0x34(%ebp)
    c5bd:	8b 45 08             	mov    0x8(%ebp),%eax
    c5c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c5c3:	8b 45 0c             	mov    0xc(%ebp),%eax
    c5c6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c5c9:	8b 45 10             	mov    0x10(%ebp),%eax
    c5cc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c5cf:	83 ec 04             	sub    $0x4,%esp
    c5d2:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c5d5:	50                   	push   %eax
    c5d6:	6a 03                	push   $0x3
    c5d8:	6a 03                	push   $0x3
    c5da:	e8 e9 fc ff ff       	call   c2c8 <send_recv>
    c5df:	83 c4 10             	add    $0x10,%esp
    c5e2:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c5e5:	c9                   	leave  
    c5e6:	c3                   	ret    

0000c5e7 <close>:
    c5e7:	55                   	push   %ebp
    c5e8:	89 e5                	mov    %esp,%ebp
    c5ea:	83 ec 38             	sub    $0x38,%esp
    c5ed:	c7 45 cc 06 00 00 00 	movl   $0x6,-0x34(%ebp)
    c5f4:	8b 45 08             	mov    0x8(%ebp),%eax
    c5f7:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c5fa:	83 ec 04             	sub    $0x4,%esp
    c5fd:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c600:	50                   	push   %eax
    c601:	6a 03                	push   $0x3
    c603:	6a 03                	push   $0x3
    c605:	e8 be fc ff ff       	call   c2c8 <send_recv>
    c60a:	83 c4 10             	add    $0x10,%esp
    c60d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c610:	c9                   	leave  
    c611:	c3                   	ret    

0000c612 <getpid>:
    c612:	55                   	push   %ebp
    c613:	89 e5                	mov    %esp,%ebp
    c615:	83 ec 38             	sub    $0x38,%esp
    c618:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
    c61f:	83 ec 04             	sub    $0x4,%esp
    c622:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c625:	50                   	push   %eax
    c626:	6a 01                	push   $0x1
    c628:	6a 03                	push   $0x3
    c62a:	e8 99 fc ff ff       	call   c2c8 <send_recv>
    c62f:	83 c4 10             	add    $0x10,%esp
    c632:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c635:	83 f8 12             	cmp    $0x12,%eax
    c638:	74 19                	je     c653 <getpid+0x41>
    c63a:	6a 25                	push   $0x25
    c63c:	68 68 ee 00 00       	push   $0xee68
    c641:	68 68 ee 00 00       	push   $0xee68
    c646:	68 75 ee 00 00       	push   $0xee75
    c64b:	e8 8d fe ff ff       	call   c4dd <assertion_failure>
    c650:	83 c4 10             	add    $0x10,%esp
    c653:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c656:	c9                   	leave  
    c657:	c3                   	ret    

0000c658 <stat>:
    c658:	55                   	push   %ebp
    c659:	89 e5                	mov    %esp,%ebp
    c65b:	83 ec 38             	sub    $0x38,%esp
    c65e:	c7 45 cc 0a 00 00 00 	movl   $0xa,-0x34(%ebp)
    c665:	8b 45 08             	mov    0x8(%ebp),%eax
    c668:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c66b:	8b 45 0c             	mov    0xc(%ebp),%eax
    c66e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c671:	83 ec 0c             	sub    $0xc,%esp
    c674:	ff 75 08             	pushl  0x8(%ebp)
    c677:	e8 36 fc ff ff       	call   c2b2 <strlen>
    c67c:	83 c4 10             	add    $0x10,%esp
    c67f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c682:	83 ec 04             	sub    $0x4,%esp
    c685:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c688:	50                   	push   %eax
    c689:	6a 03                	push   $0x3
    c68b:	6a 03                	push   $0x3
    c68d:	e8 36 fc ff ff       	call   c2c8 <send_recv>
    c692:	83 c4 10             	add    $0x10,%esp
    c695:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c698:	83 f8 12             	cmp    $0x12,%eax
    c69b:	74 19                	je     c6b6 <stat+0x5e>
    c69d:	6a 2c                	push   $0x2c
    c69f:	68 8d ee 00 00       	push   $0xee8d
    c6a4:	68 8d ee 00 00       	push   $0xee8d
    c6a9:	68 98 ee 00 00       	push   $0xee98
    c6ae:	e8 2a fe ff ff       	call   c4dd <assertion_failure>
    c6b3:	83 c4 10             	add    $0x10,%esp
    c6b6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c6b9:	c9                   	leave  
    c6ba:	c3                   	ret    

0000c6bb <fork>:
    c6bb:	55                   	push   %ebp
    c6bc:	89 e5                	mov    %esp,%ebp
    c6be:	83 ec 38             	sub    $0x38,%esp
    c6c1:	c7 45 cc 10 00 00 00 	movl   $0x10,-0x34(%ebp)
    c6c8:	83 ec 04             	sub    $0x4,%esp
    c6cb:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c6ce:	50                   	push   %eax
    c6cf:	6a 04                	push   $0x4
    c6d1:	6a 03                	push   $0x3
    c6d3:	e8 f0 fb ff ff       	call   c2c8 <send_recv>
    c6d8:	83 c4 10             	add    $0x10,%esp
    c6db:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c6de:	83 f8 12             	cmp    $0x12,%eax
    c6e1:	74 19                	je     c6fc <fork+0x41>
    c6e3:	6a 29                	push   $0x29
    c6e5:	68 b0 ee 00 00       	push   $0xeeb0
    c6ea:	68 b0 ee 00 00       	push   $0xeeb0
    c6ef:	68 bb ee 00 00       	push   $0xeebb
    c6f4:	e8 e4 fd ff ff       	call   c4dd <assertion_failure>
    c6f9:	83 c4 10             	add    $0x10,%esp
    c6fc:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c6ff:	85 c0                	test   %eax,%eax
    c701:	74 19                	je     c71c <fork+0x61>
    c703:	6a 2a                	push   $0x2a
    c705:	68 b0 ee 00 00       	push   $0xeeb0
    c70a:	68 b0 ee 00 00       	push   $0xeeb0
    c70f:	68 d3 ee 00 00       	push   $0xeed3
    c714:	e8 c4 fd ff ff       	call   c4dd <assertion_failure>
    c719:	83 c4 10             	add    $0x10,%esp
    c71c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c71f:	c9                   	leave  
    c720:	c3                   	ret    

0000c721 <wait>:
    c721:	55                   	push   %ebp
    c722:	89 e5                	mov    %esp,%ebp
    c724:	83 ec 38             	sub    $0x38,%esp
    c727:	c7 45 cc 0f 00 00 00 	movl   $0xf,-0x34(%ebp)
    c72e:	83 ec 04             	sub    $0x4,%esp
    c731:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c734:	50                   	push   %eax
    c735:	6a 04                	push   $0x4
    c737:	6a 03                	push   $0x3
    c739:	e8 8a fb ff ff       	call   c2c8 <send_recv>
    c73e:	83 c4 10             	add    $0x10,%esp
    c741:	8b 55 d0             	mov    -0x30(%ebp),%edx
    c744:	8b 45 08             	mov    0x8(%ebp),%eax
    c747:	89 10                	mov    %edx,(%eax)
    c749:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c74c:	83 f8 39             	cmp    $0x39,%eax
    c74f:	74 05                	je     c756 <wait+0x35>
    c751:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c754:	eb 05                	jmp    c75b <wait+0x3a>
    c756:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c75b:	c9                   	leave  
    c75c:	c3                   	ret    

0000c75d <exec>:
    c75d:	55                   	push   %ebp
    c75e:	89 e5                	mov    %esp,%ebp
    c760:	83 ec 38             	sub    $0x38,%esp
    c763:	c7 45 cc 0e 00 00 00 	movl   $0xe,-0x34(%ebp)
    c76a:	8b 45 08             	mov    0x8(%ebp),%eax
    c76d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c770:	83 ec 0c             	sub    $0xc,%esp
    c773:	ff 75 08             	pushl  0x8(%ebp)
    c776:	e8 37 fb ff ff       	call   c2b2 <strlen>
    c77b:	83 c4 10             	add    $0x10,%esp
    c77e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c781:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c788:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    c78f:	83 ec 04             	sub    $0x4,%esp
    c792:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c795:	50                   	push   %eax
    c796:	6a 04                	push   $0x4
    c798:	6a 03                	push   $0x3
    c79a:	e8 29 fb ff ff       	call   c2c8 <send_recv>
    c79f:	83 c4 10             	add    $0x10,%esp
    c7a2:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c7a5:	83 f8 12             	cmp    $0x12,%eax
    c7a8:	74 19                	je     c7c3 <exec+0x66>
    c7aa:	6a 2a                	push   $0x2a
    c7ac:	68 e4 ee 00 00       	push   $0xeee4
    c7b1:	68 e4 ee 00 00       	push   $0xeee4
    c7b6:	68 ef ee 00 00       	push   $0xeeef
    c7bb:	e8 1d fd ff ff       	call   c4dd <assertion_failure>
    c7c0:	83 c4 10             	add    $0x10,%esp
    c7c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c7c6:	c9                   	leave  
    c7c7:	c3                   	ret    

0000c7c8 <execl>:
    c7c8:	55                   	push   %ebp
    c7c9:	89 e5                	mov    %esp,%ebp
    c7cb:	83 ec 18             	sub    $0x18,%esp
    c7ce:	8d 45 0c             	lea    0xc(%ebp),%eax
    c7d1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c7d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c7d7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c7da:	83 ec 08             	sub    $0x8,%esp
    c7dd:	ff 75 f0             	pushl  -0x10(%ebp)
    c7e0:	ff 75 08             	pushl  0x8(%ebp)
    c7e3:	e8 05 00 00 00       	call   c7ed <execv>
    c7e8:	83 c4 10             	add    $0x10,%esp
    c7eb:	c9                   	leave  
    c7ec:	c3                   	ret    

0000c7ed <execv>:
    c7ed:	55                   	push   %ebp
    c7ee:	89 e5                	mov    %esp,%ebp
    c7f0:	81 ec 48 04 00 00    	sub    $0x448,%esp
    c7f6:	8b 45 0c             	mov    0xc(%ebp),%eax
    c7f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c7fc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    c803:	eb 2f                	jmp    c834 <execv+0x47>
    c805:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c808:	83 c0 08             	add    $0x8,%eax
    c80b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    c810:	76 19                	jbe    c82b <execv+0x3e>
    c812:	6a 49                	push   $0x49
    c814:	68 e4 ee 00 00       	push   $0xeee4
    c819:	68 e4 ee 00 00       	push   $0xeee4
    c81e:	68 08 ef 00 00       	push   $0xef08
    c823:	e8 b5 fc ff ff       	call   c4dd <assertion_failure>
    c828:	83 c4 10             	add    $0x10,%esp
    c82b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c82e:	83 c0 04             	add    $0x4,%eax
    c831:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c834:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c837:	8d 50 04             	lea    0x4(%eax),%edx
    c83a:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c83d:	8b 00                	mov    (%eax),%eax
    c83f:	85 c0                	test   %eax,%eax
    c841:	75 c2                	jne    c805 <execv+0x18>
    c843:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    c849:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c84c:	01 d0                	add    %edx,%eax
    c84e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    c854:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c857:	83 c0 04             	add    $0x4,%eax
    c85a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c85d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c863:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c866:	8b 45 0c             	mov    0xc(%ebp),%eax
    c869:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c86c:	e9 95 00 00 00       	jmp    c906 <execv+0x119>
    c871:	8b 45 ec             	mov    -0x14(%ebp),%eax
    c874:	8d 50 04             	lea    0x4(%eax),%edx
    c877:	89 55 ec             	mov    %edx,-0x14(%ebp)
    c87a:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    c880:	8b 55 f0             	mov    -0x10(%ebp),%edx
    c883:	01 ca                	add    %ecx,%edx
    c885:	89 10                	mov    %edx,(%eax)
    c887:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c88a:	8b 00                	mov    (%eax),%eax
    c88c:	83 ec 0c             	sub    $0xc,%esp
    c88f:	50                   	push   %eax
    c890:	e8 1d fa ff ff       	call   c2b2 <strlen>
    c895:	83 c4 10             	add    $0x10,%esp
    c898:	89 c2                	mov    %eax,%edx
    c89a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c89d:	01 d0                	add    %edx,%eax
    c89f:	3d fe 03 00 00       	cmp    $0x3fe,%eax
    c8a4:	7e 19                	jle    c8bf <execv+0xd2>
    c8a6:	6a 65                	push   $0x65
    c8a8:	68 e4 ee 00 00       	push   $0xeee4
    c8ad:	68 e4 ee 00 00       	push   $0xeee4
    c8b2:	68 3c ef 00 00       	push   $0xef3c
    c8b7:	e8 21 fc ff ff       	call   c4dd <assertion_failure>
    c8bc:	83 c4 10             	add    $0x10,%esp
    c8bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c8c2:	8b 00                	mov    (%eax),%eax
    c8c4:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    c8ca:	8b 55 f0             	mov    -0x10(%ebp),%edx
    c8cd:	01 ca                	add    %ecx,%edx
    c8cf:	83 ec 08             	sub    $0x8,%esp
    c8d2:	50                   	push   %eax
    c8d3:	52                   	push   %edx
    c8d4:	e8 c1 f9 ff ff       	call   c29a <strcpy>
    c8d9:	83 c4 10             	add    $0x10,%esp
    c8dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c8df:	8b 00                	mov    (%eax),%eax
    c8e1:	83 ec 0c             	sub    $0xc,%esp
    c8e4:	50                   	push   %eax
    c8e5:	e8 c8 f9 ff ff       	call   c2b2 <strlen>
    c8ea:	83 c4 10             	add    $0x10,%esp
    c8ed:	01 45 f0             	add    %eax,-0x10(%ebp)
    c8f0:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    c8f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c8f9:	01 d0                	add    %edx,%eax
    c8fb:	c6 00 00             	movb   $0x0,(%eax)
    c8fe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    c902:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
    c906:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c909:	8b 00                	mov    (%eax),%eax
    c90b:	85 c0                	test   %eax,%eax
    c90d:	0f 85 5e ff ff ff    	jne    c871 <execv+0x84>
    c913:	c7 85 c0 fb ff ff 0e 	movl   $0xe,-0x440(%ebp)
    c91a:	00 00 00 
    c91d:	8b 45 08             	mov    0x8(%ebp),%eax
    c920:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
    c926:	83 ec 0c             	sub    $0xc,%esp
    c929:	ff 75 08             	pushl  0x8(%ebp)
    c92c:	e8 81 f9 ff ff       	call   c2b2 <strlen>
    c931:	83 c4 10             	add    $0x10,%esp
    c934:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%ebp)
    c93a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c940:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
    c946:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c949:	89 85 cc fb ff ff    	mov    %eax,-0x434(%ebp)
    c94f:	83 ec 04             	sub    $0x4,%esp
    c952:	8d 85 bc fb ff ff    	lea    -0x444(%ebp),%eax
    c958:	50                   	push   %eax
    c959:	6a 04                	push   $0x4
    c95b:	6a 03                	push   $0x3
    c95d:	e8 66 f9 ff ff       	call   c2c8 <send_recv>
    c962:	83 c4 10             	add    $0x10,%esp
    c965:	8b 85 c0 fb ff ff    	mov    -0x440(%ebp),%eax
    c96b:	83 f8 12             	cmp    $0x12,%eax
    c96e:	74 1c                	je     c98c <execv+0x19f>
    c970:	68 88 00 00 00       	push   $0x88
    c975:	68 e4 ee 00 00       	push   $0xeee4
    c97a:	68 e4 ee 00 00       	push   $0xeee4
    c97f:	68 ef ee 00 00       	push   $0xeeef
    c984:	e8 54 fb ff ff       	call   c4dd <assertion_failure>
    c989:	83 c4 10             	add    $0x10,%esp
    c98c:	8b 85 c4 fb ff ff    	mov    -0x43c(%ebp),%eax
    c992:	c9                   	leave  
    c993:	c3                   	ret    
    c994:	66 90                	xchg   %ax,%ax
    c996:	66 90                	xchg   %ax,%ax
    c998:	66 90                	xchg   %ax,%ax
    c99a:	66 90                	xchg   %ax,%ax
    c99c:	66 90                	xchg   %ax,%ax
    c99e:	66 90                	xchg   %ax,%ax

0000c9a0 <sendrec>:
    c9a0:	53                   	push   %ebx
    c9a1:	51                   	push   %ecx
    c9a2:	52                   	push   %edx
    c9a3:	b8 01 00 00 00       	mov    $0x1,%eax
    c9a8:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    c9ac:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    c9b0:	8b 54 24 18          	mov    0x18(%esp),%edx
    c9b4:	cd 90                	int    $0x90
    c9b6:	5a                   	pop    %edx
    c9b7:	59                   	pop    %ecx
    c9b8:	5b                   	pop    %ebx
    c9b9:	c3                   	ret    

0000c9ba <printx>:
    c9ba:	52                   	push   %edx
    c9bb:	b8 00 00 00 00       	mov    $0x0,%eax
    c9c0:	8b 54 24 08          	mov    0x8(%esp),%edx
    c9c4:	cd 90                	int    $0x90
    c9c6:	5a                   	pop    %edx
    c9c7:	c3                   	ret    
