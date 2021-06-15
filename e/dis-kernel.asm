
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
    1429:	68 e0 cb 00 00       	push   $0xcbe0
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
    1455:	e8 f6 af 00 00       	call   c450 <memcpy>
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
    14a5:	68 0a cc 00 00       	push   $0xcc0a
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
    14be:	68 28 cc 00 00       	push   $0xcc28
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
    156e:	e8 27 af 00 00       	call   c49a <strcpy>
    1573:	83 c4 10             	add    $0x10,%esp
    1576:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1579:	c7 80 90 00 00 00 39 	movl   $0x39,0x90(%eax)
    1580:	00 00 00 
    1583:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1586:	83 c0 08             	add    $0x8,%eax
    1589:	83 ec 08             	sub    $0x8,%esp
    158c:	68 6c cc 00 00       	push   $0xcc6c
    1591:	50                   	push   %eax
    1592:	e8 5d b0 00 00       	call   c5f4 <strcmp>
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
    160d:	68 71 cc 00 00       	push   $0xcc71
    1612:	68 71 cc 00 00       	push   $0xcc71
    1617:	68 7f cc 00 00       	push   $0xcc7f
    161c:	e8 bc b0 00 00       	call   c6dd <assertion_failure>
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
    17f7:	e8 cc ac 00 00       	call   c4c8 <send_recv>
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
    1813:	68 88 cc 00 00       	push   $0xcc88
    1818:	e8 7d a8 00 00       	call   c09a <printf>
    181d:	83 c4 10             	add    $0x10,%esp
    1820:	83 ec 08             	sub    $0x8,%esp
    1823:	6a 02                	push   $0x2
    1825:	ff 75 08             	pushl  0x8(%ebp)
    1828:	e8 e9 ae 00 00       	call   c716 <open>
    182d:	83 c4 10             	add    $0x10,%esp
    1830:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1833:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
    1837:	75 1c                	jne    1855 <untar+0x51>
    1839:	68 ba 00 00 00       	push   $0xba
    183e:	68 71 cc 00 00       	push   $0xcc71
    1843:	68 71 cc 00 00       	push   $0xcc71
    1848:	68 97 cc 00 00       	push   $0xcc97
    184d:	e8 8b ae 00 00       	call   c6dd <assertion_failure>
    1852:	83 c4 10             	add    $0x10,%esp
    1855:	c7 45 e4 00 20 00 00 	movl   $0x2000,-0x1c(%ebp)
    185c:	83 ec 04             	sub    $0x4,%esp
    185f:	68 00 02 00 00       	push   $0x200
    1864:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    186a:	50                   	push   %eax
    186b:	ff 75 e8             	pushl  -0x18(%ebp)
    186e:	e8 06 af 00 00       	call   c779 <read>
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
    18da:	e8 37 ae 00 00       	call   c716 <open>
    18df:	83 c4 10             	add    $0x10,%esp
    18e2:	89 45 dc             	mov    %eax,-0x24(%ebp)
    18e5:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    18e9:	75 29                	jne    1914 <untar+0x110>
    18eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    18ee:	83 ec 08             	sub    $0x8,%esp
    18f1:	50                   	push   %eax
    18f2:	68 a0 cc 00 00       	push   $0xcca0
    18f7:	e8 9e a7 00 00       	call   c09a <printf>
    18fc:	83 c4 10             	add    $0x10,%esp
    18ff:	83 ec 0c             	sub    $0xc,%esp
    1902:	68 c0 cc 00 00       	push   $0xccc0
    1907:	e8 8e a7 00 00       	call   c09a <printf>
    190c:	83 c4 10             	add    $0x10,%esp
    190f:	e9 ac 00 00 00       	jmp    19c0 <untar+0x1bc>
    1914:	8b 45 e0             	mov    -0x20(%ebp),%eax
    1917:	83 ec 04             	sub    $0x4,%esp
    191a:	ff 75 f0             	pushl  -0x10(%ebp)
    191d:	50                   	push   %eax
    191e:	68 ca cc 00 00       	push   $0xccca
    1923:	e8 72 a7 00 00       	call   c09a <printf>
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
    1962:	e8 12 ae 00 00       	call   c779 <read>
    1967:	83 c4 10             	add    $0x10,%esp
    196a:	83 ec 04             	sub    $0x4,%esp
    196d:	ff 75 d8             	pushl  -0x28(%ebp)
    1970:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
    1976:	50                   	push   %eax
    1977:	ff 75 dc             	pushl  -0x24(%ebp)
    197a:	e8 31 ae 00 00       	call   c7b0 <write>
    197f:	83 c4 10             	add    $0x10,%esp
    1982:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1985:	29 45 ec             	sub    %eax,-0x14(%ebp)
    1988:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    198c:	75 9f                	jne    192d <untar+0x129>
    198e:	83 ec 0c             	sub    $0xc,%esp
    1991:	ff 75 dc             	pushl  -0x24(%ebp)
    1994:	e8 4e ae 00 00       	call   c7e7 <close>
    1999:	83 c4 10             	add    $0x10,%esp
    199c:	e9 bb fe ff ff       	jmp    185c <untar+0x58>
    19a1:	90                   	nop
    19a2:	83 ec 0c             	sub    $0xc,%esp
    19a5:	ff 75 e8             	pushl  -0x18(%ebp)
    19a8:	e8 3a ae 00 00       	call   c7e7 <close>
    19ad:	83 c4 10             	add    $0x10,%esp
    19b0:	83 ec 0c             	sub    $0xc,%esp
    19b3:	68 dd cc 00 00       	push   $0xccdd
    19b8:	e8 dd a6 00 00       	call   c09a <printf>
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
    19d3:	e8 3e ad 00 00       	call   c716 <open>
    19d8:	83 c4 10             	add    $0x10,%esp
    19db:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    19de:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    19e2:	74 1c                	je     1a00 <shabby_shell+0x3e>
    19e4:	68 00 01 00 00       	push   $0x100
    19e9:	68 71 cc 00 00       	push   $0xcc71
    19ee:	68 71 cc 00 00       	push   $0xcc71
    19f3:	68 e5 cc 00 00       	push   $0xcce5
    19f8:	e8 e0 ac 00 00       	call   c6dd <assertion_failure>
    19fd:	83 c4 10             	add    $0x10,%esp
    1a00:	83 ec 08             	sub    $0x8,%esp
    1a03:	6a 02                	push   $0x2
    1a05:	ff 75 08             	pushl  0x8(%ebp)
    1a08:	e8 09 ad 00 00       	call   c716 <open>
    1a0d:	83 c4 10             	add    $0x10,%esp
    1a10:	89 45 e0             	mov    %eax,-0x20(%ebp)
    1a13:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
    1a17:	74 1c                	je     1a35 <shabby_shell+0x73>
    1a19:	68 02 01 00 00       	push   $0x102
    1a1e:	68 71 cc 00 00       	push   $0xcc71
    1a23:	68 71 cc 00 00       	push   $0xcc71
    1a28:	68 f3 cc 00 00       	push   $0xccf3
    1a2d:	e8 ab ac 00 00       	call   c6dd <assertion_failure>
    1a32:	83 c4 10             	add    $0x10,%esp
    1a35:	83 ec 04             	sub    $0x4,%esp
    1a38:	6a 02                	push   $0x2
    1a3a:	68 02 cd 00 00       	push   $0xcd02
    1a3f:	6a 01                	push   $0x1
    1a41:	e8 6a ad 00 00       	call   c7b0 <write>
    1a46:	83 c4 10             	add    $0x10,%esp
    1a49:	83 ec 04             	sub    $0x4,%esp
    1a4c:	6a 46                	push   $0x46
    1a4e:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    1a54:	50                   	push   %eax
    1a55:	6a 00                	push   $0x0
    1a57:	e8 1d ad 00 00       	call   c779 <read>
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
    1b15:	e8 fc ab 00 00       	call   c716 <open>
    1b1a:	83 c4 10             	add    $0x10,%esp
    1b1d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1b20:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
    1b24:	75 53                	jne    1b79 <shabby_shell+0x1b7>
    1b26:	0f b6 85 50 ff ff ff 	movzbl -0xb0(%ebp),%eax
    1b2d:	84 c0                	test   %al,%al
    1b2f:	0f 84 00 ff ff ff    	je     1a35 <shabby_shell+0x73>
    1b35:	83 ec 04             	sub    $0x4,%esp
    1b38:	6a 01                	push   $0x1
    1b3a:	68 05 cd 00 00       	push   $0xcd05
    1b3f:	6a 01                	push   $0x1
    1b41:	e8 6a ac 00 00       	call   c7b0 <write>
    1b46:	83 c4 10             	add    $0x10,%esp
    1b49:	83 ec 04             	sub    $0x4,%esp
    1b4c:	ff 75 dc             	pushl  -0x24(%ebp)
    1b4f:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    1b55:	50                   	push   %eax
    1b56:	6a 01                	push   $0x1
    1b58:	e8 53 ac 00 00       	call   c7b0 <write>
    1b5d:	83 c4 10             	add    $0x10,%esp
    1b60:	83 ec 04             	sub    $0x4,%esp
    1b63:	6a 02                	push   $0x2
    1b65:	68 07 cd 00 00       	push   $0xcd07
    1b6a:	6a 01                	push   $0x1
    1b6c:	e8 3f ac 00 00       	call   c7b0 <write>
    1b71:	83 c4 10             	add    $0x10,%esp
    1b74:	e9 bc fe ff ff       	jmp    1a35 <shabby_shell+0x73>
    1b79:	83 ec 0c             	sub    $0xc,%esp
    1b7c:	ff 75 d4             	pushl  -0x2c(%ebp)
    1b7f:	e8 63 ac 00 00       	call   c7e7 <close>
    1b84:	83 c4 10             	add    $0x10,%esp
    1b87:	e8 2f ad 00 00       	call   c8bb <fork>
    1b8c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1b8f:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
    1b93:	74 17                	je     1bac <shabby_shell+0x1ea>
    1b95:	83 ec 0c             	sub    $0xc,%esp
    1b98:	8d 85 4c ff ff ff    	lea    -0xb4(%ebp),%eax
    1b9e:	50                   	push   %eax
    1b9f:	e8 7d ad 00 00       	call   c921 <wait>
    1ba4:	83 c4 10             	add    $0x10,%esp
    1ba7:	e9 89 fe ff ff       	jmp    1a35 <shabby_shell+0x73>
    1bac:	8b 85 4c ef ff ff    	mov    -0x10b4(%ebp),%eax
    1bb2:	83 ec 08             	sub    $0x8,%esp
    1bb5:	8d 95 4c ef ff ff    	lea    -0x10b4(%ebp),%edx
    1bbb:	52                   	push   %edx
    1bbc:	50                   	push   %eax
    1bbd:	e8 2b ae 00 00       	call   c9ed <execv>
    1bc2:	83 c4 10             	add    $0x10,%esp
    1bc5:	e9 6b fe ff ff       	jmp    1a35 <shabby_shell+0x73>

00001bca <Init>:
    1bca:	55                   	push   %ebp
    1bcb:	89 e5                	mov    %esp,%ebp
    1bcd:	83 ec 28             	sub    $0x28,%esp
    1bd0:	83 ec 08             	sub    $0x8,%esp
    1bd3:	6a 02                	push   $0x2
    1bd5:	68 0a cd 00 00       	push   $0xcd0a
    1bda:	e8 37 ab 00 00       	call   c716 <open>
    1bdf:	83 c4 10             	add    $0x10,%esp
    1be2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1be5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1be9:	74 1c                	je     1c07 <Init+0x3d>
    1beb:	68 44 01 00 00       	push   $0x144
    1bf0:	68 71 cc 00 00       	push   $0xcc71
    1bf5:	68 71 cc 00 00       	push   $0xcc71
    1bfa:	68 e5 cc 00 00       	push   $0xcce5
    1bff:	e8 d9 aa 00 00       	call   c6dd <assertion_failure>
    1c04:	83 c4 10             	add    $0x10,%esp
    1c07:	83 ec 08             	sub    $0x8,%esp
    1c0a:	6a 02                	push   $0x2
    1c0c:	68 0a cd 00 00       	push   $0xcd0a
    1c11:	e8 00 ab 00 00       	call   c716 <open>
    1c16:	83 c4 10             	add    $0x10,%esp
    1c19:	89 45 ec             	mov    %eax,-0x14(%ebp)
    1c1c:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
    1c20:	74 1c                	je     1c3e <Init+0x74>
    1c22:	68 46 01 00 00       	push   $0x146
    1c27:	68 71 cc 00 00       	push   $0xcc71
    1c2c:	68 71 cc 00 00       	push   $0xcc71
    1c31:	68 f3 cc 00 00       	push   $0xccf3
    1c36:	e8 a2 aa 00 00       	call   c6dd <assertion_failure>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	83 ec 0c             	sub    $0xc,%esp
    1c41:	68 14 cd 00 00       	push   $0xcd14
    1c46:	e8 4f a4 00 00       	call   c09a <printf>
    1c4b:	83 c4 10             	add    $0x10,%esp
    1c4e:	83 ec 0c             	sub    $0xc,%esp
    1c51:	68 2b cd 00 00       	push   $0xcd2b
    1c56:	e8 a9 fb ff ff       	call   1804 <untar>
    1c5b:	83 c4 10             	add    $0x10,%esp
    1c5e:	c7 45 dc 34 cd 00 00 	movl   $0xcd34,-0x24(%ebp)
    1c65:	c7 45 e0 3e cd 00 00 	movl   $0xcd3e,-0x20(%ebp)
    1c6c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1c73:	e9 88 00 00 00       	jmp    1d00 <Init+0x136>
    1c78:	e8 3e ac 00 00       	call   c8bb <fork>
    1c7d:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1c80:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1c84:	74 15                	je     1c9b <Init+0xd1>
    1c86:	83 ec 08             	sub    $0x8,%esp
    1c89:	ff 75 e8             	pushl  -0x18(%ebp)
    1c8c:	68 48 cd 00 00       	push   $0xcd48
    1c91:	e8 04 a4 00 00       	call   c09a <printf>
    1c96:	83 c4 10             	add    $0x10,%esp
    1c99:	eb 61                	jmp    1cfc <Init+0x132>
    1c9b:	e8 72 ab 00 00       	call   c812 <getpid>
    1ca0:	83 ec 08             	sub    $0x8,%esp
    1ca3:	50                   	push   %eax
    1ca4:	68 6b cd 00 00       	push   $0xcd6b
    1ca9:	e8 ec a3 00 00       	call   c09a <printf>
    1cae:	83 c4 10             	add    $0x10,%esp
    1cb1:	83 ec 0c             	sub    $0xc,%esp
    1cb4:	ff 75 f0             	pushl  -0x10(%ebp)
    1cb7:	e8 2b ab 00 00       	call   c7e7 <close>
    1cbc:	83 c4 10             	add    $0x10,%esp
    1cbf:	83 ec 0c             	sub    $0xc,%esp
    1cc2:	ff 75 ec             	pushl  -0x14(%ebp)
    1cc5:	e8 1d ab 00 00       	call   c7e7 <close>
    1cca:	83 c4 10             	add    $0x10,%esp
    1ccd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1cd0:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
    1cd4:	83 ec 0c             	sub    $0xc,%esp
    1cd7:	50                   	push   %eax
    1cd8:	e8 e5 fc ff ff       	call   19c2 <shabby_shell>
    1cdd:	83 c4 10             	add    $0x10,%esp
    1ce0:	68 62 01 00 00       	push   $0x162
    1ce5:	68 71 cc 00 00       	push   $0xcc71
    1cea:	68 71 cc 00 00       	push   $0xcc71
    1cef:	68 87 cd 00 00       	push   $0xcd87
    1cf4:	e8 e4 a9 00 00       	call   c6dd <assertion_failure>
    1cf9:	83 c4 10             	add    $0x10,%esp
    1cfc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    1d00:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1d03:	83 f8 01             	cmp    $0x1,%eax
    1d06:	0f 86 6c ff ff ff    	jbe    1c78 <Init+0xae>
    1d0c:	83 ec 0c             	sub    $0xc,%esp
    1d0f:	8d 45 d8             	lea    -0x28(%ebp),%eax
    1d12:	50                   	push   %eax
    1d13:	e8 09 ac 00 00       	call   c921 <wait>
    1d18:	83 c4 10             	add    $0x10,%esp
    1d1b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1d1e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    1d21:	83 ec 04             	sub    $0x4,%esp
    1d24:	50                   	push   %eax
    1d25:	ff 75 e4             	pushl  -0x1c(%ebp)
    1d28:	68 8c cd 00 00       	push   $0xcd8c
    1d2d:	e8 68 a3 00 00       	call   c09a <printf>
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
    1d66:	e8 42 a4 00 00       	call   c1ad <vsprintf>
    1d6b:	83 c4 10             	add    $0x10,%esp
    1d6e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    1d71:	83 ec 04             	sub    $0x4,%esp
    1d74:	8d 85 f0 fe ff ff    	lea    -0x110(%ebp),%eax
    1d7a:	50                   	push   %eax
    1d7b:	6a 02                	push   $0x2
    1d7d:	68 b0 cd 00 00       	push   $0xcdb0
    1d82:	e8 7e a3 00 00       	call   c105 <printl>
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
    21be:	8b 04 85 c0 cd 00 00 	mov    0xcdc0(,%eax,4),%eax
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
    22b5:	8b 04 85 e4 cd 00 00 	mov    0xcde4(,%eax,4),%eax
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
    2340:	8b 04 85 f8 cd 00 00 	mov    0xcdf8(,%eax,4),%eax
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
    25fc:	e8 c7 9e 00 00       	call   c4c8 <send_recv>
    2601:	83 c4 10             	add    $0x10,%esp
    2604:	8b 45 bc             	mov    -0x44(%ebp),%eax
    2607:	89 45 f0             	mov    %eax,-0x10(%ebp)
    260a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    260e:	75 19                	jne    2629 <task_tty+0xbb>
    2610:	6a 5e                	push   $0x5e
    2612:	68 24 ce 00 00       	push   $0xce24
    2617:	68 24 ce 00 00       	push   $0xce24
    261c:	68 31 ce 00 00       	push   $0xce31
    2621:	e8 b7 a0 00 00       	call   c6dd <assertion_failure>
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
    2684:	e8 3f 9e 00 00       	call   c4c8 <send_recv>
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
    26c9:	68 41 ce 00 00       	push   $0xce41
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
    27a3:	8b 04 85 54 ce 00 00 	mov    0xce54(,%eax,4),%eax
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
    29d0:	68 24 ce 00 00       	push   $0xce24
    29d5:	68 24 ce 00 00       	push   $0xce24
    29da:	68 e4 ce 00 00       	push   $0xcee4
    29df:	e8 f9 9c 00 00       	call   c6dd <assertion_failure>
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
    2a18:	e8 33 9a 00 00       	call   c450 <memcpy>
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
    2aeb:	68 24 ce 00 00       	push   $0xce24
    2af0:	68 24 ce 00 00       	push   $0xce24
    2af5:	68 f5 ce 00 00       	push   $0xcef5
    2afa:	e8 de 9b 00 00       	call   c6dd <assertion_failure>
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
    2b34:	e8 8f 99 00 00       	call   c4c8 <send_recv>
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
    2bdf:	e8 e4 98 00 00       	call   c4c8 <send_recv>
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
    2c42:	e8 09 98 00 00       	call   c450 <memcpy>
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
    2cad:	e8 16 98 00 00       	call   c4c8 <send_recv>
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
    2e6a:	e8 96 92 00 00       	call   c105 <printl>
    2e6f:	83 c4 10             	add    $0x10,%esp
    2e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e75:	8b 90 00 04 00 00    	mov    0x400(%eax),%edx
    2e7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e7e:	29 c2                	sub    %eax,%edx
    2e80:	89 d0                	mov    %edx,%eax
    2e82:	c1 f8 02             	sar    $0x2,%eax
    2e85:	83 ec 08             	sub    $0x8,%esp
    2e88:	50                   	push   %eax
    2e89:	68 10 cf 00 00       	push   $0xcf10
    2e8e:	e8 72 92 00 00       	call   c105 <printl>
    2e93:	83 c4 10             	add    $0x10,%esp
    2e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2e99:	8b 90 04 04 00 00    	mov    0x404(%eax),%edx
    2e9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ea2:	29 c2                	sub    %eax,%edx
    2ea4:	89 d0                	mov    %edx,%eax
    2ea6:	c1 f8 02             	sar    $0x2,%eax
    2ea9:	83 ec 08             	sub    $0x8,%esp
    2eac:	50                   	push   %eax
    2ead:	68 1a cf 00 00       	push   $0xcf1a
    2eb2:	e8 4e 92 00 00       	call   c105 <printl>
    2eb7:	83 c4 10             	add    $0x10,%esp
    2eba:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2ebd:	8b 80 08 04 00 00    	mov    0x408(%eax),%eax
    2ec3:	83 ec 08             	sub    $0x8,%esp
    2ec6:	50                   	push   %eax
    2ec7:	68 24 cf 00 00       	push   $0xcf24
    2ecc:	e8 34 92 00 00       	call   c105 <printl>
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
    2efb:	68 2d cf 00 00       	push   $0xcf2d
    2f00:	e8 00 92 00 00       	call   c105 <printl>
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
    2f2f:	68 2d cf 00 00       	push   $0xcf2d
    2f34:	e8 cc 91 00 00       	call   c105 <printl>
    2f39:	83 c4 10             	add    $0x10,%esp
    2f3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f3f:	8b 80 14 04 00 00    	mov    0x414(%eax),%eax
    2f45:	83 ec 08             	sub    $0x8,%esp
    2f48:	50                   	push   %eax
    2f49:	68 3e cf 00 00       	push   $0xcf3e
    2f4e:	e8 b2 91 00 00       	call   c105 <printl>
    2f53:	83 c4 10             	add    $0x10,%esp
    2f56:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f59:	8b 80 18 04 00 00    	mov    0x418(%eax),%eax
    2f5f:	83 ec 08             	sub    $0x8,%esp
    2f62:	50                   	push   %eax
    2f63:	68 4b cf 00 00       	push   $0xcf4b
    2f68:	e8 98 91 00 00       	call   c105 <printl>
    2f6d:	83 c4 10             	add    $0x10,%esp
    2f70:	8b 45 f4             	mov    -0xc(%ebp),%eax
    2f73:	8b 80 1c 04 00 00    	mov    0x41c(%eax),%eax
    2f79:	83 ec 08             	sub    $0x8,%esp
    2f7c:	50                   	push   %eax
    2f7d:	68 59 cf 00 00       	push   $0xcf59
    2f82:	e8 7e 91 00 00       	call   c105 <printl>
    2f87:	83 c4 10             	add    $0x10,%esp
    2f8a:	83 ec 0c             	sub    $0xc,%esp
    2f8d:	68 68 cf 00 00       	push   $0xcf68
    2f92:	e8 6e 91 00 00       	call   c105 <printl>
    2f97:	83 c4 10             	add    $0x10,%esp
    2f9a:	83 ec 08             	sub    $0x8,%esp
    2f9d:	68 8a cf 00 00       	push   $0xcf8a
    2fa2:	68 20 26 01 00       	push   $0x12620
    2fa7:	e8 ee 94 00 00       	call   c49a <strcpy>
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
    315c:	68 8c cf 00 00       	push   $0xcf8c
    3161:	68 8c cf 00 00       	push   $0xcf8c
    3166:	68 a0 cf 00 00       	push   $0xcfa0
    316b:	e8 6d 95 00 00       	call   c6dd <assertion_failure>
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
    3358:	68 8c cf 00 00       	push   $0xcf8c
    335d:	68 8c cf 00 00       	push   $0xcf8c
    3362:	68 a0 cf 00 00       	push   $0xcfa0
    3367:	e8 71 93 00 00       	call   c6dd <assertion_failure>
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
    36f2:	68 8c cf 00 00       	push   $0xcf8c
    36f7:	68 8c cf 00 00       	push   $0xcf8c
    36fc:	68 c8 cf 00 00       	push   $0xcfc8
    3701:	e8 d7 8f 00 00       	call   c6dd <assertion_failure>
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
    377e:	e8 cd 8c 00 00       	call   c450 <memcpy>
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
    3867:	68 e7 cf 00 00       	push   $0xcfe7
    386c:	e8 5f 2d 00 00       	call   65d0 <disp_str>
    3871:	83 c4 10             	add    $0x10,%esp
    3874:	83 ec 0c             	sub    $0xc,%esp
    3877:	ff 75 08             	pushl  0x8(%ebp)
    387a:	e8 2c 31 00 00       	call   69ab <disp_int>
    387f:	83 c4 10             	add    $0x10,%esp
    3882:	83 ec 0c             	sub    $0xc,%esp
    3885:	68 f6 cf 00 00       	push   $0xcff6
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
    3ba9:	e8 cb 88 00 00       	call   c479 <memset>
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
    3c12:	e8 62 88 00 00       	call   c479 <memset>
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
    3c3f:	68 20 d0 00 00       	push   $0xd020
    3c44:	68 20 d0 00 00       	push   $0xd020
    3c49:	68 34 d0 00 00       	push   $0xd034
    3c4e:	e8 8a 8a 00 00       	call   c6dd <assertion_failure>
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
    3df1:	bb a0 d0 00 00       	mov    $0xd0a0,%ebx
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
    3e19:	68 53 d0 00 00       	push   $0xd053
    3e1e:	e8 ad 27 00 00       	call   65d0 <disp_str>
    3e23:	83 c4 10             	add    $0x10,%esp
    3e26:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    3e2a:	81 7d e4 8f 01 00 00 	cmpl   $0x18f,-0x1c(%ebp)
    3e31:	7e e3                	jle    3e16 <exception_handler+0x3e>
    3e33:	c7 05 a4 99 03 00 00 	movl   $0x0,0x399a4
    3e3a:	00 00 00 
    3e3d:	83 ec 08             	sub    $0x8,%esp
    3e40:	ff 75 e0             	pushl  -0x20(%ebp)
    3e43:	68 55 d0 00 00       	push   $0xd055
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
    3e73:	68 65 d0 00 00       	push   $0xd065
    3e78:	e8 91 27 00 00       	call   660e <disp_color_str>
    3e7d:	83 c4 10             	add    $0x10,%esp
    3e80:	83 ec 08             	sub    $0x8,%esp
    3e83:	ff 75 e0             	pushl  -0x20(%ebp)
    3e86:	68 68 d0 00 00       	push   $0xd068
    3e8b:	e8 7e 27 00 00       	call   660e <disp_color_str>
    3e90:	83 c4 10             	add    $0x10,%esp
    3e93:	83 ec 0c             	sub    $0xc,%esp
    3e96:	ff 75 18             	pushl  0x18(%ebp)
    3e99:	e8 0d 2b 00 00       	call   69ab <disp_int>
    3e9e:	83 c4 10             	add    $0x10,%esp
    3ea1:	83 ec 08             	sub    $0x8,%esp
    3ea4:	ff 75 e0             	pushl  -0x20(%ebp)
    3ea7:	68 70 d0 00 00       	push   $0xd070
    3eac:	e8 5d 27 00 00       	call   660e <disp_color_str>
    3eb1:	83 c4 10             	add    $0x10,%esp
    3eb4:	83 ec 0c             	sub    $0xc,%esp
    3eb7:	ff 75 14             	pushl  0x14(%ebp)
    3eba:	e8 ec 2a 00 00       	call   69ab <disp_int>
    3ebf:	83 c4 10             	add    $0x10,%esp
    3ec2:	83 ec 08             	sub    $0x8,%esp
    3ec5:	ff 75 e0             	pushl  -0x20(%ebp)
    3ec8:	68 74 d0 00 00       	push   $0xd074
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
    3eef:	68 79 d0 00 00       	push   $0xd079
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
    3fb0:	68 a0 d5 00 00       	push   $0xd5a0
    3fb5:	68 a0 d5 00 00       	push   $0xd5a0
    3fba:	68 ae d5 00 00       	push   $0xd5ae
    3fbf:	e8 19 87 00 00       	call   c6dd <assertion_failure>
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
    3fe1:	68 a0 d5 00 00       	push   $0xd5a0
    3fe6:	68 a0 d5 00 00       	push   $0xd5a0
    3feb:	68 c0 d5 00 00       	push   $0xd5c0
    3ff0:	e8 e8 86 00 00       	call   c6dd <assertion_failure>
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
    403b:	68 a0 d5 00 00       	push   $0xd5a0
    4040:	68 a0 d5 00 00       	push   $0xd5a0
    4045:	68 1e d6 00 00       	push   $0xd61e
    404a:	e8 8e 86 00 00       	call   c6dd <assertion_failure>
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
    40a9:	68 38 d6 00 00       	push   $0xd638
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
    414c:	68 a0 d5 00 00       	push   $0xd5a0
    4151:	68 a0 d5 00 00       	push   $0xd5a0
    4156:	68 72 d6 00 00       	push   $0xd672
    415b:	e8 7d 85 00 00       	call   c6dd <assertion_failure>
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
    4178:	e8 fc 82 00 00       	call   c479 <memset>
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
    4198:	68 a0 d5 00 00       	push   $0xd5a0
    419d:	68 a0 d5 00 00       	push   $0xd5a0
    41a2:	68 80 d6 00 00       	push   $0xd680
    41a7:	e8 31 85 00 00       	call   c6dd <assertion_failure>
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
    41cc:	68 a0 d5 00 00       	push   $0xd5a0
    41d1:	68 a0 d5 00 00       	push   $0xd5a0
    41d6:	68 8b d6 00 00       	push   $0xd68b
    41db:	e8 fd 84 00 00       	call   c6dd <assertion_failure>
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
    423b:	68 9b d6 00 00       	push   $0xd69b
    4240:	e8 c0 7e 00 00       	call   c105 <printl>
    4245:	83 c4 10             	add    $0x10,%esp
    4248:	8b 45 f4             	mov    -0xc(%ebp),%eax
    424b:	8b 40 78             	mov    0x78(%eax),%eax
    424e:	85 c0                	test   %eax,%eax
    4250:	75 1c                	jne    426e <deadlock+0x88>
    4252:	68 dc 00 00 00       	push   $0xdc
    4257:	68 a0 d5 00 00       	push   $0xd5a0
    425c:	68 a0 d5 00 00       	push   $0xd5a0
    4261:	68 a1 d6 00 00       	push   $0xd6a1
    4266:	e8 72 84 00 00       	call   c6dd <assertion_failure>
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
    428f:	68 aa d6 00 00       	push   $0xd6aa
    4294:	e8 6c 7e 00 00       	call   c105 <printl>
    4299:	83 c4 10             	add    $0x10,%esp
    429c:	8b 45 08             	mov    0x8(%ebp),%eax
    429f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    42a5:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    42aa:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    42ad:	75 99                	jne    4248 <deadlock+0x62>
    42af:	83 ec 0c             	sub    $0xc,%esp
    42b2:	68 af d6 00 00       	push   $0xd6af
    42b7:	e8 49 7e 00 00       	call   c105 <printl>
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
    4323:	68 a0 d5 00 00       	push   $0xd5a0
    4328:	68 a0 d5 00 00       	push   $0xd5a0
    432d:	68 b3 d6 00 00       	push   $0xd6b3
    4332:	e8 a6 83 00 00       	call   c6dd <assertion_failure>
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
    436f:	68 cc d6 00 00       	push   $0xd6cc
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
    43c7:	68 a0 d5 00 00       	push   $0xd5a0
    43cc:	68 a0 d5 00 00       	push   $0xd5a0
    43d1:	68 e0 d6 00 00       	push   $0xd6e0
    43d6:	e8 02 83 00 00       	call   c6dd <assertion_failure>
    43db:	83 c4 10             	add    $0x10,%esp
    43de:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    43e2:	75 1c                	jne    4400 <msg_send+0x116>
    43e4:	68 0b 01 00 00       	push   $0x10b
    43e9:	68 a0 d5 00 00       	push   $0xd5a0
    43ee:	68 a0 d5 00 00       	push   $0xd5a0
    43f3:	68 ee d6 00 00       	push   $0xd6ee
    43f8:	e8 e0 82 00 00       	call   c6dd <assertion_failure>
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
    443e:	e8 0d 80 00 00       	call   c450 <memcpy>
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
    4488:	68 a0 d5 00 00       	push   $0xd5a0
    448d:	68 a0 d5 00 00       	push   $0xd5a0
    4492:	68 f0 d6 00 00       	push   $0xd6f0
    4497:	e8 41 82 00 00       	call   c6dd <assertion_failure>
    449c:	83 c4 10             	add    $0x10,%esp
    449f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44a2:	8b 40 78             	mov    0x78(%eax),%eax
    44a5:	85 c0                	test   %eax,%eax
    44a7:	74 1c                	je     44c5 <msg_send+0x1db>
    44a9:	68 16 01 00 00       	push   $0x116
    44ae:	68 a0 d5 00 00       	push   $0xd5a0
    44b3:	68 a0 d5 00 00       	push   $0xd5a0
    44b8:	68 05 d7 00 00       	push   $0xd705
    44bd:	e8 1b 82 00 00       	call   c6dd <assertion_failure>
    44c2:	83 c4 10             	add    $0x10,%esp
    44c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44c8:	8b 40 7c             	mov    0x7c(%eax),%eax
    44cb:	83 f8 39             	cmp    $0x39,%eax
    44ce:	74 1c                	je     44ec <msg_send+0x202>
    44d0:	68 17 01 00 00       	push   $0x117
    44d5:	68 a0 d5 00 00       	push   $0xd5a0
    44da:	68 a0 d5 00 00       	push   $0xd5a0
    44df:	68 18 d7 00 00       	push   $0xd718
    44e4:	e8 f4 81 00 00       	call   c6dd <assertion_failure>
    44e9:	83 c4 10             	add    $0x10,%esp
    44ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
    44ef:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    44f5:	83 f8 39             	cmp    $0x39,%eax
    44f8:	74 1c                	je     4516 <msg_send+0x22c>
    44fa:	68 18 01 00 00       	push   $0x118
    44ff:	68 a0 d5 00 00       	push   $0xd5a0
    4504:	68 a0 d5 00 00       	push   $0xd5a0
    4509:	68 36 d7 00 00       	push   $0xd736
    450e:	e8 ca 81 00 00       	call   c6dd <assertion_failure>
    4513:	83 c4 10             	add    $0x10,%esp
    4516:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4519:	8b 40 74             	mov    0x74(%eax),%eax
    451c:	85 c0                	test   %eax,%eax
    451e:	74 1c                	je     453c <msg_send+0x252>
    4520:	68 19 01 00 00       	push   $0x119
    4525:	68 a0 d5 00 00       	push   $0xd5a0
    452a:	68 a0 d5 00 00       	push   $0xd5a0
    452f:	68 52 d7 00 00       	push   $0xd752
    4534:	e8 a4 81 00 00       	call   c6dd <assertion_failure>
    4539:	83 c4 10             	add    $0x10,%esp
    453c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    453f:	8b 40 78             	mov    0x78(%eax),%eax
    4542:	85 c0                	test   %eax,%eax
    4544:	74 1c                	je     4562 <msg_send+0x278>
    4546:	68 1a 01 00 00       	push   $0x11a
    454b:	68 a0 d5 00 00       	push   $0xd5a0
    4550:	68 a0 d5 00 00       	push   $0xd5a0
    4555:	68 67 d7 00 00       	push   $0xd767
    455a:	e8 7e 81 00 00       	call   c6dd <assertion_failure>
    455f:	83 c4 10             	add    $0x10,%esp
    4562:	8b 45 f0             	mov    -0x10(%ebp),%eax
    4565:	8b 40 7c             	mov    0x7c(%eax),%eax
    4568:	83 f8 39             	cmp    $0x39,%eax
    456b:	74 1c                	je     4589 <msg_send+0x29f>
    456d:	68 1b 01 00 00       	push   $0x11b
    4572:	68 a0 d5 00 00       	push   $0xd5a0
    4577:	68 a0 d5 00 00       	push   $0xd5a0
    457c:	68 7a d7 00 00       	push   $0xd77a
    4581:	e8 57 81 00 00       	call   c6dd <assertion_failure>
    4586:	83 c4 10             	add    $0x10,%esp
    4589:	8b 45 f0             	mov    -0x10(%ebp),%eax
    458c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4592:	83 f8 39             	cmp    $0x39,%eax
    4595:	0f 84 75 01 00 00    	je     4710 <msg_send+0x426>
    459b:	68 1c 01 00 00       	push   $0x11c
    45a0:	68 a0 d5 00 00       	push   $0xd5a0
    45a5:	68 a0 d5 00 00       	push   $0xd5a0
    45aa:	68 98 d7 00 00       	push   $0xd798
    45af:	e8 29 81 00 00       	call   c6dd <assertion_failure>
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
    45dd:	68 a0 d5 00 00       	push   $0xd5a0
    45e2:	68 a0 d5 00 00       	push   $0xd5a0
    45e7:	68 b4 d7 00 00       	push   $0xd7b4
    45ec:	e8 ec 80 00 00       	call   c6dd <assertion_failure>
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
    4682:	68 a0 d5 00 00       	push   $0xd5a0
    4687:	68 a0 d5 00 00       	push   $0xd5a0
    468c:	68 b4 d7 00 00       	push   $0xd7b4
    4691:	e8 47 80 00 00       	call   c6dd <assertion_failure>
    4696:	83 c4 10             	add    $0x10,%esp
    4699:	8b 45 f0             	mov    -0x10(%ebp),%eax
    469c:	8b 40 78             	mov    0x78(%eax),%eax
    469f:	85 c0                	test   %eax,%eax
    46a1:	75 1c                	jne    46bf <msg_send+0x3d5>
    46a3:	68 34 01 00 00       	push   $0x134
    46a8:	68 a0 d5 00 00       	push   $0xd5a0
    46ad:	68 a0 d5 00 00       	push   $0xd5a0
    46b2:	68 cf d7 00 00       	push   $0xd7cf
    46b7:	e8 21 80 00 00       	call   c6dd <assertion_failure>
    46bc:	83 c4 10             	add    $0x10,%esp
    46bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    46c2:	8b 40 7c             	mov    0x7c(%eax),%eax
    46c5:	83 f8 39             	cmp    $0x39,%eax
    46c8:	74 1c                	je     46e6 <msg_send+0x3fc>
    46ca:	68 35 01 00 00       	push   $0x135
    46cf:	68 a0 d5 00 00       	push   $0xd5a0
    46d4:	68 a0 d5 00 00       	push   $0xd5a0
    46d9:	68 7a d7 00 00       	push   $0xd77a
    46de:	e8 fa 7f 00 00       	call   c6dd <assertion_failure>
    46e3:	83 c4 10             	add    $0x10,%esp
    46e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    46e9:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    46ef:	39 45 0c             	cmp    %eax,0xc(%ebp)
    46f2:	74 1c                	je     4710 <msg_send+0x426>
    46f4:	68 36 01 00 00       	push   $0x136
    46f9:	68 a0 d5 00 00       	push   $0xd5a0
    46fe:	68 a0 d5 00 00       	push   $0xd5a0
    4703:	68 e2 d7 00 00       	push   $0xd7e2
    4708:	e8 d0 7f 00 00       	call   c6dd <assertion_failure>
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
    4757:	68 a0 d5 00 00       	push   $0xd5a0
    475c:	68 a0 d5 00 00       	push   $0xd5a0
    4761:	68 fc d7 00 00       	push   $0xd7fc
    4766:	e8 72 7f 00 00       	call   c6dd <assertion_failure>
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
    47b7:	68 a0 d5 00 00       	push   $0xd5a0
    47bc:	68 a0 d5 00 00       	push   $0xd5a0
    47c1:	68 ee d6 00 00       	push   $0xd6ee
    47c6:	e8 12 7f 00 00       	call   c6dd <assertion_failure>
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
    47fa:	e8 51 7c 00 00       	call   c450 <memcpy>
    47ff:	83 c4 10             	add    $0x10,%esp
    4802:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4805:	c7 80 84 00 00 00 00 	movl   $0x0,0x84(%eax)
    480c:	00 00 00 
    480f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4812:	8b 40 74             	mov    0x74(%eax),%eax
    4815:	85 c0                	test   %eax,%eax
    4817:	74 1c                	je     4835 <msg_receive+0x11b>
    4819:	68 6b 01 00 00       	push   $0x16b
    481e:	68 a0 d5 00 00       	push   $0xd5a0
    4823:	68 a0 d5 00 00       	push   $0xd5a0
    4828:	68 20 d8 00 00       	push   $0xd820
    482d:	e8 ab 7e 00 00       	call   c6dd <assertion_failure>
    4832:	83 c4 10             	add    $0x10,%esp
    4835:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4838:	8b 40 78             	mov    0x78(%eax),%eax
    483b:	85 c0                	test   %eax,%eax
    483d:	74 1c                	je     485b <msg_receive+0x141>
    483f:	68 6c 01 00 00       	push   $0x16c
    4844:	68 a0 d5 00 00       	push   $0xd5a0
    4849:	68 a0 d5 00 00       	push   $0xd5a0
    484e:	68 3f d8 00 00       	push   $0xd83f
    4853:	e8 85 7e 00 00       	call   c6dd <assertion_failure>
    4858:	83 c4 10             	add    $0x10,%esp
    485b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    485e:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4864:	83 f8 39             	cmp    $0x39,%eax
    4867:	74 1c                	je     4885 <msg_receive+0x16b>
    4869:	68 6d 01 00 00       	push   $0x16d
    486e:	68 a0 d5 00 00       	push   $0xd5a0
    4873:	68 a0 d5 00 00       	push   $0xd5a0
    4878:	68 5c d8 00 00       	push   $0xd85c
    487d:	e8 5b 7e 00 00       	call   c6dd <assertion_failure>
    4882:	83 c4 10             	add    $0x10,%esp
    4885:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4888:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    488e:	85 c0                	test   %eax,%eax
    4890:	74 1c                	je     48ae <msg_receive+0x194>
    4892:	68 6e 01 00 00       	push   $0x16e
    4897:	68 a0 d5 00 00       	push   $0xd5a0
    489c:	68 a0 d5 00 00       	push   $0xd5a0
    48a1:	68 84 d8 00 00       	push   $0xd884
    48a6:	e8 32 7e 00 00       	call   c6dd <assertion_failure>
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
    48f5:	68 a0 d5 00 00       	push   $0xd5a0
    48fa:	68 a0 d5 00 00       	push   $0xd5a0
    48ff:	68 20 d8 00 00       	push   $0xd820
    4904:	e8 d4 7d 00 00       	call   c6dd <assertion_failure>
    4909:	83 c4 10             	add    $0x10,%esp
    490c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    490f:	8b 40 78             	mov    0x78(%eax),%eax
    4912:	85 c0                	test   %eax,%eax
    4914:	74 1c                	je     4932 <msg_receive+0x218>
    4916:	68 7f 01 00 00       	push   $0x17f
    491b:	68 a0 d5 00 00       	push   $0xd5a0
    4920:	68 a0 d5 00 00       	push   $0xd5a0
    4925:	68 3f d8 00 00       	push   $0xd83f
    492a:	e8 ae 7d 00 00       	call   c6dd <assertion_failure>
    492f:	83 c4 10             	add    $0x10,%esp
    4932:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4935:	8b 40 7c             	mov    0x7c(%eax),%eax
    4938:	83 f8 39             	cmp    $0x39,%eax
    493b:	74 1c                	je     4959 <msg_receive+0x23f>
    493d:	68 80 01 00 00       	push   $0x180
    4942:	68 a0 d5 00 00       	push   $0xd5a0
    4947:	68 a0 d5 00 00       	push   $0xd5a0
    494c:	68 a8 d8 00 00       	push   $0xd8a8
    4951:	e8 87 7d 00 00       	call   c6dd <assertion_failure>
    4956:	83 c4 10             	add    $0x10,%esp
    4959:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    495c:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4962:	83 f8 39             	cmp    $0x39,%eax
    4965:	74 1c                	je     4983 <msg_receive+0x269>
    4967:	68 81 01 00 00       	push   $0x181
    496c:	68 a0 d5 00 00       	push   $0xd5a0
    4971:	68 a0 d5 00 00       	push   $0xd5a0
    4976:	68 5c d8 00 00       	push   $0xd85c
    497b:	e8 5d 7d 00 00       	call   c6dd <assertion_failure>
    4980:	83 c4 10             	add    $0x10,%esp
    4983:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4986:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    498c:	85 c0                	test   %eax,%eax
    498e:	75 1c                	jne    49ac <msg_receive+0x292>
    4990:	68 82 01 00 00       	push   $0x182
    4995:	68 a0 d5 00 00       	push   $0xd5a0
    499a:	68 a0 d5 00 00       	push   $0xd5a0
    499f:	68 d0 d8 00 00       	push   $0xd8d0
    49a4:	e8 34 7d 00 00       	call   c6dd <assertion_failure>
    49a9:	83 c4 10             	add    $0x10,%esp
    49ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49af:	8b 40 74             	mov    0x74(%eax),%eax
    49b2:	83 f8 02             	cmp    $0x2,%eax
    49b5:	74 1c                	je     49d3 <msg_receive+0x2b9>
    49b7:	68 83 01 00 00       	push   $0x183
    49bc:	68 a0 d5 00 00       	push   $0xd5a0
    49c1:	68 a0 d5 00 00       	push   $0xd5a0
    49c6:	68 f1 d8 00 00       	push   $0xd8f1
    49cb:	e8 0d 7d 00 00       	call   c6dd <assertion_failure>
    49d0:	83 c4 10             	add    $0x10,%esp
    49d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49d6:	8b 40 78             	mov    0x78(%eax),%eax
    49d9:	85 c0                	test   %eax,%eax
    49db:	75 1c                	jne    49f9 <msg_receive+0x2df>
    49dd:	68 84 01 00 00       	push   $0x184
    49e2:	68 a0 d5 00 00       	push   $0xd5a0
    49e7:	68 a0 d5 00 00       	push   $0xd5a0
    49ec:	68 0c d9 00 00       	push   $0xd90c
    49f1:	e8 e7 7c 00 00       	call   c6dd <assertion_failure>
    49f6:	83 c4 10             	add    $0x10,%esp
    49f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    49fc:	8b 40 7c             	mov    0x7c(%eax),%eax
    49ff:	83 f8 39             	cmp    $0x39,%eax
    4a02:	74 1c                	je     4a20 <msg_receive+0x306>
    4a04:	68 85 01 00 00       	push   $0x185
    4a09:	68 a0 d5 00 00       	push   $0xd5a0
    4a0e:	68 a0 d5 00 00       	push   $0xd5a0
    4a13:	68 1f d9 00 00       	push   $0xd91f
    4a18:	e8 c0 7c 00 00       	call   c6dd <assertion_failure>
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
    4a48:	68 a0 d5 00 00       	push   $0xd5a0
    4a4d:	68 a0 d5 00 00       	push   $0xd5a0
    4a52:	68 40 d9 00 00       	push   $0xd940
    4a57:	e8 81 7c 00 00       	call   c6dd <assertion_failure>
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
    4adb:	68 a0 d5 00 00       	push   $0xd5a0
    4ae0:	68 a0 d5 00 00       	push   $0xd5a0
    4ae5:	68 6f d9 00 00       	push   $0xd96f
    4aea:	e8 ee 7b 00 00       	call   c6dd <assertion_failure>
    4aef:	83 c4 10             	add    $0x10,%esp
    4af2:	eb 51                	jmp    4b45 <msg_receive+0x42b>
    4af4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4af7:	8b 40 74             	mov    0x74(%eax),%eax
    4afa:	83 e0 02             	and    $0x2,%eax
    4afd:	85 c0                	test   %eax,%eax
    4aff:	75 1c                	jne    4b1d <msg_receive+0x403>
    4b01:	68 9d 01 00 00       	push   $0x19d
    4b06:	68 a0 d5 00 00       	push   $0xd5a0
    4b0b:	68 a0 d5 00 00       	push   $0xd5a0
    4b10:	68 71 d9 00 00       	push   $0xd971
    4b15:	e8 c3 7b 00 00       	call   c6dd <assertion_failure>
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
    4b5d:	68 a0 d5 00 00       	push   $0xd5a0
    4b62:	68 a0 d5 00 00       	push   $0xd5a0
    4b67:	68 20 d8 00 00       	push   $0xd820
    4b6c:	e8 6c 7b 00 00       	call   c6dd <assertion_failure>
    4b71:	83 c4 10             	add    $0x10,%esp
    4b74:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b77:	8b 40 78             	mov    0x78(%eax),%eax
    4b7a:	85 c0                	test   %eax,%eax
    4b7c:	74 1c                	je     4b9a <msg_receive+0x480>
    4b7e:	68 a7 01 00 00       	push   $0x1a7
    4b83:	68 a0 d5 00 00       	push   $0xd5a0
    4b88:	68 a0 d5 00 00       	push   $0xd5a0
    4b8d:	68 3f d8 00 00       	push   $0xd83f
    4b92:	e8 46 7b 00 00       	call   c6dd <assertion_failure>
    4b97:	83 c4 10             	add    $0x10,%esp
    4b9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4b9d:	8b 40 7c             	mov    0x7c(%eax),%eax
    4ba0:	83 f8 39             	cmp    $0x39,%eax
    4ba3:	74 1c                	je     4bc1 <msg_receive+0x4a7>
    4ba5:	68 a8 01 00 00       	push   $0x1a8
    4baa:	68 a0 d5 00 00       	push   $0xd5a0
    4baf:	68 a0 d5 00 00       	push   $0xd5a0
    4bb4:	68 a8 d8 00 00       	push   $0xd8a8
    4bb9:	e8 1f 7b 00 00       	call   c6dd <assertion_failure>
    4bbe:	83 c4 10             	add    $0x10,%esp
    4bc1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bc4:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4bca:	83 f8 39             	cmp    $0x39,%eax
    4bcd:	74 1c                	je     4beb <msg_receive+0x4d1>
    4bcf:	68 a9 01 00 00       	push   $0x1a9
    4bd4:	68 a0 d5 00 00       	push   $0xd5a0
    4bd9:	68 a0 d5 00 00       	push   $0xd5a0
    4bde:	68 5c d8 00 00       	push   $0xd85c
    4be3:	e8 f5 7a 00 00       	call   c6dd <assertion_failure>
    4be8:	83 c4 10             	add    $0x10,%esp
    4beb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4bee:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
    4bf4:	85 c0                	test   %eax,%eax
    4bf6:	75 1c                	jne    4c14 <msg_receive+0x4fa>
    4bf8:	68 aa 01 00 00       	push   $0x1aa
    4bfd:	68 a0 d5 00 00       	push   $0xd5a0
    4c02:	68 a0 d5 00 00       	push   $0xd5a0
    4c07:	68 d0 d8 00 00       	push   $0xd8d0
    4c0c:	e8 cc 7a 00 00       	call   c6dd <assertion_failure>
    4c11:	83 c4 10             	add    $0x10,%esp
    4c14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c17:	8b 40 74             	mov    0x74(%eax),%eax
    4c1a:	83 f8 02             	cmp    $0x2,%eax
    4c1d:	74 1c                	je     4c3b <msg_receive+0x521>
    4c1f:	68 ab 01 00 00       	push   $0x1ab
    4c24:	68 a0 d5 00 00       	push   $0xd5a0
    4c29:	68 a0 d5 00 00       	push   $0xd5a0
    4c2e:	68 f1 d8 00 00       	push   $0xd8f1
    4c33:	e8 a5 7a 00 00       	call   c6dd <assertion_failure>
    4c38:	83 c4 10             	add    $0x10,%esp
    4c3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c3e:	8b 40 78             	mov    0x78(%eax),%eax
    4c41:	85 c0                	test   %eax,%eax
    4c43:	75 1c                	jne    4c61 <msg_receive+0x547>
    4c45:	68 ac 01 00 00       	push   $0x1ac
    4c4a:	68 a0 d5 00 00       	push   $0xd5a0
    4c4f:	68 a0 d5 00 00       	push   $0xd5a0
    4c54:	68 0c d9 00 00       	push   $0xd90c
    4c59:	e8 7f 7a 00 00       	call   c6dd <assertion_failure>
    4c5e:	83 c4 10             	add    $0x10,%esp
    4c61:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4c64:	8b 40 7c             	mov    0x7c(%eax),%eax
    4c67:	83 f8 39             	cmp    $0x39,%eax
    4c6a:	74 1c                	je     4c88 <msg_receive+0x56e>
    4c6c:	68 ad 01 00 00       	push   $0x1ad
    4c71:	68 a0 d5 00 00       	push   $0xd5a0
    4c76:	68 a0 d5 00 00       	push   $0xd5a0
    4c7b:	68 1f d9 00 00       	push   $0xd91f
    4c80:	e8 58 7a 00 00       	call   c6dd <assertion_failure>
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
    4cac:	68 a0 d5 00 00       	push   $0xd5a0
    4cb1:	68 a0 d5 00 00       	push   $0xd5a0
    4cb6:	68 40 d9 00 00       	push   $0xd940
    4cbb:	e8 1d 7a 00 00       	call   c6dd <assertion_failure>
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
    4ce6:	68 a0 d5 00 00       	push   $0xd5a0
    4ceb:	68 a0 d5 00 00       	push   $0xd5a0
    4cf0:	68 8b d9 00 00       	push   $0xd98b
    4cf5:	e8 e3 79 00 00       	call   c6dd <assertion_failure>
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
    4d29:	68 a0 d5 00 00       	push   $0xd5a0
    4d2e:	68 a0 d5 00 00       	push   $0xd5a0
    4d33:	68 95 d9 00 00       	push   $0xd995
    4d38:	e8 a0 79 00 00       	call   c6dd <assertion_failure>
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
    4d6a:	68 a0 d5 00 00       	push   $0xd5a0
    4d6f:	68 a0 d5 00 00       	push   $0xd5a0
    4d74:	68 ee d6 00 00       	push   $0xd6ee
    4d79:	e8 5f 79 00 00       	call   c6dd <assertion_failure>
    4d7e:	83 c4 10             	add    $0x10,%esp
    4d81:	8b 45 f4             	mov    -0xc(%ebp),%eax
    4d84:	8b 40 78             	mov    0x78(%eax),%eax
    4d87:	85 c0                	test   %eax,%eax
    4d89:	75 1c                	jne    4da7 <msg_receive+0x68d>
    4d8b:	68 c4 01 00 00       	push   $0x1c4
    4d90:	68 a0 d5 00 00       	push   $0xd5a0
    4d95:	68 a0 d5 00 00       	push   $0xd5a0
    4d9a:	68 9a d9 00 00       	push   $0xd99a
    4d9f:	e8 39 79 00 00       	call   c6dd <assertion_failure>
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
    4df5:	e8 56 76 00 00       	call   c450 <memcpy>
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
    4e79:	68 a0 d5 00 00       	push   $0xd5a0
    4e7e:	68 a0 d5 00 00       	push   $0xd5a0
    4e83:	68 a8 d9 00 00       	push   $0xd9a8
    4e88:	e8 50 78 00 00       	call   c6dd <assertion_failure>
    4e8d:	83 c4 10             	add    $0x10,%esp
    4e90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4e93:	8b 40 78             	mov    0x78(%eax),%eax
    4e96:	85 c0                	test   %eax,%eax
    4e98:	75 1c                	jne    4eb6 <msg_receive+0x79c>
    4e9a:	68 db 01 00 00       	push   $0x1db
    4e9f:	68 a0 d5 00 00       	push   $0xd5a0
    4ea4:	68 a0 d5 00 00       	push   $0xd5a0
    4ea9:	68 cf d9 00 00       	push   $0xd9cf
    4eae:	e8 2a 78 00 00       	call   c6dd <assertion_failure>
    4eb3:	83 c4 10             	add    $0x10,%esp
    4eb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4eb9:	8b 40 7c             	mov    0x7c(%eax),%eax
    4ebc:	83 f8 39             	cmp    $0x39,%eax
    4ebf:	75 1c                	jne    4edd <msg_receive+0x7c3>
    4ec1:	68 dc 01 00 00       	push   $0x1dc
    4ec6:	68 a0 d5 00 00       	push   $0xd5a0
    4ecb:	68 a0 d5 00 00       	push   $0xd5a0
    4ed0:	68 ec d9 00 00       	push   $0xd9ec
    4ed5:	e8 03 78 00 00       	call   c6dd <assertion_failure>
    4eda:	83 c4 10             	add    $0x10,%esp
    4edd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4ee0:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    4ee6:	83 f8 39             	cmp    $0x39,%eax
    4ee9:	74 1c                	je     4f07 <msg_receive+0x7ed>
    4eeb:	68 dd 01 00 00       	push   $0x1dd
    4ef0:	68 a0 d5 00 00       	push   $0xd5a0
    4ef5:	68 a0 d5 00 00       	push   $0xd5a0
    4efa:	68 5c d8 00 00       	push   $0xd85c
    4eff:	e8 d9 77 00 00       	call   c6dd <assertion_failure>
    4f04:	83 c4 10             	add    $0x10,%esp
    4f07:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4f0a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    4f10:	85 c0                	test   %eax,%eax
    4f12:	74 1c                	je     4f30 <msg_receive+0x816>
    4f14:	68 de 01 00 00       	push   $0x1de
    4f19:	68 a0 d5 00 00       	push   $0xd5a0
    4f1e:	68 a0 d5 00 00       	push   $0xd5a0
    4f23:	68 84 d8 00 00       	push   $0xd884
    4f28:	e8 b0 77 00 00       	call   c6dd <assertion_failure>
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
    4fd6:	68 a0 d5 00 00       	push   $0xd5a0
    4fdb:	68 a0 d5 00 00       	push   $0xd5a0
    4fe0:	68 8b d6 00 00       	push   $0xd68b
    4fe5:	e8 f3 76 00 00       	call   c6dd <assertion_failure>
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
    500a:	68 a0 d5 00 00       	push   $0xd5a0
    500f:	68 a0 d5 00 00       	push   $0xd5a0
    5014:	68 8b d6 00 00       	push   $0xd68b
    5019:	e8 bf 76 00 00       	call   c6dd <assertion_failure>
    501e:	83 c4 10             	add    $0x10,%esp
    5021:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5024:	8b 40 78             	mov    0x78(%eax),%eax
    5027:	85 c0                	test   %eax,%eax
    5029:	74 1c                	je     5047 <inform_int+0x10d>
    502b:	68 fc 01 00 00       	push   $0x1fc
    5030:	68 a0 d5 00 00       	push   $0xd5a0
    5035:	68 a0 d5 00 00       	push   $0xd5a0
    503a:	68 14 da 00 00       	push   $0xda14
    503f:	e8 99 76 00 00       	call   c6dd <assertion_failure>
    5044:	83 c4 10             	add    $0x10,%esp
    5047:	8b 45 f4             	mov    -0xc(%ebp),%eax
    504a:	8b 40 7c             	mov    0x7c(%eax),%eax
    504d:	83 f8 39             	cmp    $0x39,%eax
    5050:	74 1c                	je     506e <inform_int+0x134>
    5052:	68 fd 01 00 00       	push   $0x1fd
    5057:	68 a0 d5 00 00       	push   $0xd5a0
    505c:	68 a0 d5 00 00       	push   $0xd5a0
    5061:	68 22 da 00 00       	push   $0xda22
    5066:	e8 72 76 00 00       	call   c6dd <assertion_failure>
    506b:	83 c4 10             	add    $0x10,%esp
    506e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    5071:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
    5077:	83 f8 39             	cmp    $0x39,%eax
    507a:	74 2b                	je     50a7 <inform_int+0x16d>
    507c:	68 fe 01 00 00       	push   $0x1fe
    5081:	68 a0 d5 00 00       	push   $0xd5a0
    5086:	68 a0 d5 00 00       	push   $0xd5a0
    508b:	68 3b da 00 00       	push   $0xda3b
    5090:	e8 48 76 00 00       	call   c6dd <assertion_failure>
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
    511e:	68 52 da 00 00       	push   $0xda52
    5123:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5129:	50                   	push   %eax
    512a:	e8 fb 72 00 00       	call   c42a <sprintf>
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
    5162:	68 70 da 00 00       	push   $0xda70
    5167:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    516d:	50                   	push   %eax
    516e:	e8 b7 72 00 00       	call   c42a <sprintf>
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
    519d:	68 74 da 00 00       	push   $0xda74
    51a2:	e8 67 14 00 00       	call   660e <disp_color_str>
    51a7:	83 c4 10             	add    $0x10,%esp
    51aa:	83 ec 04             	sub    $0x4,%esp
    51ad:	6a 2f                	push   $0x2f
    51af:	68 77 da 00 00       	push   $0xda77
    51b4:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51ba:	50                   	push   %eax
    51bb:	e8 6a 72 00 00       	call   c42a <sprintf>
    51c0:	83 c4 10             	add    $0x10,%esp
    51c3:	83 ec 08             	sub    $0x8,%esp
    51c6:	ff 75 f0             	pushl  -0x10(%ebp)
    51c9:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51cf:	50                   	push   %eax
    51d0:	e8 39 14 00 00       	call   660e <disp_color_str>
    51d5:	83 c4 10             	add    $0x10,%esp
    51d8:	83 ec 04             	sub    $0x4,%esp
    51db:	6a 39                	push   $0x39
    51dd:	68 83 da 00 00       	push   $0xda83
    51e2:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51e8:	50                   	push   %eax
    51e9:	e8 3c 72 00 00       	call   c42a <sprintf>
    51ee:	83 c4 10             	add    $0x10,%esp
    51f1:	83 ec 08             	sub    $0x8,%esp
    51f4:	ff 75 f0             	pushl  -0x10(%ebp)
    51f7:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    51fd:	50                   	push   %eax
    51fe:	e8 0b 14 00 00       	call   660e <disp_color_str>
    5203:	83 c4 10             	add    $0x10,%esp
    5206:	83 ec 08             	sub    $0x8,%esp
    5209:	ff 75 f0             	pushl  -0x10(%ebp)
    520c:	68 93 da 00 00       	push   $0xda93
    5211:	e8 f8 13 00 00       	call   660e <disp_color_str>
    5216:	83 c4 10             	add    $0x10,%esp
    5219:	8b 45 08             	mov    0x8(%ebp),%eax
    521c:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    5220:	0f b7 c0             	movzwl %ax,%eax
    5223:	83 ec 04             	sub    $0x4,%esp
    5226:	50                   	push   %eax
    5227:	68 95 da 00 00       	push   $0xda95
    522c:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5232:	50                   	push   %eax
    5233:	e8 f2 71 00 00       	call   c42a <sprintf>
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
    525a:	68 a6 da 00 00       	push   $0xdaa6
    525f:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5265:	50                   	push   %eax
    5266:	e8 bf 71 00 00       	call   c42a <sprintf>
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
    528d:	68 b5 da 00 00       	push   $0xdab5
    5292:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5298:	50                   	push   %eax
    5299:	e8 8c 71 00 00       	call   c42a <sprintf>
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
    52c0:	68 c7 da 00 00       	push   $0xdac7
    52c5:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52cb:	50                   	push   %eax
    52cc:	e8 59 71 00 00       	call   c42a <sprintf>
    52d1:	83 c4 10             	add    $0x10,%esp
    52d4:	83 ec 08             	sub    $0x8,%esp
    52d7:	ff 75 f0             	pushl  -0x10(%ebp)
    52da:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    52e0:	50                   	push   %eax
    52e1:	e8 28 13 00 00       	call   660e <disp_color_str>
    52e6:	83 c4 10             	add    $0x10,%esp
    52e9:	83 ec 08             	sub    $0x8,%esp
    52ec:	ff 75 f0             	pushl  -0x10(%ebp)
    52ef:	68 93 da 00 00       	push   $0xda93
    52f4:	e8 15 13 00 00       	call   660e <disp_color_str>
    52f9:	83 c4 10             	add    $0x10,%esp
    52fc:	8b 45 08             	mov    0x8(%ebp),%eax
    52ff:	8b 40 74             	mov    0x74(%eax),%eax
    5302:	83 ec 04             	sub    $0x4,%esp
    5305:	50                   	push   %eax
    5306:	68 d3 da 00 00       	push   $0xdad3
    530b:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5311:	50                   	push   %eax
    5312:	e8 13 71 00 00       	call   c42a <sprintf>
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
    5339:	68 e4 da 00 00       	push   $0xdae4
    533e:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    5344:	50                   	push   %eax
    5345:	e8 e0 70 00 00       	call   c42a <sprintf>
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
    536f:	68 f8 da 00 00       	push   $0xdaf8
    5374:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    537a:	50                   	push   %eax
    537b:	e8 aa 70 00 00       	call   c42a <sprintf>
    5380:	83 c4 10             	add    $0x10,%esp
    5383:	83 ec 08             	sub    $0x8,%esp
    5386:	ff 75 f0             	pushl  -0x10(%ebp)
    5389:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    538f:	50                   	push   %eax
    5390:	e8 79 12 00 00       	call   660e <disp_color_str>
    5395:	83 c4 10             	add    $0x10,%esp
    5398:	83 ec 08             	sub    $0x8,%esp
    539b:	ff 75 f0             	pushl  -0x10(%ebp)
    539e:	68 93 da 00 00       	push   $0xda93
    53a3:	e8 66 12 00 00       	call   660e <disp_color_str>
    53a8:	83 c4 10             	add    $0x10,%esp
    53ab:	8b 45 08             	mov    0x8(%ebp),%eax
    53ae:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
    53b4:	83 ec 04             	sub    $0x4,%esp
    53b7:	50                   	push   %eax
    53b8:	68 0a db 00 00       	push   $0xdb0a
    53bd:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    53c3:	50                   	push   %eax
    53c4:	e8 61 70 00 00       	call   c42a <sprintf>
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
    53fa:	c7 45 d4 1f db 00 00 	movl   $0xdb1f,-0x2c(%ebp)
    5401:	eb 07                	jmp    540a <dump_msg+0x26>
    5403:	c7 45 d4 93 da 00 00 	movl   $0xda93,-0x2c(%ebp)
    540a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    540e:	74 09                	je     5419 <dump_msg+0x35>
    5410:	c7 45 d0 1f db 00 00 	movl   $0xdb1f,-0x30(%ebp)
    5417:	eb 07                	jmp    5420 <dump_msg+0x3c>
    5419:	c7 45 d0 93 da 00 00 	movl   $0xda93,-0x30(%ebp)
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
    5459:	c7 45 cc 20 db 00 00 	movl   $0xdb20,-0x34(%ebp)
    5460:	eb 07                	jmp    5469 <dump_msg+0x85>
    5462:	c7 45 cc 22 db 00 00 	movl   $0xdb22,-0x34(%ebp)
    5469:	8b 45 0c             	mov    0xc(%ebp),%eax
    546c:	8b 70 04             	mov    0x4(%eax),%esi
    546f:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    5473:	74 09                	je     547e <dump_msg+0x9a>
    5475:	c7 45 c8 20 db 00 00 	movl   $0xdb20,-0x38(%ebp)
    547c:	eb 07                	jmp    5485 <dump_msg+0xa1>
    547e:	c7 45 c8 22 db 00 00 	movl   $0xdb22,-0x38(%ebp)
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
    54a6:	b9 1f db 00 00       	mov    $0xdb1f,%ecx
    54ab:	eb 05                	jmp    54b2 <dump_msg+0xce>
    54ad:	b9 22 db 00 00       	mov    $0xdb22,%ecx
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
    54dc:	68 2c db 00 00       	push   $0xdb2c
    54e1:	e8 1f 6c 00 00       	call   c105 <printl>
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
    5504:	e8 bf 6f 00 00       	call   c4c8 <send_recv>
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
    553c:	e8 87 6f 00 00       	call   c4c8 <send_recv>
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
    5562:	e8 61 6f 00 00       	call   c4c8 <send_recv>
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
    55ae:	e8 9d 6e 00 00       	call   c450 <memcpy>
    55b3:	83 c4 10             	add    $0x10,%esp
    55b6:	83 ec 04             	sub    $0x4,%esp
    55b9:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    55bc:	50                   	push   %eax
    55bd:	ff 75 f4             	pushl  -0xc(%ebp)
    55c0:	6a 01                	push   $0x1
    55c2:	e8 01 6f 00 00       	call   c4c8 <send_recv>
    55c7:	83 c4 10             	add    $0x10,%esp
    55ca:	eb 11                	jmp    55dd <task_sys+0xeb>
    55cc:	83 ec 0c             	sub    $0xc,%esp
    55cf:	68 7a db 00 00       	push   $0xdb7a
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
    57c4:	e8 ff 6c 00 00       	call   c4c8 <send_recv>
    57c9:	83 c4 10             	add    $0x10,%esp
    57cc:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    57cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    57d2:	8b 45 c8             	mov    -0x38(%ebp),%eax
    57d5:	2d e9 03 00 00       	sub    $0x3e9,%eax
    57da:	83 f8 04             	cmp    $0x4,%eax
    57dd:	77 4d                	ja     582c <task_hd+0x7e>
    57df:	8b 04 85 c8 db 00 00 	mov    0xdbc8(,%eax,4),%eax
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
    5833:	68 8c db 00 00       	push   $0xdb8c
    5838:	e8 a7 fb ff ff       	call   53e4 <dump_msg>
    583d:	83 c4 10             	add    $0x10,%esp
    5840:	83 ec 0c             	sub    $0xc,%esp
    5843:	68 a4 db 00 00       	push   $0xdba4
    5848:	e8 75 6e 00 00       	call   c6c2 <spin>
    584d:	83 c4 10             	add    $0x10,%esp
    5850:	90                   	nop
    5851:	83 ec 04             	sub    $0x4,%esp
    5854:	8d 45 c4             	lea    -0x3c(%ebp),%eax
    5857:	50                   	push   %eax
    5858:	ff 75 f4             	pushl  -0xc(%ebp)
    585b:	6a 01                	push   $0x1
    585d:	e8 66 6c 00 00       	call   c4c8 <send_recv>
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
    5884:	68 dc db 00 00       	push   $0xdbdc
    5889:	e8 77 68 00 00       	call   c105 <printl>
    588e:	83 c4 10             	add    $0x10,%esp
    5891:	8b 45 f0             	mov    -0x10(%ebp),%eax
    5894:	0f b6 00             	movzbl (%eax),%eax
    5897:	84 c0                	test   %al,%al
    5899:	75 19                	jne    58b4 <init_hd+0x4a>
    589b:	6a 6b                	push   $0x6b
    589d:	68 ef db 00 00       	push   $0xdbef
    58a2:	68 ef db 00 00       	push   $0xdbef
    58a7:	68 fb db 00 00       	push   $0xdbfb
    58ac:	e8 2c 6e 00 00       	call   c6dd <assertion_failure>
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
    5902:	e8 72 6b 00 00       	call   c479 <memset>
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
    5960:	68 83 00 00 00       	push   $0x83
    5965:	68 ef db 00 00       	push   $0xdbef
    596a:	68 ef db 00 00       	push   $0xdbef
    596f:	68 06 dc 00 00       	push   $0xdc06
    5974:	e8 64 6d 00 00       	call   c6dd <assertion_failure>
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
    5a26:	68 98 00 00 00       	push   $0x98
    5a2b:	68 ef db 00 00       	push   $0xdbef
    5a30:	68 ef db 00 00       	push   $0xdbef
    5a35:	68 06 dc 00 00       	push   $0xdc06
    5a3a:	e8 9e 6c 00 00       	call   c6dd <assertion_failure>
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
    5adf:	68 ab 00 00 00       	push   $0xab
    5ae4:	68 ef db 00 00       	push   $0xdbef
    5ae9:	68 ef db 00 00       	push   $0xdbef
    5aee:	68 14 dc 00 00       	push   $0xdc14
    5af3:	e8 e5 6b 00 00       	call   c6dd <assertion_failure>
    5af8:	83 c4 10             	add    $0x10,%esp
    5afb:	8b 45 d0             	mov    -0x30(%ebp),%eax
    5afe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    5b01:	25 ff 01 00 00       	and    $0x1ff,%eax
    5b06:	ba 00 00 00 00       	mov    $0x0,%edx
    5b0b:	09 d0                	or     %edx,%eax
    5b0d:	85 c0                	test   %eax,%eax
    5b0f:	74 1c                	je     5b2d <hd_rdwt+0xc5>
    5b11:	68 b0 00 00 00       	push   $0xb0
    5b16:	68 ef db 00 00       	push   $0xdbef
    5b1b:	68 ef db 00 00       	push   $0xdbef
    5b20:	68 3b dc 00 00       	push   $0xdc3b
    5b25:	e8 b3 6b 00 00       	call   c6dd <assertion_failure>
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
    5ca5:	e8 a6 67 00 00       	call   c450 <memcpy>
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
    5cca:	68 4e dc 00 00       	push   $0xdc4e
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
    5df0:	e8 5b 66 00 00       	call   c450 <memcpy>
    5df5:	83 c4 10             	add    $0x10,%esp
    5df8:	eb 1c                	jmp    5e16 <hd_ioctl+0x103>
    5dfa:	68 f3 00 00 00       	push   $0xf3
    5dff:	68 ef db 00 00       	push   $0xdbef
    5e04:	68 ef db 00 00       	push   $0xdbef
    5e09:	68 60 dc 00 00       	push   $0xdc60
    5e0e:	e8 ca 68 00 00       	call   c6dd <assertion_failure>
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
    5e9b:	e8 b0 65 00 00       	call   c450 <memcpy>
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
    5fcc:	68 38 01 00 00       	push   $0x138
    5fd1:	68 ef db 00 00       	push   $0xdbef
    5fd6:	68 ef db 00 00       	push   $0xdbef
    5fdb:	68 62 dc 00 00       	push   $0xdc62
    5fe0:	e8 f8 66 00 00       	call   c6dd <assertion_failure>
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
    60b6:	68 51 01 00 00       	push   $0x151
    60bb:	68 ef db 00 00       	push   $0xdbef
    60c0:	68 ef db 00 00       	push   $0xdbef
    60c5:	68 60 dc 00 00       	push   $0xdc60
    60ca:	e8 0e 66 00 00       	call   c6dd <assertion_failure>
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
    6117:	be 75 dc 00 00       	mov    $0xdc75,%esi
    611c:	eb 05                	jmp    6123 <print_hdinfo+0x4b>
    611e:	be 77 dc 00 00       	mov    $0xdc77,%esi
    6123:	83 ec 04             	sub    $0x4,%esp
    6126:	53                   	push   %ebx
    6127:	51                   	push   %ecx
    6128:	52                   	push   %edx
    6129:	50                   	push   %eax
    612a:	ff 75 f4             	pushl  -0xc(%ebp)
    612d:	56                   	push   %esi
    612e:	68 80 dc 00 00       	push   $0xdc80
    6133:	e8 cd 5f 00 00       	call   c105 <printl>
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
    619d:	68 bc dc 00 00       	push   $0xdcbc
    61a2:	e8 5e 5f 00 00       	call   c105 <printl>
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
    6276:	c7 45 90 f8 dc 00 00 	movl   $0xdcf8,-0x70(%ebp)
    627d:	c7 45 94 1b 00 00 00 	movl   $0x1b,-0x6c(%ebp)
    6284:	c7 45 98 28 00 00 00 	movl   $0x28,-0x68(%ebp)
    628b:	c7 45 9c fe dc 00 00 	movl   $0xdcfe,-0x64(%ebp)
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
    6345:	68 07 dd 00 00       	push   $0xdd07
    634a:	e8 b6 5d 00 00       	call   c105 <printl>
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
    637d:	b8 14 dd 00 00       	mov    $0xdd14,%eax
    6382:	eb 05                	jmp    6389 <print_identify_info+0x127>
    6384:	b8 18 dd 00 00       	mov    $0xdd18,%eax
    6389:	83 ec 08             	sub    $0x8,%esp
    638c:	50                   	push   %eax
    638d:	68 1b dd 00 00       	push   $0xdd1b
    6392:	e8 6e 5d 00 00       	call   c105 <printl>
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
    63b7:	b8 14 dd 00 00       	mov    $0xdd14,%eax
    63bc:	eb 05                	jmp    63c3 <print_identify_info+0x161>
    63be:	b8 18 dd 00 00       	mov    $0xdd18,%eax
    63c3:	83 ec 08             	sub    $0x8,%esp
    63c6:	50                   	push   %eax
    63c7:	68 33 dd 00 00       	push   $0xdd33
    63cc:	e8 34 5d 00 00       	call   c105 <printl>
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
    6417:	68 4d dd 00 00       	push   $0xdd4d
    641c:	e8 e4 5c 00 00       	call   c105 <printl>
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
    644b:	68 61 dd 00 00       	push   $0xdd61
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
    653a:	e8 89 5f 00 00       	call   c4c8 <send_recv>
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
    6785:	68 6c dd 00 00       	push   $0xdd6c
    678a:	68 6c dd 00 00       	push   $0xdd6c
    678f:	68 7a dd 00 00       	push   $0xdd7a
    6794:	e8 44 5f 00 00       	call   c6dd <assertion_failure>
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
    67c2:	68 98 dd 00 00       	push   $0xdd98
    67c7:	50                   	push   %eax
    67c8:	e8 b5 5d 00 00       	call   c582 <memcmp>
    67cd:	83 c4 10             	add    $0x10,%esp
    67d0:	85 c0                	test   %eax,%eax
    67d2:	74 19                	je     67ed <get_boot_params+0x83>
    67d4:	6a 34                	push   $0x34
    67d6:	68 6c dd 00 00       	push   $0xdd6c
    67db:	68 6c dd 00 00       	push   $0xdd6c
    67e0:	68 a0 dd 00 00       	push   $0xdda0
    67e5:	e8 f3 5e 00 00       	call   c6dd <assertion_failure>
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
    6813:	68 98 dd 00 00       	push   $0xdd98
    6818:	50                   	push   %eax
    6819:	e8 64 5d 00 00       	call   c582 <memcmp>
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
    68ce:	68 6c dd 00 00       	push   $0xdd6c
    68d3:	68 6c dd 00 00       	push   $0xdd6c
    68d8:	68 cf dd 00 00       	push   $0xddcf
    68dd:	e8 fb 5d 00 00       	call   c6dd <assertion_failure>
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
    6a39:	e8 6f 57 00 00       	call   c1ad <vsprintf>
    6a3e:	83 c4 10             	add    $0x10,%esp
    6a41:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6a44:	83 ec 0c             	sub    $0xc,%esp
    6a47:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6a4d:	50                   	push   %eax
    6a4e:	e8 5f 5a 00 00       	call   c4b2 <strlen>
    6a53:	83 c4 10             	add    $0x10,%esp
    6a56:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    6a59:	74 19                	je     6a74 <syslog+0x5b>
    6a5b:	6a 2b                	push   $0x2b
    6a5d:	68 d6 dd 00 00       	push   $0xddd6
    6a62:	68 d6 dd 00 00       	push   $0xddd6
    6a67:	68 e3 dd 00 00       	push   $0xdde3
    6a6c:	e8 6c 5c 00 00       	call   c6dd <assertion_failure>
    6a71:	83 c4 10             	add    $0x10,%esp
    6a74:	83 ec 0c             	sub    $0xc,%esp
    6a77:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    6a7d:	50                   	push   %eax
    6a7e:	e8 6e 36 00 00       	call   a0f1 <disklog>
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
    6a9f:	e8 24 5a 00 00       	call   c4c8 <send_recv>
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
    6af5:	e8 94 04 00 00       	call   6f8e <do_exit>
    6afa:	83 c4 10             	add    $0x10,%esp
    6afd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6b04:	eb 49                	jmp    6b4f <task_mm+0xc7>
    6b06:	e8 00 07 00 00       	call   720b <do_exec>
    6b0b:	a3 c8 99 03 00       	mov    %eax,0x399c8
    6b10:	eb 3d                	jmp    6b4f <task_mm+0xc7>
    6b12:	e8 3e 06 00 00       	call   7155 <do_wait>
    6b17:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    6b1e:	eb 2f                	jmp    6b4f <task_mm+0xc7>
    6b20:	83 ec 08             	sub    $0x8,%esp
    6b23:	68 c0 99 03 00       	push   $0x399c0
    6b28:	68 f4 dd 00 00       	push   $0xddf4
    6b2d:	e8 b2 e8 ff ff       	call   53e4 <dump_msg>
    6b32:	83 c4 10             	add    $0x10,%esp
    6b35:	6a 3f                	push   $0x3f
    6b37:	68 04 de 00 00       	push   $0xde04
    6b3c:	68 04 de 00 00       	push   $0xde04
    6b41:	68 0e de 00 00       	push   $0xde0e
    6b46:	e8 92 5b 00 00       	call   c6dd <assertion_failure>
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
    6b70:	e8 53 59 00 00       	call   c4c8 <send_recv>
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
    6bb1:	68 10 de 00 00       	push   $0xde10
    6bb6:	e8 4a 55 00 00       	call   c105 <printl>
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
    6bcf:	68 04 de 00 00       	push   $0xde04
    6bd4:	68 04 de 00 00       	push   $0xde04
    6bd9:	68 24 de 00 00       	push   $0xde24
    6bde:	e8 fa 5a 00 00       	call   c6dd <assertion_failure>
    6be3:	83 c4 10             	add    $0x10,%esp
    6be6:	81 7d 0c 00 00 10 00 	cmpl   $0x100000,0xc(%ebp)
    6bed:	7e 18                	jle    6c07 <alloc_mem+0x46>
    6bef:	83 ec 04             	sub    $0x4,%esp
    6bf2:	68 00 00 10 00       	push   $0x100000
    6bf7:	ff 75 0c             	pushl  0xc(%ebp)
    6bfa:	68 48 de 00 00       	push   $0xde48
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
    6c2a:	68 84 de 00 00       	push   $0xde84
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
    6c9c:	68 a8 de 00 00       	push   $0xdea8
    6ca1:	68 a8 de 00 00       	push   $0xdea8
    6ca6:	68 b6 de 00 00       	push   $0xdeb6
    6cab:	e8 2d 5a 00 00       	call   c6dd <assertion_failure>
    6cb0:	83 c4 10             	add    $0x10,%esp
    6cb3:	83 7d dc 08          	cmpl   $0x8,-0x24(%ebp)
    6cb7:	7f 19                	jg     6cd2 <do_fork+0x8c>
    6cb9:	6a 33                	push   $0x33
    6cbb:	68 a8 de 00 00       	push   $0xdea8
    6cc0:	68 a8 de 00 00       	push   $0xdea8
    6cc5:	68 d4 de 00 00       	push   $0xded4
    6cca:	e8 0e 5a 00 00       	call   c6dd <assertion_failure>
    6ccf:	83 c4 10             	add    $0x10,%esp
    6cd2:	83 7d e0 25          	cmpl   $0x25,-0x20(%ebp)
    6cd6:	75 0a                	jne    6ce2 <do_fork+0x9c>
    6cd8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    6cdd:	e9 a4 02 00 00       	jmp    6f86 <do_fork+0x340>
    6ce2:	83 7d e0 24          	cmpl   $0x24,-0x20(%ebp)
    6ce6:	7e 19                	jle    6d01 <do_fork+0xbb>
    6ce8:	6a 3c                	push   $0x3c
    6cea:	68 a8 de 00 00       	push   $0xdea8
    6cef:	68 a8 de 00 00       	push   $0xdea8
    6cf4:	68 fc de 00 00       	push   $0xdefc
    6cf9:	e8 df 59 00 00       	call   c6dd <assertion_failure>
    6cfe:	83 c4 10             	add    $0x10,%esp
    6d01:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6d06:	89 45 d8             	mov    %eax,-0x28(%ebp)
    6d09:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d0c:	0f b7 40 48          	movzwl 0x48(%eax),%eax
    6d10:	66 89 45 d6          	mov    %ax,-0x2a(%ebp)
    6d14:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d17:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6d1a:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    6d20:	8d 8a a0 a4 03 00    	lea    0x3a4a0(%edx),%ecx
    6d26:	89 c2                	mov    %eax,%edx
    6d28:	89 cb                	mov    %ecx,%ebx
    6d2a:	b8 66 00 00 00       	mov    $0x66,%eax
    6d2f:	89 d7                	mov    %edx,%edi
    6d31:	89 de                	mov    %ebx,%esi
    6d33:	89 c1                	mov    %eax,%ecx
    6d35:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    6d37:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d3a:	0f b7 55 d6          	movzwl -0x2a(%ebp),%edx
    6d3e:	66 89 50 48          	mov    %dx,0x48(%eax)
    6d42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d45:	8b 55 d8             	mov    -0x28(%ebp),%edx
    6d48:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
    6d4e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6d51:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d57:	83 c0 60             	add    $0x60,%eax
    6d5a:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6d5f:	8d 50 04             	lea    0x4(%eax),%edx
    6d62:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    6d65:	83 c0 64             	add    $0x64,%eax
    6d68:	ff 75 dc             	pushl  -0x24(%ebp)
    6d6b:	52                   	push   %edx
    6d6c:	68 14 df 00 00       	push   $0xdf14
    6d71:	50                   	push   %eax
    6d72:	e8 b3 56 00 00       	call   c42a <sprintf>
    6d77:	83 c4 10             	add    $0x10,%esp
    6d7a:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6d7d:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6d83:	83 c0 40             	add    $0x40,%eax
    6d86:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6d8b:	83 c0 0a             	add    $0xa,%eax
    6d8e:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6d91:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6d94:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6d98:	0f b6 c0             	movzbl %al,%eax
    6d9b:	c1 e0 18             	shl    $0x18,%eax
    6d9e:	89 c2                	mov    %eax,%edx
    6da0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6da3:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6da7:	0f b6 c0             	movzbl %al,%eax
    6daa:	c1 e0 10             	shl    $0x10,%eax
    6dad:	01 c2                	add    %eax,%edx
    6daf:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6db2:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6db6:	0f b7 c0             	movzwl %ax,%eax
    6db9:	01 d0                	add    %edx,%eax
    6dbb:	89 45 cc             	mov    %eax,-0x34(%ebp)
    6dbe:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6dc1:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6dc5:	0f b6 c0             	movzbl %al,%eax
    6dc8:	c1 e0 10             	shl    $0x10,%eax
    6dcb:	25 00 00 0f 00       	and    $0xf0000,%eax
    6dd0:	89 c2                	mov    %eax,%edx
    6dd2:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6dd5:	0f b7 00             	movzwl (%eax),%eax
    6dd8:	0f b7 c0             	movzwl %ax,%eax
    6ddb:	01 d0                	add    %edx,%eax
    6ddd:	89 45 c8             	mov    %eax,-0x38(%ebp)
    6de0:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6de3:	8d 50 01             	lea    0x1(%eax),%edx
    6de6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6de9:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6ded:	84 c0                	test   %al,%al
    6def:	79 07                	jns    6df8 <do_fork+0x1b2>
    6df1:	b8 00 10 00 00       	mov    $0x1000,%eax
    6df6:	eb 05                	jmp    6dfd <do_fork+0x1b7>
    6df8:	b8 01 00 00 00       	mov    $0x1,%eax
    6dfd:	0f af c2             	imul   %edx,%eax
    6e00:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6e03:	8b 45 d8             	mov    -0x28(%ebp),%eax
    6e06:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6e0c:	83 c0 48             	add    $0x48,%eax
    6e0f:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6e14:	83 c0 0a             	add    $0xa,%eax
    6e17:	89 45 d0             	mov    %eax,-0x30(%ebp)
    6e1a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e1d:	0f b6 40 07          	movzbl 0x7(%eax),%eax
    6e21:	0f b6 c0             	movzbl %al,%eax
    6e24:	c1 e0 18             	shl    $0x18,%eax
    6e27:	89 c2                	mov    %eax,%edx
    6e29:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e2c:	0f b6 40 04          	movzbl 0x4(%eax),%eax
    6e30:	0f b6 c0             	movzbl %al,%eax
    6e33:	c1 e0 10             	shl    $0x10,%eax
    6e36:	01 c2                	add    %eax,%edx
    6e38:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e3b:	0f b7 40 02          	movzwl 0x2(%eax),%eax
    6e3f:	0f b7 c0             	movzwl %ax,%eax
    6e42:	01 d0                	add    %edx,%eax
    6e44:	89 45 c0             	mov    %eax,-0x40(%ebp)
    6e47:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e4a:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6e4e:	0f b6 c0             	movzbl %al,%eax
    6e51:	c1 e0 10             	shl    $0x10,%eax
    6e54:	25 00 00 0f 00       	and    $0xf0000,%eax
    6e59:	89 c2                	mov    %eax,%edx
    6e5b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e5e:	0f b7 00             	movzwl (%eax),%eax
    6e61:	0f b7 c0             	movzwl %ax,%eax
    6e64:	01 d0                	add    %edx,%eax
    6e66:	89 45 bc             	mov    %eax,-0x44(%ebp)
    6e69:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e6c:	8d 50 01             	lea    0x1(%eax),%edx
    6e6f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    6e72:	0f b6 40 06          	movzbl 0x6(%eax),%eax
    6e76:	84 c0                	test   %al,%al
    6e78:	79 07                	jns    6e81 <do_fork+0x23b>
    6e7a:	b8 00 10 00 00       	mov    $0x1000,%eax
    6e7f:	eb 05                	jmp    6e86 <do_fork+0x240>
    6e81:	b8 01 00 00 00       	mov    $0x1,%eax
    6e86:	0f af c2             	imul   %edx,%eax
    6e89:	89 45 b8             	mov    %eax,-0x48(%ebp)
    6e8c:	8b 45 cc             	mov    -0x34(%ebp),%eax
    6e8f:	3b 45 c0             	cmp    -0x40(%ebp),%eax
    6e92:	75 10                	jne    6ea4 <do_fork+0x25e>
    6e94:	8b 45 c8             	mov    -0x38(%ebp),%eax
    6e97:	3b 45 bc             	cmp    -0x44(%ebp),%eax
    6e9a:	75 08                	jne    6ea4 <do_fork+0x25e>
    6e9c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    6e9f:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    6ea2:	74 1c                	je     6ec0 <do_fork+0x27a>
    6ea4:	68 85 00 00 00       	push   $0x85
    6ea9:	68 a8 de 00 00       	push   $0xdea8
    6eae:	68 a8 de 00 00       	push   $0xdea8
    6eb3:	68 1c df 00 00       	push   $0xdf1c
    6eb8:	e8 20 58 00 00       	call   c6dd <assertion_failure>
    6ebd:	83 c4 10             	add    $0x10,%esp
    6ec0:	83 ec 08             	sub    $0x8,%esp
    6ec3:	ff 75 c4             	pushl  -0x3c(%ebp)
    6ec6:	ff 75 dc             	pushl  -0x24(%ebp)
    6ec9:	e8 f3 fc ff ff       	call   6bc1 <alloc_mem>
    6ece:	83 c4 10             	add    $0x10,%esp
    6ed1:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    6ed4:	8b 55 cc             	mov    -0x34(%ebp),%edx
    6ed7:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6eda:	83 ec 04             	sub    $0x4,%esp
    6edd:	ff 75 c4             	pushl  -0x3c(%ebp)
    6ee0:	52                   	push   %edx
    6ee1:	50                   	push   %eax
    6ee2:	e8 69 55 00 00       	call   c450 <memcpy>
    6ee7:	83 c4 10             	add    $0x10,%esp
    6eea:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6eed:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6ef0:	83 c2 4a             	add    $0x4a,%edx
    6ef3:	68 f8 c0 00 00       	push   $0xc0f8
    6ef8:	68 ff 00 00 00       	push   $0xff
    6efd:	50                   	push   %eax
    6efe:	52                   	push   %edx
    6eff:	e8 67 ce ff ff       	call   3d6b <init_desc>
    6f04:	83 c4 10             	add    $0x10,%esp
    6f07:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    6f0a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    6f0d:	83 c2 52             	add    $0x52,%edx
    6f10:	68 f2 c0 00 00       	push   $0xc0f2
    6f15:	68 ff 00 00 00       	push   $0xff
    6f1a:	50                   	push   %eax
    6f1b:	52                   	push   %edx
    6f1c:	e8 4a ce ff ff       	call   3d6b <init_desc>
    6f21:	83 c4 10             	add    $0x10,%esp
    6f24:	c7 45 88 10 00 00 00 	movl   $0x10,-0x78(%ebp)
    6f2b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6f2e:	89 45 90             	mov    %eax,-0x70(%ebp)
    6f31:	83 ec 04             	sub    $0x4,%esp
    6f34:	8d 45 84             	lea    -0x7c(%ebp),%eax
    6f37:	50                   	push   %eax
    6f38:	6a 03                	push   $0x3
    6f3a:	6a 03                	push   $0x3
    6f3c:	e8 87 55 00 00       	call   c4c8 <send_recv>
    6f41:	83 c4 10             	add    $0x10,%esp
    6f44:	8b 45 dc             	mov    -0x24(%ebp),%eax
    6f47:	a3 cc 99 03 00       	mov    %eax,0x399cc
    6f4c:	c7 85 58 ff ff ff 12 	movl   $0x12,-0xa8(%ebp)
    6f53:	00 00 00 
    6f56:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
    6f5d:	00 00 00 
    6f60:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
    6f67:	00 00 00 
    6f6a:	83 ec 04             	sub    $0x4,%esp
    6f6d:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    6f73:	50                   	push   %eax
    6f74:	ff 75 dc             	pushl  -0x24(%ebp)
    6f77:	6a 01                	push   $0x1
    6f79:	e8 4a 55 00 00       	call   c4c8 <send_recv>
    6f7e:	83 c4 10             	add    $0x10,%esp
    6f81:	b8 00 00 00 00       	mov    $0x0,%eax
    6f86:	8d 65 f4             	lea    -0xc(%ebp),%esp
    6f89:	5b                   	pop    %ebx
    6f8a:	5e                   	pop    %esi
    6f8b:	5f                   	pop    %edi
    6f8c:	5d                   	pop    %ebp
    6f8d:	c3                   	ret    

00006f8e <do_exit>:
    6f8e:	55                   	push   %ebp
    6f8f:	89 e5                	mov    %esp,%ebp
    6f91:	83 ec 48             	sub    $0x48,%esp
    6f94:	a1 c0 99 03 00       	mov    0x399c0,%eax
    6f99:	89 45 f0             	mov    %eax,-0x10(%ebp)
    6f9c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6f9f:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6fa5:	05 30 a5 03 00       	add    $0x3a530,%eax
    6faa:	8b 00                	mov    (%eax),%eax
    6fac:	89 45 ec             	mov    %eax,-0x14(%ebp)
    6faf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fb2:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    6fb8:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    6fbd:	89 45 e8             	mov    %eax,-0x18(%ebp)
    6fc0:	c7 45 bc 11 00 00 00 	movl   $0x11,-0x44(%ebp)
    6fc7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    6fca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    6fcd:	83 ec 04             	sub    $0x4,%esp
    6fd0:	8d 45 b8             	lea    -0x48(%ebp),%eax
    6fd3:	50                   	push   %eax
    6fd4:	6a 03                	push   $0x3
    6fd6:	6a 03                	push   $0x3
    6fd8:	e8 eb 54 00 00       	call   c4c8 <send_recv>
    6fdd:	83 c4 10             	add    $0x10,%esp
    6fe0:	83 ec 0c             	sub    $0xc,%esp
    6fe3:	ff 75 f0             	pushl  -0x10(%ebp)
    6fe6:	e8 51 fc ff ff       	call   6c3c <free_mem>
    6feb:	83 c4 10             	add    $0x10,%esp
    6fee:	8b 45 e8             	mov    -0x18(%ebp),%eax
    6ff1:	8b 55 08             	mov    0x8(%ebp),%edx
    6ff4:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
    6ffa:	8b 45 ec             	mov    -0x14(%ebp),%eax
    6ffd:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7003:	05 14 a5 03 00       	add    $0x3a514,%eax
    7008:	8b 00                	mov    (%eax),%eax
    700a:	83 e0 08             	and    $0x8,%eax
    700d:	85 c0                	test   %eax,%eax
    700f:	74 41                	je     7052 <do_exit+0xc4>
    7011:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7014:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    701a:	05 14 a5 03 00       	add    $0x3a514,%eax
    701f:	8b 00                	mov    (%eax),%eax
    7021:	83 e0 f7             	and    $0xfffffff7,%eax
    7024:	89 c2                	mov    %eax,%edx
    7026:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7029:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    702f:	05 14 a5 03 00       	add    $0x3a514,%eax
    7034:	89 10                	mov    %edx,(%eax)
    7036:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7039:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    703f:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    7044:	83 ec 0c             	sub    $0xc,%esp
    7047:	50                   	push   %eax
    7048:	e8 b3 00 00 00       	call   7100 <cleanup>
    704d:	83 c4 10             	add    $0x10,%esp
    7050:	eb 25                	jmp    7077 <do_exit+0xe9>
    7052:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7055:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    705b:	05 14 a5 03 00       	add    $0x3a514,%eax
    7060:	8b 00                	mov    (%eax),%eax
    7062:	83 c8 10             	or     $0x10,%eax
    7065:	89 c2                	mov    %eax,%edx
    7067:	8b 45 f0             	mov    -0x10(%ebp),%eax
    706a:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7070:	05 14 a5 03 00       	add    $0x3a514,%eax
    7075:	89 10                	mov    %edx,(%eax)
    7077:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    707e:	eb 77                	jmp    70f7 <do_exit+0x169>
    7080:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7083:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7089:	05 30 a5 03 00       	add    $0x3a530,%eax
    708e:	8b 00                	mov    (%eax),%eax
    7090:	39 45 f0             	cmp    %eax,-0x10(%ebp)
    7093:	75 5e                	jne    70f3 <do_exit+0x165>
    7095:	8b 45 f4             	mov    -0xc(%ebp),%eax
    7098:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    709e:	05 30 a5 03 00       	add    $0x3a530,%eax
    70a3:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    70a9:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    70ae:	83 e0 08             	and    $0x8,%eax
    70b1:	85 c0                	test   %eax,%eax
    70b3:	74 3e                	je     70f3 <do_exit+0x165>
    70b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    70b8:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    70be:	05 14 a5 03 00       	add    $0x3a514,%eax
    70c3:	8b 00                	mov    (%eax),%eax
    70c5:	83 e0 10             	and    $0x10,%eax
    70c8:	85 c0                	test   %eax,%eax
    70ca:	74 27                	je     70f3 <do_exit+0x165>
    70cc:	a1 0c ad 03 00       	mov    0x3ad0c,%eax
    70d1:	83 e0 f7             	and    $0xfffffff7,%eax
    70d4:	a3 0c ad 03 00       	mov    %eax,0x3ad0c
    70d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    70dc:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    70e2:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    70e7:	83 ec 0c             	sub    $0xc,%esp
    70ea:	50                   	push   %eax
    70eb:	e8 10 00 00 00       	call   7100 <cleanup>
    70f0:	83 c4 10             	add    $0x10,%esp
    70f3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    70f7:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    70fb:	7e 83                	jle    7080 <do_exit+0xf2>
    70fd:	90                   	nop
    70fe:	c9                   	leave  
    70ff:	c3                   	ret    

00007100 <cleanup>:
    7100:	55                   	push   %ebp
    7101:	89 e5                	mov    %esp,%ebp
    7103:	83 ec 38             	sub    $0x38,%esp
    7106:	c7 45 cc 12 00 00 00 	movl   $0x12,-0x34(%ebp)
    710d:	8b 45 08             	mov    0x8(%ebp),%eax
    7110:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    7115:	c1 f8 03             	sar    $0x3,%eax
    7118:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    711e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7121:	8b 45 08             	mov    0x8(%ebp),%eax
    7124:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
    712a:	89 45 d0             	mov    %eax,-0x30(%ebp)
    712d:	8b 45 08             	mov    0x8(%ebp),%eax
    7130:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    7136:	83 ec 04             	sub    $0x4,%esp
    7139:	8d 55 c8             	lea    -0x38(%ebp),%edx
    713c:	52                   	push   %edx
    713d:	50                   	push   %eax
    713e:	6a 01                	push   $0x1
    7140:	e8 83 53 00 00       	call   c4c8 <send_recv>
    7145:	83 c4 10             	add    $0x10,%esp
    7148:	8b 45 08             	mov    0x8(%ebp),%eax
    714b:	c7 40 74 20 00 00 00 	movl   $0x20,0x74(%eax)
    7152:	90                   	nop
    7153:	c9                   	leave  
    7154:	c3                   	ret    

00007155 <do_wait>:
    7155:	55                   	push   %ebp
    7156:	89 e5                	mov    %esp,%ebp
    7158:	83 ec 48             	sub    $0x48,%esp
    715b:	a1 c0 99 03 00       	mov    0x399c0,%eax
    7160:	89 45 e8             	mov    %eax,-0x18(%ebp)
    7163:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    716a:	c7 45 ec a0 a4 03 00 	movl   $0x3a4a0,-0x14(%ebp)
    7171:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7178:	eb 3a                	jmp    71b4 <do_wait+0x5f>
    717a:	8b 45 ec             	mov    -0x14(%ebp),%eax
    717d:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    7183:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    7186:	75 21                	jne    71a9 <do_wait+0x54>
    7188:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    718c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    718f:	8b 40 74             	mov    0x74(%eax),%eax
    7192:	83 e0 10             	and    $0x10,%eax
    7195:	85 c0                	test   %eax,%eax
    7197:	74 10                	je     71a9 <do_wait+0x54>
    7199:	83 ec 0c             	sub    $0xc,%esp
    719c:	ff 75 ec             	pushl  -0x14(%ebp)
    719f:	e8 5c ff ff ff       	call   7100 <cleanup>
    71a4:	83 c4 10             	add    $0x10,%esp
    71a7:	eb 60                	jmp    7209 <do_wait+0xb4>
    71a9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    71ad:	81 45 ec 98 01 00 00 	addl   $0x198,-0x14(%ebp)
    71b4:	83 7d f4 24          	cmpl   $0x24,-0xc(%ebp)
    71b8:	7e c0                	jle    717a <do_wait+0x25>
    71ba:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    71be:	74 27                	je     71e7 <do_wait+0x92>
    71c0:	8b 45 e8             	mov    -0x18(%ebp),%eax
    71c3:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    71c9:	05 14 a5 03 00       	add    $0x3a514,%eax
    71ce:	8b 00                	mov    (%eax),%eax
    71d0:	83 c8 08             	or     $0x8,%eax
    71d3:	89 c2                	mov    %eax,%edx
    71d5:	8b 45 e8             	mov    -0x18(%ebp),%eax
    71d8:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    71de:	05 14 a5 03 00       	add    $0x3a514,%eax
    71e3:	89 10                	mov    %edx,(%eax)
    71e5:	eb 22                	jmp    7209 <do_wait+0xb4>
    71e7:	c7 45 bc 12 00 00 00 	movl   $0x12,-0x44(%ebp)
    71ee:	c7 45 c4 39 00 00 00 	movl   $0x39,-0x3c(%ebp)
    71f5:	83 ec 04             	sub    $0x4,%esp
    71f8:	8d 45 b8             	lea    -0x48(%ebp),%eax
    71fb:	50                   	push   %eax
    71fc:	ff 75 e8             	pushl  -0x18(%ebp)
    71ff:	6a 01                	push   $0x1
    7201:	e8 c2 52 00 00       	call   c4c8 <send_recv>
    7206:	83 c4 10             	add    $0x10,%esp
    7209:	c9                   	leave  
    720a:	c3                   	ret    

0000720b <do_exec>:
    720b:	55                   	push   %ebp
    720c:	89 e5                	mov    %esp,%ebp
    720e:	56                   	push   %esi
    720f:	53                   	push   %ebx
    7210:	81 ec d0 04 00 00    	sub    $0x4d0,%esp
    7216:	a1 cc 99 03 00       	mov    0x399cc,%eax
    721b:	89 45 e8             	mov    %eax,-0x18(%ebp)
    721e:	a1 c0 99 03 00       	mov    0x399c0,%eax
    7223:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    7226:	83 7d e8 7f          	cmpl   $0x7f,-0x18(%ebp)
    722a:	7e 19                	jle    7245 <do_exec+0x3a>
    722c:	6a 26                	push   $0x26
    722e:	68 90 df 00 00       	push   $0xdf90
    7233:	68 90 df 00 00       	push   $0xdf90
    7238:	68 9a df 00 00       	push   $0xdf9a
    723d:	e8 9b 54 00 00       	call   c6dd <assertion_failure>
    7242:	83 c4 10             	add    $0x10,%esp
    7245:	a1 e8 99 03 00       	mov    0x399e8,%eax
    724a:	83 ec 08             	sub    $0x8,%esp
    724d:	50                   	push   %eax
    724e:	ff 75 e4             	pushl  -0x1c(%ebp)
    7251:	e8 b1 ce ff ff       	call   4107 <va2la>
    7256:	83 c4 10             	add    $0x10,%esp
    7259:	89 c3                	mov    %eax,%ebx
    725b:	83 ec 08             	sub    $0x8,%esp
    725e:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    7264:	50                   	push   %eax
    7265:	6a 04                	push   $0x4
    7267:	e8 9b ce ff ff       	call   4107 <va2la>
    726c:	83 c4 10             	add    $0x10,%esp
    726f:	83 ec 04             	sub    $0x4,%esp
    7272:	ff 75 e8             	pushl  -0x18(%ebp)
    7275:	53                   	push   %ebx
    7276:	50                   	push   %eax
    7277:	e8 d4 51 00 00       	call   c450 <memcpy>
    727c:	83 c4 10             	add    $0x10,%esp
    727f:	8d 95 40 ff ff ff    	lea    -0xc0(%ebp),%edx
    7285:	8b 45 e8             	mov    -0x18(%ebp),%eax
    7288:	01 d0                	add    %edx,%eax
    728a:	c6 00 00             	movb   $0x0,(%eax)
    728d:	83 ec 08             	sub    $0x8,%esp
    7290:	8d 85 2c ff ff ff    	lea    -0xd4(%ebp),%eax
    7296:	50                   	push   %eax
    7297:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    729d:	50                   	push   %eax
    729e:	e8 b5 55 00 00       	call   c858 <stat>
    72a3:	83 c4 10             	add    $0x10,%esp
    72a6:	89 45 e0             	mov    %eax,-0x20(%ebp)
    72a9:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
    72ad:	74 21                	je     72d0 <do_exec+0xc5>
    72af:	83 ec 08             	sub    $0x8,%esp
    72b2:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    72b8:	50                   	push   %eax
    72b9:	68 b0 df 00 00       	push   $0xdfb0
    72be:	e8 42 4e 00 00       	call   c105 <printl>
    72c3:	83 c4 10             	add    $0x10,%esp
    72c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    72cb:	e9 9e 02 00 00       	jmp    756e <do_exec+0x363>
    72d0:	83 ec 08             	sub    $0x8,%esp
    72d3:	6a 02                	push   $0x2
    72d5:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    72db:	50                   	push   %eax
    72dc:	e8 35 54 00 00       	call   c716 <open>
    72e1:	83 c4 10             	add    $0x10,%esp
    72e4:	89 45 dc             	mov    %eax,-0x24(%ebp)
    72e7:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
    72eb:	75 0a                	jne    72f7 <do_exec+0xec>
    72ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    72f2:	e9 77 02 00 00       	jmp    756e <do_exec+0x363>
    72f7:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
    72fd:	a1 fc cf 00 00       	mov    0xcffc,%eax
    7302:	39 c2                	cmp    %eax,%edx
    7304:	7c 19                	jl     731f <do_exec+0x114>
    7306:	6a 3a                	push   $0x3a
    7308:	68 90 df 00 00       	push   $0xdf90
    730d:	68 90 df 00 00       	push   $0xdf90
    7312:	68 dd df 00 00       	push   $0xdfdd
    7317:	e8 c1 53 00 00       	call   c6dd <assertion_failure>
    731c:	83 c4 10             	add    $0x10,%esp
    731f:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
    7325:	a1 08 28 01 00       	mov    0x12808,%eax
    732a:	83 ec 04             	sub    $0x4,%esp
    732d:	52                   	push   %edx
    732e:	50                   	push   %eax
    732f:	ff 75 dc             	pushl  -0x24(%ebp)
    7332:	e8 42 54 00 00       	call   c779 <read>
    7337:	83 c4 10             	add    $0x10,%esp
    733a:	83 ec 0c             	sub    $0xc,%esp
    733d:	ff 75 dc             	pushl  -0x24(%ebp)
    7340:	e8 a2 54 00 00       	call   c7e7 <close>
    7345:	83 c4 10             	add    $0x10,%esp
    7348:	a1 08 28 01 00       	mov    0x12808,%eax
    734d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    7350:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7357:	e9 a6 00 00 00       	jmp    7402 <do_exec+0x1f7>
    735c:	8b 15 08 28 01 00    	mov    0x12808,%edx
    7362:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7365:	8b 48 1c             	mov    0x1c(%eax),%ecx
    7368:	8b 45 d8             	mov    -0x28(%ebp),%eax
    736b:	0f b7 40 2a          	movzwl 0x2a(%eax),%eax
    736f:	0f b7 c0             	movzwl %ax,%eax
    7372:	0f af 45 f4          	imul   -0xc(%ebp),%eax
    7376:	01 c8                	add    %ecx,%eax
    7378:	01 d0                	add    %edx,%eax
    737a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    737d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7380:	8b 00                	mov    (%eax),%eax
    7382:	83 f8 01             	cmp    $0x1,%eax
    7385:	75 77                	jne    73fe <do_exec+0x1f3>
    7387:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    738a:	8b 50 08             	mov    0x8(%eax),%edx
    738d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7390:	8b 40 14             	mov    0x14(%eax),%eax
    7393:	01 d0                	add    %edx,%eax
    7395:	3d ff ff 0f 00       	cmp    $0xfffff,%eax
    739a:	76 19                	jbe    73b5 <do_exec+0x1aa>
    739c:	6a 47                	push   $0x47
    739e:	68 90 df 00 00       	push   $0xdf90
    73a3:	68 90 df 00 00       	push   $0xdf90
    73a8:	68 f4 df 00 00       	push   $0xdff4
    73ad:	e8 2b 53 00 00       	call   c6dd <assertion_failure>
    73b2:	83 c4 10             	add    $0x10,%esp
    73b5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73b8:	8b 40 10             	mov    0x10(%eax),%eax
    73bb:	89 c6                	mov    %eax,%esi
    73bd:	8b 15 08 28 01 00    	mov    0x12808,%edx
    73c3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73c6:	8b 40 04             	mov    0x4(%eax),%eax
    73c9:	01 d0                	add    %edx,%eax
    73cb:	83 ec 08             	sub    $0x8,%esp
    73ce:	50                   	push   %eax
    73cf:	6a 04                	push   $0x4
    73d1:	e8 31 cd ff ff       	call   4107 <va2la>
    73d6:	83 c4 10             	add    $0x10,%esp
    73d9:	89 c3                	mov    %eax,%ebx
    73db:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    73de:	8b 40 08             	mov    0x8(%eax),%eax
    73e1:	83 ec 08             	sub    $0x8,%esp
    73e4:	50                   	push   %eax
    73e5:	ff 75 e4             	pushl  -0x1c(%ebp)
    73e8:	e8 1a cd ff ff       	call   4107 <va2la>
    73ed:	83 c4 10             	add    $0x10,%esp
    73f0:	83 ec 04             	sub    $0x4,%esp
    73f3:	56                   	push   %esi
    73f4:	53                   	push   %ebx
    73f5:	50                   	push   %eax
    73f6:	e8 55 50 00 00       	call   c450 <memcpy>
    73fb:	83 c4 10             	add    $0x10,%esp
    73fe:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7402:	8b 45 d8             	mov    -0x28(%ebp),%eax
    7405:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    7409:	0f b7 c0             	movzwl %ax,%eax
    740c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
    740f:	0f 8c 47 ff ff ff    	jl     735c <do_exec+0x151>
    7415:	a1 d0 99 03 00       	mov    0x399d0,%eax
    741a:	89 45 d0             	mov    %eax,-0x30(%ebp)
    741d:	a1 ec 99 03 00       	mov    0x399ec,%eax
    7422:	83 ec 08             	sub    $0x8,%esp
    7425:	50                   	push   %eax
    7426:	ff 75 e4             	pushl  -0x1c(%ebp)
    7429:	e8 d9 cc ff ff       	call   4107 <va2la>
    742e:	83 c4 10             	add    $0x10,%esp
    7431:	89 c3                	mov    %eax,%ebx
    7433:	83 ec 08             	sub    $0x8,%esp
    7436:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    743c:	50                   	push   %eax
    743d:	6a 04                	push   $0x4
    743f:	e8 c3 cc ff ff       	call   4107 <va2la>
    7444:	83 c4 10             	add    $0x10,%esp
    7447:	83 ec 04             	sub    $0x4,%esp
    744a:	ff 75 d0             	pushl  -0x30(%ebp)
    744d:	53                   	push   %ebx
    744e:	50                   	push   %eax
    744f:	e8 fc 4f 00 00       	call   c450 <memcpy>
    7454:	83 c4 10             	add    $0x10,%esp
    7457:	c7 45 cc 00 fc 0f 00 	movl   $0xffc00,-0x34(%ebp)
    745e:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7461:	8b 15 ec 99 03 00    	mov    0x399ec,%edx
    7467:	29 d0                	sub    %edx,%eax
    7469:	89 45 c8             	mov    %eax,-0x38(%ebp)
    746c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    7473:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    747a:	83 7d c4 00          	cmpl   $0x0,-0x3c(%ebp)
    747e:	75 38                	jne    74b8 <do_exec+0x2ad>
    7480:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
    7484:	74 32                	je     74b8 <do_exec+0x2ad>
    7486:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    748c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    748f:	eb 17                	jmp    74a8 <do_exec+0x29d>
    7491:	8b 45 ec             	mov    -0x14(%ebp),%eax
    7494:	8b 10                	mov    (%eax),%edx
    7496:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7499:	01 c2                	add    %eax,%edx
    749b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    749e:	89 10                	mov    %edx,(%eax)
    74a0:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
    74a4:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    74a8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    74ab:	8b 00                	mov    (%eax),%eax
    74ad:	85 c0                	test   %eax,%eax
    74af:	75 e0                	jne    7491 <do_exec+0x286>
    74b1:	c7 45 c0 05 00 00 00 	movl   $0x5,-0x40(%ebp)
    74b8:	83 ec 08             	sub    $0x8,%esp
    74bb:	8d 85 2c fb ff ff    	lea    -0x4d4(%ebp),%eax
    74c1:	50                   	push   %eax
    74c2:	6a 04                	push   $0x4
    74c4:	e8 3e cc ff ff       	call   4107 <va2la>
    74c9:	83 c4 10             	add    $0x10,%esp
    74cc:	89 c3                	mov    %eax,%ebx
    74ce:	83 ec 08             	sub    $0x8,%esp
    74d1:	ff 75 cc             	pushl  -0x34(%ebp)
    74d4:	ff 75 e4             	pushl  -0x1c(%ebp)
    74d7:	e8 2b cc ff ff       	call   4107 <va2la>
    74dc:	83 c4 10             	add    $0x10,%esp
    74df:	83 ec 04             	sub    $0x4,%esp
    74e2:	ff 75 d0             	pushl  -0x30(%ebp)
    74e5:	53                   	push   %ebx
    74e6:	50                   	push   %eax
    74e7:	e8 64 4f 00 00       	call   c450 <memcpy>
    74ec:	83 c4 10             	add    $0x10,%esp
    74ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
    74f2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    74f5:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    74fb:	81 c2 c8 a4 03 00    	add    $0x3a4c8,%edx
    7501:	89 02                	mov    %eax,(%edx)
    7503:	8b 45 cc             	mov    -0x34(%ebp),%eax
    7506:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7509:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    750f:	81 c2 cc a4 03 00    	add    $0x3a4cc,%edx
    7515:	89 02                	mov    %eax,(%edx)
    7517:	8b 45 d8             	mov    -0x28(%ebp),%eax
    751a:	8b 40 18             	mov    0x18(%eax),%eax
    751d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7520:	69 d2 98 01 00 00    	imul   $0x198,%edx,%edx
    7526:	81 c2 d4 a4 03 00    	add    $0x3a4d4,%edx
    752c:	89 02                	mov    %eax,(%edx)
    752e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7531:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    7537:	05 e0 a4 03 00       	add    $0x3a4e0,%eax
    753c:	c7 00 00 fc 0f 00    	movl   $0xffc00,(%eax)
    7542:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7545:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    754b:	83 c0 60             	add    $0x60,%eax
    754e:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    7553:	8d 50 04             	lea    0x4(%eax),%edx
    7556:	83 ec 08             	sub    $0x8,%esp
    7559:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
    755f:	50                   	push   %eax
    7560:	52                   	push   %edx
    7561:	e8 34 4f 00 00       	call   c49a <strcpy>
    7566:	83 c4 10             	add    $0x10,%esp
    7569:	b8 00 00 00 00       	mov    $0x0,%eax
    756e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    7571:	5b                   	pop    %ebx
    7572:	5e                   	pop    %esi
    7573:	5d                   	pop    %ebp
    7574:	c3                   	ret    

00007575 <task_fs>:
    7575:	55                   	push   %ebp
    7576:	89 e5                	mov    %esp,%ebp
    7578:	81 ec 18 02 00 00    	sub    $0x218,%esp
    757e:	83 ec 0c             	sub    $0xc,%esp
    7581:	68 34 e0 00 00       	push   $0xe034
    7586:	e8 7a 4b 00 00       	call   c105 <printl>
    758b:	83 c4 10             	add    $0x10,%esp
    758e:	e8 99 01 00 00       	call   772c <init_fs>
    7593:	83 ec 04             	sub    $0x4,%esp
    7596:	68 60 95 03 00       	push   $0x39560
    759b:	6a 2f                	push   $0x2f
    759d:	6a 02                	push   $0x2
    759f:	e8 24 4f 00 00       	call   c4c8 <send_recv>
    75a4:	83 c4 10             	add    $0x10,%esp
    75a7:	a1 64 95 03 00       	mov    0x39564,%eax
    75ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
    75af:	a1 60 95 03 00       	mov    0x39560,%eax
    75b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    75b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    75ba:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    75c0:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    75c5:	a3 44 88 03 00       	mov    %eax,0x38844
    75ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
    75cd:	83 e8 05             	sub    $0x5,%eax
    75d0:	83 f8 0c             	cmp    $0xc,%eax
    75d3:	77 6a                	ja     763f <task_fs+0xca>
    75d5:	8b 04 85 ac e0 00 00 	mov    0xe0ac(,%eax,4),%eax
    75dc:	ff e0                	jmp    *%eax
    75de:	e8 18 10 00 00       	call   85fb <do_open>
    75e3:	a3 68 95 03 00       	mov    %eax,0x39568
    75e8:	e9 81 00 00 00       	jmp    766e <task_fs+0xf9>
    75ed:	e8 3f 14 00 00       	call   8a31 <do_close>
    75f2:	a3 68 95 03 00       	mov    %eax,0x39568
    75f7:	eb 75                	jmp    766e <task_fs+0xf9>
    75f9:	e8 4b 1e 00 00       	call   9449 <do_rdwt>
    75fe:	a3 6c 95 03 00       	mov    %eax,0x3956c
    7603:	eb 69                	jmp    766e <task_fs+0xf9>
    7605:	e8 d5 22 00 00       	call   98df <do_unlink>
    760a:	a3 68 95 03 00       	mov    %eax,0x39568
    760f:	eb 5d                	jmp    766e <task_fs+0xf9>
    7611:	a1 70 95 03 00       	mov    0x39570,%eax
    7616:	89 45 f4             	mov    %eax,-0xc(%ebp)
    7619:	eb 53                	jmp    766e <task_fs+0xf9>
    761b:	e8 c9 0e 00 00       	call   84e9 <fs_fork>
    7620:	a3 68 95 03 00       	mov    %eax,0x39568
    7625:	eb 47                	jmp    766e <task_fs+0xf9>
    7627:	e8 30 0f 00 00       	call   855c <fs_exit>
    762c:	a3 68 95 03 00       	mov    %eax,0x39568
    7631:	eb 3b                	jmp    766e <task_fs+0xf9>
    7633:	e8 63 1a 00 00       	call   909b <do_stat>
    7638:	a3 68 95 03 00       	mov    %eax,0x39568
    763d:	eb 2f                	jmp    766e <task_fs+0xf9>
    763f:	83 ec 08             	sub    $0x8,%esp
    7642:	68 60 95 03 00       	push   $0x39560
    7647:	68 4a e0 00 00       	push   $0xe04a
    764c:	e8 93 dd ff ff       	call   53e4 <dump_msg>
    7651:	83 c4 10             	add    $0x10,%esp
    7654:	6a 52                	push   $0x52
    7656:	68 5f e0 00 00       	push   $0xe05f
    765b:	68 5f e0 00 00       	push   $0xe05f
    7660:	68 69 e0 00 00       	push   $0xe069
    7665:	e8 73 50 00 00       	call   c6dd <assertion_failure>
    766a:	83 c4 10             	add    $0x10,%esp
    766d:	90                   	nop
    766e:	c7 85 04 fe ff ff 6b 	movl   $0xe06b,-0x1fc(%ebp)
    7675:	e0 00 00 
    7678:	c7 85 08 fe ff ff 70 	movl   $0xe070,-0x1f8(%ebp)
    767f:	e0 00 00 
    7682:	c7 85 0c fe ff ff 76 	movl   $0xe076,-0x1f4(%ebp)
    7689:	e0 00 00 
    768c:	c7 85 10 fe ff ff 7b 	movl   $0xe07b,-0x1f0(%ebp)
    7693:	e0 00 00 
    7696:	c7 85 14 fe ff ff 81 	movl   $0xe081,-0x1ec(%ebp)
    769d:	e0 00 00 
    76a0:	c7 85 1c fe ff ff 87 	movl   $0xe087,-0x1e4(%ebp)
    76a7:	e0 00 00 
    76aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76ad:	83 e8 05             	sub    $0x5,%eax
    76b0:	83 f8 0c             	cmp    $0xc,%eax
    76b3:	77 29                	ja     76de <task_fs+0x169>
    76b5:	8b 04 85 e0 e0 00 00 	mov    0xe0e0(,%eax,4),%eax
    76bc:	ff e0                	jmp    *%eax
    76be:	8b 45 f0             	mov    -0x10(%ebp),%eax
    76c1:	8b 84 85 f0 fd ff ff 	mov    -0x210(%ebp,%eax,4),%eax
    76c8:	83 ec 04             	sub    $0x4,%esp
    76cb:	ff 75 f4             	pushl  -0xc(%ebp)
    76ce:	50                   	push   %eax
    76cf:	68 8e e0 00 00       	push   $0xe08e
    76d4:	e8 86 2f 00 00       	call   a65f <dump_fd_graph>
    76d9:	83 c4 10             	add    $0x10,%esp
    76dc:	eb 1b                	jmp    76f9 <task_fs+0x184>
    76de:	6a 73                	push   $0x73
    76e0:	68 5f e0 00 00       	push   $0xe05f
    76e5:	68 5f e0 00 00       	push   $0xe05f
    76ea:	68 69 e0 00 00       	push   $0xe069
    76ef:	e8 e9 4f 00 00       	call   c6dd <assertion_failure>
    76f4:	83 c4 10             	add    $0x10,%esp
    76f7:	eb 01                	jmp    76fa <task_fs+0x185>
    76f9:	90                   	nop
    76fa:	a1 64 95 03 00       	mov    0x39564,%eax
    76ff:	83 f8 0c             	cmp    $0xc,%eax
    7702:	0f 84 8b fe ff ff    	je     7593 <task_fs+0x1e>
    7708:	c7 05 64 95 03 00 12 	movl   $0x12,0x39564
    770f:	00 00 00 
    7712:	83 ec 04             	sub    $0x4,%esp
    7715:	68 60 95 03 00       	push   $0x39560
    771a:	ff 75 f4             	pushl  -0xc(%ebp)
    771d:	6a 01                	push   $0x1
    771f:	e8 a4 4d 00 00       	call   c4c8 <send_recv>
    7724:	83 c4 10             	add    $0x10,%esp
    7727:	e9 67 fe ff ff       	jmp    7593 <task_fs+0x1e>

0000772c <init_fs>:
    772c:	55                   	push   %ebp
    772d:	89 e5                	mov    %esp,%ebp
    772f:	83 ec 48             	sub    $0x48,%esp
    7732:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7739:	eb 1f                	jmp    775a <init_fs+0x2e>
    773b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    773e:	c1 e0 04             	shl    $0x4,%eax
    7741:	05 a0 95 03 00       	add    $0x395a0,%eax
    7746:	83 ec 04             	sub    $0x4,%esp
    7749:	6a 10                	push   $0x10
    774b:	6a 00                	push   $0x0
    774d:	50                   	push   %eax
    774e:	e8 26 4d 00 00       	call   c479 <memset>
    7753:	83 c4 10             	add    $0x10,%esp
    7756:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    775a:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    775e:	7e db                	jle    773b <init_fs+0xf>
    7760:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    7767:	eb 1f                	jmp    7788 <init_fs+0x5c>
    7769:	8b 45 f4             	mov    -0xc(%ebp),%eax
    776c:	6b c0 2c             	imul   $0x2c,%eax,%eax
    776f:	05 20 39 01 00       	add    $0x13920,%eax
    7774:	83 ec 04             	sub    $0x4,%esp
    7777:	6a 2c                	push   $0x2c
    7779:	6a 00                	push   $0x0
    777b:	50                   	push   %eax
    777c:	e8 f8 4c 00 00       	call   c479 <memset>
    7781:	83 c4 10             	add    $0x10,%esp
    7784:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    7788:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    778c:	7e db                	jle    7769 <init_fs+0x3d>
    778e:	c7 45 f0 00 a2 03 00 	movl   $0x3a200,-0x10(%ebp)
    7795:	eb 0e                	jmp    77a5 <init_fs+0x79>
    7797:	8b 45 f0             	mov    -0x10(%ebp),%eax
    779a:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
    77a1:	83 45 f0 3c          	addl   $0x3c,-0x10(%ebp)
    77a5:	81 7d f0 e0 a3 03 00 	cmpl   $0x3a3e0,-0x10(%ebp)
    77ac:	72 e9                	jb     7797 <init_fs+0x6b>
    77ae:	c7 45 c4 e9 03 00 00 	movl   $0x3e9,-0x3c(%ebp)
    77b5:	c7 45 d4 20 00 00 00 	movl   $0x20,-0x2c(%ebp)
    77bc:	a1 f8 27 01 00       	mov    0x127f8,%eax
    77c1:	83 f8 ec             	cmp    $0xffffffec,%eax
    77c4:	75 1c                	jne    77e2 <init_fs+0xb6>
    77c6:	68 9c 00 00 00       	push   $0x9c
    77cb:	68 5f e0 00 00       	push   $0xe05f
    77d0:	68 5f e0 00 00       	push   $0xe05f
    77d5:	68 14 e1 00 00       	push   $0xe114
    77da:	e8 fe 4e 00 00       	call   c6dd <assertion_failure>
    77df:	83 c4 10             	add    $0x10,%esp
    77e2:	a1 f8 27 01 00       	mov    0x127f8,%eax
    77e7:	83 ec 04             	sub    $0x4,%esp
    77ea:	8d 55 c0             	lea    -0x40(%ebp),%edx
    77ed:	52                   	push   %edx
    77ee:	50                   	push   %eax
    77ef:	6a 03                	push   $0x3
    77f1:	e8 d2 4c 00 00       	call   c4c8 <send_recv>
    77f6:	83 c4 10             	add    $0x10,%esp
    77f9:	e8 65 00 00 00       	call   7863 <mkfs>
    77fe:	83 ec 0c             	sub    $0xc,%esp
    7801:	68 20 03 00 00       	push   $0x320
    7806:	e8 89 08 00 00       	call   8094 <read_super_block>
    780b:	83 c4 10             	add    $0x10,%esp
    780e:	83 ec 0c             	sub    $0xc,%esp
    7811:	68 20 03 00 00       	push   $0x320
    7816:	e8 e8 09 00 00       	call   8203 <get_super_block>
    781b:	83 c4 10             	add    $0x10,%esp
    781e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    7821:	8b 45 f0             	mov    -0x10(%ebp),%eax
    7824:	8b 00                	mov    (%eax),%eax
    7826:	3d 11 01 00 00       	cmp    $0x111,%eax
    782b:	74 1c                	je     7849 <init_fs+0x11d>
    782d:	68 a6 00 00 00       	push   $0xa6
    7832:	68 5f e0 00 00       	push   $0xe05f
    7837:	68 5f e0 00 00       	push   $0xe05f
    783c:	68 48 e1 00 00       	push   $0xe148
    7841:	e8 97 4e 00 00       	call   c6dd <assertion_failure>
    7846:	83 c4 10             	add    $0x10,%esp
    7849:	83 ec 08             	sub    $0x8,%esp
    784c:	6a 01                	push   $0x1
    784e:	68 20 03 00 00       	push   $0x320
    7853:	e8 f1 09 00 00       	call   8249 <get_inode>
    7858:	83 c4 10             	add    $0x10,%esp
    785b:	a3 a0 99 03 00       	mov    %eax,0x399a0
    7860:	90                   	nop
    7861:	c9                   	leave  
    7862:	c3                   	ret    

00007863 <mkfs>:
    7863:	55                   	push   %ebp
    7864:	89 e5                	mov    %esp,%ebp
    7866:	57                   	push   %edi
    7867:	56                   	push   %esi
    7868:	53                   	push   %ebx
    7869:	81 ec ec 00 00 00    	sub    $0xec,%esp
    786f:	c7 45 90 ed 03 00 00 	movl   $0x3ed,-0x70(%ebp)
    7876:	c7 45 a0 20 00 00 00 	movl   $0x20,-0x60(%ebp)
    787d:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
    7884:	8d 45 84             	lea    -0x7c(%ebp),%eax
    7887:	89 45 b8             	mov    %eax,-0x48(%ebp)
    788a:	c7 45 9c 03 00 00 00 	movl   $0x3,-0x64(%ebp)
    7891:	a1 f8 27 01 00       	mov    0x127f8,%eax
    7896:	83 f8 ec             	cmp    $0xffffffec,%eax
    7899:	75 1c                	jne    78b7 <mkfs+0x54>
    789b:	68 c8 00 00 00       	push   $0xc8
    78a0:	68 5f e0 00 00       	push   $0xe05f
    78a5:	68 5f e0 00 00       	push   $0xe05f
    78aa:	68 14 e1 00 00       	push   $0xe114
    78af:	e8 29 4e 00 00       	call   c6dd <assertion_failure>
    78b4:	83 c4 10             	add    $0x10,%esp
    78b7:	a1 f8 27 01 00       	mov    0x127f8,%eax
    78bc:	83 ec 04             	sub    $0x4,%esp
    78bf:	8d 55 8c             	lea    -0x74(%ebp),%edx
    78c2:	52                   	push   %edx
    78c3:	50                   	push   %eax
    78c4:	6a 03                	push   $0x3
    78c6:	e8 fd 4b 00 00       	call   c4c8 <send_recv>
    78cb:	83 c4 10             	add    $0x10,%esp
    78ce:	8b 45 88             	mov    -0x78(%ebp),%eax
    78d1:	83 ec 08             	sub    $0x8,%esp
    78d4:	50                   	push   %eax
    78d5:	68 5e e1 00 00       	push   $0xe15e
    78da:	e8 26 48 00 00       	call   c105 <printl>
    78df:	83 c4 10             	add    $0x10,%esp
    78e2:	c7 45 cc 00 10 00 00 	movl   $0x1000,-0x34(%ebp)
    78e9:	c7 85 48 ff ff ff 11 	movl   $0x111,-0xb8(%ebp)
    78f0:	01 00 00 
    78f3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    78f6:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
    78fc:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
    7902:	c1 e0 05             	shl    $0x5,%eax
    7905:	c1 e8 09             	shr    $0x9,%eax
    7908:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    790e:	8b 45 88             	mov    -0x78(%ebp),%eax
    7911:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%ebp)
    7917:	c7 85 54 ff ff ff 01 	movl   $0x1,-0xac(%ebp)
    791e:	00 00 00 
    7921:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7927:	8b 75 cc             	mov    -0x34(%ebp),%esi
    792a:	ba 00 00 00 00       	mov    $0x0,%edx
    792f:	f7 f6                	div    %esi
    7931:	83 c0 01             	add    $0x1,%eax
    7934:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
    793a:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7940:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7946:	01 c2                	add    %eax,%edx
    7948:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    794e:	01 d0                	add    %edx,%eax
    7950:	83 c0 02             	add    $0x2,%eax
    7953:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
    7959:	c7 85 64 ff ff ff 01 	movl   $0x1,-0x9c(%ebp)
    7960:	00 00 00 
    7963:	c7 85 68 ff ff ff 20 	movl   $0x20,-0x98(%ebp)
    796a:	00 00 00 
    796d:	c7 85 6c ff ff ff 04 	movl   $0x4,-0x94(%ebp)
    7974:	00 00 00 
    7977:	c7 85 70 ff ff ff 08 	movl   $0x8,-0x90(%ebp)
    797e:	00 00 00 
    7981:	c7 85 74 ff ff ff 10 	movl   $0x10,-0x8c(%ebp)
    7988:	00 00 00 
    798b:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
    7992:	00 00 00 
    7995:	c7 85 7c ff ff ff 04 	movl   $0x4,-0x84(%ebp)
    799c:	00 00 00 
    799f:	a1 04 28 01 00       	mov    0x12804,%eax
    79a4:	83 ec 04             	sub    $0x4,%esp
    79a7:	68 00 02 00 00       	push   $0x200
    79ac:	6a 90                	push   $0xffffff90
    79ae:	50                   	push   %eax
    79af:	e8 c5 4a 00 00       	call   c479 <memset>
    79b4:	83 c4 10             	add    $0x10,%esp
    79b7:	a1 04 28 01 00       	mov    0x12804,%eax
    79bc:	83 ec 04             	sub    $0x4,%esp
    79bf:	6a 38                	push   $0x38
    79c1:	8d 95 48 ff ff ff    	lea    -0xb8(%ebp),%edx
    79c7:	52                   	push   %edx
    79c8:	50                   	push   %eax
    79c9:	e8 82 4a 00 00       	call   c450 <memcpy>
    79ce:	83 c4 10             	add    $0x10,%esp
    79d1:	a1 04 28 01 00       	mov    0x12804,%eax
    79d6:	83 ec 04             	sub    $0x4,%esp
    79d9:	50                   	push   %eax
    79da:	6a 03                	push   $0x3
    79dc:	68 00 02 00 00       	push   $0x200
    79e1:	6a 00                	push   $0x0
    79e3:	68 00 02 00 00       	push   $0x200
    79e8:	68 20 03 00 00       	push   $0x320
    79ed:	68 ec 03 00 00       	push   $0x3ec
    79f2:	e8 04 06 00 00       	call   7ffb <rw_sector>
    79f7:	83 c4 20             	add    $0x20,%esp
    79fa:	8b 55 84             	mov    -0x7c(%ebp),%edx
    79fd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7a03:	01 d0                	add    %edx,%eax
    7a05:	8d 3c 00             	lea    (%eax,%eax,1),%edi
    7a08:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7a0b:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7a11:	01 c2                	add    %eax,%edx
    7a13:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7a19:	01 d0                	add    %edx,%eax
    7a1b:	83 c0 02             	add    $0x2,%eax
    7a1e:	8d 34 00             	lea    (%eax,%eax,1),%esi
    7a21:	8b 55 84             	mov    -0x7c(%ebp),%edx
    7a24:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7a2a:	01 d0                	add    %edx,%eax
    7a2c:	83 c0 02             	add    $0x2,%eax
    7a2f:	8d 1c 00             	lea    (%eax,%eax,1),%ebx
    7a32:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a35:	83 c0 02             	add    $0x2,%eax
    7a38:	8d 0c 00             	lea    (%eax,%eax,1),%ecx
    7a3b:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a3e:	83 c0 01             	add    $0x1,%eax
    7a41:	8d 14 00             	lea    (%eax,%eax,1),%edx
    7a44:	8b 45 84             	mov    -0x7c(%ebp),%eax
    7a47:	01 c0                	add    %eax,%eax
    7a49:	83 ec 04             	sub    $0x4,%esp
    7a4c:	57                   	push   %edi
    7a4d:	56                   	push   %esi
    7a4e:	53                   	push   %ebx
    7a4f:	51                   	push   %ecx
    7a50:	52                   	push   %edx
    7a51:	50                   	push   %eax
    7a52:	68 7c e1 00 00       	push   $0xe17c
    7a57:	e8 a9 46 00 00       	call   c105 <printl>
    7a5c:	83 c4 20             	add    $0x20,%esp
    7a5f:	a1 04 28 01 00       	mov    0x12804,%eax
    7a64:	83 ec 04             	sub    $0x4,%esp
    7a67:	68 00 02 00 00       	push   $0x200
    7a6c:	6a 00                	push   $0x0
    7a6e:	50                   	push   %eax
    7a6f:	e8 05 4a 00 00       	call   c479 <memset>
    7a74:	83 c4 10             	add    $0x10,%esp
    7a77:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7a7e:	eb 27                	jmp    7aa7 <mkfs+0x244>
    7a80:	a1 04 28 01 00       	mov    0x12804,%eax
    7a85:	0f b6 00             	movzbl (%eax),%eax
    7a88:	89 c3                	mov    %eax,%ebx
    7a8a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7a8d:	ba 01 00 00 00       	mov    $0x1,%edx
    7a92:	89 c1                	mov    %eax,%ecx
    7a94:	d3 e2                	shl    %cl,%edx
    7a96:	89 d0                	mov    %edx,%eax
    7a98:	09 c3                	or     %eax,%ebx
    7a9a:	89 da                	mov    %ebx,%edx
    7a9c:	a1 04 28 01 00       	mov    0x12804,%eax
    7aa1:	88 10                	mov    %dl,(%eax)
    7aa3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7aa7:	83 7d e4 05          	cmpl   $0x5,-0x1c(%ebp)
    7aab:	7e d3                	jle    7a80 <mkfs+0x21d>
    7aad:	a1 04 28 01 00       	mov    0x12804,%eax
    7ab2:	0f b6 00             	movzbl (%eax),%eax
    7ab5:	3c 3f                	cmp    $0x3f,%al
    7ab7:	74 1c                	je     7ad5 <mkfs+0x272>
    7ab9:	68 f8 00 00 00       	push   $0xf8
    7abe:	68 5f e0 00 00       	push   $0xe05f
    7ac3:	68 5f e0 00 00       	push   $0xe05f
    7ac8:	68 df e1 00 00       	push   $0xe1df
    7acd:	e8 0b 4c 00 00       	call   c6dd <assertion_failure>
    7ad2:	83 c4 10             	add    $0x10,%esp
    7ad5:	a1 04 28 01 00       	mov    0x12804,%eax
    7ada:	83 ec 04             	sub    $0x4,%esp
    7add:	50                   	push   %eax
    7ade:	6a 03                	push   $0x3
    7ae0:	68 00 02 00 00       	push   $0x200
    7ae5:	6a 00                	push   $0x0
    7ae7:	68 00 04 00 00       	push   $0x400
    7aec:	68 20 03 00 00       	push   $0x320
    7af1:	68 ec 03 00 00       	push   $0x3ec
    7af6:	e8 00 05 00 00       	call   7ffb <rw_sector>
    7afb:	83 c4 20             	add    $0x20,%esp
    7afe:	a1 04 28 01 00       	mov    0x12804,%eax
    7b03:	83 ec 04             	sub    $0x4,%esp
    7b06:	68 00 02 00 00       	push   $0x200
    7b0b:	6a 00                	push   $0x0
    7b0d:	50                   	push   %eax
    7b0e:	e8 66 49 00 00       	call   c479 <memset>
    7b13:	83 c4 10             	add    $0x10,%esp
    7b16:	c7 45 c8 01 08 00 00 	movl   $0x801,-0x38(%ebp)
    7b1d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7b24:	eb 12                	jmp    7b38 <mkfs+0x2d5>
    7b26:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b2c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b2f:	01 d0                	add    %edx,%eax
    7b31:	c6 00 ff             	movb   $0xff,(%eax)
    7b34:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7b38:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7b3b:	8d 50 07             	lea    0x7(%eax),%edx
    7b3e:	85 c0                	test   %eax,%eax
    7b40:	0f 48 c2             	cmovs  %edx,%eax
    7b43:	c1 f8 03             	sar    $0x3,%eax
    7b46:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    7b49:	7c db                	jl     7b26 <mkfs+0x2c3>
    7b4b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    7b52:	eb 35                	jmp    7b89 <mkfs+0x326>
    7b54:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b5a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b5d:	01 d0                	add    %edx,%eax
    7b5f:	0f b6 00             	movzbl (%eax),%eax
    7b62:	89 c3                	mov    %eax,%ebx
    7b64:	8b 45 e0             	mov    -0x20(%ebp),%eax
    7b67:	ba 01 00 00 00       	mov    $0x1,%edx
    7b6c:	89 c1                	mov    %eax,%ecx
    7b6e:	d3 e2                	shl    %cl,%edx
    7b70:	89 d0                	mov    %edx,%eax
    7b72:	09 c3                	or     %eax,%ebx
    7b74:	89 d9                	mov    %ebx,%ecx
    7b76:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7b7c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7b7f:	01 d0                	add    %edx,%eax
    7b81:	89 ca                	mov    %ecx,%edx
    7b83:	88 10                	mov    %dl,(%eax)
    7b85:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    7b89:	8b 45 c8             	mov    -0x38(%ebp),%eax
    7b8c:	99                   	cltd   
    7b8d:	c1 ea 1d             	shr    $0x1d,%edx
    7b90:	01 d0                	add    %edx,%eax
    7b92:	83 e0 07             	and    $0x7,%eax
    7b95:	29 d0                	sub    %edx,%eax
    7b97:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    7b9a:	7c b8                	jl     7b54 <mkfs+0x2f1>
    7b9c:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7ba2:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
    7ba8:	83 c0 02             	add    $0x2,%eax
    7bab:	c1 e0 09             	shl    $0x9,%eax
    7bae:	ba 00 00 00 00       	mov    $0x0,%edx
    7bb3:	83 ec 04             	sub    $0x4,%esp
    7bb6:	51                   	push   %ecx
    7bb7:	6a 03                	push   $0x3
    7bb9:	68 00 02 00 00       	push   $0x200
    7bbe:	52                   	push   %edx
    7bbf:	50                   	push   %eax
    7bc0:	68 20 03 00 00       	push   $0x320
    7bc5:	68 ec 03 00 00       	push   $0x3ec
    7bca:	e8 2c 04 00 00       	call   7ffb <rw_sector>
    7bcf:	83 c4 20             	add    $0x20,%esp
    7bd2:	a1 04 28 01 00       	mov    0x12804,%eax
    7bd7:	83 ec 04             	sub    $0x4,%esp
    7bda:	68 00 02 00 00       	push   $0x200
    7bdf:	6a 00                	push   $0x0
    7be1:	50                   	push   %eax
    7be2:	e8 92 48 00 00       	call   c479 <memset>
    7be7:	83 c4 10             	add    $0x10,%esp
    7bea:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    7bf1:	eb 3f                	jmp    7c32 <mkfs+0x3cf>
    7bf3:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7bf9:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7bff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7c02:	01 d0                	add    %edx,%eax
    7c04:	83 c0 02             	add    $0x2,%eax
    7c07:	c1 e0 09             	shl    $0x9,%eax
    7c0a:	ba 00 00 00 00       	mov    $0x0,%edx
    7c0f:	83 ec 04             	sub    $0x4,%esp
    7c12:	51                   	push   %ecx
    7c13:	6a 03                	push   $0x3
    7c15:	68 00 02 00 00       	push   $0x200
    7c1a:	52                   	push   %edx
    7c1b:	50                   	push   %eax
    7c1c:	68 20 03 00 00       	push   $0x320
    7c21:	68 ec 03 00 00       	push   $0x3ec
    7c26:	e8 d0 03 00 00       	call   7ffb <rw_sector>
    7c2b:	83 c4 20             	add    $0x20,%esp
    7c2e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7c32:	8b 95 58 ff ff ff    	mov    -0xa8(%ebp),%edx
    7c38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7c3b:	39 c2                	cmp    %eax,%edx
    7c3d:	77 b4                	ja     7bf3 <mkfs+0x390>
    7c3f:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    7c45:	2d 00 08 00 00       	sub    $0x800,%eax
    7c4a:	3d 00 88 00 00       	cmp    $0x8800,%eax
    7c4f:	77 1c                	ja     7c6d <mkfs+0x40a>
    7c51:	68 1d 01 00 00       	push   $0x11d
    7c56:	68 5f e0 00 00       	push   $0xe05f
    7c5b:	68 5f e0 00 00       	push   $0xe05f
    7c60:	68 f0 e1 00 00       	push   $0xe1f0
    7c65:	e8 73 4a 00 00       	call   c6dd <assertion_failure>
    7c6a:	83 c4 10             	add    $0x10,%esp
    7c6d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7c73:	ba 01 80 00 00       	mov    $0x8001,%edx
    7c78:	29 c2                	sub    %eax,%edx
    7c7a:	89 d0                	mov    %edx,%eax
    7c7c:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    7c7f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7c82:	99                   	cltd   
    7c83:	c1 ea 14             	shr    $0x14,%edx
    7c86:	01 d0                	add    %edx,%eax
    7c88:	25 ff 0f 00 00       	and    $0xfff,%eax
    7c8d:	29 d0                	sub    %edx,%eax
    7c8f:	89 45 dc             	mov    %eax,-0x24(%ebp)
    7c92:	c7 45 d8 00 08 00 00 	movl   $0x800,-0x28(%ebp)
    7c99:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    7c9c:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
    7ca2:	85 c0                	test   %eax,%eax
    7ca4:	0f 48 c2             	cmovs  %edx,%eax
    7ca7:	c1 f8 0c             	sar    $0xc,%eax
    7caa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    7cad:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7cb3:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7cb9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7cbc:	01 d0                	add    %edx,%eax
    7cbe:	83 c0 02             	add    $0x2,%eax
    7cc1:	c1 e0 09             	shl    $0x9,%eax
    7cc4:	ba 00 00 00 00       	mov    $0x0,%edx
    7cc9:	83 ec 04             	sub    $0x4,%esp
    7ccc:	51                   	push   %ecx
    7ccd:	6a 03                	push   $0x3
    7ccf:	68 00 02 00 00       	push   $0x200
    7cd4:	52                   	push   %edx
    7cd5:	50                   	push   %eax
    7cd6:	68 20 03 00 00       	push   $0x320
    7cdb:	68 eb 03 00 00       	push   $0x3eb
    7ce0:	e8 16 03 00 00       	call   7ffb <rw_sector>
    7ce5:	83 c4 20             	add    $0x20,%esp
    7ce8:	e9 e3 00 00 00       	jmp    7dd0 <mkfs+0x56d>
    7ced:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7cf0:	8d 50 07             	lea    0x7(%eax),%edx
    7cf3:	85 c0                	test   %eax,%eax
    7cf5:	0f 48 c2             	cmovs  %edx,%eax
    7cf8:	c1 f8 03             	sar    $0x3,%eax
    7cfb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    7cfe:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7d04:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7d07:	01 d0                	add    %edx,%eax
    7d09:	0f b6 00             	movzbl (%eax),%eax
    7d0c:	89 c3                	mov    %eax,%ebx
    7d0e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    7d11:	99                   	cltd   
    7d12:	c1 ea 1d             	shr    $0x1d,%edx
    7d15:	01 d0                	add    %edx,%eax
    7d17:	83 e0 07             	and    $0x7,%eax
    7d1a:	29 d0                	sub    %edx,%eax
    7d1c:	ba 01 00 00 00       	mov    $0x1,%edx
    7d21:	89 c1                	mov    %eax,%ecx
    7d23:	d3 e2                	shl    %cl,%edx
    7d25:	89 d0                	mov    %edx,%eax
    7d27:	09 c3                	or     %eax,%ebx
    7d29:	89 d9                	mov    %ebx,%ecx
    7d2b:	8b 15 04 28 01 00    	mov    0x12804,%edx
    7d31:	8b 45 c0             	mov    -0x40(%ebp),%eax
    7d34:	01 d0                	add    %edx,%eax
    7d36:	89 ca                	mov    %ecx,%edx
    7d38:	88 10                	mov    %dl,(%eax)
    7d3a:	83 6d d8 01          	subl   $0x1,-0x28(%ebp)
    7d3e:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
    7d42:	81 7d dc 00 10 00 00 	cmpl   $0x1000,-0x24(%ebp)
    7d49:	0f 85 81 00 00 00    	jne    7dd0 <mkfs+0x56d>
    7d4f:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7d55:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7d5b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d5e:	01 d0                	add    %edx,%eax
    7d60:	83 c0 02             	add    $0x2,%eax
    7d63:	c1 e0 09             	shl    $0x9,%eax
    7d66:	ba 00 00 00 00       	mov    $0x0,%edx
    7d6b:	83 ec 04             	sub    $0x4,%esp
    7d6e:	51                   	push   %ecx
    7d6f:	6a 03                	push   $0x3
    7d71:	68 00 02 00 00       	push   $0x200
    7d76:	52                   	push   %edx
    7d77:	50                   	push   %eax
    7d78:	68 20 03 00 00       	push   $0x320
    7d7d:	68 ec 03 00 00       	push   $0x3ec
    7d82:	e8 74 02 00 00       	call   7ffb <rw_sector>
    7d87:	83 c4 20             	add    $0x20,%esp
    7d8a:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    7d8e:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7d94:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7d9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7d9d:	01 d0                	add    %edx,%eax
    7d9f:	83 c0 02             	add    $0x2,%eax
    7da2:	c1 e0 09             	shl    $0x9,%eax
    7da5:	ba 00 00 00 00       	mov    $0x0,%edx
    7daa:	83 ec 04             	sub    $0x4,%esp
    7dad:	51                   	push   %ecx
    7dae:	6a 03                	push   $0x3
    7db0:	68 00 02 00 00       	push   $0x200
    7db5:	52                   	push   %edx
    7db6:	50                   	push   %eax
    7db7:	68 20 03 00 00       	push   $0x320
    7dbc:	68 eb 03 00 00       	push   $0x3eb
    7dc1:	e8 35 02 00 00       	call   7ffb <rw_sector>
    7dc6:	83 c4 20             	add    $0x20,%esp
    7dc9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    7dd0:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
    7dd4:	0f 85 13 ff ff ff    	jne    7ced <mkfs+0x48a>
    7dda:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7de0:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7de6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    7de9:	01 d0                	add    %edx,%eax
    7deb:	83 c0 02             	add    $0x2,%eax
    7dee:	c1 e0 09             	shl    $0x9,%eax
    7df1:	ba 00 00 00 00       	mov    $0x0,%edx
    7df6:	83 ec 04             	sub    $0x4,%esp
    7df9:	51                   	push   %ecx
    7dfa:	6a 03                	push   $0x3
    7dfc:	68 00 02 00 00       	push   $0x200
    7e01:	52                   	push   %edx
    7e02:	50                   	push   %eax
    7e03:	68 20 03 00 00       	push   $0x320
    7e08:	68 ec 03 00 00       	push   $0x3ec
    7e0d:	e8 e9 01 00 00       	call   7ffb <rw_sector>
    7e12:	83 c4 20             	add    $0x20,%esp
    7e15:	a1 04 28 01 00       	mov    0x12804,%eax
    7e1a:	83 ec 04             	sub    $0x4,%esp
    7e1d:	68 00 02 00 00       	push   $0x200
    7e22:	6a 00                	push   $0x0
    7e24:	50                   	push   %eax
    7e25:	e8 4f 46 00 00       	call   c479 <memset>
    7e2a:	83 c4 10             	add    $0x10,%esp
    7e2d:	a1 04 28 01 00       	mov    0x12804,%eax
    7e32:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7e35:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e38:	c7 00 00 40 00 00    	movl   $0x4000,(%eax)
    7e3e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e41:	c7 40 04 50 00 00 00 	movl   $0x50,0x4(%eax)
    7e48:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
    7e4e:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e51:	89 50 08             	mov    %edx,0x8(%eax)
    7e54:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e57:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7e5e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7e65:	eb 42                	jmp    7ea9 <mkfs+0x646>
    7e67:	a1 04 28 01 00       	mov    0x12804,%eax
    7e6c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    7e6f:	83 c2 01             	add    $0x1,%edx
    7e72:	c1 e2 05             	shl    $0x5,%edx
    7e75:	01 d0                	add    %edx,%eax
    7e77:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7e7a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e7d:	c7 00 00 20 00 00    	movl   $0x2000,(%eax)
    7e83:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e86:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    7e8d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7e90:	80 cc 04             	or     $0x4,%ah
    7e93:	89 c2                	mov    %eax,%edx
    7e95:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e98:	89 50 08             	mov    %edx,0x8(%eax)
    7e9b:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7e9e:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    7ea5:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7ea9:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7ead:	7e b8                	jle    7e67 <mkfs+0x604>
    7eaf:	a1 04 28 01 00       	mov    0x12804,%eax
    7eb4:	83 e8 80             	sub    $0xffffff80,%eax
    7eb7:	89 45 bc             	mov    %eax,-0x44(%ebp)
    7eba:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ebd:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    7ec3:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ec6:	c7 40 04 00 00 10 00 	movl   $0x100000,0x4(%eax)
    7ecd:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7ed0:	c7 40 08 00 80 00 00 	movl   $0x8000,0x8(%eax)
    7ed7:	8b 45 bc             	mov    -0x44(%ebp),%eax
    7eda:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    7ee1:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7ee7:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
    7eed:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    7ef3:	01 d0                	add    %edx,%eax
    7ef5:	83 c0 02             	add    $0x2,%eax
    7ef8:	c1 e0 09             	shl    $0x9,%eax
    7efb:	ba 00 00 00 00       	mov    $0x0,%edx
    7f00:	83 ec 04             	sub    $0x4,%esp
    7f03:	51                   	push   %ecx
    7f04:	6a 03                	push   $0x3
    7f06:	68 00 02 00 00       	push   $0x200
    7f0b:	52                   	push   %edx
    7f0c:	50                   	push   %eax
    7f0d:	68 20 03 00 00       	push   $0x320
    7f12:	68 ec 03 00 00       	push   $0x3ec
    7f17:	e8 df 00 00 00       	call   7ffb <rw_sector>
    7f1c:	83 c4 20             	add    $0x20,%esp
    7f1f:	a1 04 28 01 00       	mov    0x12804,%eax
    7f24:	83 ec 04             	sub    $0x4,%esp
    7f27:	68 00 02 00 00       	push   $0x200
    7f2c:	6a 00                	push   $0x0
    7f2e:	50                   	push   %eax
    7f2f:	e8 45 45 00 00       	call   c479 <memset>
    7f34:	83 c4 10             	add    $0x10,%esp
    7f37:	a1 04 28 01 00       	mov    0x12804,%eax
    7f3c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    7f3f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f42:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    7f48:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f4b:	83 c0 04             	add    $0x4,%eax
    7f4e:	83 ec 08             	sub    $0x8,%esp
    7f51:	68 37 e2 00 00       	push   $0xe237
    7f56:	50                   	push   %eax
    7f57:	e8 3e 45 00 00       	call   c49a <strcpy>
    7f5c:	83 c4 10             	add    $0x10,%esp
    7f5f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    7f66:	eb 2d                	jmp    7f95 <mkfs+0x732>
    7f68:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7f6c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    7f6f:	8d 50 02             	lea    0x2(%eax),%edx
    7f72:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f75:	89 10                	mov    %edx,(%eax)
    7f77:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7f7a:	83 c0 04             	add    $0x4,%eax
    7f7d:	83 ec 04             	sub    $0x4,%esp
    7f80:	ff 75 e4             	pushl  -0x1c(%ebp)
    7f83:	68 39 e2 00 00       	push   $0xe239
    7f88:	50                   	push   %eax
    7f89:	e8 9c 44 00 00       	call   c42a <sprintf>
    7f8e:	83 c4 10             	add    $0x10,%esp
    7f91:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    7f95:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    7f99:	7e cd                	jle    7f68 <mkfs+0x705>
    7f9b:	83 45 d0 10          	addl   $0x10,-0x30(%ebp)
    7f9f:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7fa2:	c7 00 05 00 00 00    	movl   $0x5,(%eax)
    7fa8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    7fab:	83 c0 04             	add    $0x4,%eax
    7fae:	83 ec 08             	sub    $0x8,%esp
    7fb1:	68 43 e2 00 00       	push   $0xe243
    7fb6:	50                   	push   %eax
    7fb7:	e8 de 44 00 00       	call   c49a <strcpy>
    7fbc:	83 c4 10             	add    $0x10,%esp
    7fbf:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    7fc5:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
    7fcb:	c1 e0 09             	shl    $0x9,%eax
    7fce:	ba 00 00 00 00       	mov    $0x0,%edx
    7fd3:	83 ec 04             	sub    $0x4,%esp
    7fd6:	51                   	push   %ecx
    7fd7:	6a 03                	push   $0x3
    7fd9:	68 00 02 00 00       	push   $0x200
    7fde:	52                   	push   %edx
    7fdf:	50                   	push   %eax
    7fe0:	68 20 03 00 00       	push   $0x320
    7fe5:	68 ec 03 00 00       	push   $0x3ec
    7fea:	e8 0c 00 00 00       	call   7ffb <rw_sector>
    7fef:	83 c4 20             	add    $0x20,%esp
    7ff2:	90                   	nop
    7ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    7ff6:	5b                   	pop    %ebx
    7ff7:	5e                   	pop    %esi
    7ff8:	5f                   	pop    %edi
    7ff9:	5d                   	pop    %ebp
    7ffa:	c3                   	ret    

00007ffb <rw_sector>:
    7ffb:	55                   	push   %ebp
    7ffc:	89 e5                	mov    %esp,%ebp
    7ffe:	83 ec 48             	sub    $0x48,%esp
    8001:	8b 45 10             	mov    0x10(%ebp),%eax
    8004:	89 45 c0             	mov    %eax,-0x40(%ebp)
    8007:	8b 45 14             	mov    0x14(%ebp),%eax
    800a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    800d:	8b 45 08             	mov    0x8(%ebp),%eax
    8010:	89 45 cc             	mov    %eax,-0x34(%ebp)
    8013:	8b 45 0c             	mov    0xc(%ebp),%eax
    8016:	0f b6 c0             	movzbl %al,%eax
    8019:	89 45 dc             	mov    %eax,-0x24(%ebp)
    801c:	8b 45 c0             	mov    -0x40(%ebp),%eax
    801f:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    8022:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8025:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    8028:	8b 45 20             	mov    0x20(%ebp),%eax
    802b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    802e:	8b 45 18             	mov    0x18(%ebp),%eax
    8031:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    8034:	8b 45 1c             	mov    0x1c(%ebp),%eax
    8037:	89 45 d8             	mov    %eax,-0x28(%ebp)
    803a:	8b 45 0c             	mov    0xc(%ebp),%eax
    803d:	c1 f8 08             	sar    $0x8,%eax
    8040:	0f b6 c0             	movzbl %al,%eax
    8043:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    804a:	83 f8 ec             	cmp    $0xffffffec,%eax
    804d:	75 1c                	jne    806b <rw_sector+0x70>
    804f:	68 8e 01 00 00       	push   $0x18e
    8054:	68 5f e0 00 00       	push   $0xe05f
    8059:	68 5f e0 00 00       	push   $0xe05f
    805e:	68 4c e2 00 00       	push   $0xe24c
    8063:	e8 75 46 00 00       	call   c6dd <assertion_failure>
    8068:	83 c4 10             	add    $0x10,%esp
    806b:	8b 45 0c             	mov    0xc(%ebp),%eax
    806e:	c1 f8 08             	sar    $0x8,%eax
    8071:	0f b6 c0             	movzbl %al,%eax
    8074:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    807b:	83 ec 04             	sub    $0x4,%esp
    807e:	8d 55 c8             	lea    -0x38(%ebp),%edx
    8081:	52                   	push   %edx
    8082:	50                   	push   %eax
    8083:	6a 03                	push   $0x3
    8085:	e8 3e 44 00 00       	call   c4c8 <send_recv>
    808a:	83 c4 10             	add    $0x10,%esp
    808d:	b8 00 00 00 00       	mov    $0x0,%eax
    8092:	c9                   	leave  
    8093:	c3                   	ret    

00008094 <read_super_block>:
    8094:	55                   	push   %ebp
    8095:	89 e5                	mov    %esp,%ebp
    8097:	83 ec 48             	sub    $0x48,%esp
    809a:	c7 45 c4 eb 03 00 00 	movl   $0x3eb,-0x3c(%ebp)
    80a1:	8b 45 08             	mov    0x8(%ebp),%eax
    80a4:	0f b6 c0             	movzbl %al,%eax
    80a7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    80aa:	c7 45 d8 00 02 00 00 	movl   $0x200,-0x28(%ebp)
    80b1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    80b8:	a1 04 28 01 00       	mov    0x12804,%eax
    80bd:	89 45 ec             	mov    %eax,-0x14(%ebp)
    80c0:	c7 45 cc 00 02 00 00 	movl   $0x200,-0x34(%ebp)
    80c7:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%ebp)
    80ce:	8b 45 08             	mov    0x8(%ebp),%eax
    80d1:	c1 f8 08             	sar    $0x8,%eax
    80d4:	0f b6 c0             	movzbl %al,%eax
    80d7:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    80de:	83 f8 ec             	cmp    $0xffffffec,%eax
    80e1:	75 1c                	jne    80ff <read_super_block+0x6b>
    80e3:	68 a9 01 00 00       	push   $0x1a9
    80e8:	68 5f e0 00 00       	push   $0xe05f
    80ed:	68 5f e0 00 00       	push   $0xe05f
    80f2:	68 4c e2 00 00       	push   $0xe24c
    80f7:	e8 e1 45 00 00       	call   c6dd <assertion_failure>
    80fc:	83 c4 10             	add    $0x10,%esp
    80ff:	8b 45 08             	mov    0x8(%ebp),%eax
    8102:	c1 f8 08             	sar    $0x8,%eax
    8105:	0f b6 c0             	movzbl %al,%eax
    8108:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    810f:	83 ec 04             	sub    $0x4,%esp
    8112:	8d 55 c0             	lea    -0x40(%ebp),%edx
    8115:	52                   	push   %edx
    8116:	50                   	push   %eax
    8117:	6a 03                	push   $0x3
    8119:	e8 aa 43 00 00       	call   c4c8 <send_recv>
    811e:	83 c4 10             	add    $0x10,%esp
    8121:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8128:	eb 15                	jmp    813f <read_super_block+0xab>
    812a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    812d:	6b c0 3c             	imul   $0x3c,%eax,%eax
    8130:	05 38 a2 03 00       	add    $0x3a238,%eax
    8135:	8b 00                	mov    (%eax),%eax
    8137:	85 c0                	test   %eax,%eax
    8139:	74 0c                	je     8147 <read_super_block+0xb3>
    813b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    813f:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
    8143:	7e e5                	jle    812a <read_super_block+0x96>
    8145:	eb 01                	jmp    8148 <read_super_block+0xb4>
    8147:	90                   	nop
    8148:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
    814c:	75 10                	jne    815e <read_super_block+0xca>
    814e:	83 ec 0c             	sub    $0xc,%esp
    8151:	68 7b e2 00 00       	push   $0xe27b
    8156:	e8 eb 9b ff ff       	call   1d46 <panic>
    815b:	83 c4 10             	add    $0x10,%esp
    815e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    8162:	74 1c                	je     8180 <read_super_block+0xec>
    8164:	68 b3 01 00 00       	push   $0x1b3
    8169:	68 5f e0 00 00       	push   $0xe05f
    816e:	68 5f e0 00 00       	push   $0xe05f
    8173:	68 95 e2 00 00       	push   $0xe295
    8178:	e8 60 45 00 00       	call   c6dd <assertion_failure>
    817d:	83 c4 10             	add    $0x10,%esp
    8180:	a1 04 28 01 00       	mov    0x12804,%eax
    8185:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8188:	8b 45 f4             	mov    -0xc(%ebp),%eax
    818b:	6b c0 3c             	imul   $0x3c,%eax,%eax
    818e:	8d 90 00 a2 03 00    	lea    0x3a200(%eax),%edx
    8194:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8197:	8b 08                	mov    (%eax),%ecx
    8199:	89 0a                	mov    %ecx,(%edx)
    819b:	8b 48 04             	mov    0x4(%eax),%ecx
    819e:	89 4a 04             	mov    %ecx,0x4(%edx)
    81a1:	8b 48 08             	mov    0x8(%eax),%ecx
    81a4:	89 4a 08             	mov    %ecx,0x8(%edx)
    81a7:	8b 48 0c             	mov    0xc(%eax),%ecx
    81aa:	89 4a 0c             	mov    %ecx,0xc(%edx)
    81ad:	8b 48 10             	mov    0x10(%eax),%ecx
    81b0:	89 4a 10             	mov    %ecx,0x10(%edx)
    81b3:	8b 48 14             	mov    0x14(%eax),%ecx
    81b6:	89 4a 14             	mov    %ecx,0x14(%edx)
    81b9:	8b 48 18             	mov    0x18(%eax),%ecx
    81bc:	89 4a 18             	mov    %ecx,0x18(%edx)
    81bf:	8b 48 1c             	mov    0x1c(%eax),%ecx
    81c2:	89 4a 1c             	mov    %ecx,0x1c(%edx)
    81c5:	8b 48 20             	mov    0x20(%eax),%ecx
    81c8:	89 4a 20             	mov    %ecx,0x20(%edx)
    81cb:	8b 48 24             	mov    0x24(%eax),%ecx
    81ce:	89 4a 24             	mov    %ecx,0x24(%edx)
    81d1:	8b 48 28             	mov    0x28(%eax),%ecx
    81d4:	89 4a 28             	mov    %ecx,0x28(%edx)
    81d7:	8b 48 2c             	mov    0x2c(%eax),%ecx
    81da:	89 4a 2c             	mov    %ecx,0x2c(%edx)
    81dd:	8b 48 30             	mov    0x30(%eax),%ecx
    81e0:	89 4a 30             	mov    %ecx,0x30(%edx)
    81e3:	8b 48 34             	mov    0x34(%eax),%ecx
    81e6:	89 4a 34             	mov    %ecx,0x34(%edx)
    81e9:	8b 40 38             	mov    0x38(%eax),%eax
    81ec:	89 42 38             	mov    %eax,0x38(%edx)
    81ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
    81f2:	6b c0 3c             	imul   $0x3c,%eax,%eax
    81f5:	8d 90 38 a2 03 00    	lea    0x3a238(%eax),%edx
    81fb:	8b 45 08             	mov    0x8(%ebp),%eax
    81fe:	89 02                	mov    %eax,(%edx)
    8200:	90                   	nop
    8201:	c9                   	leave  
    8202:	c3                   	ret    

00008203 <get_super_block>:
    8203:	55                   	push   %ebp
    8204:	89 e5                	mov    %esp,%ebp
    8206:	83 ec 18             	sub    $0x18,%esp
    8209:	c7 45 f4 00 a2 03 00 	movl   $0x3a200,-0xc(%ebp)
    8210:	eb 14                	jmp    8226 <get_super_block+0x23>
    8212:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8215:	8b 40 38             	mov    0x38(%eax),%eax
    8218:	39 45 08             	cmp    %eax,0x8(%ebp)
    821b:	75 05                	jne    8222 <get_super_block+0x1f>
    821d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8220:	eb 25                	jmp    8247 <get_super_block+0x44>
    8222:	83 45 f4 3c          	addl   $0x3c,-0xc(%ebp)
    8226:	81 7d f4 e0 a3 03 00 	cmpl   $0x3a3e0,-0xc(%ebp)
    822d:	72 e3                	jb     8212 <get_super_block+0xf>
    822f:	83 ec 08             	sub    $0x8,%esp
    8232:	ff 75 08             	pushl  0x8(%ebp)
    8235:	68 9c e2 00 00       	push   $0xe29c
    823a:	e8 07 9b ff ff       	call   1d46 <panic>
    823f:	83 c4 10             	add    $0x10,%esp
    8242:	b8 00 00 00 00       	mov    $0x0,%eax
    8247:	c9                   	leave  
    8248:	c3                   	ret    

00008249 <get_inode>:
    8249:	55                   	push   %ebp
    824a:	89 e5                	mov    %esp,%ebp
    824c:	83 ec 28             	sub    $0x28,%esp
    824f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8253:	75 0a                	jne    825f <get_inode+0x16>
    8255:	b8 00 00 00 00       	mov    $0x0,%eax
    825a:	e9 4b 01 00 00       	jmp    83aa <get_inode+0x161>
    825f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8266:	c7 45 f4 20 39 01 00 	movl   $0x13920,-0xc(%ebp)
    826d:	eb 47                	jmp    82b6 <get_inode+0x6d>
    826f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8272:	8b 40 24             	mov    0x24(%eax),%eax
    8275:	85 c0                	test   %eax,%eax
    8277:	74 2d                	je     82a6 <get_inode+0x5d>
    8279:	8b 45 f4             	mov    -0xc(%ebp),%eax
    827c:	8b 40 20             	mov    0x20(%eax),%eax
    827f:	39 45 08             	cmp    %eax,0x8(%ebp)
    8282:	75 2e                	jne    82b2 <get_inode+0x69>
    8284:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8287:	8b 40 28             	mov    0x28(%eax),%eax
    828a:	39 45 0c             	cmp    %eax,0xc(%ebp)
    828d:	75 23                	jne    82b2 <get_inode+0x69>
    828f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8292:	8b 40 24             	mov    0x24(%eax),%eax
    8295:	8d 50 01             	lea    0x1(%eax),%edx
    8298:	8b 45 f4             	mov    -0xc(%ebp),%eax
    829b:	89 50 24             	mov    %edx,0x24(%eax)
    829e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82a1:	e9 04 01 00 00       	jmp    83aa <get_inode+0x161>
    82a6:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    82aa:	75 06                	jne    82b2 <get_inode+0x69>
    82ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
    82af:	89 45 f0             	mov    %eax,-0x10(%ebp)
    82b2:	83 45 f4 2c          	addl   $0x2c,-0xc(%ebp)
    82b6:	81 7d f4 20 44 01 00 	cmpl   $0x14420,-0xc(%ebp)
    82bd:	72 b0                	jb     826f <get_inode+0x26>
    82bf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    82c3:	75 10                	jne    82d5 <get_inode+0x8c>
    82c5:	83 ec 0c             	sub    $0xc,%esp
    82c8:	68 c0 e2 00 00       	push   $0xe2c0
    82cd:	e8 74 9a ff ff       	call   1d46 <panic>
    82d2:	83 c4 10             	add    $0x10,%esp
    82d5:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82d8:	8b 55 08             	mov    0x8(%ebp),%edx
    82db:	89 50 20             	mov    %edx,0x20(%eax)
    82de:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82e1:	8b 55 0c             	mov    0xc(%ebp),%edx
    82e4:	89 50 28             	mov    %edx,0x28(%eax)
    82e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82ea:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    82f1:	83 ec 0c             	sub    $0xc,%esp
    82f4:	ff 75 08             	pushl  0x8(%ebp)
    82f7:	e8 07 ff ff ff       	call   8203 <get_super_block>
    82fc:	83 c4 10             	add    $0x10,%esp
    82ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8302:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8305:	8b 50 0c             	mov    0xc(%eax),%edx
    8308:	8b 45 ec             	mov    -0x14(%ebp),%eax
    830b:	8b 40 10             	mov    0x10(%eax),%eax
    830e:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8311:	8b 45 0c             	mov    0xc(%ebp),%eax
    8314:	83 e8 01             	sub    $0x1,%eax
    8317:	8d 50 0f             	lea    0xf(%eax),%edx
    831a:	85 c0                	test   %eax,%eax
    831c:	0f 48 c2             	cmovs  %edx,%eax
    831f:	c1 f8 04             	sar    $0x4,%eax
    8322:	01 c8                	add    %ecx,%eax
    8324:	83 c0 02             	add    $0x2,%eax
    8327:	89 45 e8             	mov    %eax,-0x18(%ebp)
    832a:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8330:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8333:	c1 e0 09             	shl    $0x9,%eax
    8336:	99                   	cltd   
    8337:	83 ec 04             	sub    $0x4,%esp
    833a:	51                   	push   %ecx
    833b:	6a 03                	push   $0x3
    833d:	68 00 02 00 00       	push   $0x200
    8342:	52                   	push   %edx
    8343:	50                   	push   %eax
    8344:	ff 75 08             	pushl  0x8(%ebp)
    8347:	68 eb 03 00 00       	push   $0x3eb
    834c:	e8 aa fc ff ff       	call   7ffb <rw_sector>
    8351:	83 c4 20             	add    $0x20,%esp
    8354:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    835a:	8b 45 0c             	mov    0xc(%ebp),%eax
    835d:	8d 50 ff             	lea    -0x1(%eax),%edx
    8360:	89 d0                	mov    %edx,%eax
    8362:	c1 f8 1f             	sar    $0x1f,%eax
    8365:	c1 e8 1c             	shr    $0x1c,%eax
    8368:	01 c2                	add    %eax,%edx
    836a:	83 e2 0f             	and    $0xf,%edx
    836d:	29 c2                	sub    %eax,%edx
    836f:	89 d0                	mov    %edx,%eax
    8371:	c1 e0 05             	shl    $0x5,%eax
    8374:	01 c8                	add    %ecx,%eax
    8376:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8379:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    837c:	8b 10                	mov    (%eax),%edx
    837e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8381:	89 10                	mov    %edx,(%eax)
    8383:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8386:	8b 50 04             	mov    0x4(%eax),%edx
    8389:	8b 45 f0             	mov    -0x10(%ebp),%eax
    838c:	89 50 04             	mov    %edx,0x4(%eax)
    838f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8392:	8b 50 08             	mov    0x8(%eax),%edx
    8395:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8398:	89 50 08             	mov    %edx,0x8(%eax)
    839b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    839e:	8b 50 0c             	mov    0xc(%eax),%edx
    83a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83a4:	89 50 0c             	mov    %edx,0xc(%eax)
    83a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    83aa:	c9                   	leave  
    83ab:	c3                   	ret    

000083ac <put_inode>:
    83ac:	55                   	push   %ebp
    83ad:	89 e5                	mov    %esp,%ebp
    83af:	83 ec 08             	sub    $0x8,%esp
    83b2:	8b 45 08             	mov    0x8(%ebp),%eax
    83b5:	8b 40 24             	mov    0x24(%eax),%eax
    83b8:	85 c0                	test   %eax,%eax
    83ba:	7f 1c                	jg     83d8 <put_inode+0x2c>
    83bc:	68 17 02 00 00       	push   $0x217
    83c1:	68 5f e0 00 00       	push   $0xe05f
    83c6:	68 5f e0 00 00       	push   $0xe05f
    83cb:	68 d8 e2 00 00       	push   $0xe2d8
    83d0:	e8 08 43 00 00       	call   c6dd <assertion_failure>
    83d5:	83 c4 10             	add    $0x10,%esp
    83d8:	8b 45 08             	mov    0x8(%ebp),%eax
    83db:	8b 40 24             	mov    0x24(%eax),%eax
    83de:	8d 50 ff             	lea    -0x1(%eax),%edx
    83e1:	8b 45 08             	mov    0x8(%ebp),%eax
    83e4:	89 50 24             	mov    %edx,0x24(%eax)
    83e7:	90                   	nop
    83e8:	c9                   	leave  
    83e9:	c3                   	ret    

000083ea <sync_inode>:
    83ea:	55                   	push   %ebp
    83eb:	89 e5                	mov    %esp,%ebp
    83ed:	53                   	push   %ebx
    83ee:	83 ec 14             	sub    $0x14,%esp
    83f1:	8b 45 08             	mov    0x8(%ebp),%eax
    83f4:	8b 40 20             	mov    0x20(%eax),%eax
    83f7:	83 ec 0c             	sub    $0xc,%esp
    83fa:	50                   	push   %eax
    83fb:	e8 03 fe ff ff       	call   8203 <get_super_block>
    8400:	83 c4 10             	add    $0x10,%esp
    8403:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8406:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8409:	8b 50 0c             	mov    0xc(%eax),%edx
    840c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    840f:	8b 40 10             	mov    0x10(%eax),%eax
    8412:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
    8415:	8b 45 08             	mov    0x8(%ebp),%eax
    8418:	8b 40 28             	mov    0x28(%eax),%eax
    841b:	83 e8 01             	sub    $0x1,%eax
    841e:	8d 50 0f             	lea    0xf(%eax),%edx
    8421:	85 c0                	test   %eax,%eax
    8423:	0f 48 c2             	cmovs  %edx,%eax
    8426:	c1 f8 04             	sar    $0x4,%eax
    8429:	01 c8                	add    %ecx,%eax
    842b:	83 c0 02             	add    $0x2,%eax
    842e:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8431:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8437:	8b 45 f0             	mov    -0x10(%ebp),%eax
    843a:	c1 e0 09             	shl    $0x9,%eax
    843d:	99                   	cltd   
    843e:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8441:	8b 49 20             	mov    0x20(%ecx),%ecx
    8444:	83 ec 04             	sub    $0x4,%esp
    8447:	53                   	push   %ebx
    8448:	6a 03                	push   $0x3
    844a:	68 00 02 00 00       	push   $0x200
    844f:	52                   	push   %edx
    8450:	50                   	push   %eax
    8451:	51                   	push   %ecx
    8452:	68 eb 03 00 00       	push   $0x3eb
    8457:	e8 9f fb ff ff       	call   7ffb <rw_sector>
    845c:	83 c4 20             	add    $0x20,%esp
    845f:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8465:	8b 45 08             	mov    0x8(%ebp),%eax
    8468:	8b 40 28             	mov    0x28(%eax),%eax
    846b:	8d 50 ff             	lea    -0x1(%eax),%edx
    846e:	89 d0                	mov    %edx,%eax
    8470:	c1 f8 1f             	sar    $0x1f,%eax
    8473:	c1 e8 1c             	shr    $0x1c,%eax
    8476:	01 c2                	add    %eax,%edx
    8478:	83 e2 0f             	and    $0xf,%edx
    847b:	29 c2                	sub    %eax,%edx
    847d:	89 d0                	mov    %edx,%eax
    847f:	c1 e0 05             	shl    $0x5,%eax
    8482:	01 c8                	add    %ecx,%eax
    8484:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8487:	8b 45 08             	mov    0x8(%ebp),%eax
    848a:	8b 10                	mov    (%eax),%edx
    848c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    848f:	89 10                	mov    %edx,(%eax)
    8491:	8b 45 08             	mov    0x8(%ebp),%eax
    8494:	8b 50 04             	mov    0x4(%eax),%edx
    8497:	8b 45 ec             	mov    -0x14(%ebp),%eax
    849a:	89 50 04             	mov    %edx,0x4(%eax)
    849d:	8b 45 08             	mov    0x8(%ebp),%eax
    84a0:	8b 50 08             	mov    0x8(%eax),%edx
    84a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84a6:	89 50 08             	mov    %edx,0x8(%eax)
    84a9:	8b 45 08             	mov    0x8(%ebp),%eax
    84ac:	8b 50 0c             	mov    0xc(%eax),%edx
    84af:	8b 45 ec             	mov    -0x14(%ebp),%eax
    84b2:	89 50 0c             	mov    %edx,0xc(%eax)
    84b5:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    84bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    84be:	c1 e0 09             	shl    $0x9,%eax
    84c1:	99                   	cltd   
    84c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
    84c5:	8b 49 20             	mov    0x20(%ecx),%ecx
    84c8:	83 ec 04             	sub    $0x4,%esp
    84cb:	53                   	push   %ebx
    84cc:	6a 03                	push   $0x3
    84ce:	68 00 02 00 00       	push   $0x200
    84d3:	52                   	push   %edx
    84d4:	50                   	push   %eax
    84d5:	51                   	push   %ecx
    84d6:	68 ec 03 00 00       	push   $0x3ec
    84db:	e8 1b fb ff ff       	call   7ffb <rw_sector>
    84e0:	83 c4 20             	add    $0x20,%esp
    84e3:	90                   	nop
    84e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    84e7:	c9                   	leave  
    84e8:	c3                   	ret    

000084e9 <fs_fork>:
    84e9:	55                   	push   %ebp
    84ea:	89 e5                	mov    %esp,%ebp
    84ec:	83 ec 10             	sub    $0x10,%esp
    84ef:	a1 6c 95 03 00       	mov    0x3956c,%eax
    84f4:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    84fa:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    84ff:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8502:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    8509:	eb 44                	jmp    854f <fs_fork+0x66>
    850b:	8b 45 f8             	mov    -0x8(%ebp),%eax
    850e:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8511:	83 c2 24             	add    $0x24,%edx
    8514:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8518:	85 c0                	test   %eax,%eax
    851a:	74 2f                	je     854b <fs_fork+0x62>
    851c:	8b 45 f8             	mov    -0x8(%ebp),%eax
    851f:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8522:	83 c2 24             	add    $0x24,%edx
    8525:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8529:	8b 50 08             	mov    0x8(%eax),%edx
    852c:	83 c2 01             	add    $0x1,%edx
    852f:	89 50 08             	mov    %edx,0x8(%eax)
    8532:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8535:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8538:	83 c2 24             	add    $0x24,%edx
    853b:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    853f:	8b 40 0c             	mov    0xc(%eax),%eax
    8542:	8b 50 24             	mov    0x24(%eax),%edx
    8545:	83 c2 01             	add    $0x1,%edx
    8548:	89 50 24             	mov    %edx,0x24(%eax)
    854b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    854f:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    8553:	7e b6                	jle    850b <fs_fork+0x22>
    8555:	b8 00 00 00 00       	mov    $0x0,%eax
    855a:	c9                   	leave  
    855b:	c3                   	ret    

0000855c <fs_exit>:
    855c:	55                   	push   %ebp
    855d:	89 e5                	mov    %esp,%ebp
    855f:	83 ec 10             	sub    $0x10,%esp
    8562:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8567:	69 c0 98 01 00 00    	imul   $0x198,%eax,%eax
    856d:	05 a0 a4 03 00       	add    $0x3a4a0,%eax
    8572:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8575:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    857c:	eb 70                	jmp    85ee <fs_exit+0x92>
    857e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8581:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8584:	83 c2 24             	add    $0x24,%edx
    8587:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    858b:	85 c0                	test   %eax,%eax
    858d:	74 5b                	je     85ea <fs_exit+0x8e>
    858f:	8b 45 f8             	mov    -0x8(%ebp),%eax
    8592:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8595:	83 c2 24             	add    $0x24,%edx
    8598:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    859c:	8b 40 0c             	mov    0xc(%eax),%eax
    859f:	8b 50 24             	mov    0x24(%eax),%edx
    85a2:	83 ea 01             	sub    $0x1,%edx
    85a5:	89 50 24             	mov    %edx,0x24(%eax)
    85a8:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85ab:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85ae:	83 c2 24             	add    $0x24,%edx
    85b1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    85b5:	8b 50 08             	mov    0x8(%eax),%edx
    85b8:	83 ea 01             	sub    $0x1,%edx
    85bb:	89 50 08             	mov    %edx,0x8(%eax)
    85be:	8b 40 08             	mov    0x8(%eax),%eax
    85c1:	85 c0                	test   %eax,%eax
    85c3:	75 14                	jne    85d9 <fs_exit+0x7d>
    85c5:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85c8:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85cb:	83 c2 24             	add    $0x24,%edx
    85ce:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    85d2:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    85d9:	8b 45 f8             	mov    -0x8(%ebp),%eax
    85dc:	8b 55 fc             	mov    -0x4(%ebp),%edx
    85df:	83 c2 24             	add    $0x24,%edx
    85e2:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    85e9:	00 
    85ea:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    85ee:	83 7d fc 3f          	cmpl   $0x3f,-0x4(%ebp)
    85f2:	7e 8a                	jle    857e <fs_exit+0x22>
    85f4:	b8 00 00 00 00       	mov    $0x0,%eax
    85f9:	c9                   	leave  
    85fa:	c3                   	ret    

000085fb <do_open>:
    85fb:	55                   	push   %ebp
    85fc:	89 e5                	mov    %esp,%ebp
    85fe:	53                   	push   %ebx
    85ff:	81 ec 34 01 00 00    	sub    $0x134,%esp
    8605:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
    860c:	a1 68 95 03 00       	mov    0x39568,%eax
    8611:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8614:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8619:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    861c:	a1 60 95 03 00       	mov    0x39560,%eax
    8621:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8624:	83 7d e4 7f          	cmpl   $0x7f,-0x1c(%ebp)
    8628:	7e 19                	jle    8643 <do_open+0x48>
    862a:	6a 33                	push   $0x33
    862c:	68 ec e2 00 00       	push   $0xe2ec
    8631:	68 ec e2 00 00       	push   $0xe2ec
    8636:	68 f6 e2 00 00       	push   $0xe2f6
    863b:	e8 9d 40 00 00       	call   c6dd <assertion_failure>
    8640:	83 c4 10             	add    $0x10,%esp
    8643:	a1 88 95 03 00       	mov    0x39588,%eax
    8648:	83 ec 08             	sub    $0x8,%esp
    864b:	50                   	push   %eax
    864c:	ff 75 e0             	pushl  -0x20(%ebp)
    864f:	e8 b3 ba ff ff       	call   4107 <va2la>
    8654:	83 c4 10             	add    $0x10,%esp
    8657:	89 c3                	mov    %eax,%ebx
    8659:	83 ec 08             	sub    $0x8,%esp
    865c:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8662:	50                   	push   %eax
    8663:	6a 03                	push   $0x3
    8665:	e8 9d ba ff ff       	call   4107 <va2la>
    866a:	83 c4 10             	add    $0x10,%esp
    866d:	83 ec 04             	sub    $0x4,%esp
    8670:	ff 75 e4             	pushl  -0x1c(%ebp)
    8673:	53                   	push   %ebx
    8674:	50                   	push   %eax
    8675:	e8 d6 3d 00 00       	call   c450 <memcpy>
    867a:	83 c4 10             	add    $0x10,%esp
    867d:	8d 95 54 ff ff ff    	lea    -0xac(%ebp),%edx
    8683:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8686:	01 d0                	add    %edx,%eax
    8688:	c6 00 00             	movb   $0x0,(%eax)
    868b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8692:	eb 1f                	jmp    86b3 <do_open+0xb8>
    8694:	a1 44 88 03 00       	mov    0x38844,%eax
    8699:	8b 55 f0             	mov    -0x10(%ebp),%edx
    869c:	83 c2 24             	add    $0x24,%edx
    869f:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    86a3:	85 c0                	test   %eax,%eax
    86a5:	75 08                	jne    86af <do_open+0xb4>
    86a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    86aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    86ad:	eb 0a                	jmp    86b9 <do_open+0xbe>
    86af:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    86b3:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    86b7:	7e db                	jle    8694 <do_open+0x99>
    86b9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    86bd:	78 06                	js     86c5 <do_open+0xca>
    86bf:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
    86c3:	7e 24                	jle    86e9 <do_open+0xee>
    86c5:	a1 44 88 03 00       	mov    0x38844,%eax
    86ca:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    86cf:	c1 f8 03             	sar    $0x3,%eax
    86d2:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    86d8:	83 ec 08             	sub    $0x8,%esp
    86db:	50                   	push   %eax
    86dc:	68 0a e3 00 00       	push   $0xe30a
    86e1:	e8 60 96 ff ff       	call   1d46 <panic>
    86e6:	83 c4 10             	add    $0x10,%esp
    86e9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    86f0:	eb 15                	jmp    8707 <do_open+0x10c>
    86f2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    86f5:	c1 e0 04             	shl    $0x4,%eax
    86f8:	05 ac 95 03 00       	add    $0x395ac,%eax
    86fd:	8b 00                	mov    (%eax),%eax
    86ff:	85 c0                	test   %eax,%eax
    8701:	74 0c                	je     870f <do_open+0x114>
    8703:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8707:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    870b:	7e e5                	jle    86f2 <do_open+0xf7>
    870d:	eb 01                	jmp    8710 <do_open+0x115>
    870f:	90                   	nop
    8710:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)
    8714:	7e 24                	jle    873a <do_open+0x13f>
    8716:	a1 44 88 03 00       	mov    0x38844,%eax
    871b:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    8720:	c1 f8 03             	sar    $0x3,%eax
    8723:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    8729:	83 ec 08             	sub    $0x8,%esp
    872c:	50                   	push   %eax
    872d:	68 24 e3 00 00       	push   $0xe324
    8732:	e8 0f 96 ff ff       	call   1d46 <panic>
    8737:	83 c4 10             	add    $0x10,%esp
    873a:	83 ec 0c             	sub    $0xc,%esp
    873d:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    8743:	50                   	push   %eax
    8744:	e8 23 0b 00 00       	call   926c <search_file>
    8749:	83 c4 10             	add    $0x10,%esp
    874c:	89 45 dc             	mov    %eax,-0x24(%ebp)
    874f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8756:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8759:	83 e0 01             	and    $0x1,%eax
    875c:	85 c0                	test   %eax,%eax
    875e:	74 3a                	je     879a <do_open+0x19f>
    8760:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    8764:	74 1a                	je     8780 <do_open+0x185>
    8766:	83 ec 0c             	sub    $0xc,%esp
    8769:	68 44 e3 00 00       	push   $0xe344
    876e:	e8 92 39 00 00       	call   c105 <printl>
    8773:	83 c4 10             	add    $0x10,%esp
    8776:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    877b:	e9 04 02 00 00       	jmp    8984 <do_open+0x389>
    8780:	83 ec 08             	sub    $0x8,%esp
    8783:	ff 75 e8             	pushl  -0x18(%ebp)
    8786:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    878c:	50                   	push   %eax
    878d:	e8 f7 01 00 00       	call   8989 <create_file>
    8792:	83 c4 10             	add    $0x10,%esp
    8795:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8798:	eb 6c                	jmp    8806 <do_open+0x20b>
    879a:	8b 45 e8             	mov    -0x18(%ebp),%eax
    879d:	83 e0 02             	and    $0x2,%eax
    87a0:	85 c0                	test   %eax,%eax
    87a2:	75 19                	jne    87bd <do_open+0x1c2>
    87a4:	6a 58                	push   $0x58
    87a6:	68 ec e2 00 00       	push   $0xe2ec
    87ab:	68 ec e2 00 00       	push   $0xe2ec
    87b0:	68 57 e3 00 00       	push   $0xe357
    87b5:	e8 23 3f 00 00       	call   c6dd <assertion_failure>
    87ba:	83 c4 10             	add    $0x10,%esp
    87bd:	83 ec 04             	sub    $0x4,%esp
    87c0:	8d 85 50 ff ff ff    	lea    -0xb0(%ebp),%eax
    87c6:	50                   	push   %eax
    87c7:	8d 85 54 ff ff ff    	lea    -0xac(%ebp),%eax
    87cd:	50                   	push   %eax
    87ce:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    87d4:	50                   	push   %eax
    87d5:	e8 e8 0b 00 00       	call   93c2 <strip_path>
    87da:	83 c4 10             	add    $0x10,%esp
    87dd:	85 c0                	test   %eax,%eax
    87df:	74 0a                	je     87eb <do_open+0x1f0>
    87e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    87e6:	e9 99 01 00 00       	jmp    8984 <do_open+0x389>
    87eb:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
    87f1:	8b 40 20             	mov    0x20(%eax),%eax
    87f4:	83 ec 08             	sub    $0x8,%esp
    87f7:	ff 75 dc             	pushl  -0x24(%ebp)
    87fa:	50                   	push   %eax
    87fb:	e8 49 fa ff ff       	call   8249 <get_inode>
    8800:	83 c4 10             	add    $0x10,%esp
    8803:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8806:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    880a:	0f 84 6a 01 00 00    	je     897a <do_open+0x37f>
    8810:	a1 44 88 03 00       	mov    0x38844,%eax
    8815:	8b 55 f0             	mov    -0x10(%ebp),%edx
    8818:	c1 e2 04             	shl    $0x4,%edx
    881b:	8d 8a a0 95 03 00    	lea    0x395a0(%edx),%ecx
    8821:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8824:	83 c2 24             	add    $0x24,%edx
    8827:	89 4c 90 08          	mov    %ecx,0x8(%eax,%edx,4)
    882b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    882e:	c1 e0 04             	shl    $0x4,%eax
    8831:	8d 90 ac 95 03 00    	lea    0x395ac(%eax),%edx
    8837:	8b 45 ec             	mov    -0x14(%ebp),%eax
    883a:	89 02                	mov    %eax,(%edx)
    883c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    883f:	c1 e0 04             	shl    $0x4,%eax
    8842:	8d 90 a0 95 03 00    	lea    0x395a0(%eax),%edx
    8848:	8b 45 e8             	mov    -0x18(%ebp),%eax
    884b:	89 02                	mov    %eax,(%edx)
    884d:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8850:	c1 e0 04             	shl    $0x4,%eax
    8853:	05 a8 95 03 00       	add    $0x395a8,%eax
    8858:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    885e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8861:	c1 e0 04             	shl    $0x4,%eax
    8864:	05 a4 95 03 00       	add    $0x395a4,%eax
    8869:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    886f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8872:	8b 00                	mov    (%eax),%eax
    8874:	25 00 f0 00 00       	and    $0xf000,%eax
    8879:	89 45 d8             	mov    %eax,-0x28(%ebp)
    887c:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
    8883:	0f 85 9b 00 00 00    	jne    8924 <do_open+0x329>
    8889:	c7 85 d4 fe ff ff e9 	movl   $0x3e9,-0x12c(%ebp)
    8890:	03 00 00 
    8893:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8896:	8b 40 08             	mov    0x8(%eax),%eax
    8899:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    889c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    889f:	0f b6 c0             	movzbl %al,%eax
    88a2:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
    88a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    88ab:	c1 f8 08             	sar    $0x8,%eax
    88ae:	0f b6 c0             	movzbl %al,%eax
    88b1:	83 f8 04             	cmp    $0x4,%eax
    88b4:	74 19                	je     88cf <do_open+0x2d4>
    88b6:	6a 73                	push   $0x73
    88b8:	68 ec e2 00 00       	push   $0xe2ec
    88bd:	68 ec e2 00 00       	push   $0xe2ec
    88c2:	68 66 e3 00 00       	push   $0xe366
    88c7:	e8 11 3e 00 00       	call   c6dd <assertion_failure>
    88cc:	83 c4 10             	add    $0x10,%esp
    88cf:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    88d2:	c1 f8 08             	sar    $0x8,%eax
    88d5:	0f b6 c0             	movzbl %al,%eax
    88d8:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    88df:	83 f8 ec             	cmp    $0xffffffec,%eax
    88e2:	75 19                	jne    88fd <do_open+0x302>
    88e4:	6a 75                	push   $0x75
    88e6:	68 ec e2 00 00       	push   $0xe2ec
    88eb:	68 ec e2 00 00       	push   $0xe2ec
    88f0:	68 78 e3 00 00       	push   $0xe378
    88f5:	e8 e3 3d 00 00       	call   c6dd <assertion_failure>
    88fa:	83 c4 10             	add    $0x10,%esp
    88fd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    8900:	c1 f8 08             	sar    $0x8,%eax
    8903:	0f b6 c0             	movzbl %al,%eax
    8906:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    890d:	83 ec 04             	sub    $0x4,%esp
    8910:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
    8916:	52                   	push   %edx
    8917:	50                   	push   %eax
    8918:	6a 03                	push   $0x3
    891a:	e8 a9 3b 00 00       	call   c4c8 <send_recv>
    891f:	83 c4 10             	add    $0x10,%esp
    8922:	eb 5d                	jmp    8981 <do_open+0x386>
    8924:	81 7d d8 00 40 00 00 	cmpl   $0x4000,-0x28(%ebp)
    892b:	75 26                	jne    8953 <do_open+0x358>
    892d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8930:	8b 40 28             	mov    0x28(%eax),%eax
    8933:	83 f8 01             	cmp    $0x1,%eax
    8936:	74 49                	je     8981 <do_open+0x386>
    8938:	6a 7b                	push   $0x7b
    893a:	68 ec e2 00 00       	push   $0xe2ec
    893f:	68 ec e2 00 00       	push   $0xe2ec
    8944:	68 a7 e3 00 00       	push   $0xe3a7
    8949:	e8 8f 3d 00 00       	call   c6dd <assertion_failure>
    894e:	83 c4 10             	add    $0x10,%esp
    8951:	eb 2e                	jmp    8981 <do_open+0x386>
    8953:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8956:	8b 00                	mov    (%eax),%eax
    8958:	3d 00 80 00 00       	cmp    $0x8000,%eax
    895d:	74 22                	je     8981 <do_open+0x386>
    895f:	6a 7e                	push   $0x7e
    8961:	68 ec e2 00 00       	push   $0xe2ec
    8966:	68 ec e2 00 00       	push   $0xe2ec
    896b:	68 c0 e3 00 00       	push   $0xe3c0
    8970:	e8 68 3d 00 00       	call   c6dd <assertion_failure>
    8975:	83 c4 10             	add    $0x10,%esp
    8978:	eb 07                	jmp    8981 <do_open+0x386>
    897a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    897f:	eb 03                	jmp    8984 <do_open+0x389>
    8981:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8984:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8987:	c9                   	leave  
    8988:	c3                   	ret    

00008989 <create_file>:
    8989:	55                   	push   %ebp
    898a:	89 e5                	mov    %esp,%ebp
    898c:	81 ec 98 00 00 00    	sub    $0x98,%esp
    8992:	83 ec 04             	sub    $0x4,%esp
    8995:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    899b:	50                   	push   %eax
    899c:	ff 75 08             	pushl  0x8(%ebp)
    899f:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
    89a5:	50                   	push   %eax
    89a6:	e8 17 0a 00 00       	call   93c2 <strip_path>
    89ab:	83 c4 10             	add    $0x10,%esp
    89ae:	85 c0                	test   %eax,%eax
    89b0:	74 07                	je     89b9 <create_file+0x30>
    89b2:	b8 00 00 00 00       	mov    $0x0,%eax
    89b7:	eb 76                	jmp    8a2f <create_file+0xa6>
    89b9:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    89bf:	8b 40 20             	mov    0x20(%eax),%eax
    89c2:	83 ec 0c             	sub    $0xc,%esp
    89c5:	50                   	push   %eax
    89c6:	e8 91 01 00 00       	call   8b5c <alloc_imap_bit>
    89cb:	83 c4 10             	add    $0x10,%esp
    89ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
    89d1:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    89d7:	8b 40 20             	mov    0x20(%eax),%eax
    89da:	83 ec 08             	sub    $0x8,%esp
    89dd:	68 00 08 00 00       	push   $0x800
    89e2:	50                   	push   %eax
    89e3:	e8 e1 02 00 00       	call   8cc9 <alloc_smap_bit>
    89e8:	83 c4 10             	add    $0x10,%esp
    89eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    89ee:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    89f4:	8b 40 20             	mov    0x20(%eax),%eax
    89f7:	83 ec 04             	sub    $0x4,%esp
    89fa:	ff 75 f0             	pushl  -0x10(%ebp)
    89fd:	ff 75 f4             	pushl  -0xc(%ebp)
    8a00:	50                   	push   %eax
    8a01:	e8 ce 04 00 00       	call   8ed4 <new_inode>
    8a06:	83 c4 10             	add    $0x10,%esp
    8a09:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8a0c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a0f:	8b 50 28             	mov    0x28(%eax),%edx
    8a12:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
    8a18:	83 ec 04             	sub    $0x4,%esp
    8a1b:	8d 8d 6c ff ff ff    	lea    -0x94(%ebp),%ecx
    8a21:	51                   	push   %ecx
    8a22:	52                   	push   %edx
    8a23:	50                   	push   %eax
    8a24:	e8 1a 05 00 00       	call   8f43 <new_dir_entry>
    8a29:	83 c4 10             	add    $0x10,%esp
    8a2c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8a2f:	c9                   	leave  
    8a30:	c3                   	ret    

00008a31 <do_close>:
    8a31:	55                   	push   %ebp
    8a32:	89 e5                	mov    %esp,%ebp
    8a34:	83 ec 18             	sub    $0x18,%esp
    8a37:	a1 68 95 03 00       	mov    0x39568,%eax
    8a3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8a3f:	a1 44 88 03 00       	mov    0x38844,%eax
    8a44:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a47:	83 c2 24             	add    $0x24,%edx
    8a4a:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8a4e:	8b 40 0c             	mov    0xc(%eax),%eax
    8a51:	83 ec 0c             	sub    $0xc,%esp
    8a54:	50                   	push   %eax
    8a55:	e8 52 f9 ff ff       	call   83ac <put_inode>
    8a5a:	83 c4 10             	add    $0x10,%esp
    8a5d:	a1 44 88 03 00       	mov    0x38844,%eax
    8a62:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a65:	83 c2 24             	add    $0x24,%edx
    8a68:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8a6c:	8b 50 08             	mov    0x8(%eax),%edx
    8a6f:	83 ea 01             	sub    $0x1,%edx
    8a72:	89 50 08             	mov    %edx,0x8(%eax)
    8a75:	8b 40 08             	mov    0x8(%eax),%eax
    8a78:	85 c0                	test   %eax,%eax
    8a7a:	75 16                	jne    8a92 <do_close+0x61>
    8a7c:	a1 44 88 03 00       	mov    0x38844,%eax
    8a81:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a84:	83 c2 24             	add    $0x24,%edx
    8a87:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8a8b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    8a92:	a1 44 88 03 00       	mov    0x38844,%eax
    8a97:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8a9a:	83 c2 24             	add    $0x24,%edx
    8a9d:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
    8aa4:	00 
    8aa5:	b8 00 00 00 00       	mov    $0x0,%eax
    8aaa:	c9                   	leave  
    8aab:	c3                   	ret    

00008aac <do_lseek>:
    8aac:	55                   	push   %ebp
    8aad:	89 e5                	mov    %esp,%ebp
    8aaf:	83 ec 20             	sub    $0x20,%esp
    8ab2:	a1 68 95 03 00       	mov    0x39568,%eax
    8ab7:	89 45 f8             	mov    %eax,-0x8(%ebp)
    8aba:	a1 6c 95 03 00       	mov    0x3956c,%eax
    8abf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8ac2:	a1 70 95 03 00       	mov    0x39570,%eax
    8ac7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8aca:	a1 44 88 03 00       	mov    0x38844,%eax
    8acf:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8ad2:	83 c2 24             	add    $0x24,%edx
    8ad5:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8ad9:	8b 40 04             	mov    0x4(%eax),%eax
    8adc:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8adf:	a1 44 88 03 00       	mov    0x38844,%eax
    8ae4:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8ae7:	83 c2 24             	add    $0x24,%edx
    8aea:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8aee:	8b 40 0c             	mov    0xc(%eax),%eax
    8af1:	8b 40 04             	mov    0x4(%eax),%eax
    8af4:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8af7:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
    8afb:	74 14                	je     8b11 <do_lseek+0x65>
    8afd:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
    8b01:	74 16                	je     8b19 <do_lseek+0x6d>
    8b03:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
    8b07:	75 1d                	jne    8b26 <do_lseek+0x7a>
    8b09:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b0c:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8b0f:	eb 1c                	jmp    8b2d <do_lseek+0x81>
    8b11:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b14:	01 45 fc             	add    %eax,-0x4(%ebp)
    8b17:	eb 14                	jmp    8b2d <do_lseek+0x81>
    8b19:	8b 55 ec             	mov    -0x14(%ebp),%edx
    8b1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8b1f:	01 d0                	add    %edx,%eax
    8b21:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8b24:	eb 07                	jmp    8b2d <do_lseek+0x81>
    8b26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b2b:	eb 2d                	jmp    8b5a <do_lseek+0xae>
    8b2d:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8b30:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    8b33:	7f 06                	jg     8b3b <do_lseek+0x8f>
    8b35:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    8b39:	79 07                	jns    8b42 <do_lseek+0x96>
    8b3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b40:	eb 18                	jmp    8b5a <do_lseek+0xae>
    8b42:	a1 44 88 03 00       	mov    0x38844,%eax
    8b47:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8b4a:	83 c2 24             	add    $0x24,%edx
    8b4d:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    8b51:	8b 55 fc             	mov    -0x4(%ebp),%edx
    8b54:	89 50 04             	mov    %edx,0x4(%eax)
    8b57:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8b5a:	c9                   	leave  
    8b5b:	c3                   	ret    

00008b5c <alloc_imap_bit>:
    8b5c:	55                   	push   %ebp
    8b5d:	89 e5                	mov    %esp,%ebp
    8b5f:	53                   	push   %ebx
    8b60:	83 ec 24             	sub    $0x24,%esp
    8b63:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8b6a:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%ebp)
    8b71:	83 ec 0c             	sub    $0xc,%esp
    8b74:	ff 75 08             	pushl  0x8(%ebp)
    8b77:	e8 87 f6 ff ff       	call   8203 <get_super_block>
    8b7c:	83 c4 10             	add    $0x10,%esp
    8b7f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8b82:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    8b89:	90                   	nop
    8b8a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8b8d:	8b 50 0c             	mov    0xc(%eax),%edx
    8b90:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8b93:	39 c2                	cmp    %eax,%edx
    8b95:	0f 86 14 01 00 00    	jbe    8caf <alloc_imap_bit+0x153>
    8b9b:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8ba1:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8ba4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8ba7:	01 d0                	add    %edx,%eax
    8ba9:	c1 e0 09             	shl    $0x9,%eax
    8bac:	99                   	cltd   
    8bad:	83 ec 04             	sub    $0x4,%esp
    8bb0:	51                   	push   %ecx
    8bb1:	6a 03                	push   $0x3
    8bb3:	68 00 02 00 00       	push   $0x200
    8bb8:	52                   	push   %edx
    8bb9:	50                   	push   %eax
    8bba:	ff 75 08             	pushl  0x8(%ebp)
    8bbd:	68 eb 03 00 00       	push   $0x3eb
    8bc2:	e8 34 f4 ff ff       	call   7ffb <rw_sector>
    8bc7:	83 c4 20             	add    $0x20,%esp
    8bca:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8bd1:	e9 c7 00 00 00       	jmp    8c9d <alloc_imap_bit+0x141>
    8bd6:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8bdc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8bdf:	01 d0                	add    %edx,%eax
    8be1:	0f b6 00             	movzbl (%eax),%eax
    8be4:	3c ff                	cmp    $0xff,%al
    8be6:	75 09                	jne    8bf1 <alloc_imap_bit+0x95>
    8be8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8bec:	e9 ac 00 00 00       	jmp    8c9d <alloc_imap_bit+0x141>
    8bf1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8bf8:	eb 04                	jmp    8bfe <alloc_imap_bit+0xa2>
    8bfa:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8bfe:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c04:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c07:	01 d0                	add    %edx,%eax
    8c09:	0f b6 00             	movzbl (%eax),%eax
    8c0c:	0f b6 d0             	movzbl %al,%edx
    8c0f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c12:	89 c1                	mov    %eax,%ecx
    8c14:	d3 fa                	sar    %cl,%edx
    8c16:	89 d0                	mov    %edx,%eax
    8c18:	83 e0 01             	and    $0x1,%eax
    8c1b:	85 c0                	test   %eax,%eax
    8c1d:	75 db                	jne    8bfa <alloc_imap_bit+0x9e>
    8c1f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8c22:	c1 e0 09             	shl    $0x9,%eax
    8c25:	89 c2                	mov    %eax,%edx
    8c27:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c2a:	01 d0                	add    %edx,%eax
    8c2c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8c33:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c36:	01 d0                	add    %edx,%eax
    8c38:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8c3b:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c41:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c44:	01 d0                	add    %edx,%eax
    8c46:	0f b6 00             	movzbl (%eax),%eax
    8c49:	89 c3                	mov    %eax,%ebx
    8c4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8c4e:	ba 01 00 00 00       	mov    $0x1,%edx
    8c53:	89 c1                	mov    %eax,%ecx
    8c55:	d3 e2                	shl    %cl,%edx
    8c57:	89 d0                	mov    %edx,%eax
    8c59:	09 c3                	or     %eax,%ebx
    8c5b:	89 d9                	mov    %ebx,%ecx
    8c5d:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8c63:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8c66:	01 d0                	add    %edx,%eax
    8c68:	89 ca                	mov    %ecx,%edx
    8c6a:	88 10                	mov    %dl,(%eax)
    8c6c:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8c72:	8b 55 e8             	mov    -0x18(%ebp),%edx
    8c75:	8b 45 e0             	mov    -0x20(%ebp),%eax
    8c78:	01 d0                	add    %edx,%eax
    8c7a:	c1 e0 09             	shl    $0x9,%eax
    8c7d:	99                   	cltd   
    8c7e:	83 ec 04             	sub    $0x4,%esp
    8c81:	51                   	push   %ecx
    8c82:	6a 03                	push   $0x3
    8c84:	68 00 02 00 00       	push   $0x200
    8c89:	52                   	push   %edx
    8c8a:	50                   	push   %eax
    8c8b:	ff 75 08             	pushl  0x8(%ebp)
    8c8e:	68 ec 03 00 00       	push   $0x3ec
    8c93:	e8 63 f3 ff ff       	call   7ffb <rw_sector>
    8c98:	83 c4 20             	add    $0x20,%esp
    8c9b:	eb 0d                	jmp    8caa <alloc_imap_bit+0x14e>
    8c9d:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8ca4:	0f 8e 2c ff ff ff    	jle    8bd6 <alloc_imap_bit+0x7a>
    8caa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8cad:	eb 15                	jmp    8cc4 <alloc_imap_bit+0x168>
    8caf:	83 ec 0c             	sub    $0xc,%esp
    8cb2:	68 d9 e3 00 00       	push   $0xe3d9
    8cb7:	e8 8a 90 ff ff       	call   1d46 <panic>
    8cbc:	83 c4 10             	add    $0x10,%esp
    8cbf:	b8 00 00 00 00       	mov    $0x0,%eax
    8cc4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8cc7:	c9                   	leave  
    8cc8:	c3                   	ret    

00008cc9 <alloc_smap_bit>:
    8cc9:	55                   	push   %ebp
    8cca:	89 e5                	mov    %esp,%ebp
    8ccc:	53                   	push   %ebx
    8ccd:	83 ec 24             	sub    $0x24,%esp
    8cd0:	83 ec 0c             	sub    $0xc,%esp
    8cd3:	ff 75 08             	pushl  0x8(%ebp)
    8cd6:	e8 28 f5 ff ff       	call   8203 <get_super_block>
    8cdb:	83 c4 10             	add    $0x10,%esp
    8cde:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    8ce1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ce4:	8b 40 0c             	mov    0xc(%eax),%eax
    8ce7:	83 c0 02             	add    $0x2,%eax
    8cea:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8ced:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8cf4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8cfb:	e9 96 01 00 00       	jmp    8e96 <alloc_smap_bit+0x1cd>
    8d00:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8d06:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8d09:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d0c:	01 d0                	add    %edx,%eax
    8d0e:	c1 e0 09             	shl    $0x9,%eax
    8d11:	99                   	cltd   
    8d12:	83 ec 04             	sub    $0x4,%esp
    8d15:	51                   	push   %ecx
    8d16:	6a 03                	push   $0x3
    8d18:	68 00 02 00 00       	push   $0x200
    8d1d:	52                   	push   %edx
    8d1e:	50                   	push   %eax
    8d1f:	ff 75 08             	pushl  0x8(%ebp)
    8d22:	68 eb 03 00 00       	push   $0x3eb
    8d27:	e8 cf f2 ff ff       	call   7ffb <rw_sector>
    8d2c:	83 c4 20             	add    $0x20,%esp
    8d2f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8d36:	e9 09 01 00 00       	jmp    8e44 <alloc_smap_bit+0x17b>
    8d3b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8d42:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8d46:	0f 85 e4 00 00 00    	jne    8e30 <alloc_smap_bit+0x167>
    8d4c:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8d52:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8d55:	01 d0                	add    %edx,%eax
    8d57:	0f b6 00             	movzbl (%eax),%eax
    8d5a:	3c ff                	cmp    $0xff,%al
    8d5c:	0f 84 da 00 00 00    	je     8e3c <alloc_smap_bit+0x173>
    8d62:	eb 04                	jmp    8d68 <alloc_smap_bit+0x9f>
    8d64:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8d68:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8d6e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8d71:	01 d0                	add    %edx,%eax
    8d73:	0f b6 00             	movzbl (%eax),%eax
    8d76:	0f b6 d0             	movzbl %al,%edx
    8d79:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8d7c:	89 c1                	mov    %eax,%ecx
    8d7e:	d3 fa                	sar    %cl,%edx
    8d80:	89 d0                	mov    %edx,%eax
    8d82:	83 e0 01             	and    $0x1,%eax
    8d85:	85 c0                	test   %eax,%eax
    8d87:	75 db                	jne    8d64 <alloc_smap_bit+0x9b>
    8d89:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8d8c:	c1 e0 09             	shl    $0x9,%eax
    8d8f:	89 c2                	mov    %eax,%edx
    8d91:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8d94:	01 d0                	add    %edx,%eax
    8d96:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    8d9d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8da0:	01 d0                	add    %edx,%eax
    8da2:	89 c2                	mov    %eax,%edx
    8da4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8da7:	8b 40 14             	mov    0x14(%eax),%eax
    8daa:	01 d0                	add    %edx,%eax
    8dac:	83 e8 01             	sub    $0x1,%eax
    8daf:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8db2:	eb 7c                	jmp    8e30 <alloc_smap_bit+0x167>
    8db4:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8dba:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8dbd:	01 d0                	add    %edx,%eax
    8dbf:	0f b6 00             	movzbl (%eax),%eax
    8dc2:	0f b6 d0             	movzbl %al,%edx
    8dc5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8dc8:	89 c1                	mov    %eax,%ecx
    8dca:	d3 fa                	sar    %cl,%edx
    8dcc:	89 d0                	mov    %edx,%eax
    8dce:	83 e0 01             	and    $0x1,%eax
    8dd1:	85 c0                	test   %eax,%eax
    8dd3:	74 1c                	je     8df1 <alloc_smap_bit+0x128>
    8dd5:	68 36 01 00 00       	push   $0x136
    8dda:	68 ec e2 00 00       	push   $0xe2ec
    8ddf:	68 ec e2 00 00       	push   $0xe2ec
    8de4:	68 f6 e3 00 00       	push   $0xe3f6
    8de9:	e8 ef 38 00 00       	call   c6dd <assertion_failure>
    8dee:	83 c4 10             	add    $0x10,%esp
    8df1:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8df7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8dfa:	01 d0                	add    %edx,%eax
    8dfc:	0f b6 00             	movzbl (%eax),%eax
    8dff:	89 c3                	mov    %eax,%ebx
    8e01:	8b 45 ec             	mov    -0x14(%ebp),%eax
    8e04:	ba 01 00 00 00       	mov    $0x1,%edx
    8e09:	89 c1                	mov    %eax,%ecx
    8e0b:	d3 e2                	shl    %cl,%edx
    8e0d:	89 d0                	mov    %edx,%eax
    8e0f:	09 c3                	or     %eax,%ebx
    8e11:	89 d9                	mov    %ebx,%ecx
    8e13:	8b 15 04 28 01 00    	mov    0x12804,%edx
    8e19:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8e1c:	01 d0                	add    %edx,%eax
    8e1e:	89 ca                	mov    %ecx,%edx
    8e20:	88 10                	mov    %dl,(%eax)
    8e22:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
    8e26:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8e2a:	74 13                	je     8e3f <alloc_smap_bit+0x176>
    8e2c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    8e30:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    8e34:	0f 8e 7a ff ff ff    	jle    8db4 <alloc_smap_bit+0xeb>
    8e3a:	eb 04                	jmp    8e40 <alloc_smap_bit+0x177>
    8e3c:	90                   	nop
    8e3d:	eb 01                	jmp    8e40 <alloc_smap_bit+0x177>
    8e3f:	90                   	nop
    8e40:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    8e44:	81 7d f0 ff 01 00 00 	cmpl   $0x1ff,-0x10(%ebp)
    8e4b:	7f 0a                	jg     8e57 <alloc_smap_bit+0x18e>
    8e4d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8e51:	0f 8f e4 fe ff ff    	jg     8d3b <alloc_smap_bit+0x72>
    8e57:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    8e5b:	74 2f                	je     8e8c <alloc_smap_bit+0x1c3>
    8e5d:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    8e63:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8e66:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e69:	01 d0                	add    %edx,%eax
    8e6b:	c1 e0 09             	shl    $0x9,%eax
    8e6e:	99                   	cltd   
    8e6f:	83 ec 04             	sub    $0x4,%esp
    8e72:	51                   	push   %ecx
    8e73:	6a 03                	push   $0x3
    8e75:	68 00 02 00 00       	push   $0x200
    8e7a:	52                   	push   %edx
    8e7b:	50                   	push   %eax
    8e7c:	ff 75 08             	pushl  0x8(%ebp)
    8e7f:	68 ec 03 00 00       	push   $0x3ec
    8e84:	e8 72 f1 ff ff       	call   7ffb <rw_sector>
    8e89:	83 c4 20             	add    $0x20,%esp
    8e8c:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8e90:	74 17                	je     8ea9 <alloc_smap_bit+0x1e0>
    8e92:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8e96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8e99:	8b 50 10             	mov    0x10(%eax),%edx
    8e9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8e9f:	39 c2                	cmp    %eax,%edx
    8ea1:	0f 87 59 fe ff ff    	ja     8d00 <alloc_smap_bit+0x37>
    8ea7:	eb 01                	jmp    8eaa <alloc_smap_bit+0x1e1>
    8ea9:	90                   	nop
    8eaa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    8eae:	74 1c                	je     8ecc <alloc_smap_bit+0x203>
    8eb0:	68 44 01 00 00       	push   $0x144
    8eb5:	68 ec e2 00 00       	push   $0xe2ec
    8eba:	68 ec e2 00 00       	push   $0xe2ec
    8ebf:	68 11 e4 00 00       	push   $0xe411
    8ec4:	e8 14 38 00 00       	call   c6dd <assertion_failure>
    8ec9:	83 c4 10             	add    $0x10,%esp
    8ecc:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8ecf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8ed2:	c9                   	leave  
    8ed3:	c3                   	ret    

00008ed4 <new_inode>:
    8ed4:	55                   	push   %ebp
    8ed5:	89 e5                	mov    %esp,%ebp
    8ed7:	83 ec 18             	sub    $0x18,%esp
    8eda:	83 ec 08             	sub    $0x8,%esp
    8edd:	ff 75 0c             	pushl  0xc(%ebp)
    8ee0:	ff 75 08             	pushl  0x8(%ebp)
    8ee3:	e8 61 f3 ff ff       	call   8249 <get_inode>
    8ee8:	83 c4 10             	add    $0x10,%esp
    8eeb:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8eee:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8ef1:	c7 00 00 80 00 00    	movl   $0x8000,(%eax)
    8ef7:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8efa:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    8f01:	8b 55 10             	mov    0x10(%ebp),%edx
    8f04:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f07:	89 50 08             	mov    %edx,0x8(%eax)
    8f0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f0d:	c7 40 0c 00 08 00 00 	movl   $0x800,0xc(%eax)
    8f14:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f17:	8b 55 08             	mov    0x8(%ebp),%edx
    8f1a:	89 50 20             	mov    %edx,0x20(%eax)
    8f1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f20:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
    8f27:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f2a:	8b 55 0c             	mov    0xc(%ebp),%edx
    8f2d:	89 50 28             	mov    %edx,0x28(%eax)
    8f30:	83 ec 0c             	sub    $0xc,%esp
    8f33:	ff 75 f4             	pushl  -0xc(%ebp)
    8f36:	e8 af f4 ff ff       	call   83ea <sync_inode>
    8f3b:	83 c4 10             	add    $0x10,%esp
    8f3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8f41:	c9                   	leave  
    8f42:	c3                   	ret    

00008f43 <new_dir_entry>:
    8f43:	55                   	push   %ebp
    8f44:	89 e5                	mov    %esp,%ebp
    8f46:	53                   	push   %ebx
    8f47:	83 ec 24             	sub    $0x24,%esp
    8f4a:	8b 45 08             	mov    0x8(%ebp),%eax
    8f4d:	8b 40 08             	mov    0x8(%eax),%eax
    8f50:	89 45 e0             	mov    %eax,-0x20(%ebp)
    8f53:	8b 45 08             	mov    0x8(%ebp),%eax
    8f56:	8b 40 04             	mov    0x4(%eax),%eax
    8f59:	05 00 02 00 00       	add    $0x200,%eax
    8f5e:	c1 e8 09             	shr    $0x9,%eax
    8f61:	89 45 dc             	mov    %eax,-0x24(%ebp)
    8f64:	8b 45 08             	mov    0x8(%ebp),%eax
    8f67:	8b 40 04             	mov    0x4(%eax),%eax
    8f6a:	c1 e8 04             	shr    $0x4,%eax
    8f6d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    8f70:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    8f77:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    8f7e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    8f85:	e9 86 00 00 00       	jmp    9010 <new_dir_entry+0xcd>
    8f8a:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    8f90:	8b 55 e0             	mov    -0x20(%ebp),%edx
    8f93:	8b 45 e8             	mov    -0x18(%ebp),%eax
    8f96:	01 d0                	add    %edx,%eax
    8f98:	c1 e0 09             	shl    $0x9,%eax
    8f9b:	99                   	cltd   
    8f9c:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8f9f:	8b 49 20             	mov    0x20(%ecx),%ecx
    8fa2:	83 ec 04             	sub    $0x4,%esp
    8fa5:	53                   	push   %ebx
    8fa6:	6a 03                	push   $0x3
    8fa8:	68 00 02 00 00       	push   $0x200
    8fad:	52                   	push   %edx
    8fae:	50                   	push   %eax
    8faf:	51                   	push   %ecx
    8fb0:	68 eb 03 00 00       	push   $0x3eb
    8fb5:	e8 41 f0 ff ff       	call   7ffb <rw_sector>
    8fba:	83 c4 20             	add    $0x20,%esp
    8fbd:	a1 04 28 01 00       	mov    0x12804,%eax
    8fc2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    8fc5:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    8fcc:	eb 25                	jmp    8ff3 <new_dir_entry+0xb0>
    8fce:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8fd2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8fd5:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    8fd8:	7f 23                	jg     8ffd <new_dir_entry+0xba>
    8fda:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8fdd:	8b 00                	mov    (%eax),%eax
    8fdf:	85 c0                	test   %eax,%eax
    8fe1:	75 08                	jne    8feb <new_dir_entry+0xa8>
    8fe3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8fe6:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8fe9:	eb 13                	jmp    8ffe <new_dir_entry+0xbb>
    8feb:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    8fef:	83 45 f0 10          	addl   $0x10,-0x10(%ebp)
    8ff3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8ff6:	83 f8 1f             	cmp    $0x1f,%eax
    8ff9:	76 d3                	jbe    8fce <new_dir_entry+0x8b>
    8ffb:	eb 01                	jmp    8ffe <new_dir_entry+0xbb>
    8ffd:	90                   	nop
    8ffe:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9001:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    9004:	7f 16                	jg     901c <new_dir_entry+0xd9>
    9006:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    900a:	75 10                	jne    901c <new_dir_entry+0xd9>
    900c:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    9010:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9013:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    9016:	0f 8c 6e ff ff ff    	jl     8f8a <new_dir_entry+0x47>
    901c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9020:	75 15                	jne    9037 <new_dir_entry+0xf4>
    9022:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9025:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9028:	8b 45 08             	mov    0x8(%ebp),%eax
    902b:	8b 40 04             	mov    0x4(%eax),%eax
    902e:	8d 50 10             	lea    0x10(%eax),%edx
    9031:	8b 45 08             	mov    0x8(%ebp),%eax
    9034:	89 50 04             	mov    %edx,0x4(%eax)
    9037:	8b 45 ec             	mov    -0x14(%ebp),%eax
    903a:	8b 55 0c             	mov    0xc(%ebp),%edx
    903d:	89 10                	mov    %edx,(%eax)
    903f:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9042:	83 c0 04             	add    $0x4,%eax
    9045:	83 ec 08             	sub    $0x8,%esp
    9048:	ff 75 10             	pushl  0x10(%ebp)
    904b:	50                   	push   %eax
    904c:	e8 49 34 00 00       	call   c49a <strcpy>
    9051:	83 c4 10             	add    $0x10,%esp
    9054:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    905a:	8b 55 e0             	mov    -0x20(%ebp),%edx
    905d:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9060:	01 d0                	add    %edx,%eax
    9062:	c1 e0 09             	shl    $0x9,%eax
    9065:	99                   	cltd   
    9066:	8b 4d 08             	mov    0x8(%ebp),%ecx
    9069:	8b 49 20             	mov    0x20(%ecx),%ecx
    906c:	83 ec 04             	sub    $0x4,%esp
    906f:	53                   	push   %ebx
    9070:	6a 03                	push   $0x3
    9072:	68 00 02 00 00       	push   $0x200
    9077:	52                   	push   %edx
    9078:	50                   	push   %eax
    9079:	51                   	push   %ecx
    907a:	68 ec 03 00 00       	push   $0x3ec
    907f:	e8 77 ef ff ff       	call   7ffb <rw_sector>
    9084:	83 c4 20             	add    $0x20,%esp
    9087:	83 ec 0c             	sub    $0xc,%esp
    908a:	ff 75 08             	pushl  0x8(%ebp)
    908d:	e8 58 f3 ff ff       	call   83ea <sync_inode>
    9092:	83 c4 10             	add    $0x10,%esp
    9095:	90                   	nop
    9096:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    9099:	c9                   	leave  
    909a:	c3                   	ret    

0000909b <do_stat>:
    909b:	55                   	push   %ebp
    909c:	89 e5                	mov    %esp,%ebp
    909e:	53                   	push   %ebx
    909f:	81 ec 34 01 00 00    	sub    $0x134,%esp
    90a5:	a1 6c 95 03 00       	mov    0x3956c,%eax
    90aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
    90ad:	a1 60 95 03 00       	mov    0x39560,%eax
    90b2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    90b5:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
    90b9:	7e 19                	jle    90d4 <do_stat+0x39>
    90bb:	6a 2a                	push   $0x2a
    90bd:	68 28 e4 00 00       	push   $0xe428
    90c2:	68 28 e4 00 00       	push   $0xe428
    90c7:	68 32 e4 00 00       	push   $0xe432
    90cc:	e8 0c 36 00 00       	call   c6dd <assertion_failure>
    90d1:	83 c4 10             	add    $0x10,%esp
    90d4:	a1 88 95 03 00       	mov    0x39588,%eax
    90d9:	83 ec 08             	sub    $0x8,%esp
    90dc:	50                   	push   %eax
    90dd:	ff 75 f0             	pushl  -0x10(%ebp)
    90e0:	e8 22 b0 ff ff       	call   4107 <va2la>
    90e5:	83 c4 10             	add    $0x10,%esp
    90e8:	89 c3                	mov    %eax,%ebx
    90ea:	83 ec 08             	sub    $0x8,%esp
    90ed:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    90f3:	50                   	push   %eax
    90f4:	6a 03                	push   $0x3
    90f6:	e8 0c b0 ff ff       	call   4107 <va2la>
    90fb:	83 c4 10             	add    $0x10,%esp
    90fe:	83 ec 04             	sub    $0x4,%esp
    9101:	ff 75 f4             	pushl  -0xc(%ebp)
    9104:	53                   	push   %ebx
    9105:	50                   	push   %eax
    9106:	e8 45 33 00 00       	call   c450 <memcpy>
    910b:	83 c4 10             	add    $0x10,%esp
    910e:	8d 95 68 ff ff ff    	lea    -0x98(%ebp),%edx
    9114:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9117:	01 d0                	add    %edx,%eax
    9119:	c6 00 00             	movb   $0x0,(%eax)
    911c:	83 ec 0c             	sub    $0xc,%esp
    911f:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    9125:	50                   	push   %eax
    9126:	e8 41 01 00 00       	call   926c <search_file>
    912b:	83 c4 10             	add    $0x10,%esp
    912e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9131:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    9135:	75 21                	jne    9158 <do_stat+0xbd>
    9137:	83 ec 08             	sub    $0x8,%esp
    913a:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    9140:	50                   	push   %eax
    9141:	68 48 e4 00 00       	push   $0xe448
    9146:	e8 ba 2f 00 00       	call   c105 <printl>
    914b:	83 c4 10             	add    $0x10,%esp
    914e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9153:	e9 0f 01 00 00       	jmp    9267 <do_stat+0x1cc>
    9158:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    915f:	83 ec 04             	sub    $0x4,%esp
    9162:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
    9168:	50                   	push   %eax
    9169:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
    916f:	50                   	push   %eax
    9170:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
    9176:	50                   	push   %eax
    9177:	e8 46 02 00 00       	call   93c2 <strip_path>
    917c:	83 c4 10             	add    $0x10,%esp
    917f:	85 c0                	test   %eax,%eax
    9181:	74 19                	je     919c <do_stat+0x101>
    9183:	6a 3f                	push   $0x3f
    9185:	68 28 e4 00 00       	push   $0xe428
    918a:	68 28 e4 00 00       	push   $0xe428
    918f:	68 86 e4 00 00       	push   $0xe486
    9194:	e8 44 35 00 00       	call   c6dd <assertion_failure>
    9199:	83 c4 10             	add    $0x10,%esp
    919c:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
    91a2:	8b 40 20             	mov    0x20(%eax),%eax
    91a5:	83 ec 08             	sub    $0x8,%esp
    91a8:	ff 75 ec             	pushl  -0x14(%ebp)
    91ab:	50                   	push   %eax
    91ac:	e8 98 f0 ff ff       	call   8249 <get_inode>
    91b1:	83 c4 10             	add    $0x10,%esp
    91b4:	89 45 e8             	mov    %eax,-0x18(%ebp)
    91b7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91ba:	8b 40 20             	mov    0x20(%eax),%eax
    91bd:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%ebp)
    91c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91c6:	8b 40 28             	mov    0x28(%eax),%eax
    91c9:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%ebp)
    91cf:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91d2:	8b 00                	mov    (%eax),%eax
    91d4:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%ebp)
    91da:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91dd:	8b 00                	mov    (%eax),%eax
    91df:	25 00 f0 00 00       	and    $0xf000,%eax
    91e4:	3d 00 60 00 00       	cmp    $0x6000,%eax
    91e9:	74 11                	je     91fc <do_stat+0x161>
    91eb:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91ee:	8b 00                	mov    (%eax),%eax
    91f0:	25 00 f0 00 00       	and    $0xf000,%eax
    91f5:	3d 00 20 00 00       	cmp    $0x2000,%eax
    91fa:	75 08                	jne    9204 <do_stat+0x169>
    91fc:	8b 45 e8             	mov    -0x18(%ebp),%eax
    91ff:	8b 40 08             	mov    0x8(%eax),%eax
    9202:	eb 05                	jmp    9209 <do_stat+0x16e>
    9204:	b8 00 00 00 00       	mov    $0x0,%eax
    9209:	89 85 dc fe ff ff    	mov    %eax,-0x124(%ebp)
    920f:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9212:	8b 40 04             	mov    0x4(%eax),%eax
    9215:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%ebp)
    921b:	83 ec 0c             	sub    $0xc,%esp
    921e:	ff 75 e8             	pushl  -0x18(%ebp)
    9221:	e8 86 f1 ff ff       	call   83ac <put_inode>
    9226:	83 c4 10             	add    $0x10,%esp
    9229:	83 ec 08             	sub    $0x8,%esp
    922c:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
    9232:	50                   	push   %eax
    9233:	6a 03                	push   $0x3
    9235:	e8 cd ae ff ff       	call   4107 <va2la>
    923a:	83 c4 10             	add    $0x10,%esp
    923d:	89 c3                	mov    %eax,%ebx
    923f:	a1 8c 95 03 00       	mov    0x3958c,%eax
    9244:	83 ec 08             	sub    $0x8,%esp
    9247:	50                   	push   %eax
    9248:	ff 75 f0             	pushl  -0x10(%ebp)
    924b:	e8 b7 ae ff ff       	call   4107 <va2la>
    9250:	83 c4 10             	add    $0x10,%esp
    9253:	83 ec 04             	sub    $0x4,%esp
    9256:	6a 14                	push   $0x14
    9258:	53                   	push   %ebx
    9259:	50                   	push   %eax
    925a:	e8 f1 31 00 00       	call   c450 <memcpy>
    925f:	83 c4 10             	add    $0x10,%esp
    9262:	b8 00 00 00 00       	mov    $0x0,%eax
    9267:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    926a:	c9                   	leave  
    926b:	c3                   	ret    

0000926c <search_file>:
    926c:	55                   	push   %ebp
    926d:	89 e5                	mov    %esp,%ebp
    926f:	53                   	push   %ebx
    9270:	81 ec a4 00 00 00    	sub    $0xa4,%esp
    9276:	83 ec 04             	sub    $0x4,%esp
    9279:	6a 0c                	push   $0xc
    927b:	6a 00                	push   $0x0
    927d:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    9283:	50                   	push   %eax
    9284:	e8 f0 31 00 00       	call   c479 <memset>
    9289:	83 c4 10             	add    $0x10,%esp
    928c:	83 ec 04             	sub    $0x4,%esp
    928f:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    9295:	50                   	push   %eax
    9296:	ff 75 08             	pushl  0x8(%ebp)
    9299:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    929f:	50                   	push   %eax
    92a0:	e8 1d 01 00 00       	call   93c2 <strip_path>
    92a5:	83 c4 10             	add    $0x10,%esp
    92a8:	85 c0                	test   %eax,%eax
    92aa:	74 0a                	je     92b6 <search_file+0x4a>
    92ac:	b8 00 00 00 00       	mov    $0x0,%eax
    92b1:	e9 07 01 00 00       	jmp    93bd <search_file+0x151>
    92b6:	0f b6 85 5c ff ff ff 	movzbl -0xa4(%ebp),%eax
    92bd:	84 c0                	test   %al,%al
    92bf:	75 0e                	jne    92cf <search_file+0x63>
    92c1:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92c7:	8b 40 28             	mov    0x28(%eax),%eax
    92ca:	e9 ee 00 00 00       	jmp    93bd <search_file+0x151>
    92cf:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92d5:	8b 40 08             	mov    0x8(%eax),%eax
    92d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    92db:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92e1:	8b 40 04             	mov    0x4(%eax),%eax
    92e4:	05 ff 01 00 00       	add    $0x1ff,%eax
    92e9:	c1 e8 09             	shr    $0x9,%eax
    92ec:	89 45 e0             	mov    %eax,-0x20(%ebp)
    92ef:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
    92f5:	8b 40 04             	mov    0x4(%eax),%eax
    92f8:	c1 e8 04             	shr    $0x4,%eax
    92fb:	89 45 dc             	mov    %eax,-0x24(%ebp)
    92fe:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9305:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    930c:	e9 98 00 00 00       	jmp    93a9 <search_file+0x13d>
    9311:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9317:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    931a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    931d:	01 d0                	add    %edx,%eax
    931f:	c1 e0 09             	shl    $0x9,%eax
    9322:	99                   	cltd   
    9323:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
    9329:	8b 49 20             	mov    0x20(%ecx),%ecx
    932c:	83 ec 04             	sub    $0x4,%esp
    932f:	53                   	push   %ebx
    9330:	6a 03                	push   $0x3
    9332:	68 00 02 00 00       	push   $0x200
    9337:	52                   	push   %edx
    9338:	50                   	push   %eax
    9339:	51                   	push   %ecx
    933a:	68 eb 03 00 00       	push   $0x3eb
    933f:	e8 b7 ec ff ff       	call   7ffb <rw_sector>
    9344:	83 c4 20             	add    $0x20,%esp
    9347:	a1 04 28 01 00       	mov    0x12804,%eax
    934c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    934f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    9356:	eb 3a                	jmp    9392 <search_file+0x126>
    9358:	8b 45 e8             	mov    -0x18(%ebp),%eax
    935b:	83 c0 04             	add    $0x4,%eax
    935e:	83 ec 04             	sub    $0x4,%esp
    9361:	6a 0c                	push   $0xc
    9363:	50                   	push   %eax
    9364:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
    936a:	50                   	push   %eax
    936b:	e8 12 32 00 00       	call   c582 <memcmp>
    9370:	83 c4 10             	add    $0x10,%esp
    9373:	85 c0                	test   %eax,%eax
    9375:	75 07                	jne    937e <search_file+0x112>
    9377:	8b 45 e8             	mov    -0x18(%ebp),%eax
    937a:	8b 00                	mov    (%eax),%eax
    937c:	eb 3f                	jmp    93bd <search_file+0x151>
    937e:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9382:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9385:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    9388:	7f 12                	jg     939c <search_file+0x130>
    938a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    938e:	83 45 e8 10          	addl   $0x10,-0x18(%ebp)
    9392:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9395:	83 f8 1f             	cmp    $0x1f,%eax
    9398:	76 be                	jbe    9358 <search_file+0xec>
    939a:	eb 01                	jmp    939d <search_file+0x131>
    939c:	90                   	nop
    939d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    93a0:	3b 45 dc             	cmp    -0x24(%ebp),%eax
    93a3:	7f 12                	jg     93b7 <search_file+0x14b>
    93a5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    93a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    93ac:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    93af:	0f 8c 5c ff ff ff    	jl     9311 <search_file+0xa5>
    93b5:	eb 01                	jmp    93b8 <search_file+0x14c>
    93b7:	90                   	nop
    93b8:	b8 00 00 00 00       	mov    $0x0,%eax
    93bd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    93c0:	c9                   	leave  
    93c1:	c3                   	ret    

000093c2 <strip_path>:
    93c2:	55                   	push   %ebp
    93c3:	89 e5                	mov    %esp,%ebp
    93c5:	83 ec 10             	sub    $0x10,%esp
    93c8:	8b 45 0c             	mov    0xc(%ebp),%eax
    93cb:	89 45 fc             	mov    %eax,-0x4(%ebp)
    93ce:	8b 45 08             	mov    0x8(%ebp),%eax
    93d1:	89 45 f8             	mov    %eax,-0x8(%ebp)
    93d4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    93d8:	75 07                	jne    93e1 <strip_path+0x1f>
    93da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    93df:	eb 66                	jmp    9447 <strip_path+0x85>
    93e1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    93e4:	0f b6 00             	movzbl (%eax),%eax
    93e7:	3c 2f                	cmp    $0x2f,%al
    93e9:	75 39                	jne    9424 <strip_path+0x62>
    93eb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    93ef:	eb 33                	jmp    9424 <strip_path+0x62>
    93f1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    93f4:	0f b6 00             	movzbl (%eax),%eax
    93f7:	3c 2f                	cmp    $0x2f,%al
    93f9:	75 07                	jne    9402 <strip_path+0x40>
    93fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9400:	eb 45                	jmp    9447 <strip_path+0x85>
    9402:	8b 55 fc             	mov    -0x4(%ebp),%edx
    9405:	8d 42 01             	lea    0x1(%edx),%eax
    9408:	89 45 fc             	mov    %eax,-0x4(%ebp)
    940b:	8b 45 f8             	mov    -0x8(%ebp),%eax
    940e:	8d 48 01             	lea    0x1(%eax),%ecx
    9411:	89 4d f8             	mov    %ecx,-0x8(%ebp)
    9414:	0f b6 12             	movzbl (%edx),%edx
    9417:	88 10                	mov    %dl,(%eax)
    9419:	8b 45 f8             	mov    -0x8(%ebp),%eax
    941c:	2b 45 08             	sub    0x8(%ebp),%eax
    941f:	83 f8 0b             	cmp    $0xb,%eax
    9422:	7f 0c                	jg     9430 <strip_path+0x6e>
    9424:	8b 45 fc             	mov    -0x4(%ebp),%eax
    9427:	0f b6 00             	movzbl (%eax),%eax
    942a:	84 c0                	test   %al,%al
    942c:	75 c3                	jne    93f1 <strip_path+0x2f>
    942e:	eb 01                	jmp    9431 <strip_path+0x6f>
    9430:	90                   	nop
    9431:	8b 45 f8             	mov    -0x8(%ebp),%eax
    9434:	c6 00 00             	movb   $0x0,(%eax)
    9437:	8b 15 a0 99 03 00    	mov    0x399a0,%edx
    943d:	8b 45 10             	mov    0x10(%ebp),%eax
    9440:	89 10                	mov    %edx,(%eax)
    9442:	b8 00 00 00 00       	mov    $0x0,%eax
    9447:	c9                   	leave  
    9448:	c3                   	ret    

00009449 <do_rdwt>:
    9449:	55                   	push   %ebp
    944a:	89 e5                	mov    %esp,%ebp
    944c:	56                   	push   %esi
    944d:	53                   	push   %ebx
    944e:	83 ec 50             	sub    $0x50,%esp
    9451:	a1 68 95 03 00       	mov    0x39568,%eax
    9456:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9459:	a1 8c 95 03 00       	mov    0x3958c,%eax
    945e:	89 45 dc             	mov    %eax,-0x24(%ebp)
    9461:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9466:	89 45 d8             	mov    %eax,-0x28(%ebp)
    9469:	a1 60 95 03 00       	mov    0x39560,%eax
    946e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    9471:	a1 44 88 03 00       	mov    0x38844,%eax
    9476:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9479:	83 c2 24             	add    $0x24,%edx
    947c:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9480:	3d a0 95 03 00       	cmp    $0x395a0,%eax
    9485:	72 16                	jb     949d <do_rdwt+0x54>
    9487:	a1 44 88 03 00       	mov    0x38844,%eax
    948c:	8b 55 e0             	mov    -0x20(%ebp),%edx
    948f:	83 c2 24             	add    $0x24,%edx
    9492:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    9496:	3d a0 99 03 00       	cmp    $0x399a0,%eax
    949b:	72 19                	jb     94b6 <do_rdwt+0x6d>
    949d:	6a 2c                	push   $0x2c
    949f:	68 88 e4 00 00       	push   $0xe488
    94a4:	68 88 e4 00 00       	push   $0xe488
    94a9:	68 98 e4 00 00       	push   $0xe498
    94ae:	e8 2a 32 00 00       	call   c6dd <assertion_failure>
    94b3:	83 c4 10             	add    $0x10,%esp
    94b6:	a1 44 88 03 00       	mov    0x38844,%eax
    94bb:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94be:	83 c2 24             	add    $0x24,%edx
    94c1:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94c5:	8b 00                	mov    (%eax),%eax
    94c7:	83 e0 02             	and    $0x2,%eax
    94ca:	85 c0                	test   %eax,%eax
    94cc:	75 0a                	jne    94d8 <do_rdwt+0x8f>
    94ce:	b8 00 00 00 00       	mov    $0x0,%eax
    94d3:	e9 00 04 00 00       	jmp    98d8 <do_rdwt+0x48f>
    94d8:	a1 44 88 03 00       	mov    0x38844,%eax
    94dd:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94e0:	83 c2 24             	add    $0x24,%edx
    94e3:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94e7:	8b 40 04             	mov    0x4(%eax),%eax
    94ea:	89 45 d0             	mov    %eax,-0x30(%ebp)
    94ed:	a1 44 88 03 00       	mov    0x38844,%eax
    94f2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    94f5:	83 c2 24             	add    $0x24,%edx
    94f8:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    94fc:	8b 40 0c             	mov    0xc(%eax),%eax
    94ff:	89 45 cc             	mov    %eax,-0x34(%ebp)
    9502:	81 7d cc 20 39 01 00 	cmpl   $0x13920,-0x34(%ebp)
    9509:	72 09                	jb     9514 <do_rdwt+0xcb>
    950b:	81 7d cc 20 44 01 00 	cmpl   $0x14420,-0x34(%ebp)
    9512:	72 19                	jb     952d <do_rdwt+0xe4>
    9514:	6a 35                	push   $0x35
    9516:	68 88 e4 00 00       	push   $0xe488
    951b:	68 88 e4 00 00       	push   $0xe488
    9520:	68 f8 e4 00 00       	push   $0xe4f8
    9525:	e8 b3 31 00 00       	call   c6dd <assertion_failure>
    952a:	83 c4 10             	add    $0x10,%esp
    952d:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9530:	8b 00                	mov    (%eax),%eax
    9532:	25 00 f0 00 00       	and    $0xf000,%eax
    9537:	89 45 c8             	mov    %eax,-0x38(%ebp)
    953a:	81 7d c8 00 20 00 00 	cmpl   $0x2000,-0x38(%ebp)
    9541:	0f 85 f2 00 00 00    	jne    9639 <do_rdwt+0x1f0>
    9547:	a1 64 95 03 00       	mov    0x39564,%eax
    954c:	83 f8 07             	cmp    $0x7,%eax
    954f:	75 07                	jne    9558 <do_rdwt+0x10f>
    9551:	b8 eb 03 00 00       	mov    $0x3eb,%eax
    9556:	eb 05                	jmp    955d <do_rdwt+0x114>
    9558:	b8 ec 03 00 00       	mov    $0x3ec,%eax
    955d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9560:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9563:	a3 64 95 03 00       	mov    %eax,0x39564
    9568:	8b 45 cc             	mov    -0x34(%ebp),%eax
    956b:	8b 40 08             	mov    0x8(%eax),%eax
    956e:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9571:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9574:	c1 f8 08             	sar    $0x8,%eax
    9577:	0f b6 c0             	movzbl %al,%eax
    957a:	83 f8 04             	cmp    $0x4,%eax
    957d:	74 19                	je     9598 <do_rdwt+0x14f>
    957f:	6a 3e                	push   $0x3e
    9581:	68 88 e4 00 00       	push   $0xe488
    9586:	68 88 e4 00 00       	push   $0xe488
    958b:	68 2f e5 00 00       	push   $0xe52f
    9590:	e8 48 31 00 00       	call   c6dd <assertion_failure>
    9595:	83 c4 10             	add    $0x10,%esp
    9598:	8b 45 c0             	mov    -0x40(%ebp),%eax
    959b:	0f b6 c0             	movzbl %al,%eax
    959e:	a3 74 95 03 00       	mov    %eax,0x39574
    95a3:	8b 45 dc             	mov    -0x24(%ebp),%eax
    95a6:	a3 8c 95 03 00       	mov    %eax,0x3958c
    95ab:	8b 45 d8             	mov    -0x28(%ebp),%eax
    95ae:	a3 6c 95 03 00       	mov    %eax,0x3956c
    95b3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    95b6:	a3 70 95 03 00       	mov    %eax,0x39570
    95bb:	8b 45 c0             	mov    -0x40(%ebp),%eax
    95be:	c1 f8 08             	sar    $0x8,%eax
    95c1:	0f b6 c0             	movzbl %al,%eax
    95c4:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    95cb:	83 f8 ec             	cmp    $0xffffffec,%eax
    95ce:	75 19                	jne    95e9 <do_rdwt+0x1a0>
    95d0:	6a 44                	push   $0x44
    95d2:	68 88 e4 00 00       	push   $0xe488
    95d7:	68 88 e4 00 00       	push   $0xe488
    95dc:	68 40 e5 00 00       	push   $0xe540
    95e1:	e8 f7 30 00 00       	call   c6dd <assertion_failure>
    95e6:	83 c4 10             	add    $0x10,%esp
    95e9:	8b 45 c0             	mov    -0x40(%ebp),%eax
    95ec:	c1 f8 08             	sar    $0x8,%eax
    95ef:	0f b6 c0             	movzbl %al,%eax
    95f2:	8b 04 85 ec 27 01 00 	mov    0x127ec(,%eax,4),%eax
    95f9:	83 ec 04             	sub    $0x4,%esp
    95fc:	68 60 95 03 00       	push   $0x39560
    9601:	50                   	push   %eax
    9602:	6a 03                	push   $0x3
    9604:	e8 bf 2e 00 00       	call   c4c8 <send_recv>
    9609:	83 c4 10             	add    $0x10,%esp
    960c:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9611:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    9614:	74 19                	je     962f <do_rdwt+0x1e6>
    9616:	6a 46                	push   $0x46
    9618:	68 88 e4 00 00       	push   $0xe488
    961d:	68 88 e4 00 00       	push   $0xe488
    9622:	68 6f e5 00 00       	push   $0xe56f
    9627:	e8 b1 30 00 00       	call   c6dd <assertion_failure>
    962c:	83 c4 10             	add    $0x10,%esp
    962f:	a1 6c 95 03 00       	mov    0x3956c,%eax
    9634:	e9 9f 02 00 00       	jmp    98d8 <do_rdwt+0x48f>
    9639:	8b 45 cc             	mov    -0x34(%ebp),%eax
    963c:	8b 00                	mov    (%eax),%eax
    963e:	3d 00 80 00 00       	cmp    $0x8000,%eax
    9643:	74 25                	je     966a <do_rdwt+0x221>
    9645:	8b 45 cc             	mov    -0x34(%ebp),%eax
    9648:	8b 00                	mov    (%eax),%eax
    964a:	3d 00 40 00 00       	cmp    $0x4000,%eax
    964f:	74 19                	je     966a <do_rdwt+0x221>
    9651:	6a 4b                	push   $0x4b
    9653:	68 88 e4 00 00       	push   $0xe488
    9658:	68 88 e4 00 00       	push   $0xe488
    965d:	68 84 e5 00 00       	push   $0xe584
    9662:	e8 76 30 00 00       	call   c6dd <assertion_failure>
    9667:	83 c4 10             	add    $0x10,%esp
    966a:	a1 64 95 03 00       	mov    0x39564,%eax
    966f:	83 f8 07             	cmp    $0x7,%eax
    9672:	74 23                	je     9697 <do_rdwt+0x24e>
    9674:	a1 64 95 03 00       	mov    0x39564,%eax
    9679:	83 f8 08             	cmp    $0x8,%eax
    967c:	74 19                	je     9697 <do_rdwt+0x24e>
    967e:	6a 4c                	push   $0x4c
    9680:	68 88 e4 00 00       	push   $0xe488
    9685:	68 88 e4 00 00       	push   $0xe488
    968a:	68 bc e5 00 00       	push   $0xe5bc
    968f:	e8 49 30 00 00       	call   c6dd <assertion_failure>
    9694:	83 c4 10             	add    $0x10,%esp
    9697:	a1 64 95 03 00       	mov    0x39564,%eax
    969c:	83 f8 07             	cmp    $0x7,%eax
    969f:	75 18                	jne    96b9 <do_rdwt+0x270>
    96a1:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96a4:	8b 40 04             	mov    0x4(%eax),%eax
    96a7:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    96aa:	8b 55 d8             	mov    -0x28(%ebp),%edx
    96ad:	01 ca                	add    %ecx,%edx
    96af:	39 d0                	cmp    %edx,%eax
    96b1:	0f 47 c2             	cmova  %edx,%eax
    96b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    96b7:	eb 19                	jmp    96d2 <do_rdwt+0x289>
    96b9:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96bc:	8b 40 0c             	mov    0xc(%eax),%eax
    96bf:	c1 e0 09             	shl    $0x9,%eax
    96c2:	8b 4d d0             	mov    -0x30(%ebp),%ecx
    96c5:	8b 55 d8             	mov    -0x28(%ebp),%edx
    96c8:	01 ca                	add    %ecx,%edx
    96ca:	39 d0                	cmp    %edx,%eax
    96cc:	0f 47 c2             	cmova  %edx,%eax
    96cf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    96d2:	8b 45 d0             	mov    -0x30(%ebp),%eax
    96d5:	99                   	cltd   
    96d6:	c1 ea 17             	shr    $0x17,%edx
    96d9:	01 d0                	add    %edx,%eax
    96db:	25 ff 01 00 00       	and    $0x1ff,%eax
    96e0:	29 d0                	sub    %edx,%eax
    96e2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    96e5:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96e8:	8b 40 08             	mov    0x8(%eax),%eax
    96eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
    96ee:	c1 fa 09             	sar    $0x9,%edx
    96f1:	01 d0                	add    %edx,%eax
    96f3:	89 45 bc             	mov    %eax,-0x44(%ebp)
    96f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
    96f9:	8b 40 08             	mov    0x8(%eax),%eax
    96fc:	8b 55 f4             	mov    -0xc(%ebp),%edx
    96ff:	c1 fa 09             	sar    $0x9,%edx
    9702:	01 d0                	add    %edx,%eax
    9704:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9707:	a1 f8 cf 00 00       	mov    0xcff8,%eax
    970c:	c1 f8 09             	sar    $0x9,%eax
    970f:	89 c2                	mov    %eax,%edx
    9711:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9714:	2b 45 bc             	sub    -0x44(%ebp),%eax
    9717:	83 c0 01             	add    $0x1,%eax
    971a:	39 c2                	cmp    %eax,%edx
    971c:	0f 4e c2             	cmovle %edx,%eax
    971f:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9722:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9729:	8b 45 d8             	mov    -0x28(%ebp),%eax
    972c:	89 45 e8             	mov    %eax,-0x18(%ebp)
    972f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9732:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    9735:	e9 49 01 00 00       	jmp    9883 <do_rdwt+0x43a>
    973a:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    973d:	c1 e0 09             	shl    $0x9,%eax
    9740:	2b 45 f0             	sub    -0x10(%ebp),%eax
    9743:	39 45 e8             	cmp    %eax,-0x18(%ebp)
    9746:	0f 4e 45 e8          	cmovle -0x18(%ebp),%eax
    974a:	89 45 b0             	mov    %eax,-0x50(%ebp)
    974d:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9753:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9756:	c1 e0 09             	shl    $0x9,%eax
    9759:	89 c6                	mov    %eax,%esi
    975b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    975e:	c1 e0 09             	shl    $0x9,%eax
    9761:	99                   	cltd   
    9762:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    9765:	8b 49 20             	mov    0x20(%ecx),%ecx
    9768:	83 ec 04             	sub    $0x4,%esp
    976b:	53                   	push   %ebx
    976c:	6a 03                	push   $0x3
    976e:	56                   	push   %esi
    976f:	52                   	push   %edx
    9770:	50                   	push   %eax
    9771:	51                   	push   %ecx
    9772:	68 eb 03 00 00       	push   $0x3eb
    9777:	e8 7f e8 ff ff       	call   7ffb <rw_sector>
    977c:	83 c4 20             	add    $0x20,%esp
    977f:	a1 64 95 03 00       	mov    0x39564,%eax
    9784:	83 f8 07             	cmp    $0x7,%eax
    9787:	75 44                	jne    97cd <do_rdwt+0x384>
    9789:	8b 15 04 28 01 00    	mov    0x12804,%edx
    978f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9792:	01 d0                	add    %edx,%eax
    9794:	83 ec 08             	sub    $0x8,%esp
    9797:	50                   	push   %eax
    9798:	6a 03                	push   $0x3
    979a:	e8 68 a9 ff ff       	call   4107 <va2la>
    979f:	83 c4 10             	add    $0x10,%esp
    97a2:	89 c3                	mov    %eax,%ebx
    97a4:	8b 55 ec             	mov    -0x14(%ebp),%edx
    97a7:	8b 45 dc             	mov    -0x24(%ebp),%eax
    97aa:	01 d0                	add    %edx,%eax
    97ac:	83 ec 08             	sub    $0x8,%esp
    97af:	50                   	push   %eax
    97b0:	ff 75 d4             	pushl  -0x2c(%ebp)
    97b3:	e8 4f a9 ff ff       	call   4107 <va2la>
    97b8:	83 c4 10             	add    $0x10,%esp
    97bb:	83 ec 04             	sub    $0x4,%esp
    97be:	ff 75 b0             	pushl  -0x50(%ebp)
    97c1:	53                   	push   %ebx
    97c2:	50                   	push   %eax
    97c3:	e8 88 2c 00 00       	call   c450 <memcpy>
    97c8:	83 c4 10             	add    $0x10,%esp
    97cb:	eb 74                	jmp    9841 <do_rdwt+0x3f8>
    97cd:	8b 55 ec             	mov    -0x14(%ebp),%edx
    97d0:	8b 45 dc             	mov    -0x24(%ebp),%eax
    97d3:	01 d0                	add    %edx,%eax
    97d5:	83 ec 08             	sub    $0x8,%esp
    97d8:	50                   	push   %eax
    97d9:	ff 75 d4             	pushl  -0x2c(%ebp)
    97dc:	e8 26 a9 ff ff       	call   4107 <va2la>
    97e1:	83 c4 10             	add    $0x10,%esp
    97e4:	89 c3                	mov    %eax,%ebx
    97e6:	8b 15 04 28 01 00    	mov    0x12804,%edx
    97ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
    97ef:	01 d0                	add    %edx,%eax
    97f1:	83 ec 08             	sub    $0x8,%esp
    97f4:	50                   	push   %eax
    97f5:	6a 03                	push   $0x3
    97f7:	e8 0b a9 ff ff       	call   4107 <va2la>
    97fc:	83 c4 10             	add    $0x10,%esp
    97ff:	83 ec 04             	sub    $0x4,%esp
    9802:	ff 75 b0             	pushl  -0x50(%ebp)
    9805:	53                   	push   %ebx
    9806:	50                   	push   %eax
    9807:	e8 44 2c 00 00       	call   c450 <memcpy>
    980c:	83 c4 10             	add    $0x10,%esp
    980f:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9815:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9818:	c1 e0 09             	shl    $0x9,%eax
    981b:	89 c6                	mov    %eax,%esi
    981d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9820:	c1 e0 09             	shl    $0x9,%eax
    9823:	99                   	cltd   
    9824:	8b 4d cc             	mov    -0x34(%ebp),%ecx
    9827:	8b 49 20             	mov    0x20(%ecx),%ecx
    982a:	83 ec 04             	sub    $0x4,%esp
    982d:	53                   	push   %ebx
    982e:	6a 03                	push   $0x3
    9830:	56                   	push   %esi
    9831:	52                   	push   %edx
    9832:	50                   	push   %eax
    9833:	51                   	push   %ecx
    9834:	68 ec 03 00 00       	push   $0x3ec
    9839:	e8 bd e7 ff ff       	call   7ffb <rw_sector>
    983e:	83 c4 20             	add    $0x20,%esp
    9841:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    9848:	8b 45 b0             	mov    -0x50(%ebp),%eax
    984b:	01 45 ec             	add    %eax,-0x14(%ebp)
    984e:	a1 44 88 03 00       	mov    0x38844,%eax
    9853:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9856:	83 c2 24             	add    $0x24,%edx
    9859:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    985d:	8b 48 04             	mov    0x4(%eax),%ecx
    9860:	a1 44 88 03 00       	mov    0x38844,%eax
    9865:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9868:	83 c2 24             	add    $0x24,%edx
    986b:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    986f:	8b 55 b0             	mov    -0x50(%ebp),%edx
    9872:	01 ca                	add    %ecx,%edx
    9874:	89 50 04             	mov    %edx,0x4(%eax)
    9877:	8b 45 b0             	mov    -0x50(%ebp),%eax
    987a:	29 45 e8             	sub    %eax,-0x18(%ebp)
    987d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    9880:	01 45 e4             	add    %eax,-0x1c(%ebp)
    9883:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9886:	3b 45 b8             	cmp    -0x48(%ebp),%eax
    9889:	0f 8e ab fe ff ff    	jle    973a <do_rdwt+0x2f1>
    988f:	a1 44 88 03 00       	mov    0x38844,%eax
    9894:	8b 55 e0             	mov    -0x20(%ebp),%edx
    9897:	83 c2 24             	add    $0x24,%edx
    989a:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    989e:	8b 40 04             	mov    0x4(%eax),%eax
    98a1:	89 c2                	mov    %eax,%edx
    98a3:	8b 45 cc             	mov    -0x34(%ebp),%eax
    98a6:	8b 40 04             	mov    0x4(%eax),%eax
    98a9:	39 c2                	cmp    %eax,%edx
    98ab:	76 28                	jbe    98d5 <do_rdwt+0x48c>
    98ad:	a1 44 88 03 00       	mov    0x38844,%eax
    98b2:	8b 55 e0             	mov    -0x20(%ebp),%edx
    98b5:	83 c2 24             	add    $0x24,%edx
    98b8:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    98bc:	8b 40 04             	mov    0x4(%eax),%eax
    98bf:	89 c2                	mov    %eax,%edx
    98c1:	8b 45 cc             	mov    -0x34(%ebp),%eax
    98c4:	89 50 04             	mov    %edx,0x4(%eax)
    98c7:	83 ec 0c             	sub    $0xc,%esp
    98ca:	ff 75 cc             	pushl  -0x34(%ebp)
    98cd:	e8 18 eb ff ff       	call   83ea <sync_inode>
    98d2:	83 c4 10             	add    $0x10,%esp
    98d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    98d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    98db:	5b                   	pop    %ebx
    98dc:	5e                   	pop    %esi
    98dd:	5d                   	pop    %ebp
    98de:	c3                   	ret    

000098df <do_unlink>:
    98df:	55                   	push   %ebp
    98e0:	89 e5                	mov    %esp,%ebp
    98e2:	56                   	push   %esi
    98e3:	53                   	push   %ebx
    98e4:	81 ec 60 01 00 00    	sub    $0x160,%esp
    98ea:	a1 6c 95 03 00       	mov    0x3956c,%eax
    98ef:	89 45 d0             	mov    %eax,-0x30(%ebp)
    98f2:	a1 60 95 03 00       	mov    0x39560,%eax
    98f7:	89 45 cc             	mov    %eax,-0x34(%ebp)
    98fa:	83 7d d0 7f          	cmpl   $0x7f,-0x30(%ebp)
    98fe:	7e 19                	jle    9919 <do_unlink+0x3a>
    9900:	6a 2a                	push   $0x2a
    9902:	68 ec e5 00 00       	push   $0xe5ec
    9907:	68 ec e5 00 00       	push   $0xe5ec
    990c:	68 f6 e5 00 00       	push   $0xe5f6
    9911:	e8 c7 2d 00 00       	call   c6dd <assertion_failure>
    9916:	83 c4 10             	add    $0x10,%esp
    9919:	a1 88 95 03 00       	mov    0x39588,%eax
    991e:	83 ec 08             	sub    $0x8,%esp
    9921:	50                   	push   %eax
    9922:	ff 75 cc             	pushl  -0x34(%ebp)
    9925:	e8 dd a7 ff ff       	call   4107 <va2la>
    992a:	83 c4 10             	add    $0x10,%esp
    992d:	89 c3                	mov    %eax,%ebx
    992f:	83 ec 08             	sub    $0x8,%esp
    9932:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9938:	50                   	push   %eax
    9939:	6a 03                	push   $0x3
    993b:	e8 c7 a7 ff ff       	call   4107 <va2la>
    9940:	83 c4 10             	add    $0x10,%esp
    9943:	83 ec 04             	sub    $0x4,%esp
    9946:	ff 75 d0             	pushl  -0x30(%ebp)
    9949:	53                   	push   %ebx
    994a:	50                   	push   %eax
    994b:	e8 00 2b 00 00       	call   c450 <memcpy>
    9950:	83 c4 10             	add    $0x10,%esp
    9953:	8d 95 24 ff ff ff    	lea    -0xdc(%ebp),%edx
    9959:	8b 45 d0             	mov    -0x30(%ebp),%eax
    995c:	01 d0                	add    %edx,%eax
    995e:	c6 00 00             	movb   $0x0,(%eax)
    9961:	83 ec 08             	sub    $0x8,%esp
    9964:	68 0a e6 00 00       	push   $0xe60a
    9969:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    996f:	50                   	push   %eax
    9970:	e8 7f 2c 00 00       	call   c5f4 <strcmp>
    9975:	83 c4 10             	add    $0x10,%esp
    9978:	85 c0                	test   %eax,%eax
    997a:	75 1a                	jne    9996 <do_unlink+0xb7>
    997c:	83 ec 0c             	sub    $0xc,%esp
    997f:	68 0c e6 00 00       	push   $0xe60c
    9984:	e8 7c 27 00 00       	call   c105 <printl>
    9989:	83 c4 10             	add    $0x10,%esp
    998c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9991:	e9 54 07 00 00       	jmp    a0ea <do_unlink+0x80b>
    9996:	83 ec 0c             	sub    $0xc,%esp
    9999:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    999f:	50                   	push   %eax
    99a0:	e8 c7 f8 ff ff       	call   926c <search_file>
    99a5:	83 c4 10             	add    $0x10,%esp
    99a8:	89 45 c8             	mov    %eax,-0x38(%ebp)
    99ab:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
    99af:	75 21                	jne    99d2 <do_unlink+0xf3>
    99b1:	83 ec 08             	sub    $0x8,%esp
    99b4:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    99ba:	50                   	push   %eax
    99bb:	68 3c e6 00 00       	push   $0xe63c
    99c0:	e8 40 27 00 00       	call   c105 <printl>
    99c5:	83 c4 10             	add    $0x10,%esp
    99c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    99cd:	e9 18 07 00 00       	jmp    a0ea <do_unlink+0x80b>
    99d2:	83 ec 04             	sub    $0x4,%esp
    99d5:	8d 85 a0 fe ff ff    	lea    -0x160(%ebp),%eax
    99db:	50                   	push   %eax
    99dc:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    99e2:	50                   	push   %eax
    99e3:	8d 85 a4 fe ff ff    	lea    -0x15c(%ebp),%eax
    99e9:	50                   	push   %eax
    99ea:	e8 d3 f9 ff ff       	call   93c2 <strip_path>
    99ef:	83 c4 10             	add    $0x10,%esp
    99f2:	85 c0                	test   %eax,%eax
    99f4:	74 0a                	je     9a00 <do_unlink+0x121>
    99f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    99fb:	e9 ea 06 00 00       	jmp    a0ea <do_unlink+0x80b>
    9a00:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9a06:	8b 40 20             	mov    0x20(%eax),%eax
    9a09:	83 ec 08             	sub    $0x8,%esp
    9a0c:	ff 75 c8             	pushl  -0x38(%ebp)
    9a0f:	50                   	push   %eax
    9a10:	e8 34 e8 ff ff       	call   8249 <get_inode>
    9a15:	83 c4 10             	add    $0x10,%esp
    9a18:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    9a1b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a1e:	8b 00                	mov    (%eax),%eax
    9a20:	3d 00 80 00 00       	cmp    $0x8000,%eax
    9a25:	74 21                	je     9a48 <do_unlink+0x169>
    9a27:	83 ec 08             	sub    $0x8,%esp
    9a2a:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9a30:	50                   	push   %eax
    9a31:	68 7c e6 00 00       	push   $0xe67c
    9a36:	e8 ca 26 00 00       	call   c105 <printl>
    9a3b:	83 c4 10             	add    $0x10,%esp
    9a3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9a43:	e9 a2 06 00 00       	jmp    a0ea <do_unlink+0x80b>
    9a48:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a4b:	8b 40 24             	mov    0x24(%eax),%eax
    9a4e:	83 f8 01             	cmp    $0x1,%eax
    9a51:	7e 28                	jle    9a7b <do_unlink+0x19c>
    9a53:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a56:	8b 40 24             	mov    0x24(%eax),%eax
    9a59:	83 ec 04             	sub    $0x4,%esp
    9a5c:	50                   	push   %eax
    9a5d:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
    9a63:	50                   	push   %eax
    9a64:	68 bc e6 00 00       	push   $0xe6bc
    9a69:	e8 97 26 00 00       	call   c105 <printl>
    9a6e:	83 c4 10             	add    $0x10,%esp
    9a71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9a76:	e9 6f 06 00 00       	jmp    a0ea <do_unlink+0x80b>
    9a7b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9a7e:	8b 40 20             	mov    0x20(%eax),%eax
    9a81:	83 ec 0c             	sub    $0xc,%esp
    9a84:	50                   	push   %eax
    9a85:	e8 79 e7 ff ff       	call   8203 <get_super_block>
    9a8a:	83 c4 10             	add    $0x10,%esp
    9a8d:	89 45 c0             	mov    %eax,-0x40(%ebp)
    9a90:	8b 45 c8             	mov    -0x38(%ebp),%eax
    9a93:	8d 50 07             	lea    0x7(%eax),%edx
    9a96:	85 c0                	test   %eax,%eax
    9a98:	0f 48 c2             	cmovs  %edx,%eax
    9a9b:	c1 f8 03             	sar    $0x3,%eax
    9a9e:	89 45 bc             	mov    %eax,-0x44(%ebp)
    9aa1:	8b 45 c8             	mov    -0x38(%ebp),%eax
    9aa4:	99                   	cltd   
    9aa5:	c1 ea 1d             	shr    $0x1d,%edx
    9aa8:	01 d0                	add    %edx,%eax
    9aaa:	83 e0 07             	and    $0x7,%eax
    9aad:	29 d0                	sub    %edx,%eax
    9aaf:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9ab2:	81 7d bc ff 01 00 00 	cmpl   $0x1ff,-0x44(%ebp)
    9ab9:	7e 19                	jle    9ad4 <do_unlink+0x1f5>
    9abb:	6a 57                	push   $0x57
    9abd:	68 ec e5 00 00       	push   $0xe5ec
    9ac2:	68 ec e5 00 00       	push   $0xe5ec
    9ac7:	68 f3 e6 00 00       	push   $0xe6f3
    9acc:	e8 0c 2c 00 00       	call   c6dd <assertion_failure>
    9ad1:	83 c4 10             	add    $0x10,%esp
    9ad4:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ada:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9add:	8b 40 20             	mov    0x20(%eax),%eax
    9ae0:	83 ec 04             	sub    $0x4,%esp
    9ae3:	52                   	push   %edx
    9ae4:	6a 03                	push   $0x3
    9ae6:	68 00 02 00 00       	push   $0x200
    9aeb:	6a 00                	push   $0x0
    9aed:	68 00 04 00 00       	push   $0x400
    9af2:	50                   	push   %eax
    9af3:	68 eb 03 00 00       	push   $0x3eb
    9af8:	e8 fe e4 ff ff       	call   7ffb <rw_sector>
    9afd:	83 c4 20             	add    $0x20,%esp
    9b00:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9b06:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9b09:	99                   	cltd   
    9b0a:	c1 ea 17             	shr    $0x17,%edx
    9b0d:	01 d0                	add    %edx,%eax
    9b0f:	25 ff 01 00 00       	and    $0x1ff,%eax
    9b14:	29 d0                	sub    %edx,%eax
    9b16:	01 c8                	add    %ecx,%eax
    9b18:	0f b6 00             	movzbl (%eax),%eax
    9b1b:	0f b6 d0             	movzbl %al,%edx
    9b1e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9b21:	89 c1                	mov    %eax,%ecx
    9b23:	d3 fa                	sar    %cl,%edx
    9b25:	89 d0                	mov    %edx,%eax
    9b27:	83 e0 01             	and    $0x1,%eax
    9b2a:	85 c0                	test   %eax,%eax
    9b2c:	75 19                	jne    9b47 <do_unlink+0x268>
    9b2e:	6a 5a                	push   $0x5a
    9b30:	68 ec e5 00 00       	push   $0xe5ec
    9b35:	68 ec e5 00 00       	push   $0xe5ec
    9b3a:	68 0c e7 00 00       	push   $0xe70c
    9b3f:	e8 99 2b 00 00       	call   c6dd <assertion_failure>
    9b44:	83 c4 10             	add    $0x10,%esp
    9b47:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9b4d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9b50:	99                   	cltd   
    9b51:	c1 ea 17             	shr    $0x17,%edx
    9b54:	01 d0                	add    %edx,%eax
    9b56:	25 ff 01 00 00       	and    $0x1ff,%eax
    9b5b:	29 d0                	sub    %edx,%eax
    9b5d:	89 c2                	mov    %eax,%edx
    9b5f:	89 d0                	mov    %edx,%eax
    9b61:	01 c8                	add    %ecx,%eax
    9b63:	0f b6 00             	movzbl (%eax),%eax
    9b66:	89 c3                	mov    %eax,%ebx
    9b68:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9b6b:	be 01 00 00 00       	mov    $0x1,%esi
    9b70:	89 c1                	mov    %eax,%ecx
    9b72:	d3 e6                	shl    %cl,%esi
    9b74:	89 f0                	mov    %esi,%eax
    9b76:	f7 d0                	not    %eax
    9b78:	21 c3                	and    %eax,%ebx
    9b7a:	89 d9                	mov    %ebx,%ecx
    9b7c:	a1 04 28 01 00       	mov    0x12804,%eax
    9b81:	01 d0                	add    %edx,%eax
    9b83:	89 ca                	mov    %ecx,%edx
    9b85:	88 10                	mov    %dl,(%eax)
    9b87:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9b8d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9b90:	8b 40 20             	mov    0x20(%eax),%eax
    9b93:	83 ec 04             	sub    $0x4,%esp
    9b96:	52                   	push   %edx
    9b97:	6a 03                	push   $0x3
    9b99:	68 00 02 00 00       	push   $0x200
    9b9e:	6a 00                	push   $0x0
    9ba0:	68 00 04 00 00       	push   $0x400
    9ba5:	50                   	push   %eax
    9ba6:	68 ec 03 00 00       	push   $0x3ec
    9bab:	e8 4b e4 ff ff       	call   7ffb <rw_sector>
    9bb0:	83 c4 20             	add    $0x20,%esp
    9bb3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9bb6:	8b 50 08             	mov    0x8(%eax),%edx
    9bb9:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9bbc:	8b 40 14             	mov    0x14(%eax),%eax
    9bbf:	29 c2                	sub    %eax,%edx
    9bc1:	89 d0                	mov    %edx,%eax
    9bc3:	83 c0 01             	add    $0x1,%eax
    9bc6:	89 45 b8             	mov    %eax,-0x48(%ebp)
    9bc9:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9bcc:	8d 50 07             	lea    0x7(%eax),%edx
    9bcf:	85 c0                	test   %eax,%eax
    9bd1:	0f 48 c2             	cmovs  %edx,%eax
    9bd4:	c1 f8 03             	sar    $0x3,%eax
    9bd7:	89 45 bc             	mov    %eax,-0x44(%ebp)
    9bda:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9bdd:	8b 40 0c             	mov    0xc(%eax),%eax
    9be0:	89 45 f4             	mov    %eax,-0xc(%ebp)
    9be3:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9be6:	99                   	cltd   
    9be7:	c1 ea 1d             	shr    $0x1d,%edx
    9bea:	01 d0                	add    %edx,%eax
    9bec:	83 e0 07             	and    $0x7,%eax
    9bef:	29 d0                	sub    %edx,%eax
    9bf1:	ba 08 00 00 00       	mov    $0x8,%edx
    9bf6:	29 c2                	sub    %eax,%edx
    9bf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9bfb:	29 d0                	sub    %edx,%eax
    9bfd:	8d 50 07             	lea    0x7(%eax),%edx
    9c00:	85 c0                	test   %eax,%eax
    9c02:	0f 48 c2             	cmovs  %edx,%eax
    9c05:	c1 f8 03             	sar    $0x3,%eax
    9c08:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    9c0b:	8b 45 c0             	mov    -0x40(%ebp),%eax
    9c0e:	8b 50 0c             	mov    0xc(%eax),%edx
    9c11:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9c14:	8d 88 ff 01 00 00    	lea    0x1ff(%eax),%ecx
    9c1a:	85 c0                	test   %eax,%eax
    9c1c:	0f 48 c1             	cmovs  %ecx,%eax
    9c1f:	c1 f8 09             	sar    $0x9,%eax
    9c22:	01 d0                	add    %edx,%eax
    9c24:	83 c0 02             	add    $0x2,%eax
    9c27:	89 45 f0             	mov    %eax,-0x10(%ebp)
    9c2a:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9c30:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9c33:	c1 e0 09             	shl    $0x9,%eax
    9c36:	99                   	cltd   
    9c37:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9c3a:	8b 49 20             	mov    0x20(%ecx),%ecx
    9c3d:	83 ec 04             	sub    $0x4,%esp
    9c40:	53                   	push   %ebx
    9c41:	6a 03                	push   $0x3
    9c43:	68 00 02 00 00       	push   $0x200
    9c48:	52                   	push   %edx
    9c49:	50                   	push   %eax
    9c4a:	51                   	push   %ecx
    9c4b:	68 eb 03 00 00       	push   $0x3eb
    9c50:	e8 a6 e3 ff ff       	call   7ffb <rw_sector>
    9c55:	83 c4 20             	add    $0x20,%esp
    9c58:	8b 45 b8             	mov    -0x48(%ebp),%eax
    9c5b:	99                   	cltd   
    9c5c:	c1 ea 1d             	shr    $0x1d,%edx
    9c5f:	01 d0                	add    %edx,%eax
    9c61:	83 e0 07             	and    $0x7,%eax
    9c64:	29 d0                	sub    %edx,%eax
    9c66:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9c69:	e9 8f 00 00 00       	jmp    9cfd <do_unlink+0x41e>
    9c6e:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9c74:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9c77:	99                   	cltd   
    9c78:	c1 ea 17             	shr    $0x17,%edx
    9c7b:	01 d0                	add    %edx,%eax
    9c7d:	25 ff 01 00 00       	and    $0x1ff,%eax
    9c82:	29 d0                	sub    %edx,%eax
    9c84:	01 c8                	add    %ecx,%eax
    9c86:	0f b6 00             	movzbl (%eax),%eax
    9c89:	0f b6 d0             	movzbl %al,%edx
    9c8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9c8f:	89 c1                	mov    %eax,%ecx
    9c91:	d3 fa                	sar    %cl,%edx
    9c93:	89 d0                	mov    %edx,%eax
    9c95:	83 e0 01             	and    $0x1,%eax
    9c98:	85 c0                	test   %eax,%eax
    9c9a:	75 19                	jne    9cb5 <do_unlink+0x3d6>
    9c9c:	6a 7b                	push   $0x7b
    9c9e:	68 ec e5 00 00       	push   $0xe5ec
    9ca3:	68 ec e5 00 00       	push   $0xe5ec
    9ca8:	68 3c e7 00 00       	push   $0xe73c
    9cad:	e8 2b 2a 00 00       	call   c6dd <assertion_failure>
    9cb2:	83 c4 10             	add    $0x10,%esp
    9cb5:	8b 0d 04 28 01 00    	mov    0x12804,%ecx
    9cbb:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9cbe:	99                   	cltd   
    9cbf:	c1 ea 17             	shr    $0x17,%edx
    9cc2:	01 d0                	add    %edx,%eax
    9cc4:	25 ff 01 00 00       	and    $0x1ff,%eax
    9cc9:	29 d0                	sub    %edx,%eax
    9ccb:	89 c2                	mov    %eax,%edx
    9ccd:	89 d0                	mov    %edx,%eax
    9ccf:	01 c8                	add    %ecx,%eax
    9cd1:	0f b6 00             	movzbl (%eax),%eax
    9cd4:	89 c3                	mov    %eax,%ebx
    9cd6:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9cd9:	be 01 00 00 00       	mov    $0x1,%esi
    9cde:	89 c1                	mov    %eax,%ecx
    9ce0:	d3 e6                	shl    %cl,%esi
    9ce2:	89 f0                	mov    %esi,%eax
    9ce4:	f7 d0                	not    %eax
    9ce6:	21 c3                	and    %eax,%ebx
    9ce8:	89 d9                	mov    %ebx,%ecx
    9cea:	a1 04 28 01 00       	mov    0x12804,%eax
    9cef:	01 d0                	add    %edx,%eax
    9cf1:	89 ca                	mov    %ecx,%edx
    9cf3:	88 10                	mov    %dl,(%eax)
    9cf5:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9cf9:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    9cfd:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
    9d01:	7f 0a                	jg     9d0d <do_unlink+0x42e>
    9d03:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    9d07:	0f 85 61 ff ff ff    	jne    9c6e <do_unlink+0x38f>
    9d0d:	8b 45 bc             	mov    -0x44(%ebp),%eax
    9d10:	99                   	cltd   
    9d11:	c1 ea 17             	shr    $0x17,%edx
    9d14:	01 d0                	add    %edx,%eax
    9d16:	25 ff 01 00 00       	and    $0x1ff,%eax
    9d1b:	29 d0                	sub    %edx,%eax
    9d1d:	83 c0 01             	add    $0x1,%eax
    9d20:	89 45 ec             	mov    %eax,-0x14(%ebp)
    9d23:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    9d2a:	e9 b8 00 00 00       	jmp    9de7 <do_unlink+0x508>
    9d2f:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9d36:	75 67                	jne    9d9f <do_unlink+0x4c0>
    9d38:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9d3f:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9d45:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9d48:	c1 e0 09             	shl    $0x9,%eax
    9d4b:	99                   	cltd   
    9d4c:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9d4f:	8b 49 20             	mov    0x20(%ecx),%ecx
    9d52:	83 ec 04             	sub    $0x4,%esp
    9d55:	53                   	push   %ebx
    9d56:	6a 03                	push   $0x3
    9d58:	68 00 02 00 00       	push   $0x200
    9d5d:	52                   	push   %edx
    9d5e:	50                   	push   %eax
    9d5f:	51                   	push   %ecx
    9d60:	68 ec 03 00 00       	push   $0x3ec
    9d65:	e8 91 e2 ff ff       	call   7ffb <rw_sector>
    9d6a:	83 c4 20             	add    $0x20,%esp
    9d6d:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9d73:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9d77:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9d7a:	c1 e0 09             	shl    $0x9,%eax
    9d7d:	99                   	cltd   
    9d7e:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9d81:	8b 49 20             	mov    0x20(%ecx),%ecx
    9d84:	83 ec 04             	sub    $0x4,%esp
    9d87:	53                   	push   %ebx
    9d88:	6a 03                	push   $0x3
    9d8a:	68 00 02 00 00       	push   $0x200
    9d8f:	52                   	push   %edx
    9d90:	50                   	push   %eax
    9d91:	51                   	push   %ecx
    9d92:	68 eb 03 00 00       	push   $0x3eb
    9d97:	e8 5f e2 ff ff       	call   7ffb <rw_sector>
    9d9c:	83 c4 20             	add    $0x20,%esp
    9d9f:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9da5:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9da8:	01 d0                	add    %edx,%eax
    9daa:	0f b6 00             	movzbl (%eax),%eax
    9dad:	3c ff                	cmp    $0xff,%al
    9daf:	74 1c                	je     9dcd <do_unlink+0x4ee>
    9db1:	68 88 00 00 00       	push   $0x88
    9db6:	68 ec e5 00 00       	push   $0xe5ec
    9dbb:	68 ec e5 00 00       	push   $0xe5ec
    9dc0:	68 6a e7 00 00       	push   $0xe76a
    9dc5:	e8 13 29 00 00       	call   c6dd <assertion_failure>
    9dca:	83 c4 10             	add    $0x10,%esp
    9dcd:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9dd3:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9dd6:	01 d0                	add    %edx,%eax
    9dd8:	c6 00 00             	movb   $0x0,(%eax)
    9ddb:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    9ddf:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    9de3:	83 6d f4 08          	subl   $0x8,-0xc(%ebp)
    9de7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    9dea:	3b 45 b4             	cmp    -0x4c(%ebp),%eax
    9ded:	0f 8c 3c ff ff ff    	jl     9d2f <do_unlink+0x450>
    9df3:	81 7d ec 00 02 00 00 	cmpl   $0x200,-0x14(%ebp)
    9dfa:	75 67                	jne    9e63 <do_unlink+0x584>
    9dfc:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9e03:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9e09:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9e0c:	c1 e0 09             	shl    $0x9,%eax
    9e0f:	99                   	cltd   
    9e10:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9e13:	8b 49 20             	mov    0x20(%ecx),%ecx
    9e16:	83 ec 04             	sub    $0x4,%esp
    9e19:	53                   	push   %ebx
    9e1a:	6a 03                	push   $0x3
    9e1c:	68 00 02 00 00       	push   $0x200
    9e21:	52                   	push   %edx
    9e22:	50                   	push   %eax
    9e23:	51                   	push   %ecx
    9e24:	68 ec 03 00 00       	push   $0x3ec
    9e29:	e8 cd e1 ff ff       	call   7ffb <rw_sector>
    9e2e:	83 c4 20             	add    $0x20,%esp
    9e31:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9e37:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    9e3b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9e3e:	c1 e0 09             	shl    $0x9,%eax
    9e41:	99                   	cltd   
    9e42:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9e45:	8b 49 20             	mov    0x20(%ecx),%ecx
    9e48:	83 ec 04             	sub    $0x4,%esp
    9e4b:	53                   	push   %ebx
    9e4c:	6a 03                	push   $0x3
    9e4e:	68 00 02 00 00       	push   $0x200
    9e53:	52                   	push   %edx
    9e54:	50                   	push   %eax
    9e55:	51                   	push   %ecx
    9e56:	68 eb 03 00 00       	push   $0x3eb
    9e5b:	e8 9b e1 ff ff       	call   7ffb <rw_sector>
    9e60:	83 c4 20             	add    $0x20,%esp
    9e63:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9e66:	ba ff 00 00 00       	mov    $0xff,%edx
    9e6b:	89 c1                	mov    %eax,%ecx
    9e6d:	d3 e2                	shl    %cl,%edx
    9e6f:	89 d0                	mov    %edx,%eax
    9e71:	f7 d0                	not    %eax
    9e73:	88 45 b3             	mov    %al,-0x4d(%ebp)
    9e76:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9e7c:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9e7f:	01 d0                	add    %edx,%eax
    9e81:	0f b6 00             	movzbl (%eax),%eax
    9e84:	22 45 b3             	and    -0x4d(%ebp),%al
    9e87:	38 45 b3             	cmp    %al,-0x4d(%ebp)
    9e8a:	74 1c                	je     9ea8 <do_unlink+0x5c9>
    9e8c:	68 93 00 00 00       	push   $0x93
    9e91:	68 ec e5 00 00       	push   $0xe5ec
    9e96:	68 ec e5 00 00       	push   $0xe5ec
    9e9b:	68 7b e7 00 00       	push   $0xe77b
    9ea0:	e8 38 28 00 00       	call   c6dd <assertion_failure>
    9ea5:	83 c4 10             	add    $0x10,%esp
    9ea8:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9eae:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9eb1:	01 d0                	add    %edx,%eax
    9eb3:	0f b6 00             	movzbl (%eax),%eax
    9eb6:	89 c2                	mov    %eax,%edx
    9eb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
    9ebb:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    9ec0:	89 c1                	mov    %eax,%ecx
    9ec2:	d3 e3                	shl    %cl,%ebx
    9ec4:	89 d8                	mov    %ebx,%eax
    9ec6:	89 d1                	mov    %edx,%ecx
    9ec8:	21 c1                	and    %eax,%ecx
    9eca:	8b 15 04 28 01 00    	mov    0x12804,%edx
    9ed0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9ed3:	01 d0                	add    %edx,%eax
    9ed5:	89 ca                	mov    %ecx,%edx
    9ed7:	88 10                	mov    %dl,(%eax)
    9ed9:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9edf:	8b 45 f0             	mov    -0x10(%ebp),%eax
    9ee2:	c1 e0 09             	shl    $0x9,%eax
    9ee5:	99                   	cltd   
    9ee6:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
    9ee9:	8b 49 20             	mov    0x20(%ecx),%ecx
    9eec:	83 ec 04             	sub    $0x4,%esp
    9eef:	53                   	push   %ebx
    9ef0:	6a 03                	push   $0x3
    9ef2:	68 00 02 00 00       	push   $0x200
    9ef7:	52                   	push   %edx
    9ef8:	50                   	push   %eax
    9ef9:	51                   	push   %ecx
    9efa:	68 ec 03 00 00       	push   $0x3ec
    9eff:	e8 f7 e0 ff ff       	call   7ffb <rw_sector>
    9f04:	83 c4 20             	add    $0x20,%esp
    9f07:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f0a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    9f10:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f13:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    9f1a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f1d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    9f24:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    9f27:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    9f2e:	83 ec 0c             	sub    $0xc,%esp
    9f31:	ff 75 c4             	pushl  -0x3c(%ebp)
    9f34:	e8 b1 e4 ff ff       	call   83ea <sync_inode>
    9f39:	83 c4 10             	add    $0x10,%esp
    9f3c:	83 ec 0c             	sub    $0xc,%esp
    9f3f:	ff 75 c4             	pushl  -0x3c(%ebp)
    9f42:	e8 65 e4 ff ff       	call   83ac <put_inode>
    9f47:	83 c4 10             	add    $0x10,%esp
    9f4a:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f50:	8b 40 08             	mov    0x8(%eax),%eax
    9f53:	89 45 ac             	mov    %eax,-0x54(%ebp)
    9f56:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f5c:	8b 40 04             	mov    0x4(%eax),%eax
    9f5f:	05 00 02 00 00       	add    $0x200,%eax
    9f64:	c1 e8 09             	shr    $0x9,%eax
    9f67:	89 45 a8             	mov    %eax,-0x58(%ebp)
    9f6a:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    9f70:	8b 40 04             	mov    0x4(%eax),%eax
    9f73:	c1 e8 04             	shr    $0x4,%eax
    9f76:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    9f79:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    9f80:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    9f87:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    9f8e:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    9f95:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    9f9c:	e9 f0 00 00 00       	jmp    a091 <do_unlink+0x7b2>
    9fa1:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    9fa7:	8b 55 ac             	mov    -0x54(%ebp),%edx
    9faa:	8b 45 ec             	mov    -0x14(%ebp),%eax
    9fad:	01 d0                	add    %edx,%eax
    9faf:	c1 e0 09             	shl    $0x9,%eax
    9fb2:	99                   	cltd   
    9fb3:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    9fb9:	8b 49 20             	mov    0x20(%ecx),%ecx
    9fbc:	83 ec 04             	sub    $0x4,%esp
    9fbf:	53                   	push   %ebx
    9fc0:	6a 03                	push   $0x3
    9fc2:	68 00 02 00 00       	push   $0x200
    9fc7:	52                   	push   %edx
    9fc8:	50                   	push   %eax
    9fc9:	51                   	push   %ecx
    9fca:	68 eb 03 00 00       	push   $0x3eb
    9fcf:	e8 27 e0 ff ff       	call   7ffb <rw_sector>
    9fd4:	83 c4 20             	add    $0x20,%esp
    9fd7:	a1 04 28 01 00       	mov    0x12804,%eax
    9fdc:	89 45 e0             	mov    %eax,-0x20(%ebp)
    9fdf:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    9fe6:	e9 85 00 00 00       	jmp    a070 <do_unlink+0x791>
    9feb:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    9fef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    9ff2:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    9ff5:	0f 8f 83 00 00 00    	jg     a07e <do_unlink+0x79f>
    9ffb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    9ffe:	8b 00                	mov    (%eax),%eax
    a000:	39 45 c8             	cmp    %eax,-0x38(%ebp)
    a003:	75 51                	jne    a056 <do_unlink+0x777>
    a005:	83 ec 04             	sub    $0x4,%esp
    a008:	6a 10                	push   $0x10
    a00a:	6a 00                	push   $0x0
    a00c:	ff 75 e0             	pushl  -0x20(%ebp)
    a00f:	e8 65 24 00 00       	call   c479 <memset>
    a014:	83 c4 10             	add    $0x10,%esp
    a017:	8b 1d 04 28 01 00    	mov    0x12804,%ebx
    a01d:	8b 55 ac             	mov    -0x54(%ebp),%edx
    a020:	8b 45 ec             	mov    -0x14(%ebp),%eax
    a023:	01 d0                	add    %edx,%eax
    a025:	c1 e0 09             	shl    $0x9,%eax
    a028:	99                   	cltd   
    a029:	8b 8d a0 fe ff ff    	mov    -0x160(%ebp),%ecx
    a02f:	8b 49 20             	mov    0x20(%ecx),%ecx
    a032:	83 ec 04             	sub    $0x4,%esp
    a035:	53                   	push   %ebx
    a036:	6a 03                	push   $0x3
    a038:	68 00 02 00 00       	push   $0x200
    a03d:	52                   	push   %edx
    a03e:	50                   	push   %eax
    a03f:	51                   	push   %ecx
    a040:	68 ec 03 00 00       	push   $0x3ec
    a045:	e8 b1 df ff ff       	call   7ffb <rw_sector>
    a04a:	83 c4 20             	add    $0x20,%esp
    a04d:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
    a054:	eb 29                	jmp    a07f <do_unlink+0x7a0>
    a056:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a059:	8b 00                	mov    (%eax),%eax
    a05b:	85 c0                	test   %eax,%eax
    a05d:	74 09                	je     a068 <do_unlink+0x789>
    a05f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a062:	83 c0 10             	add    $0x10,%eax
    a065:	89 45 d8             	mov    %eax,-0x28(%ebp)
    a068:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    a06c:	83 45 e0 10          	addl   $0x10,-0x20(%ebp)
    a070:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    a073:	83 f8 1f             	cmp    $0x1f,%eax
    a076:	0f 86 6f ff ff ff    	jbe    9feb <do_unlink+0x70c>
    a07c:	eb 01                	jmp    a07f <do_unlink+0x7a0>
    a07e:	90                   	nop
    a07f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a082:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    a085:	7f 16                	jg     a09d <do_unlink+0x7be>
    a087:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a08b:	75 10                	jne    a09d <do_unlink+0x7be>
    a08d:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    a091:	8b 45 ec             	mov    -0x14(%ebp),%eax
    a094:	3b 45 a8             	cmp    -0x58(%ebp),%eax
    a097:	0f 8c 04 ff ff ff    	jl     9fa1 <do_unlink+0x6c2>
    a09d:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a0a1:	75 1c                	jne    a0bf <do_unlink+0x7e0>
    a0a3:	68 cb 00 00 00       	push   $0xcb
    a0a8:	68 ec e5 00 00       	push   $0xe5ec
    a0ad:	68 ec e5 00 00       	push   $0xe5ec
    a0b2:	68 95 e7 00 00       	push   $0xe795
    a0b7:	e8 21 26 00 00       	call   c6dd <assertion_failure>
    a0bc:	83 c4 10             	add    $0x10,%esp
    a0bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a0c2:	3b 45 a4             	cmp    -0x5c(%ebp),%eax
    a0c5:	75 1e                	jne    a0e5 <do_unlink+0x806>
    a0c7:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    a0cd:	8b 55 d8             	mov    -0x28(%ebp),%edx
    a0d0:	89 50 04             	mov    %edx,0x4(%eax)
    a0d3:	8b 85 a0 fe ff ff    	mov    -0x160(%ebp),%eax
    a0d9:	83 ec 0c             	sub    $0xc,%esp
    a0dc:	50                   	push   %eax
    a0dd:	e8 08 e3 ff ff       	call   83ea <sync_inode>
    a0e2:	83 c4 10             	add    $0x10,%esp
    a0e5:	b8 00 00 00 00       	mov    $0x0,%eax
    a0ea:	8d 65 f8             	lea    -0x8(%ebp),%esp
    a0ed:	5b                   	pop    %ebx
    a0ee:	5e                   	pop    %esi
    a0ef:	5d                   	pop    %ebp
    a0f0:	c3                   	ret    

0000a0f1 <disklog>:
    a0f1:	55                   	push   %ebp
    a0f2:	89 e5                	mov    %esp,%ebp
    a0f4:	57                   	push   %edi
    a0f5:	56                   	push   %esi
    a0f6:	53                   	push   %ebx
    a0f7:	81 ec ac 00 00 00    	sub    $0xac,%esp
    a0fd:	a1 a0 99 03 00       	mov    0x399a0,%eax
    a102:	8b 40 20             	mov    0x20(%eax),%eax
    a105:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    a108:	83 ec 0c             	sub    $0xc,%esp
    a10b:	ff 75 c4             	pushl  -0x3c(%ebp)
    a10e:	e8 f0 e0 ff ff       	call   8203 <get_super_block>
    a113:	83 c4 10             	add    $0x10,%esp
    a116:	89 45 c0             	mov    %eax,-0x40(%ebp)
    a119:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a11c:	8b 40 08             	mov    0x8(%eax),%eax
    a11f:	2d 00 08 00 00       	sub    $0x800,%eax
    a124:	89 45 bc             	mov    %eax,-0x44(%ebp)
    a127:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a12c:	85 c0                	test   %eax,%eax
    a12e:	0f 85 9c 02 00 00    	jne    a3d0 <disklog+0x2df>
    a134:	c7 45 b8 00 10 00 00 	movl   $0x1000,-0x48(%ebp)
    a13b:	8b 45 c0             	mov    -0x40(%ebp),%eax
    a13e:	8b 40 0c             	mov    0xc(%eax),%eax
    a141:	83 c0 02             	add    $0x2,%eax
    a144:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    a147:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a14a:	99                   	cltd   
    a14b:	f7 7d b8             	idivl  -0x48(%ebp)
    a14e:	89 c2                	mov    %eax,%edx
    a150:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    a153:	01 d0                	add    %edx,%eax
    a155:	89 45 b0             	mov    %eax,-0x50(%ebp)
    a158:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a15b:	99                   	cltd   
    a15c:	f7 7d b8             	idivl  -0x48(%ebp)
    a15f:	89 d0                	mov    %edx,%eax
    a161:	8d 50 07             	lea    0x7(%eax),%edx
    a164:	85 c0                	test   %eax,%eax
    a166:	0f 48 c2             	cmovs  %edx,%eax
    a169:	c1 f8 03             	sar    $0x3,%eax
    a16c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a16f:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a172:	99                   	cltd   
    a173:	f7 7d b8             	idivl  -0x48(%ebp)
    a176:	89 d0                	mov    %edx,%eax
    a178:	c1 f8 1f             	sar    $0x1f,%eax
    a17b:	c1 e8 1d             	shr    $0x1d,%eax
    a17e:	01 c2                	add    %eax,%edx
    a180:	83 e2 07             	and    $0x7,%edx
    a183:	29 c2                	sub    %eax,%edx
    a185:	89 d0                	mov    %edx,%eax
    a187:	89 45 e0             	mov    %eax,-0x20(%ebp)
    a18a:	b8 00 08 00 00       	mov    $0x800,%eax
    a18f:	99                   	cltd   
    a190:	f7 7d b8             	idivl  -0x48(%ebp)
    a193:	83 c0 02             	add    $0x2,%eax
    a196:	89 45 ac             	mov    %eax,-0x54(%ebp)
    a199:	c7 45 dc 00 08 00 00 	movl   $0x800,-0x24(%ebp)
    a1a0:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a1a7:	e9 21 01 00 00       	jmp    a2cd <disklog+0x1dc>
    a1ac:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a1b2:	e8 5b 26 00 00       	call   c812 <getpid>
    a1b7:	89 c1                	mov    %eax,%ecx
    a1b9:	8b 55 b0             	mov    -0x50(%ebp),%edx
    a1bc:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a1bf:	01 d0                	add    %edx,%eax
    a1c1:	c1 e0 09             	shl    $0x9,%eax
    a1c4:	99                   	cltd   
    a1c5:	83 ec 04             	sub    $0x4,%esp
    a1c8:	53                   	push   %ebx
    a1c9:	51                   	push   %ecx
    a1ca:	68 00 02 00 00       	push   $0x200
    a1cf:	52                   	push   %edx
    a1d0:	50                   	push   %eax
    a1d1:	ff 75 c4             	pushl  -0x3c(%ebp)
    a1d4:	68 eb 03 00 00       	push   $0x3eb
    a1d9:	e8 1d de ff ff       	call   7ffb <rw_sector>
    a1de:	83 c4 20             	add    $0x20,%esp
    a1e1:	e9 8b 00 00 00       	jmp    a271 <disklog+0x180>
    a1e6:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a1ec:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a1ef:	01 d0                	add    %edx,%eax
    a1f1:	0f b6 00             	movzbl (%eax),%eax
    a1f4:	0f be d0             	movsbl %al,%edx
    a1f7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a1fa:	89 c1                	mov    %eax,%ecx
    a1fc:	d3 fa                	sar    %cl,%edx
    a1fe:	89 d0                	mov    %edx,%eax
    a200:	83 e0 01             	and    $0x1,%eax
    a203:	85 c0                	test   %eax,%eax
    a205:	74 19                	je     a220 <disklog+0x12f>
    a207:	6a 65                	push   $0x65
    a209:	68 9c e7 00 00       	push   $0xe79c
    a20e:	68 9c e7 00 00       	push   $0xe79c
    a213:	68 ac e7 00 00       	push   $0xe7ac
    a218:	e8 c0 24 00 00       	call   c6dd <assertion_failure>
    a21d:	83 c4 10             	add    $0x10,%esp
    a220:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a226:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a229:	01 d0                	add    %edx,%eax
    a22b:	0f b6 18             	movzbl (%eax),%ebx
    a22e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a231:	ba 01 00 00 00       	mov    $0x1,%edx
    a236:	89 c1                	mov    %eax,%ecx
    a238:	d3 e2                	shl    %cl,%edx
    a23a:	89 d0                	mov    %edx,%eax
    a23c:	89 c1                	mov    %eax,%ecx
    a23e:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a244:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a247:	01 d0                	add    %edx,%eax
    a249:	09 cb                	or     %ecx,%ebx
    a24b:	89 da                	mov    %ebx,%edx
    a24d:	88 10                	mov    %dl,(%eax)
    a24f:	83 6d dc 01          	subl   $0x1,-0x24(%ebp)
    a253:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a257:	74 0c                	je     a265 <disklog+0x174>
    a259:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    a25d:	83 7d e0 07          	cmpl   $0x7,-0x20(%ebp)
    a261:	7e 83                	jle    a1e6 <disklog+0xf5>
    a263:	eb 01                	jmp    a266 <disklog+0x175>
    a265:	90                   	nop
    a266:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a26d:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a271:	81 7d e4 ff 01 00 00 	cmpl   $0x1ff,-0x1c(%ebp)
    a278:	7f 06                	jg     a280 <disklog+0x18f>
    a27a:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a27e:	7f dd                	jg     a25d <disklog+0x16c>
    a280:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a287:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a28e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a294:	e8 79 25 00 00       	call   c812 <getpid>
    a299:	89 c1                	mov    %eax,%ecx
    a29b:	8b 55 b0             	mov    -0x50(%ebp),%edx
    a29e:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a2a1:	01 d0                	add    %edx,%eax
    a2a3:	c1 e0 09             	shl    $0x9,%eax
    a2a6:	99                   	cltd   
    a2a7:	83 ec 04             	sub    $0x4,%esp
    a2aa:	53                   	push   %ebx
    a2ab:	51                   	push   %ecx
    a2ac:	68 00 02 00 00       	push   $0x200
    a2b1:	52                   	push   %edx
    a2b2:	50                   	push   %eax
    a2b3:	ff 75 c4             	pushl  -0x3c(%ebp)
    a2b6:	68 ec 03 00 00       	push   $0x3ec
    a2bb:	e8 3b dd ff ff       	call   7ffb <rw_sector>
    a2c0:	83 c4 20             	add    $0x20,%esp
    a2c3:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a2c7:	74 12                	je     a2db <disklog+0x1ea>
    a2c9:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a2cd:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a2d0:	3b 45 ac             	cmp    -0x54(%ebp),%eax
    a2d3:	0f 8c d3 fe ff ff    	jl     a1ac <disklog+0xbb>
    a2d9:	eb 01                	jmp    a2dc <disklog+0x1eb>
    a2db:	90                   	nop
    a2dc:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
    a2e0:	74 19                	je     a2fb <disklog+0x20a>
    a2e2:	6a 74                	push   $0x74
    a2e4:	68 9c e7 00 00       	push   $0xe79c
    a2e9:	68 9c e7 00 00       	push   $0xe79c
    a2ee:	68 d9 e7 00 00       	push   $0xe7d9
    a2f3:	e8 e5 23 00 00       	call   c6dd <assertion_failure>
    a2f8:	83 c4 10             	add    $0x10,%esp
    a2fb:	c7 05 e0 38 01 00 40 	movl   $0x40,0x138e0
    a302:	00 00 00 
    a305:	a1 04 d0 00 00       	mov    0xd004,%eax
    a30a:	c1 f8 09             	sar    $0x9,%eax
    a30d:	ba 00 01 00 00       	mov    $0x100,%edx
    a312:	3d 00 01 00 00       	cmp    $0x100,%eax
    a317:	0f 4f c2             	cmovg  %edx,%eax
    a31a:	89 45 a8             	mov    %eax,-0x58(%ebp)
    a31d:	81 7d a8 00 01 00 00 	cmpl   $0x100,-0x58(%ebp)
    a324:	74 19                	je     a33f <disklog+0x24e>
    a326:	6a 7c                	push   $0x7c
    a328:	68 9c e7 00 00       	push   $0xe79c
    a32d:	68 9c e7 00 00       	push   $0xe79c
    a332:	68 e8 e7 00 00       	push   $0xe7e8
    a337:	e8 a1 23 00 00       	call   c6dd <assertion_failure>
    a33c:	83 c4 10             	add    $0x10,%esp
    a33f:	c7 45 d4 00 08 00 00 	movl   $0x800,-0x2c(%ebp)
    a346:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a349:	89 45 d8             	mov    %eax,-0x28(%ebp)
    a34c:	eb 5c                	jmp    a3aa <disklog+0x2b9>
    a34e:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a351:	c1 e0 09             	shl    $0x9,%eax
    a354:	89 c2                	mov    %eax,%edx
    a356:	a1 10 28 01 00       	mov    0x12810,%eax
    a35b:	83 ec 04             	sub    $0x4,%esp
    a35e:	52                   	push   %edx
    a35f:	6a 20                	push   $0x20
    a361:	50                   	push   %eax
    a362:	e8 12 21 00 00       	call   c479 <memset>
    a367:	83 c4 10             	add    $0x10,%esp
    a36a:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a370:	e8 9d 24 00 00       	call   c812 <getpid>
    a375:	89 c6                	mov    %eax,%esi
    a377:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a37a:	c1 e0 09             	shl    $0x9,%eax
    a37d:	89 c1                	mov    %eax,%ecx
    a37f:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a382:	c1 e0 09             	shl    $0x9,%eax
    a385:	99                   	cltd   
    a386:	83 ec 04             	sub    $0x4,%esp
    a389:	53                   	push   %ebx
    a38a:	56                   	push   %esi
    a38b:	51                   	push   %ecx
    a38c:	52                   	push   %edx
    a38d:	50                   	push   %eax
    a38e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a391:	68 ec 03 00 00       	push   $0x3ec
    a396:	e8 60 dc ff ff       	call   7ffb <rw_sector>
    a39b:	83 c4 20             	add    $0x20,%esp
    a39e:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a3a1:	29 45 d4             	sub    %eax,-0x2c(%ebp)
    a3a4:	8b 45 a8             	mov    -0x58(%ebp),%eax
    a3a7:	01 45 d8             	add    %eax,-0x28(%ebp)
    a3aa:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a3ad:	05 ff 07 00 00       	add    $0x7ff,%eax
    a3b2:	39 45 d8             	cmp    %eax,-0x28(%ebp)
    a3b5:	7e 97                	jle    a34e <disklog+0x25d>
    a3b7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
    a3bb:	74 13                	je     a3d0 <disklog+0x2df>
    a3bd:	83 ec 08             	sub    $0x8,%esp
    a3c0:	ff 75 d4             	pushl  -0x2c(%ebp)
    a3c3:	68 f8 e7 00 00       	push   $0xe7f8
    a3c8:	e8 79 79 ff ff       	call   1d46 <panic>
    a3cd:	83 c4 10             	add    $0x10,%esp
    a3d0:	8b 45 08             	mov    0x8(%ebp),%eax
    a3d3:	89 45 d0             	mov    %eax,-0x30(%ebp)
    a3d6:	83 ec 0c             	sub    $0xc,%esp
    a3d9:	ff 75 08             	pushl  0x8(%ebp)
    a3dc:	e8 d1 20 00 00       	call   c4b2 <strlen>
    a3e1:	83 c4 10             	add    $0x10,%esp
    a3e4:	89 45 cc             	mov    %eax,-0x34(%ebp)
    a3e7:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a3ec:	c1 f8 09             	sar    $0x9,%eax
    a3ef:	89 c2                	mov    %eax,%edx
    a3f1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a3f4:	01 d0                	add    %edx,%eax
    a3f6:	89 45 c8             	mov    %eax,-0x38(%ebp)
    a3f9:	e9 ca 00 00 00       	jmp    a4c8 <disklog+0x3d7>
    a3fe:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a404:	e8 09 24 00 00       	call   c812 <getpid>
    a409:	89 c1                	mov    %eax,%ecx
    a40b:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a40e:	c1 e0 09             	shl    $0x9,%eax
    a411:	99                   	cltd   
    a412:	83 ec 04             	sub    $0x4,%esp
    a415:	53                   	push   %ebx
    a416:	51                   	push   %ecx
    a417:	68 00 02 00 00       	push   $0x200
    a41c:	52                   	push   %edx
    a41d:	50                   	push   %eax
    a41e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a421:	68 eb 03 00 00       	push   $0x3eb
    a426:	e8 d0 db ff ff       	call   7ffb <rw_sector>
    a42b:	83 c4 20             	add    $0x20,%esp
    a42e:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a433:	99                   	cltd   
    a434:	c1 ea 17             	shr    $0x17,%edx
    a437:	01 d0                	add    %edx,%eax
    a439:	25 ff 01 00 00       	and    $0x1ff,%eax
    a43e:	29 d0                	sub    %edx,%eax
    a440:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a443:	b8 00 02 00 00       	mov    $0x200,%eax
    a448:	2b 45 a4             	sub    -0x5c(%ebp),%eax
    a44b:	39 45 cc             	cmp    %eax,-0x34(%ebp)
    a44e:	0f 4e 45 cc          	cmovle -0x34(%ebp),%eax
    a452:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a455:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a45b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    a45e:	01 d0                	add    %edx,%eax
    a460:	83 ec 04             	sub    $0x4,%esp
    a463:	ff 75 a0             	pushl  -0x60(%ebp)
    a466:	ff 75 d0             	pushl  -0x30(%ebp)
    a469:	50                   	push   %eax
    a46a:	e8 e1 1f 00 00       	call   c450 <memcpy>
    a46f:	83 c4 10             	add    $0x10,%esp
    a472:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a475:	01 45 a4             	add    %eax,-0x5c(%ebp)
    a478:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a47b:	29 45 cc             	sub    %eax,-0x34(%ebp)
    a47e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a484:	e8 89 23 00 00       	call   c812 <getpid>
    a489:	89 c1                	mov    %eax,%ecx
    a48b:	8b 45 c8             	mov    -0x38(%ebp),%eax
    a48e:	c1 e0 09             	shl    $0x9,%eax
    a491:	99                   	cltd   
    a492:	83 ec 04             	sub    $0x4,%esp
    a495:	53                   	push   %ebx
    a496:	51                   	push   %ecx
    a497:	68 00 02 00 00       	push   $0x200
    a49c:	52                   	push   %edx
    a49d:	50                   	push   %eax
    a49e:	ff 75 c4             	pushl  -0x3c(%ebp)
    a4a1:	68 ec 03 00 00       	push   $0x3ec
    a4a6:	e8 50 db ff ff       	call   7ffb <rw_sector>
    a4ab:	83 c4 20             	add    $0x20,%esp
    a4ae:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    a4b2:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a4b8:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a4bb:	01 d0                	add    %edx,%eax
    a4bd:	a3 e0 38 01 00       	mov    %eax,0x138e0
    a4c2:	8b 45 a0             	mov    -0x60(%ebp),%eax
    a4c5:	01 45 d0             	add    %eax,-0x30(%ebp)
    a4c8:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
    a4cc:	0f 85 2c ff ff ff    	jne    a3fe <disklog+0x30d>
    a4d2:	c7 85 5c ff ff ff 04 	movl   $0x4,-0xa4(%ebp)
    a4d9:	00 00 00 
    a4dc:	8d 45 88             	lea    -0x78(%ebp),%eax
    a4df:	89 45 84             	mov    %eax,-0x7c(%ebp)
    a4e2:	83 ec 04             	sub    $0x4,%esp
    a4e5:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
    a4eb:	50                   	push   %eax
    a4ec:	6a 01                	push   $0x1
    a4ee:	6a 03                	push   $0x3
    a4f0:	e8 d3 1f 00 00       	call   c4c8 <send_recv>
    a4f5:	83 c4 10             	add    $0x10,%esp
    a4f8:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a4fe:	e8 0f 23 00 00       	call   c812 <getpid>
    a503:	89 c1                	mov    %eax,%ecx
    a505:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a508:	c1 e0 09             	shl    $0x9,%eax
    a50b:	99                   	cltd   
    a50c:	83 ec 04             	sub    $0x4,%esp
    a50f:	53                   	push   %ebx
    a510:	51                   	push   %ecx
    a511:	68 00 02 00 00       	push   $0x200
    a516:	52                   	push   %edx
    a517:	50                   	push   %eax
    a518:	ff 75 c4             	pushl  -0x3c(%ebp)
    a51b:	68 eb 03 00 00       	push   $0x3eb
    a520:	e8 d6 da ff ff       	call   7ffb <rw_sector>
    a525:	83 c4 20             	add    $0x20,%esp
    a528:	8b 15 e0 38 01 00    	mov    0x138e0,%edx
    a52e:	a1 10 28 01 00       	mov    0x12810,%eax
    a533:	83 ec 04             	sub    $0x4,%esp
    a536:	52                   	push   %edx
    a537:	68 1d e8 00 00       	push   $0xe81d
    a53c:	50                   	push   %eax
    a53d:	e8 e8 1e 00 00       	call   c42a <sprintf>
    a542:	83 c4 10             	add    $0x10,%esp
    a545:	a1 10 28 01 00       	mov    0x12810,%eax
    a54a:	83 c0 09             	add    $0x9,%eax
    a54d:	83 ec 04             	sub    $0x4,%esp
    a550:	6a 16                	push   $0x16
    a552:	6a 20                	push   $0x20
    a554:	50                   	push   %eax
    a555:	e8 1f 1f 00 00       	call   c479 <memset>
    a55a:	83 c4 10             	add    $0x10,%esp
    a55d:	a1 10 28 01 00       	mov    0x12810,%eax
    a562:	83 c0 1f             	add    $0x1f,%eax
    a565:	c6 00 0a             	movb   $0xa,(%eax)
    a568:	8b 45 9c             	mov    -0x64(%ebp),%eax
    a56b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
    a571:	8b 7d 98             	mov    -0x68(%ebp),%edi
    a574:	8b 75 94             	mov    -0x6c(%ebp),%esi
    a577:	8b 5d 90             	mov    -0x70(%ebp),%ebx
    a57a:	8b 4d 8c             	mov    -0x74(%ebp),%ecx
    a57d:	8b 55 88             	mov    -0x78(%ebp),%edx
    a580:	a1 10 28 01 00       	mov    0x12810,%eax
    a585:	83 c0 20             	add    $0x20,%eax
    a588:	ff b5 54 ff ff ff    	pushl  -0xac(%ebp)
    a58e:	57                   	push   %edi
    a58f:	56                   	push   %esi
    a590:	53                   	push   %ebx
    a591:	51                   	push   %ecx
    a592:	52                   	push   %edx
    a593:	68 24 e8 00 00       	push   $0xe824
    a598:	50                   	push   %eax
    a599:	e8 8c 1e 00 00       	call   c42a <sprintf>
    a59e:	83 c4 20             	add    $0x20,%esp
    a5a1:	a1 10 28 01 00       	mov    0x12810,%eax
    a5a6:	83 c0 36             	add    $0x36,%eax
    a5a9:	83 ec 04             	sub    $0x4,%esp
    a5ac:	6a 09                	push   $0x9
    a5ae:	6a 20                	push   $0x20
    a5b0:	50                   	push   %eax
    a5b1:	e8 c3 1e 00 00       	call   c479 <memset>
    a5b6:	83 c4 10             	add    $0x10,%esp
    a5b9:	a1 10 28 01 00       	mov    0x12810,%eax
    a5be:	83 c0 3f             	add    $0x3f,%eax
    a5c1:	c6 00 0a             	movb   $0xa,(%eax)
    a5c4:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a5ca:	e8 43 22 00 00       	call   c812 <getpid>
    a5cf:	89 c1                	mov    %eax,%ecx
    a5d1:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a5d4:	c1 e0 09             	shl    $0x9,%eax
    a5d7:	99                   	cltd   
    a5d8:	83 ec 04             	sub    $0x4,%esp
    a5db:	53                   	push   %ebx
    a5dc:	51                   	push   %ecx
    a5dd:	68 00 02 00 00       	push   $0x200
    a5e2:	52                   	push   %edx
    a5e3:	50                   	push   %eax
    a5e4:	ff 75 c4             	pushl  -0x3c(%ebp)
    a5e7:	68 ec 03 00 00       	push   $0x3ec
    a5ec:	e8 0a da ff ff       	call   7ffb <rw_sector>
    a5f1:	83 c4 20             	add    $0x20,%esp
    a5f4:	a1 10 28 01 00       	mov    0x12810,%eax
    a5f9:	83 c0 33             	add    $0x33,%eax
    a5fc:	0f b6 00             	movzbl (%eax),%eax
    a5ff:	0f be c0             	movsbl %al,%eax
    a602:	8b 15 10 28 01 00    	mov    0x12810,%edx
    a608:	83 c2 40             	add    $0x40,%edx
    a60b:	83 ec 04             	sub    $0x4,%esp
    a60e:	68 c0 01 00 00       	push   $0x1c0
    a613:	50                   	push   %eax
    a614:	52                   	push   %edx
    a615:	e8 5f 1e 00 00       	call   c479 <memset>
    a61a:	83 c4 10             	add    $0x10,%esp
    a61d:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    a623:	e8 ea 21 00 00       	call   c812 <getpid>
    a628:	89 c1                	mov    %eax,%ecx
    a62a:	8b 45 bc             	mov    -0x44(%ebp),%eax
    a62d:	05 ff 07 00 00       	add    $0x7ff,%eax
    a632:	c1 e0 09             	shl    $0x9,%eax
    a635:	99                   	cltd   
    a636:	83 ec 04             	sub    $0x4,%esp
    a639:	53                   	push   %ebx
    a63a:	51                   	push   %ecx
    a63b:	68 00 02 00 00       	push   $0x200
    a640:	52                   	push   %edx
    a641:	50                   	push   %eax
    a642:	ff 75 c4             	pushl  -0x3c(%ebp)
    a645:	68 ec 03 00 00       	push   $0x3ec
    a64a:	e8 ac d9 ff ff       	call   7ffb <rw_sector>
    a64f:	83 c4 20             	add    $0x20,%esp
    a652:	a1 e0 38 01 00       	mov    0x138e0,%eax
    a657:	8d 65 f4             	lea    -0xc(%ebp),%esp
    a65a:	5b                   	pop    %ebx
    a65b:	5e                   	pop    %esi
    a65c:	5f                   	pop    %edi
    a65d:	5d                   	pop    %ebp
    a65e:	c3                   	ret    

0000a65f <dump_fd_graph>:
    a65f:	55                   	push   %ebp
    a660:	89 e5                	mov    %esp,%ebp
    a662:	57                   	push   %edi
    a663:	56                   	push   %esi
    a664:	53                   	push   %ebx
    a665:	81 ec 5c 30 00 00    	sub    $0x305c,%esp
    a66b:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    a672:	8d 45 0c             	lea    0xc(%ebp),%eax
    a675:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    a678:	8b 45 08             	mov    0x8(%ebp),%eax
    a67b:	83 ec 04             	sub    $0x4,%esp
    a67e:	ff 75 a4             	pushl  -0x5c(%ebp)
    a681:	50                   	push   %eax
    a682:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a688:	50                   	push   %eax
    a689:	e8 1f 1b 00 00       	call   c1ad <vsprintf>
    a68e:	83 c4 10             	add    $0x10,%esp
    a691:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a694:	83 ec 0c             	sub    $0xc,%esp
    a697:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a69d:	50                   	push   %eax
    a69e:	e8 0f 1e 00 00       	call   c4b2 <strlen>
    a6a3:	83 c4 10             	add    $0x10,%esp
    a6a6:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    a6a9:	74 1c                	je     a6c7 <dump_fd_graph+0x68>
    a6ab:	68 21 01 00 00       	push   $0x121
    a6b0:	68 9c e7 00 00       	push   $0xe79c
    a6b5:	68 9c e7 00 00       	push   $0xe79c
    a6ba:	68 43 e8 00 00       	push   $0xe843
    a6bf:	e8 19 20 00 00       	call   c6dd <assertion_failure>
    a6c4:	83 c4 10             	add    $0x10,%esp
    a6c7:	83 ec 08             	sub    $0x8,%esp
    a6ca:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    a6d0:	50                   	push   %eax
    a6d1:	68 56 e8 00 00       	push   $0xe856
    a6d6:	e8 2a 1a 00 00       	call   c105 <printl>
    a6db:	83 c4 10             	add    $0x10,%esp
    a6de:	e8 2f 21 00 00       	call   c812 <getpid>
    a6e3:	89 45 a0             	mov    %eax,-0x60(%ebp)
    a6e6:	83 ec 0c             	sub    $0xc,%esp
    a6e9:	68 69 e8 00 00       	push   $0xe869
    a6ee:	e8 12 1a 00 00       	call   c105 <printl>
    a6f3:	83 c4 10             	add    $0x10,%esp
    a6f6:	e8 e2 bf ff ff       	call   66dd <disable_int>
    a6fb:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a702:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a709:	eb 6a                	jmp    a775 <dump_fd_graph+0x116>
    a70b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a70e:	8b 40 74             	mov    0x74(%eax),%eax
    a711:	83 f8 20             	cmp    $0x20,%eax
    a714:	74 50                	je     a766 <dump_fd_graph+0x107>
    a716:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    a71a:	74 4d                	je     a769 <dump_fd_graph+0x10a>
    a71c:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    a720:	74 47                	je     a769 <dump_fd_graph+0x10a>
    a722:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    a726:	74 41                	je     a769 <dump_fd_graph+0x10a>
    a728:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a72b:	3b 45 a0             	cmp    -0x60(%ebp),%eax
    a72e:	74 39                	je     a769 <dump_fd_graph+0x10a>
    a730:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a733:	8b 50 5c             	mov    0x5c(%eax),%edx
    a736:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a739:	89 94 85 cc fa ff ff 	mov    %edx,-0x534(%ebp,%eax,4)
    a740:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a743:	8b 50 60             	mov    0x60(%eax),%edx
    a746:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a749:	89 94 85 38 fa ff ff 	mov    %edx,-0x5c8(%ebp,%eax,4)
    a750:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a753:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
    a75a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a75d:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
    a764:	eb 04                	jmp    a76a <dump_fd_graph+0x10b>
    a766:	90                   	nop
    a767:	eb 01                	jmp    a76a <dump_fd_graph+0x10b>
    a769:	90                   	nop
    a76a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a76e:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    a775:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    a779:	7e 90                	jle    a70b <dump_fd_graph+0xac>
    a77b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a782:	eb 12                	jmp    a796 <dump_fd_graph+0x137>
    a784:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a787:	c7 84 85 a8 f9 ff ff 	movl   $0xe86c,-0x658(%ebp,%eax,4)
    a78e:	6c e8 00 00 
    a792:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    a796:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    a799:	83 f8 1f             	cmp    $0x1f,%eax
    a79c:	76 e6                	jbe    a784 <dump_fd_graph+0x125>
    a79e:	c7 85 a8 f9 ff ff 7c 	movl   $0xe87c,-0x658(%ebp)
    a7a5:	e8 00 00 
    a7a8:	c7 85 b0 f9 ff ff 84 	movl   $0xe884,-0x650(%ebp)
    a7af:	e8 00 00 
    a7b2:	c7 85 b8 f9 ff ff 8c 	movl   $0xe88c,-0x648(%ebp)
    a7b9:	e8 00 00 
    a7bc:	c7 85 c8 f9 ff ff 96 	movl   $0xe896,-0x638(%ebp)
    a7c3:	e8 00 00 
    a7c6:	c7 85 e8 f9 ff ff 9e 	movl   $0xe89e,-0x618(%ebp)
    a7cd:	e8 00 00 
    a7d0:	c7 85 28 fa ff ff a6 	movl   $0xe8a6,-0x5d8(%ebp)
    a7d7:	e8 00 00 
    a7da:	c7 85 d0 f9 ff ff b0 	movl   $0xe8b0,-0x630(%ebp)
    a7e1:	e8 00 00 
    a7e4:	c7 85 d8 f9 ff ff c1 	movl   $0xe8c1,-0x628(%ebp)
    a7eb:	e8 00 00 
    a7ee:	c7 85 f8 f9 ff ff d4 	movl   $0xe8d4,-0x608(%ebp)
    a7f5:	e8 00 00 
    a7f8:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    a7ff:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    a806:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
    a80d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
    a814:	83 ec 0c             	sub    $0xc,%esp
    a817:	68 e7 e8 00 00       	push   $0xe8e7
    a81c:	e8 e4 18 00 00       	call   c105 <printl>
    a821:	83 c4 10             	add    $0x10,%esp
    a824:	a1 e4 38 01 00       	mov    0x138e4,%eax
    a829:	8d 50 01             	lea    0x1(%eax),%edx
    a82c:	89 15 e4 38 01 00    	mov    %edx,0x138e4
    a832:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    a838:	8b 55 e0             	mov    -0x20(%ebp),%edx
    a83b:	01 ca                	add    %ecx,%edx
    a83d:	83 ec 04             	sub    $0x4,%esp
    a840:	50                   	push   %eax
    a841:	68 eb e8 00 00       	push   $0xe8eb
    a846:	52                   	push   %edx
    a847:	e8 de 1b 00 00       	call   c42a <sprintf>
    a84c:	83 c4 10             	add    $0x10,%esp
    a84f:	01 45 e0             	add    %eax,-0x20(%ebp)
    a852:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a858:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a85b:	01 d0                	add    %edx,%eax
    a85d:	83 ec 08             	sub    $0x8,%esp
    a860:	68 03 e9 00 00       	push   $0xe903
    a865:	50                   	push   %eax
    a866:	e8 bf 1b 00 00       	call   c42a <sprintf>
    a86b:	83 c4 10             	add    $0x10,%esp
    a86e:	01 45 e0             	add    %eax,-0x20(%ebp)
    a871:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a877:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a87a:	01 d0                	add    %edx,%eax
    a87c:	83 ec 08             	sub    $0x8,%esp
    a87f:	68 0d e9 00 00       	push   $0xe90d
    a884:	50                   	push   %eax
    a885:	e8 a0 1b 00 00       	call   c42a <sprintf>
    a88a:	83 c4 10             	add    $0x10,%esp
    a88d:	01 45 e0             	add    %eax,-0x20(%ebp)
    a890:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a896:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a899:	01 d0                	add    %edx,%eax
    a89b:	83 ec 08             	sub    $0x8,%esp
    a89e:	68 1f e9 00 00       	push   $0xe91f
    a8a3:	50                   	push   %eax
    a8a4:	e8 81 1b 00 00       	call   c42a <sprintf>
    a8a9:	83 c4 10             	add    $0x10,%esp
    a8ac:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8af:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8b8:	01 d0                	add    %edx,%eax
    a8ba:	83 ec 08             	sub    $0x8,%esp
    a8bd:	68 24 e9 00 00       	push   $0xe924
    a8c2:	50                   	push   %eax
    a8c3:	e8 62 1b 00 00       	call   c42a <sprintf>
    a8c8:	83 c4 10             	add    $0x10,%esp
    a8cb:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8ce:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8d7:	01 d0                	add    %edx,%eax
    a8d9:	83 ec 08             	sub    $0x8,%esp
    a8dc:	68 2d e9 00 00       	push   $0xe92d
    a8e1:	50                   	push   %eax
    a8e2:	e8 43 1b 00 00       	call   c42a <sprintf>
    a8e7:	83 c4 10             	add    $0x10,%esp
    a8ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    a8ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a8f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a8f6:	01 d0                	add    %edx,%eax
    a8f8:	83 ec 08             	sub    $0x8,%esp
    a8fb:	68 40 e9 00 00       	push   $0xe940
    a900:	50                   	push   %eax
    a901:	e8 24 1b 00 00       	call   c42a <sprintf>
    a906:	83 c4 10             	add    $0x10,%esp
    a909:	01 45 e0             	add    %eax,-0x20(%ebp)
    a90c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a912:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a915:	01 d0                	add    %edx,%eax
    a917:	83 ec 08             	sub    $0x8,%esp
    a91a:	68 1f e9 00 00       	push   $0xe91f
    a91f:	50                   	push   %eax
    a920:	e8 05 1b 00 00       	call   c42a <sprintf>
    a925:	83 c4 10             	add    $0x10,%esp
    a928:	01 45 e0             	add    %eax,-0x20(%ebp)
    a92b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a931:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a934:	01 d0                	add    %edx,%eax
    a936:	83 ec 08             	sub    $0x8,%esp
    a939:	68 55 e9 00 00       	push   $0xe955
    a93e:	50                   	push   %eax
    a93f:	e8 e6 1a 00 00       	call   c42a <sprintf>
    a944:	83 c4 10             	add    $0x10,%esp
    a947:	01 45 e0             	add    %eax,-0x20(%ebp)
    a94a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a950:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a953:	01 d0                	add    %edx,%eax
    a955:	83 ec 08             	sub    $0x8,%esp
    a958:	68 1f e9 00 00       	push   $0xe91f
    a95d:	50                   	push   %eax
    a95e:	e8 c7 1a 00 00       	call   c42a <sprintf>
    a963:	83 c4 10             	add    $0x10,%esp
    a966:	01 45 e0             	add    %eax,-0x20(%ebp)
    a969:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    a970:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    a976:	8b 45 e0             	mov    -0x20(%ebp),%eax
    a979:	01 d0                	add    %edx,%eax
    a97b:	83 ec 08             	sub    $0x8,%esp
    a97e:	68 5e e9 00 00       	push   $0xe95e
    a983:	50                   	push   %eax
    a984:	e8 a1 1a 00 00       	call   c42a <sprintf>
    a989:	83 c4 10             	add    $0x10,%esp
    a98c:	01 45 e0             	add    %eax,-0x20(%ebp)
    a98f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    a996:	e9 f7 02 00 00       	jmp    ac92 <dump_fd_graph+0x633>
    a99b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a99e:	8b 40 74             	mov    0x74(%eax),%eax
    a9a1:	83 f8 20             	cmp    $0x20,%eax
    a9a4:	0f 84 dc 02 00 00    	je     ac86 <dump_fd_graph+0x627>
    a9aa:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9ad:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    a9b3:	83 f8 39             	cmp    $0x39,%eax
    a9b6:	74 24                	je     a9dc <dump_fd_graph+0x37d>
    a9b8:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a9bb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    a9be:	89 94 c5 a8 f1 ff ff 	mov    %edx,-0xe58(%ebp,%eax,8)
    a9c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9c8:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
    a9ce:	8b 45 d8             	mov    -0x28(%ebp),%eax
    a9d1:	89 94 c5 ac f1 ff ff 	mov    %edx,-0xe54(%ebp,%eax,8)
    a9d8:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
    a9dc:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9df:	8b 40 74             	mov    0x74(%eax),%eax
    a9e2:	83 e0 04             	and    $0x4,%eax
    a9e5:	85 c0                	test   %eax,%eax
    a9e7:	74 69                	je     aa52 <dump_fd_graph+0x3f3>
    a9e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
    a9ec:	8b 48 7c             	mov    0x7c(%eax),%ecx
    a9ef:	8b 55 cc             	mov    -0x34(%ebp),%edx
    a9f2:	89 d0                	mov    %edx,%eax
    a9f4:	01 c0                	add    %eax,%eax
    a9f6:	01 d0                	add    %edx,%eax
    a9f8:	c1 e0 02             	shl    $0x2,%eax
    a9fb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    a9fe:	01 f8                	add    %edi,%eax
    aa00:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    aa05:	89 08                	mov    %ecx,(%eax)
    aa07:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa0a:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    aa0f:	c1 f8 03             	sar    $0x3,%eax
    aa12:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    aa18:	89 c1                	mov    %eax,%ecx
    aa1a:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa1d:	89 d0                	mov    %edx,%eax
    aa1f:	01 c0                	add    %eax,%eax
    aa21:	01 d0                	add    %edx,%eax
    aa23:	c1 e0 02             	shl    $0x2,%eax
    aa26:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa29:	01 f8                	add    %edi,%eax
    aa2b:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    aa30:	89 08                	mov    %ecx,(%eax)
    aa32:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa35:	89 d0                	mov    %edx,%eax
    aa37:	01 c0                	add    %eax,%eax
    aa39:	01 d0                	add    %edx,%eax
    aa3b:	c1 e0 02             	shl    $0x2,%eax
    aa3e:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa41:	01 f8                	add    %edi,%eax
    aa43:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    aa48:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
    aa4e:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    aa52:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa55:	8b 40 74             	mov    0x74(%eax),%eax
    aa58:	83 e0 02             	and    $0x2,%eax
    aa5b:	85 c0                	test   %eax,%eax
    aa5d:	74 6c                	je     aacb <dump_fd_graph+0x46c>
    aa5f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa62:	2d a0 a4 03 00       	sub    $0x3a4a0,%eax
    aa67:	c1 f8 03             	sar    $0x3,%eax
    aa6a:	69 c0 fb fa fa fa    	imul   $0xfafafafb,%eax,%eax
    aa70:	89 c1                	mov    %eax,%ecx
    aa72:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa75:	89 d0                	mov    %edx,%eax
    aa77:	01 c0                	add    %eax,%eax
    aa79:	01 d0                	add    %edx,%eax
    aa7b:	c1 e0 02             	shl    $0x2,%eax
    aa7e:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aa81:	01 f8                	add    %edi,%eax
    aa83:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    aa88:	89 08                	mov    %ecx,(%eax)
    aa8a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aa8d:	8b 88 80 00 00 00    	mov    0x80(%eax),%ecx
    aa93:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aa96:	89 d0                	mov    %edx,%eax
    aa98:	01 c0                	add    %eax,%eax
    aa9a:	01 d0                	add    %edx,%eax
    aa9c:	c1 e0 02             	shl    $0x2,%eax
    aa9f:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aaa2:	01 f8                	add    %edi,%eax
    aaa4:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    aaa9:	89 08                	mov    %ecx,(%eax)
    aaab:	8b 55 cc             	mov    -0x34(%ebp),%edx
    aaae:	89 d0                	mov    %edx,%eax
    aab0:	01 c0                	add    %eax,%eax
    aab2:	01 d0                	add    %edx,%eax
    aab4:	c1 e0 02             	shl    $0x2,%eax
    aab7:	8d 7d e8             	lea    -0x18(%ebp),%edi
    aaba:	01 f8                	add    %edi,%eax
    aabc:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    aac1:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
    aac7:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
    aacb:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aace:	8b 78 34             	mov    0x34(%eax),%edi
    aad1:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aad4:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
    aada:	83 f8 39             	cmp    $0x39,%eax
    aadd:	75 0c                	jne    aaeb <dump_fd_graph+0x48c>
    aadf:	c7 85 a4 cf ff ff 76 	movl   $0xe976,-0x305c(%ebp)
    aae6:	e9 00 00 
    aae9:	eb 0a                	jmp    aaf5 <dump_fd_graph+0x496>
    aaeb:	c7 85 a4 cf ff ff 80 	movl   $0xe980,-0x305c(%ebp)
    aaf2:	e9 00 00 
    aaf5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    aaf8:	8b b0 90 00 00 00    	mov    0x90(%eax),%esi
    aafe:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab01:	8b 40 74             	mov    0x74(%eax),%eax
    ab04:	8b 9c 85 a8 f9 ff ff 	mov    -0x658(%ebp,%eax,4),%ebx
    ab0b:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab0e:	8b 48 74             	mov    0x74(%eax),%ecx
    ab11:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab14:	83 c0 64             	add    $0x64,%eax
    ab17:	89 85 a0 cf ff ff    	mov    %eax,-0x3060(%ebp)
    ab1d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab23:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab26:	01 d0                	add    %edx,%eax
    ab28:	83 ec 08             	sub    $0x8,%esp
    ab2b:	57                   	push   %edi
    ab2c:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    ab32:	56                   	push   %esi
    ab33:	53                   	push   %ebx
    ab34:	51                   	push   %ecx
    ab35:	ff 75 e4             	pushl  -0x1c(%ebp)
    ab38:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    ab3e:	ff 75 e4             	pushl  -0x1c(%ebp)
    ab41:	68 84 e9 00 00       	push   $0xe984
    ab46:	50                   	push   %eax
    ab47:	e8 de 18 00 00       	call   c42a <sprintf>
    ab4c:	83 c4 30             	add    $0x30,%esp
    ab4f:	01 45 e0             	add    %eax,-0x20(%ebp)
    ab52:	c7 45 c4 03 00 00 00 	movl   $0x3,-0x3c(%ebp)
    ab59:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    ab60:	e9 b8 00 00 00       	jmp    ac1d <dump_fd_graph+0x5be>
    ab65:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab68:	8b 55 c8             	mov    -0x38(%ebp),%edx
    ab6b:	83 c2 24             	add    $0x24,%edx
    ab6e:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    ab72:	85 c0                	test   %eax,%eax
    ab74:	0f 84 9e 00 00 00    	je     ac18 <dump_fd_graph+0x5b9>
    ab7a:	8b 45 dc             	mov    -0x24(%ebp),%eax
    ab7d:	8b 55 c8             	mov    -0x38(%ebp),%edx
    ab80:	83 c2 24             	add    $0x24,%edx
    ab83:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
    ab87:	2d a0 95 03 00       	sub    $0x395a0,%eax
    ab8c:	c1 f8 04             	sar    $0x4,%eax
    ab8f:	89 45 9c             	mov    %eax,-0x64(%ebp)
    ab92:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ab98:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ab9b:	01 d0                	add    %edx,%eax
    ab9d:	83 ec 0c             	sub    $0xc,%esp
    aba0:	ff 75 9c             	pushl  -0x64(%ebp)
    aba3:	ff 75 c8             	pushl  -0x38(%ebp)
    aba6:	ff 75 c4             	pushl  -0x3c(%ebp)
    aba9:	68 df e9 00 00       	push   $0xe9df
    abae:	50                   	push   %eax
    abaf:	e8 76 18 00 00       	call   c42a <sprintf>
    abb4:	83 c4 20             	add    $0x20,%esp
    abb7:	01 45 e0             	add    %eax,-0x20(%ebp)
    abba:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    abbd:	89 d0                	mov    %edx,%eax
    abbf:	01 c0                	add    %eax,%eax
    abc1:	01 d0                	add    %edx,%eax
    abc3:	c1 e0 02             	shl    $0x2,%eax
    abc6:	8d 75 e8             	lea    -0x18(%ebp),%esi
    abc9:	01 f0                	add    %esi,%eax
    abcb:	8d 90 c0 e5 ff ff    	lea    -0x1a40(%eax),%edx
    abd1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    abd4:	89 02                	mov    %eax,(%edx)
    abd6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    abd9:	89 d0                	mov    %edx,%eax
    abdb:	01 c0                	add    %eax,%eax
    abdd:	01 d0                	add    %edx,%eax
    abdf:	c1 e0 02             	shl    $0x2,%eax
    abe2:	8d 7d e8             	lea    -0x18(%ebp),%edi
    abe5:	01 f8                	add    %edi,%eax
    abe7:	8d 90 c4 e5 ff ff    	lea    -0x1a3c(%eax),%edx
    abed:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    abf0:	89 02                	mov    %eax,(%edx)
    abf2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    abf5:	89 d0                	mov    %edx,%eax
    abf7:	01 c0                	add    %eax,%eax
    abf9:	01 d0                	add    %edx,%eax
    abfb:	c1 e0 02             	shl    $0x2,%eax
    abfe:	8d 75 e8             	lea    -0x18(%ebp),%esi
    ac01:	01 f0                	add    %esi,%eax
    ac03:	8d 90 c8 e5 ff ff    	lea    -0x1a38(%eax),%edx
    ac09:	8b 45 9c             	mov    -0x64(%ebp),%eax
    ac0c:	89 02                	mov    %eax,(%edx)
    ac0e:	83 45 c4 01          	addl   $0x1,-0x3c(%ebp)
    ac12:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
    ac16:	eb 01                	jmp    ac19 <dump_fd_graph+0x5ba>
    ac18:	90                   	nop
    ac19:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    ac1d:	83 7d c8 3f          	cmpl   $0x3f,-0x38(%ebp)
    ac21:	0f 8e 3e ff ff ff    	jle    ab65 <dump_fd_graph+0x506>
    ac27:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac30:	01 d0                	add    %edx,%eax
    ac32:	83 ec 08             	sub    $0x8,%esp
    ac35:	68 f4 e9 00 00       	push   $0xe9f4
    ac3a:	50                   	push   %eax
    ac3b:	e8 ea 17 00 00       	call   c42a <sprintf>
    ac40:	83 c4 10             	add    $0x10,%esp
    ac43:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac46:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac4c:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac4f:	01 d0                	add    %edx,%eax
    ac51:	83 ec 08             	sub    $0x8,%esp
    ac54:	68 f8 e9 00 00       	push   $0xe9f8
    ac59:	50                   	push   %eax
    ac5a:	e8 cb 17 00 00       	call   c42a <sprintf>
    ac5f:	83 c4 10             	add    $0x10,%esp
    ac62:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac65:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ac6b:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ac6e:	01 d0                	add    %edx,%eax
    ac70:	83 ec 08             	sub    $0x8,%esp
    ac73:	68 0d ea 00 00       	push   $0xea0d
    ac78:	50                   	push   %eax
    ac79:	e8 ac 17 00 00       	call   c42a <sprintf>
    ac7e:	83 c4 10             	add    $0x10,%esp
    ac81:	01 45 e0             	add    %eax,-0x20(%ebp)
    ac84:	eb 01                	jmp    ac87 <dump_fd_graph+0x628>
    ac86:	90                   	nop
    ac87:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    ac8b:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    ac92:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    ac96:	0f 8e ff fc ff ff    	jle    a99b <dump_fd_graph+0x33c>
    ac9c:	c7 45 e4 2f 00 00 00 	movl   $0x2f,-0x1c(%ebp)
    aca3:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aca9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    acac:	01 d0                	add    %edx,%eax
    acae:	83 ec 04             	sub    $0x4,%esp
    acb1:	ff 75 e4             	pushl  -0x1c(%ebp)
    acb4:	68 13 ea 00 00       	push   $0xea13
    acb9:	50                   	push   %eax
    acba:	e8 6b 17 00 00       	call   c42a <sprintf>
    acbf:	83 c4 10             	add    $0x10,%esp
    acc2:	01 45 e0             	add    %eax,-0x20(%ebp)
    acc5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    accb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    acce:	01 d0                	add    %edx,%eax
    acd0:	83 ec 08             	sub    $0x8,%esp
    acd3:	68 21 ea 00 00       	push   $0xea21
    acd8:	50                   	push   %eax
    acd9:	e8 4c 17 00 00       	call   c42a <sprintf>
    acde:	83 c4 10             	add    $0x10,%esp
    ace1:	01 45 e0             	add    %eax,-0x20(%ebp)
    ace4:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    acea:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aced:	01 d0                	add    %edx,%eax
    acef:	83 ec 08             	sub    $0x8,%esp
    acf2:	68 f4 e9 00 00       	push   $0xe9f4
    acf7:	50                   	push   %eax
    acf8:	e8 2d 17 00 00       	call   c42a <sprintf>
    acfd:	83 c4 10             	add    $0x10,%esp
    ad00:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad03:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad09:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad0c:	01 d0                	add    %edx,%eax
    ad0e:	83 ec 08             	sub    $0x8,%esp
    ad11:	68 f8 e9 00 00       	push   $0xe9f8
    ad16:	50                   	push   %eax
    ad17:	e8 0e 17 00 00       	call   c42a <sprintf>
    ad1c:	83 c4 10             	add    $0x10,%esp
    ad1f:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad22:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad28:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad2b:	01 d0                	add    %edx,%eax
    ad2d:	83 ec 08             	sub    $0x8,%esp
    ad30:	68 0d ea 00 00       	push   $0xea0d
    ad35:	50                   	push   %eax
    ad36:	e8 ef 16 00 00       	call   c42a <sprintf>
    ad3b:	83 c4 10             	add    $0x10,%esp
    ad3e:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad41:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad47:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad4a:	01 d0                	add    %edx,%eax
    ad4c:	83 ec 08             	sub    $0x8,%esp
    ad4f:	68 3c ea 00 00       	push   $0xea3c
    ad54:	50                   	push   %eax
    ad55:	e8 d0 16 00 00       	call   c42a <sprintf>
    ad5a:	83 c4 10             	add    $0x10,%esp
    ad5d:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad60:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad66:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad69:	01 d0                	add    %edx,%eax
    ad6b:	83 ec 08             	sub    $0x8,%esp
    ad6e:	68 50 ea 00 00       	push   $0xea50
    ad73:	50                   	push   %eax
    ad74:	e8 b1 16 00 00       	call   c42a <sprintf>
    ad79:	83 c4 10             	add    $0x10,%esp
    ad7c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ad7f:	83 ec 0c             	sub    $0xc,%esp
    ad82:	68 54 ea 00 00       	push   $0xea54
    ad87:	e8 79 13 00 00       	call   c105 <printl>
    ad8c:	83 c4 10             	add    $0x10,%esp
    ad8f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ad95:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ad98:	01 d0                	add    %edx,%eax
    ad9a:	83 ec 08             	sub    $0x8,%esp
    ad9d:	68 56 ea 00 00       	push   $0xea56
    ada2:	50                   	push   %eax
    ada3:	e8 82 16 00 00       	call   c42a <sprintf>
    ada8:	83 c4 10             	add    $0x10,%esp
    adab:	01 45 e0             	add    %eax,-0x20(%ebp)
    adae:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    adb5:	e9 26 01 00 00       	jmp    aee0 <dump_fd_graph+0x881>
    adba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    adbd:	c1 e0 04             	shl    $0x4,%eax
    adc0:	05 ac 95 03 00       	add    $0x395ac,%eax
    adc5:	8b 00                	mov    (%eax),%eax
    adc7:	85 c0                	test   %eax,%eax
    adc9:	0f 84 0c 01 00 00    	je     aedb <dump_fd_graph+0x87c>
    adcf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    add2:	c1 e0 04             	shl    $0x4,%eax
    add5:	05 ac 95 03 00       	add    $0x395ac,%eax
    adda:	8b 00                	mov    (%eax),%eax
    addc:	2d 20 39 01 00       	sub    $0x13920,%eax
    ade1:	c1 f8 02             	sar    $0x2,%eax
    ade4:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
    adea:	89 45 98             	mov    %eax,-0x68(%ebp)
    aded:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    adf3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    adf6:	01 d0                	add    %edx,%eax
    adf8:	83 ec 04             	sub    $0x4,%esp
    adfb:	ff 75 e4             	pushl  -0x1c(%ebp)
    adfe:	68 6e ea 00 00       	push   $0xea6e
    ae03:	50                   	push   %eax
    ae04:	e8 21 16 00 00       	call   c42a <sprintf>
    ae09:	83 c4 10             	add    $0x10,%esp
    ae0c:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae0f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae12:	c1 e0 04             	shl    $0x4,%eax
    ae15:	05 a8 95 03 00       	add    $0x395a8,%eax
    ae1a:	8b 08                	mov    (%eax),%ecx
    ae1c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae1f:	c1 e0 04             	shl    $0x4,%eax
    ae22:	05 a4 95 03 00       	add    $0x395a4,%eax
    ae27:	8b 10                	mov    (%eax),%edx
    ae29:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ae2c:	c1 e0 04             	shl    $0x4,%eax
    ae2f:	05 a0 95 03 00       	add    $0x395a0,%eax
    ae34:	8b 00                	mov    (%eax),%eax
    ae36:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    ae3c:	8b 5d e0             	mov    -0x20(%ebp),%ebx
    ae3f:	01 f3                	add    %esi,%ebx
    ae41:	83 ec 04             	sub    $0x4,%esp
    ae44:	ff 75 98             	pushl  -0x68(%ebp)
    ae47:	51                   	push   %ecx
    ae48:	52                   	push   %edx
    ae49:	50                   	push   %eax
    ae4a:	ff 75 e4             	pushl  -0x1c(%ebp)
    ae4d:	68 80 ea 00 00       	push   $0xea80
    ae52:	53                   	push   %ebx
    ae53:	e8 d2 15 00 00       	call   c42a <sprintf>
    ae58:	83 c4 20             	add    $0x20,%esp
    ae5b:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae5e:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ae61:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    ae64:	89 94 c5 a8 dd ff ff 	mov    %edx,-0x2258(%ebp,%eax,8)
    ae6b:	8b 45 d0             	mov    -0x30(%ebp),%eax
    ae6e:	8b 55 98             	mov    -0x68(%ebp),%edx
    ae71:	89 94 c5 ac dd ff ff 	mov    %edx,-0x2254(%ebp,%eax,8)
    ae78:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
    ae7c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    ae82:	8b 45 e0             	mov    -0x20(%ebp),%eax
    ae85:	01 d0                	add    %edx,%eax
    ae87:	83 ec 08             	sub    $0x8,%esp
    ae8a:	68 f4 e9 00 00       	push   $0xe9f4
    ae8f:	50                   	push   %eax
    ae90:	e8 95 15 00 00       	call   c42a <sprintf>
    ae95:	83 c4 10             	add    $0x10,%esp
    ae98:	01 45 e0             	add    %eax,-0x20(%ebp)
    ae9b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aea1:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aea4:	01 d0                	add    %edx,%eax
    aea6:	83 ec 08             	sub    $0x8,%esp
    aea9:	68 f8 e9 00 00       	push   $0xe9f8
    aeae:	50                   	push   %eax
    aeaf:	e8 76 15 00 00       	call   c42a <sprintf>
    aeb4:	83 c4 10             	add    $0x10,%esp
    aeb7:	01 45 e0             	add    %eax,-0x20(%ebp)
    aeba:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aec0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aec3:	01 d0                	add    %edx,%eax
    aec5:	83 ec 08             	sub    $0x8,%esp
    aec8:	68 0d ea 00 00       	push   $0xea0d
    aecd:	50                   	push   %eax
    aece:	e8 57 15 00 00       	call   c42a <sprintf>
    aed3:	83 c4 10             	add    $0x10,%esp
    aed6:	01 45 e0             	add    %eax,-0x20(%ebp)
    aed9:	eb 01                	jmp    aedc <dump_fd_graph+0x87d>
    aedb:	90                   	nop
    aedc:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    aee0:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    aee4:	0f 8e d0 fe ff ff    	jle    adba <dump_fd_graph+0x75b>
    aeea:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    aef0:	8b 45 e0             	mov    -0x20(%ebp),%eax
    aef3:	01 d0                	add    %edx,%eax
    aef5:	83 ec 08             	sub    $0x8,%esp
    aef8:	68 db ea 00 00       	push   $0xeadb
    aefd:	50                   	push   %eax
    aefe:	e8 27 15 00 00       	call   c42a <sprintf>
    af03:	83 c4 10             	add    $0x10,%esp
    af06:	01 45 e0             	add    %eax,-0x20(%ebp)
    af09:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af0f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af12:	01 d0                	add    %edx,%eax
    af14:	83 ec 08             	sub    $0x8,%esp
    af17:	68 50 ea 00 00       	push   $0xea50
    af1c:	50                   	push   %eax
    af1d:	e8 08 15 00 00       	call   c42a <sprintf>
    af22:	83 c4 10             	add    $0x10,%esp
    af25:	01 45 e0             	add    %eax,-0x20(%ebp)
    af28:	83 ec 0c             	sub    $0xc,%esp
    af2b:	68 f3 ea 00 00       	push   $0xeaf3
    af30:	e8 d0 11 00 00       	call   c105 <printl>
    af35:	83 c4 10             	add    $0x10,%esp
    af38:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af3e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af41:	01 d0                	add    %edx,%eax
    af43:	83 ec 08             	sub    $0x8,%esp
    af46:	68 f5 ea 00 00       	push   $0xeaf5
    af4b:	50                   	push   %eax
    af4c:	e8 d9 14 00 00       	call   c42a <sprintf>
    af51:	83 c4 10             	add    $0x10,%esp
    af54:	01 45 e0             	add    %eax,-0x20(%ebp)
    af57:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    af5e:	e9 40 01 00 00       	jmp    b0a3 <dump_fd_graph+0xa44>
    af63:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    af66:	6b c0 2c             	imul   $0x2c,%eax,%eax
    af69:	05 44 39 01 00       	add    $0x13944,%eax
    af6e:	8b 00                	mov    (%eax),%eax
    af70:	85 c0                	test   %eax,%eax
    af72:	0f 84 26 01 00 00    	je     b09e <dump_fd_graph+0xa3f>
    af78:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    af7e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    af81:	01 d0                	add    %edx,%eax
    af83:	83 ec 04             	sub    $0x4,%esp
    af86:	ff 75 e4             	pushl  -0x1c(%ebp)
    af89:	68 0d eb 00 00       	push   $0xeb0d
    af8e:	50                   	push   %eax
    af8f:	e8 96 14 00 00       	call   c42a <sprintf>
    af94:	83 c4 10             	add    $0x10,%esp
    af97:	01 45 e0             	add    %eax,-0x20(%ebp)
    af9a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    af9d:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afa0:	05 48 39 01 00       	add    $0x13948,%eax
    afa5:	8b 18                	mov    (%eax),%ebx
    afa7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afaa:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afad:	05 44 39 01 00       	add    $0x13944,%eax
    afb2:	8b 00                	mov    (%eax),%eax
    afb4:	89 85 a4 cf ff ff    	mov    %eax,-0x305c(%ebp)
    afba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afbd:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afc0:	05 40 39 01 00       	add    $0x13940,%eax
    afc5:	8b 38                	mov    (%eax),%edi
    afc7:	89 bd a0 cf ff ff    	mov    %edi,-0x3060(%ebp)
    afcd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afd0:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afd3:	05 2c 39 01 00       	add    $0x1392c,%eax
    afd8:	8b 30                	mov    (%eax),%esi
    afda:	89 b5 9c cf ff ff    	mov    %esi,-0x3064(%ebp)
    afe0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    afe3:	6b c0 2c             	imul   $0x2c,%eax,%eax
    afe6:	05 28 39 01 00       	add    $0x13928,%eax
    afeb:	8b 38                	mov    (%eax),%edi
    afed:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    aff0:	6b c0 2c             	imul   $0x2c,%eax,%eax
    aff3:	05 24 39 01 00       	add    $0x13924,%eax
    aff8:	8b 30                	mov    (%eax),%esi
    affa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    affd:	6b c0 2c             	imul   $0x2c,%eax,%eax
    b000:	05 20 39 01 00       	add    $0x13920,%eax
    b005:	8b 08                	mov    (%eax),%ecx
    b007:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b00d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b010:	01 d0                	add    %edx,%eax
    b012:	83 ec 08             	sub    $0x8,%esp
    b015:	53                   	push   %ebx
    b016:	ff b5 a4 cf ff ff    	pushl  -0x305c(%ebp)
    b01c:	ff b5 a0 cf ff ff    	pushl  -0x3060(%ebp)
    b022:	ff b5 9c cf ff ff    	pushl  -0x3064(%ebp)
    b028:	57                   	push   %edi
    b029:	56                   	push   %esi
    b02a:	51                   	push   %ecx
    b02b:	ff 75 e4             	pushl  -0x1c(%ebp)
    b02e:	68 1c eb 00 00       	push   $0xeb1c
    b033:	50                   	push   %eax
    b034:	e8 f1 13 00 00       	call   c42a <sprintf>
    b039:	83 c4 30             	add    $0x30,%esp
    b03c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b03f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b045:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b048:	01 d0                	add    %edx,%eax
    b04a:	83 ec 08             	sub    $0x8,%esp
    b04d:	68 f4 e9 00 00       	push   $0xe9f4
    b052:	50                   	push   %eax
    b053:	e8 d2 13 00 00       	call   c42a <sprintf>
    b058:	83 c4 10             	add    $0x10,%esp
    b05b:	01 45 e0             	add    %eax,-0x20(%ebp)
    b05e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b064:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b067:	01 d0                	add    %edx,%eax
    b069:	83 ec 08             	sub    $0x8,%esp
    b06c:	68 f8 e9 00 00       	push   $0xe9f8
    b071:	50                   	push   %eax
    b072:	e8 b3 13 00 00       	call   c42a <sprintf>
    b077:	83 c4 10             	add    $0x10,%esp
    b07a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b07d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b083:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b086:	01 d0                	add    %edx,%eax
    b088:	83 ec 08             	sub    $0x8,%esp
    b08b:	68 0d ea 00 00       	push   $0xea0d
    b090:	50                   	push   %eax
    b091:	e8 94 13 00 00       	call   c42a <sprintf>
    b096:	83 c4 10             	add    $0x10,%esp
    b099:	01 45 e0             	add    %eax,-0x20(%ebp)
    b09c:	eb 01                	jmp    b09f <dump_fd_graph+0xa40>
    b09e:	90                   	nop
    b09f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b0a3:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    b0a7:	0f 8e b6 fe ff ff    	jle    af63 <dump_fd_graph+0x904>
    b0ad:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0b6:	01 d0                	add    %edx,%eax
    b0b8:	83 ec 08             	sub    $0x8,%esp
    b0bb:	68 af eb 00 00       	push   $0xebaf
    b0c0:	50                   	push   %eax
    b0c1:	e8 64 13 00 00       	call   c42a <sprintf>
    b0c6:	83 c4 10             	add    $0x10,%esp
    b0c9:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0cc:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b0d2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b0d5:	01 d0                	add    %edx,%eax
    b0d7:	83 ec 08             	sub    $0x8,%esp
    b0da:	68 50 ea 00 00       	push   $0xea50
    b0df:	50                   	push   %eax
    b0e0:	e8 45 13 00 00       	call   c42a <sprintf>
    b0e5:	83 c4 10             	add    $0x10,%esp
    b0e8:	01 45 e0             	add    %eax,-0x20(%ebp)
    b0eb:	83 ec 0c             	sub    $0xc,%esp
    b0ee:	68 c4 eb 00 00       	push   $0xebc4
    b0f3:	e8 0d 10 00 00       	call   c105 <printl>
    b0f8:	83 c4 10             	add    $0x10,%esp
    b0fb:	e8 df b5 ff ff       	call   66df <enable_int>
    b100:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b106:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b109:	01 d0                	add    %edx,%eax
    b10b:	83 ec 08             	sub    $0x8,%esp
    b10e:	68 c6 eb 00 00       	push   $0xebc6
    b113:	50                   	push   %eax
    b114:	e8 11 13 00 00       	call   c42a <sprintf>
    b119:	83 c4 10             	add    $0x10,%esp
    b11c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b11f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b125:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b128:	01 d0                	add    %edx,%eax
    b12a:	83 ec 08             	sub    $0x8,%esp
    b12d:	68 de eb 00 00       	push   $0xebde
    b132:	50                   	push   %eax
    b133:	e8 f2 12 00 00       	call   c42a <sprintf>
    b138:	83 c4 10             	add    $0x10,%esp
    b13b:	01 45 e0             	add    %eax,-0x20(%ebp)
    b13e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b144:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b147:	01 d0                	add    %edx,%eax
    b149:	83 ec 08             	sub    $0x8,%esp
    b14c:	68 f0 eb 00 00       	push   $0xebf0
    b151:	50                   	push   %eax
    b152:	e8 d3 12 00 00       	call   c42a <sprintf>
    b157:	83 c4 10             	add    $0x10,%esp
    b15a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b15d:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    b164:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    b16b:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b170:	8b 40 20             	mov    0x20(%eax),%eax
    b173:	83 ec 0c             	sub    $0xc,%esp
    b176:	50                   	push   %eax
    b177:	e8 87 d0 ff ff       	call   8203 <get_super_block>
    b17c:	83 c4 10             	add    $0x10,%esp
    b17f:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b182:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b185:	8b 40 0c             	mov    0xc(%eax),%eax
    b188:	83 c0 02             	add    $0x2,%eax
    b18b:	89 45 90             	mov    %eax,-0x70(%ebp)
    b18e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b195:	e9 d1 01 00 00       	jmp    b36b <dump_fd_graph+0xd0c>
    b19a:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b1a0:	e8 6d 16 00 00       	call   c812 <getpid>
    b1a5:	89 c6                	mov    %eax,%esi
    b1a7:	8b 55 90             	mov    -0x70(%ebp),%edx
    b1aa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b1ad:	01 d0                	add    %edx,%eax
    b1af:	c1 e0 09             	shl    $0x9,%eax
    b1b2:	99                   	cltd   
    b1b3:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b1b9:	8b 49 20             	mov    0x20(%ecx),%ecx
    b1bc:	83 ec 04             	sub    $0x4,%esp
    b1bf:	53                   	push   %ebx
    b1c0:	56                   	push   %esi
    b1c1:	68 00 02 00 00       	push   $0x200
    b1c6:	52                   	push   %edx
    b1c7:	50                   	push   %eax
    b1c8:	51                   	push   %ecx
    b1c9:	68 eb 03 00 00       	push   $0x3eb
    b1ce:	e8 28 ce ff ff       	call   7ffb <rw_sector>
    b1d3:	83 c4 20             	add    $0x20,%esp
    b1d6:	a1 10 28 01 00       	mov    0x12810,%eax
    b1db:	83 ec 04             	sub    $0x4,%esp
    b1de:	68 00 02 00 00       	push   $0x200
    b1e3:	50                   	push   %eax
    b1e4:	68 e0 36 01 00       	push   $0x136e0
    b1e9:	e8 62 12 00 00       	call   c450 <memcpy>
    b1ee:	83 c4 10             	add    $0x10,%esp
    b1f1:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b1f8:	e9 5d 01 00 00       	jmp    b35a <dump_fd_graph+0xcfb>
    b1fd:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b204:	e9 43 01 00 00       	jmp    b34c <dump_fd_graph+0xced>
    b209:	83 7d c0 00          	cmpl   $0x0,-0x40(%ebp)
    b20d:	75 4a                	jne    b259 <dump_fd_graph+0xbfa>
    b20f:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b212:	05 e0 36 01 00       	add    $0x136e0,%eax
    b217:	0f b6 00             	movzbl (%eax),%eax
    b21a:	0f be d0             	movsbl %al,%edx
    b21d:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b220:	89 c1                	mov    %eax,%ecx
    b222:	d3 fa                	sar    %cl,%edx
    b224:	89 d0                	mov    %edx,%eax
    b226:	83 e0 01             	and    $0x1,%eax
    b229:	85 c0                	test   %eax,%eax
    b22b:	0f 84 13 01 00 00    	je     b344 <dump_fd_graph+0xce5>
    b231:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    b238:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b23b:	c1 e0 09             	shl    $0x9,%eax
    b23e:	89 c2                	mov    %eax,%edx
    b240:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b243:	01 d0                	add    %edx,%eax
    b245:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b24c:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b24f:	01 d0                	add    %edx,%eax
    b251:	89 45 bc             	mov    %eax,-0x44(%ebp)
    b254:	e9 ef 00 00 00       	jmp    b348 <dump_fd_graph+0xce9>
    b259:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b25c:	05 e0 36 01 00       	add    $0x136e0,%eax
    b261:	0f b6 00             	movzbl (%eax),%eax
    b264:	0f be d0             	movsbl %al,%edx
    b267:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b26a:	89 c1                	mov    %eax,%ecx
    b26c:	d3 fa                	sar    %cl,%edx
    b26e:	89 d0                	mov    %edx,%eax
    b270:	83 e0 01             	and    $0x1,%eax
    b273:	85 c0                	test   %eax,%eax
    b275:	0f 85 cc 00 00 00    	jne    b347 <dump_fd_graph+0xce8>
    b27b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    b282:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b285:	c1 e0 09             	shl    $0x9,%eax
    b288:	89 c2                	mov    %eax,%edx
    b28a:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b28d:	01 d0                	add    %edx,%eax
    b28f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b296:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b299:	01 d0                	add    %edx,%eax
    b29b:	83 e8 01             	sub    $0x1,%eax
    b29e:	89 45 8c             	mov    %eax,-0x74(%ebp)
    b2a1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b2a7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b2aa:	01 d0                	add    %edx,%eax
    b2ac:	83 ec 04             	sub    $0x4,%esp
    b2af:	ff 75 bc             	pushl  -0x44(%ebp)
    b2b2:	68 05 ec 00 00       	push   $0xec05
    b2b7:	50                   	push   %eax
    b2b8:	e8 6d 11 00 00       	call   c42a <sprintf>
    b2bd:	83 c4 10             	add    $0x10,%esp
    b2c0:	01 45 e0             	add    %eax,-0x20(%ebp)
    b2c3:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b2c9:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b2cc:	01 d0                	add    %edx,%eax
    b2ce:	ff 75 8c             	pushl  -0x74(%ebp)
    b2d1:	ff 75 bc             	pushl  -0x44(%ebp)
    b2d4:	68 17 ec 00 00       	push   $0xec17
    b2d9:	50                   	push   %eax
    b2da:	e8 4b 11 00 00       	call   c42a <sprintf>
    b2df:	83 c4 10             	add    $0x10,%esp
    b2e2:	01 45 e0             	add    %eax,-0x20(%ebp)
    b2e5:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b2eb:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b2ee:	01 d0                	add    %edx,%eax
    b2f0:	83 ec 08             	sub    $0x8,%esp
    b2f3:	68 f4 e9 00 00       	push   $0xe9f4
    b2f8:	50                   	push   %eax
    b2f9:	e8 2c 11 00 00       	call   c42a <sprintf>
    b2fe:	83 c4 10             	add    $0x10,%esp
    b301:	01 45 e0             	add    %eax,-0x20(%ebp)
    b304:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b30a:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b30d:	01 d0                	add    %edx,%eax
    b30f:	83 ec 08             	sub    $0x8,%esp
    b312:	68 f8 e9 00 00       	push   $0xe9f8
    b317:	50                   	push   %eax
    b318:	e8 0d 11 00 00       	call   c42a <sprintf>
    b31d:	83 c4 10             	add    $0x10,%esp
    b320:	01 45 e0             	add    %eax,-0x20(%ebp)
    b323:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b329:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b32c:	01 d0                	add    %edx,%eax
    b32e:	83 ec 08             	sub    $0x8,%esp
    b331:	68 0d ea 00 00       	push   $0xea0d
    b336:	50                   	push   %eax
    b337:	e8 ee 10 00 00       	call   c42a <sprintf>
    b33c:	83 c4 10             	add    $0x10,%esp
    b33f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b342:	eb 04                	jmp    b348 <dump_fd_graph+0xce9>
    b344:	90                   	nop
    b345:	eb 01                	jmp    b348 <dump_fd_graph+0xce9>
    b347:	90                   	nop
    b348:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b34c:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b350:	0f 8e b3 fe ff ff    	jle    b209 <dump_fd_graph+0xbaa>
    b356:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b35a:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b361:	0f 8e 96 fe ff ff    	jle    b1fd <dump_fd_graph+0xb9e>
    b367:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b36b:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b36e:	8b 50 10             	mov    0x10(%eax),%edx
    b371:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b374:	39 c2                	cmp    %eax,%edx
    b376:	0f 87 1e fe ff ff    	ja     b19a <dump_fd_graph+0xb3b>
    b37c:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b37f:	8b 40 08             	mov    0x8(%eax),%eax
    b382:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b388:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b38b:	01 ca                	add    %ecx,%edx
    b38d:	83 ec 04             	sub    $0x4,%esp
    b390:	50                   	push   %eax
    b391:	68 34 ec 00 00       	push   $0xec34
    b396:	52                   	push   %edx
    b397:	e8 8e 10 00 00       	call   c42a <sprintf>
    b39c:	83 c4 10             	add    $0x10,%esp
    b39f:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3a2:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3ab:	01 d0                	add    %edx,%eax
    b3ad:	83 ec 08             	sub    $0x8,%esp
    b3b0:	68 50 ea 00 00       	push   $0xea50
    b3b5:	50                   	push   %eax
    b3b6:	e8 6f 10 00 00       	call   c42a <sprintf>
    b3bb:	83 c4 10             	add    $0x10,%esp
    b3be:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3c1:	83 ec 0c             	sub    $0xc,%esp
    b3c4:	68 5d ec 00 00       	push   $0xec5d
    b3c9:	e8 37 0d 00 00       	call   c105 <printl>
    b3ce:	83 c4 10             	add    $0x10,%esp
    b3d1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3da:	01 d0                	add    %edx,%eax
    b3dc:	83 ec 08             	sub    $0x8,%esp
    b3df:	68 5f ec 00 00       	push   $0xec5f
    b3e4:	50                   	push   %eax
    b3e5:	e8 40 10 00 00       	call   c42a <sprintf>
    b3ea:	83 c4 10             	add    $0x10,%esp
    b3ed:	01 45 e0             	add    %eax,-0x20(%ebp)
    b3f0:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b3f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b3f9:	01 d0                	add    %edx,%eax
    b3fb:	83 ec 08             	sub    $0x8,%esp
    b3fe:	68 de eb 00 00       	push   $0xebde
    b403:	50                   	push   %eax
    b404:	e8 21 10 00 00       	call   c42a <sprintf>
    b409:	83 c4 10             	add    $0x10,%esp
    b40c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b40f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b415:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b418:	01 d0                	add    %edx,%eax
    b41a:	83 ec 08             	sub    $0x8,%esp
    b41d:	68 f0 eb 00 00       	push   $0xebf0
    b422:	50                   	push   %eax
    b423:	e8 02 10 00 00       	call   c42a <sprintf>
    b428:	83 c4 10             	add    $0x10,%esp
    b42b:	01 45 e0             	add    %eax,-0x20(%ebp)
    b42e:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b434:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b437:	01 d0                	add    %edx,%eax
    b439:	83 ec 08             	sub    $0x8,%esp
    b43c:	68 77 ec 00 00       	push   $0xec77
    b441:	50                   	push   %eax
    b442:	e8 e3 0f 00 00       	call   c42a <sprintf>
    b447:	83 c4 10             	add    $0x10,%esp
    b44a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b44d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b453:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b456:	01 d0                	add    %edx,%eax
    b458:	83 ec 08             	sub    $0x8,%esp
    b45b:	68 83 ec 00 00       	push   $0xec83
    b460:	50                   	push   %eax
    b461:	e8 c4 0f 00 00       	call   c42a <sprintf>
    b466:	83 c4 10             	add    $0x10,%esp
    b469:	01 45 e0             	add    %eax,-0x20(%ebp)
    b46c:	c7 45 88 02 00 00 00 	movl   $0x2,-0x78(%ebp)
    b473:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b47a:	e9 e0 00 00 00       	jmp    b55f <dump_fd_graph+0xf00>
    b47f:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b485:	e8 88 13 00 00       	call   c812 <getpid>
    b48a:	89 c6                	mov    %eax,%esi
    b48c:	8b 55 88             	mov    -0x78(%ebp),%edx
    b48f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b492:	01 d0                	add    %edx,%eax
    b494:	c1 e0 09             	shl    $0x9,%eax
    b497:	99                   	cltd   
    b498:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b49e:	8b 49 20             	mov    0x20(%ecx),%ecx
    b4a1:	83 ec 04             	sub    $0x4,%esp
    b4a4:	53                   	push   %ebx
    b4a5:	56                   	push   %esi
    b4a6:	68 00 02 00 00       	push   $0x200
    b4ab:	52                   	push   %edx
    b4ac:	50                   	push   %eax
    b4ad:	51                   	push   %ecx
    b4ae:	68 eb 03 00 00       	push   $0x3eb
    b4b3:	e8 43 cb ff ff       	call   7ffb <rw_sector>
    b4b8:	83 c4 20             	add    $0x20,%esp
    b4bb:	a1 10 28 01 00       	mov    0x12810,%eax
    b4c0:	83 ec 04             	sub    $0x4,%esp
    b4c3:	68 00 02 00 00       	push   $0x200
    b4c8:	50                   	push   %eax
    b4c9:	68 e0 36 01 00       	push   $0x136e0
    b4ce:	e8 7d 0f 00 00       	call   c450 <memcpy>
    b4d3:	83 c4 10             	add    $0x10,%esp
    b4d6:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    b4dd:	eb 73                	jmp    b552 <dump_fd_graph+0xef3>
    b4df:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
    b4e6:	eb 60                	jmp    b548 <dump_fd_graph+0xee9>
    b4e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b4eb:	05 e0 36 01 00       	add    $0x136e0,%eax
    b4f0:	0f b6 00             	movzbl (%eax),%eax
    b4f3:	0f be d0             	movsbl %al,%edx
    b4f6:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b4f9:	89 c1                	mov    %eax,%ecx
    b4fb:	d3 fa                	sar    %cl,%edx
    b4fd:	89 d0                	mov    %edx,%eax
    b4ff:	83 e0 01             	and    $0x1,%eax
    b502:	85 c0                	test   %eax,%eax
    b504:	74 3e                	je     b544 <dump_fd_graph+0xee5>
    b506:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b509:	c1 e0 09             	shl    $0x9,%eax
    b50c:	89 c2                	mov    %eax,%edx
    b50e:	8b 45 b8             	mov    -0x48(%ebp),%eax
    b511:	01 d0                	add    %edx,%eax
    b513:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    b51a:	8b 45 c8             	mov    -0x38(%ebp),%eax
    b51d:	01 d0                	add    %edx,%eax
    b51f:	89 45 84             	mov    %eax,-0x7c(%ebp)
    b522:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b528:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b52b:	01 d0                	add    %edx,%eax
    b52d:	83 ec 04             	sub    $0x4,%esp
    b530:	ff 75 84             	pushl  -0x7c(%ebp)
    b533:	68 98 ec 00 00       	push   $0xec98
    b538:	50                   	push   %eax
    b539:	e8 ec 0e 00 00       	call   c42a <sprintf>
    b53e:	83 c4 10             	add    $0x10,%esp
    b541:	01 45 e0             	add    %eax,-0x20(%ebp)
    b544:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
    b548:	83 7d c8 07          	cmpl   $0x7,-0x38(%ebp)
    b54c:	7e 9a                	jle    b4e8 <dump_fd_graph+0xe89>
    b54e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    b552:	81 7d b8 ff 01 00 00 	cmpl   $0x1ff,-0x48(%ebp)
    b559:	7e 84                	jle    b4df <dump_fd_graph+0xe80>
    b55b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b55f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b562:	8b 50 0c             	mov    0xc(%eax),%edx
    b565:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b568:	39 c2                	cmp    %eax,%edx
    b56a:	0f 87 0f ff ff ff    	ja     b47f <dump_fd_graph+0xe20>
    b570:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b576:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b579:	01 d0                	add    %edx,%eax
    b57b:	83 ec 08             	sub    $0x8,%esp
    b57e:	68 f4 e9 00 00       	push   $0xe9f4
    b583:	50                   	push   %eax
    b584:	e8 a1 0e 00 00       	call   c42a <sprintf>
    b589:	83 c4 10             	add    $0x10,%esp
    b58c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b58f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b595:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b598:	01 d0                	add    %edx,%eax
    b59a:	83 ec 08             	sub    $0x8,%esp
    b59d:	68 f8 e9 00 00       	push   $0xe9f8
    b5a2:	50                   	push   %eax
    b5a3:	e8 82 0e 00 00       	call   c42a <sprintf>
    b5a8:	83 c4 10             	add    $0x10,%esp
    b5ab:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5ae:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5b7:	01 d0                	add    %edx,%eax
    b5b9:	83 ec 08             	sub    $0x8,%esp
    b5bc:	68 0d ea 00 00       	push   $0xea0d
    b5c1:	50                   	push   %eax
    b5c2:	e8 63 0e 00 00       	call   c42a <sprintf>
    b5c7:	83 c4 10             	add    $0x10,%esp
    b5ca:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5cd:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5d6:	01 d0                	add    %edx,%eax
    b5d8:	83 ec 08             	sub    $0x8,%esp
    b5db:	68 9f ec 00 00       	push   $0xec9f
    b5e0:	50                   	push   %eax
    b5e1:	e8 44 0e 00 00       	call   c42a <sprintf>
    b5e6:	83 c4 10             	add    $0x10,%esp
    b5e9:	01 45 e0             	add    %eax,-0x20(%ebp)
    b5ec:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b5f2:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b5f5:	01 d0                	add    %edx,%eax
    b5f7:	83 ec 08             	sub    $0x8,%esp
    b5fa:	68 50 ea 00 00       	push   $0xea50
    b5ff:	50                   	push   %eax
    b600:	e8 25 0e 00 00       	call   c42a <sprintf>
    b605:	83 c4 10             	add    $0x10,%esp
    b608:	01 45 e0             	add    %eax,-0x20(%ebp)
    b60b:	83 ec 0c             	sub    $0xc,%esp
    b60e:	68 b7 ec 00 00       	push   $0xecb7
    b613:	e8 ed 0a 00 00       	call   c105 <printl>
    b618:	83 c4 10             	add    $0x10,%esp
    b61b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b621:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b624:	01 d0                	add    %edx,%eax
    b626:	83 ec 08             	sub    $0x8,%esp
    b629:	68 b9 ec 00 00       	push   $0xecb9
    b62e:	50                   	push   %eax
    b62f:	e8 f6 0d 00 00       	call   c42a <sprintf>
    b634:	83 c4 10             	add    $0x10,%esp
    b637:	01 45 e0             	add    %eax,-0x20(%ebp)
    b63a:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b640:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b643:	01 d0                	add    %edx,%eax
    b645:	83 ec 08             	sub    $0x8,%esp
    b648:	68 de eb 00 00       	push   $0xebde
    b64d:	50                   	push   %eax
    b64e:	e8 d7 0d 00 00       	call   c42a <sprintf>
    b653:	83 c4 10             	add    $0x10,%esp
    b656:	01 45 e0             	add    %eax,-0x20(%ebp)
    b659:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b65f:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b662:	01 d0                	add    %edx,%eax
    b664:	83 ec 08             	sub    $0x8,%esp
    b667:	68 f0 eb 00 00       	push   $0xebf0
    b66c:	50                   	push   %eax
    b66d:	e8 b8 0d 00 00       	call   c42a <sprintf>
    b672:	83 c4 10             	add    $0x10,%esp
    b675:	01 45 e0             	add    %eax,-0x20(%ebp)
    b678:	a1 a0 99 03 00       	mov    0x399a0,%eax
    b67d:	8b 40 20             	mov    0x20(%eax),%eax
    b680:	83 ec 0c             	sub    $0xc,%esp
    b683:	50                   	push   %eax
    b684:	e8 7a cb ff ff       	call   8203 <get_super_block>
    b689:	83 c4 10             	add    $0x10,%esp
    b68c:	89 45 94             	mov    %eax,-0x6c(%ebp)
    b68f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b692:	8b 50 0c             	mov    0xc(%eax),%edx
    b695:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b698:	8b 40 10             	mov    0x10(%eax),%eax
    b69b:	01 d0                	add    %edx,%eax
    b69d:	83 c0 02             	add    $0x2,%eax
    b6a0:	89 45 80             	mov    %eax,-0x80(%ebp)
    b6a3:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    b6a9:	e8 64 11 00 00       	call   c812 <getpid>
    b6ae:	89 c6                	mov    %eax,%esi
    b6b0:	8b 45 80             	mov    -0x80(%ebp),%eax
    b6b3:	c1 e0 09             	shl    $0x9,%eax
    b6b6:	99                   	cltd   
    b6b7:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    b6bd:	8b 49 20             	mov    0x20(%ecx),%ecx
    b6c0:	83 ec 04             	sub    $0x4,%esp
    b6c3:	53                   	push   %ebx
    b6c4:	56                   	push   %esi
    b6c5:	68 00 02 00 00       	push   $0x200
    b6ca:	52                   	push   %edx
    b6cb:	50                   	push   %eax
    b6cc:	51                   	push   %ecx
    b6cd:	68 eb 03 00 00       	push   $0x3eb
    b6d2:	e8 24 c9 ff ff       	call   7ffb <rw_sector>
    b6d7:	83 c4 20             	add    $0x20,%esp
    b6da:	a1 10 28 01 00       	mov    0x12810,%eax
    b6df:	83 ec 04             	sub    $0x4,%esp
    b6e2:	68 00 02 00 00       	push   $0x200
    b6e7:	50                   	push   %eax
    b6e8:	68 e0 36 01 00       	push   $0x136e0
    b6ed:	e8 5e 0d 00 00       	call   c450 <memcpy>
    b6f2:	83 c4 10             	add    $0x10,%esp
    b6f5:	c7 45 b4 e0 36 01 00 	movl   $0x136e0,-0x4c(%ebp)
    b6fc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    b703:	e9 4d 02 00 00       	jmp    b955 <dump_fd_graph+0x12f6>
    b708:	8b 45 b4             	mov    -0x4c(%ebp),%eax
    b70b:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
    b711:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b717:	8b 40 08             	mov    0x8(%eax),%eax
    b71a:	85 c0                	test   %eax,%eax
    b71c:	0f 84 2a 02 00 00    	je     b94c <dump_fd_graph+0x12ed>
    b722:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b728:	8b 00                	mov    (%eax),%eax
    b72a:	85 c0                	test   %eax,%eax
    b72c:	0f 84 2e 01 00 00    	je     b860 <dump_fd_graph+0x1201>
    b732:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b738:	8b 50 08             	mov    0x8(%eax),%edx
    b73b:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b73e:	8b 40 14             	mov    0x14(%eax),%eax
    b741:	39 c2                	cmp    %eax,%edx
    b743:	73 21                	jae    b766 <dump_fd_graph+0x1107>
    b745:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b748:	8b 50 14             	mov    0x14(%eax),%edx
    b74b:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b751:	8b 40 08             	mov    0x8(%eax),%eax
    b754:	83 ec 04             	sub    $0x4,%esp
    b757:	52                   	push   %edx
    b758:	50                   	push   %eax
    b759:	68 d1 ec 00 00       	push   $0xecd1
    b75e:	e8 e3 65 ff ff       	call   1d46 <panic>
    b763:	83 c4 10             	add    $0x10,%esp
    b766:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b76c:	8b 50 08             	mov    0x8(%eax),%edx
    b76f:	8b 45 94             	mov    -0x6c(%ebp),%eax
    b772:	8b 40 14             	mov    0x14(%eax),%eax
    b775:	29 c2                	sub    %eax,%edx
    b777:	89 d0                	mov    %edx,%eax
    b779:	83 c0 01             	add    $0x1,%eax
    b77c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b782:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b788:	8b 50 0c             	mov    0xc(%eax),%edx
    b78b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
    b791:	01 d0                	add    %edx,%eax
    b793:	83 e8 01             	sub    $0x1,%eax
    b796:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b79c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b79f:	8d 50 01             	lea    0x1(%eax),%edx
    b7a2:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b7a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b7ab:	01 c8                	add    %ecx,%eax
    b7ad:	83 ec 04             	sub    $0x4,%esp
    b7b0:	52                   	push   %edx
    b7b1:	68 ed ec 00 00       	push   $0xeced
    b7b6:	50                   	push   %eax
    b7b7:	e8 6e 0c 00 00       	call   c42a <sprintf>
    b7bc:	83 c4 10             	add    $0x10,%esp
    b7bf:	01 45 e0             	add    %eax,-0x20(%ebp)
    b7c2:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b7c8:	8b 40 04             	mov    0x4(%eax),%eax
    b7cb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b7ce:	8d 4a 01             	lea    0x1(%edx),%ecx
    b7d1:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b7d7:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b7da:	01 da                	add    %ebx,%edx
    b7dc:	83 ec 08             	sub    $0x8,%esp
    b7df:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b7e5:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b7eb:	50                   	push   %eax
    b7ec:	51                   	push   %ecx
    b7ed:	68 04 ed 00 00       	push   $0xed04
    b7f2:	52                   	push   %edx
    b7f3:	e8 32 0c 00 00       	call   c42a <sprintf>
    b7f8:	83 c4 20             	add    $0x20,%esp
    b7fb:	01 45 e0             	add    %eax,-0x20(%ebp)
    b7fe:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b804:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b807:	01 d0                	add    %edx,%eax
    b809:	83 ec 08             	sub    $0x8,%esp
    b80c:	68 f4 e9 00 00       	push   $0xe9f4
    b811:	50                   	push   %eax
    b812:	e8 13 0c 00 00       	call   c42a <sprintf>
    b817:	83 c4 10             	add    $0x10,%esp
    b81a:	01 45 e0             	add    %eax,-0x20(%ebp)
    b81d:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b823:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b826:	01 d0                	add    %edx,%eax
    b828:	83 ec 08             	sub    $0x8,%esp
    b82b:	68 f8 e9 00 00       	push   $0xe9f8
    b830:	50                   	push   %eax
    b831:	e8 f4 0b 00 00       	call   c42a <sprintf>
    b836:	83 c4 10             	add    $0x10,%esp
    b839:	01 45 e0             	add    %eax,-0x20(%ebp)
    b83c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b842:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b845:	01 d0                	add    %edx,%eax
    b847:	83 ec 08             	sub    $0x8,%esp
    b84a:	68 0d ea 00 00       	push   $0xea0d
    b84f:	50                   	push   %eax
    b850:	e8 d5 0b 00 00       	call   c42a <sprintf>
    b855:	83 c4 10             	add    $0x10,%esp
    b858:	01 45 e0             	add    %eax,-0x20(%ebp)
    b85b:	e9 ed 00 00 00       	jmp    b94d <dump_fd_graph+0x12ee>
    b860:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b866:	8b 40 08             	mov    0x8(%eax),%eax
    b869:	c1 e8 08             	shr    $0x8,%eax
    b86c:	25 ff 00 00 00       	and    $0xff,%eax
    b871:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
    b877:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b87d:	8b 40 08             	mov    0x8(%eax),%eax
    b880:	25 ff 00 00 00       	and    $0xff,%eax
    b885:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
    b88b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b88e:	8d 50 01             	lea    0x1(%eax),%edx
    b891:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    b897:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b89a:	01 c8                	add    %ecx,%eax
    b89c:	83 ec 04             	sub    $0x4,%esp
    b89f:	52                   	push   %edx
    b8a0:	68 ed ec 00 00       	push   $0xeced
    b8a5:	50                   	push   %eax
    b8a6:	e8 7f 0b 00 00       	call   c42a <sprintf>
    b8ab:	83 c4 10             	add    $0x10,%esp
    b8ae:	01 45 e0             	add    %eax,-0x20(%ebp)
    b8b1:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
    b8b7:	8b 40 04             	mov    0x4(%eax),%eax
    b8ba:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    b8bd:	8d 4a 01             	lea    0x1(%edx),%ecx
    b8c0:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    b8c6:	8b 55 e0             	mov    -0x20(%ebp),%edx
    b8c9:	01 da                	add    %ebx,%edx
    b8cb:	83 ec 08             	sub    $0x8,%esp
    b8ce:	ff b5 74 ff ff ff    	pushl  -0x8c(%ebp)
    b8d4:	ff b5 78 ff ff ff    	pushl  -0x88(%ebp)
    b8da:	50                   	push   %eax
    b8db:	51                   	push   %ecx
    b8dc:	68 3c ed 00 00       	push   $0xed3c
    b8e1:	52                   	push   %edx
    b8e2:	e8 43 0b 00 00       	call   c42a <sprintf>
    b8e7:	83 c4 20             	add    $0x20,%esp
    b8ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    b8ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b8f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b8f6:	01 d0                	add    %edx,%eax
    b8f8:	83 ec 08             	sub    $0x8,%esp
    b8fb:	68 f4 e9 00 00       	push   $0xe9f4
    b900:	50                   	push   %eax
    b901:	e8 24 0b 00 00       	call   c42a <sprintf>
    b906:	83 c4 10             	add    $0x10,%esp
    b909:	01 45 e0             	add    %eax,-0x20(%ebp)
    b90c:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b912:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b915:	01 d0                	add    %edx,%eax
    b917:	83 ec 08             	sub    $0x8,%esp
    b91a:	68 f8 e9 00 00       	push   $0xe9f8
    b91f:	50                   	push   %eax
    b920:	e8 05 0b 00 00       	call   c42a <sprintf>
    b925:	83 c4 10             	add    $0x10,%esp
    b928:	01 45 e0             	add    %eax,-0x20(%ebp)
    b92b:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b931:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b934:	01 d0                	add    %edx,%eax
    b936:	83 ec 08             	sub    $0x8,%esp
    b939:	68 0d ea 00 00       	push   $0xea0d
    b93e:	50                   	push   %eax
    b93f:	e8 e6 0a 00 00       	call   c42a <sprintf>
    b944:	83 c4 10             	add    $0x10,%esp
    b947:	01 45 e0             	add    %eax,-0x20(%ebp)
    b94a:	eb 01                	jmp    b94d <dump_fd_graph+0x12ee>
    b94c:	90                   	nop
    b94d:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    b951:	83 45 b4 20          	addl   $0x20,-0x4c(%ebp)
    b955:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    b958:	83 f8 0a             	cmp    $0xa,%eax
    b95b:	0f 86 a7 fd ff ff    	jbe    b708 <dump_fd_graph+0x10a9>
    b961:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b967:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b96a:	01 d0                	add    %edx,%eax
    b96c:	83 ec 08             	sub    $0x8,%esp
    b96f:	68 78 ed 00 00       	push   $0xed78
    b974:	50                   	push   %eax
    b975:	e8 b0 0a 00 00       	call   c42a <sprintf>
    b97a:	83 c4 10             	add    $0x10,%esp
    b97d:	01 45 e0             	add    %eax,-0x20(%ebp)
    b980:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b986:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b989:	01 d0                	add    %edx,%eax
    b98b:	83 ec 08             	sub    $0x8,%esp
    b98e:	68 50 ea 00 00       	push   $0xea50
    b993:	50                   	push   %eax
    b994:	e8 91 0a 00 00       	call   c42a <sprintf>
    b999:	83 c4 10             	add    $0x10,%esp
    b99c:	01 45 e0             	add    %eax,-0x20(%ebp)
    b99f:	83 ec 0c             	sub    $0xc,%esp
    b9a2:	68 92 ed 00 00       	push   $0xed92
    b9a7:	e8 59 07 00 00       	call   c105 <printl>
    b9ac:	83 c4 10             	add    $0x10,%esp
    b9af:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9b8:	01 d0                	add    %edx,%eax
    b9ba:	83 ec 08             	sub    $0x8,%esp
    b9bd:	68 94 ed 00 00       	push   $0xed94
    b9c2:	50                   	push   %eax
    b9c3:	e8 62 0a 00 00       	call   c42a <sprintf>
    b9c8:	83 c4 10             	add    $0x10,%esp
    b9cb:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9ce:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9d7:	01 d0                	add    %edx,%eax
    b9d9:	83 ec 08             	sub    $0x8,%esp
    b9dc:	68 de eb 00 00       	push   $0xebde
    b9e1:	50                   	push   %eax
    b9e2:	e8 43 0a 00 00       	call   c42a <sprintf>
    b9e7:	83 c4 10             	add    $0x10,%esp
    b9ea:	01 45 e0             	add    %eax,-0x20(%ebp)
    b9ed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    b9f3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    b9f6:	01 d0                	add    %edx,%eax
    b9f8:	83 ec 08             	sub    $0x8,%esp
    b9fb:	68 f0 eb 00 00       	push   $0xebf0
    ba00:	50                   	push   %eax
    ba01:	e8 24 0a 00 00       	call   c42a <sprintf>
    ba06:	83 c4 10             	add    $0x10,%esp
    ba09:	01 45 e0             	add    %eax,-0x20(%ebp)
    ba0c:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba11:	8b 40 20             	mov    0x20(%eax),%eax
    ba14:	83 ec 0c             	sub    $0xc,%esp
    ba17:	50                   	push   %eax
    ba18:	e8 e6 c7 ff ff       	call   8203 <get_super_block>
    ba1d:	83 c4 10             	add    $0x10,%esp
    ba20:	89 45 94             	mov    %eax,-0x6c(%ebp)
    ba23:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba28:	8b 40 08             	mov    0x8(%eax),%eax
    ba2b:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
    ba31:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba36:	8b 40 04             	mov    0x4(%eax),%eax
    ba39:	05 ff 01 00 00       	add    $0x1ff,%eax
    ba3e:	c1 e8 09             	shr    $0x9,%eax
    ba41:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    ba47:	a1 a0 99 03 00       	mov    0x399a0,%eax
    ba4c:	8b 40 04             	mov    0x4(%eax),%eax
    ba4f:	c1 e8 04             	shr    $0x4,%eax
    ba52:	89 85 68 ff ff ff    	mov    %eax,-0x98(%ebp)
    ba58:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
    ba5f:	00 00 00 
    ba62:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    ba69:	e9 a0 01 00 00       	jmp    bc0e <dump_fd_graph+0x15af>
    ba6e:	8b 1d 10 28 01 00    	mov    0x12810,%ebx
    ba74:	e8 99 0d 00 00       	call   c812 <getpid>
    ba79:	89 c6                	mov    %eax,%esi
    ba7b:	8b 95 70 ff ff ff    	mov    -0x90(%ebp),%edx
    ba81:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    ba84:	01 d0                	add    %edx,%eax
    ba86:	c1 e0 09             	shl    $0x9,%eax
    ba89:	99                   	cltd   
    ba8a:	8b 0d a0 99 03 00    	mov    0x399a0,%ecx
    ba90:	8b 49 20             	mov    0x20(%ecx),%ecx
    ba93:	83 ec 04             	sub    $0x4,%esp
    ba96:	53                   	push   %ebx
    ba97:	56                   	push   %esi
    ba98:	68 00 02 00 00       	push   $0x200
    ba9d:	52                   	push   %edx
    ba9e:	50                   	push   %eax
    ba9f:	51                   	push   %ecx
    baa0:	68 eb 03 00 00       	push   $0x3eb
    baa5:	e8 51 c5 ff ff       	call   7ffb <rw_sector>
    baaa:	83 c4 20             	add    $0x20,%esp
    baad:	a1 10 28 01 00       	mov    0x12810,%eax
    bab2:	83 ec 04             	sub    $0x4,%esp
    bab5:	68 00 02 00 00       	push   $0x200
    baba:	50                   	push   %eax
    babb:	68 e0 36 01 00       	push   $0x136e0
    bac0:	e8 8b 09 00 00       	call   c450 <memcpy>
    bac5:	83 c4 10             	add    $0x10,%esp
    bac8:	c7 45 b0 e0 36 01 00 	movl   $0x136e0,-0x50(%ebp)
    bacf:	c7 45 b8 00 00 00 00 	movl   $0x0,-0x48(%ebp)
    bad6:	e9 15 01 00 00       	jmp    bbf0 <dump_fd_graph+0x1591>
    badb:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bade:	8b 00                	mov    (%eax),%eax
    bae0:	85 c0                	test   %eax,%eax
    bae2:	0f 84 00 01 00 00    	je     bbe8 <dump_fd_graph+0x1589>
    bae8:	8b 45 b0             	mov    -0x50(%ebp),%eax
    baeb:	83 c0 04             	add    $0x4,%eax
    baee:	83 ec 04             	sub    $0x4,%esp
    baf1:	6a 0c                	push   $0xc
    baf3:	50                   	push   %eax
    baf4:	8d 85 2b fa ff ff    	lea    -0x5d5(%ebp),%eax
    bafa:	50                   	push   %eax
    bafb:	e8 50 09 00 00       	call   c450 <memcpy>
    bb00:	83 c4 10             	add    $0x10,%esp
    bb03:	0f b6 85 2b fa ff ff 	movzbl -0x5d5(%ebp),%eax
    bb0a:	3c 2e                	cmp    $0x2e,%al
    bb0c:	75 07                	jne    bb15 <dump_fd_graph+0x14b6>
    bb0e:	c6 85 2b fa ff ff 2f 	movb   $0x2f,-0x5d5(%ebp)
    bb15:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bb18:	8b 00                	mov    (%eax),%eax
    bb1a:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bb20:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bb23:	01 ca                	add    %ecx,%edx
    bb25:	83 ec 04             	sub    $0x4,%esp
    bb28:	50                   	push   %eax
    bb29:	68 ac ed 00 00       	push   $0xedac
    bb2e:	52                   	push   %edx
    bb2f:	e8 f6 08 00 00       	call   c42a <sprintf>
    bb34:	83 c4 10             	add    $0x10,%esp
    bb37:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb3a:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bb3d:	8b 00                	mov    (%eax),%eax
    bb3f:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bb45:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bb48:	01 d1                	add    %edx,%ecx
    bb4a:	8d 95 2b fa ff ff    	lea    -0x5d5(%ebp),%edx
    bb50:	52                   	push   %edx
    bb51:	50                   	push   %eax
    bb52:	68 c0 ed 00 00       	push   $0xedc0
    bb57:	51                   	push   %ecx
    bb58:	e8 cd 08 00 00       	call   c42a <sprintf>
    bb5d:	83 c4 10             	add    $0x10,%esp
    bb60:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb63:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bb69:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bb6c:	01 d0                	add    %edx,%eax
    bb6e:	83 ec 08             	sub    $0x8,%esp
    bb71:	68 f4 e9 00 00       	push   $0xe9f4
    bb76:	50                   	push   %eax
    bb77:	e8 ae 08 00 00       	call   c42a <sprintf>
    bb7c:	83 c4 10             	add    $0x10,%esp
    bb7f:	01 45 e0             	add    %eax,-0x20(%ebp)
    bb82:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bb88:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bb8b:	01 d0                	add    %edx,%eax
    bb8d:	83 ec 08             	sub    $0x8,%esp
    bb90:	68 f8 e9 00 00       	push   $0xe9f8
    bb95:	50                   	push   %eax
    bb96:	e8 8f 08 00 00       	call   c42a <sprintf>
    bb9b:	83 c4 10             	add    $0x10,%esp
    bb9e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bba1:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bba7:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bbaa:	01 d0                	add    %edx,%eax
    bbac:	83 ec 08             	sub    $0x8,%esp
    bbaf:	68 0d ea 00 00       	push   $0xea0d
    bbb4:	50                   	push   %eax
    bbb5:	e8 70 08 00 00       	call   c42a <sprintf>
    bbba:	83 c4 10             	add    $0x10,%esp
    bbbd:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbc0:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bbc3:	8b 10                	mov    (%eax),%edx
    bbc5:	8b 45 b0             	mov    -0x50(%ebp),%eax
    bbc8:	8b 00                	mov    (%eax),%eax
    bbca:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bbd0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bbd3:	01 d9                	add    %ebx,%ecx
    bbd5:	52                   	push   %edx
    bbd6:	50                   	push   %eax
    bbd7:	68 dc ed 00 00       	push   $0xeddc
    bbdc:	51                   	push   %ecx
    bbdd:	e8 48 08 00 00       	call   c42a <sprintf>
    bbe2:	83 c4 10             	add    $0x10,%esp
    bbe5:	01 45 e0             	add    %eax,-0x20(%ebp)
    bbe8:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
    bbec:	83 45 b0 10          	addl   $0x10,-0x50(%ebp)
    bbf0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    bbf3:	83 f8 1f             	cmp    $0x1f,%eax
    bbf6:	0f 86 df fe ff ff    	jbe    badb <dump_fd_graph+0x147c>
    bbfc:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
    bc02:	3b 85 68 ff ff ff    	cmp    -0x98(%ebp),%eax
    bc08:	7f 15                	jg     bc1f <dump_fd_graph+0x15c0>
    bc0a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bc0e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bc11:	3b 85 6c ff ff ff    	cmp    -0x94(%ebp),%eax
    bc17:	0f 8c 51 fe ff ff    	jl     ba6e <dump_fd_graph+0x140f>
    bc1d:	eb 01                	jmp    bc20 <dump_fd_graph+0x15c1>
    bc1f:	90                   	nop
    bc20:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bc26:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bc29:	01 d0                	add    %edx,%eax
    bc2b:	83 ec 08             	sub    $0x8,%esp
    bc2e:	68 06 ee 00 00       	push   $0xee06
    bc33:	50                   	push   %eax
    bc34:	e8 f1 07 00 00       	call   c42a <sprintf>
    bc39:	83 c4 10             	add    $0x10,%esp
    bc3c:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc3f:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bc45:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bc48:	01 d0                	add    %edx,%eax
    bc4a:	83 ec 08             	sub    $0x8,%esp
    bc4d:	68 50 ea 00 00       	push   $0xea50
    bc52:	50                   	push   %eax
    bc53:	e8 d2 07 00 00       	call   c42a <sprintf>
    bc58:	83 c4 10             	add    $0x10,%esp
    bc5b:	01 45 e0             	add    %eax,-0x20(%ebp)
    bc5e:	83 ec 0c             	sub    $0xc,%esp
    bc61:	68 1d ee 00 00       	push   $0xee1d
    bc66:	e8 9a 04 00 00       	call   c105 <printl>
    bc6b:	83 c4 10             	add    $0x10,%esp
    bc6e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bc75:	e9 09 01 00 00       	jmp    bd83 <dump_fd_graph+0x1724>
    bc7a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bc7d:	89 d0                	mov    %edx,%eax
    bc7f:	01 c0                	add    %eax,%eax
    bc81:	01 d0                	add    %edx,%eax
    bc83:	c1 e0 02             	shl    $0x2,%eax
    bc86:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bc89:	01 f8                	add    %edi,%eax
    bc8b:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    bc90:	8b 00                	mov    (%eax),%eax
    bc92:	83 f8 04             	cmp    $0x4,%eax
    bc95:	75 59                	jne    bcf0 <dump_fd_graph+0x1691>
    bc97:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bc9a:	89 d0                	mov    %edx,%eax
    bc9c:	01 c0                	add    %eax,%eax
    bc9e:	01 d0                	add    %edx,%eax
    bca0:	c1 e0 02             	shl    $0x2,%eax
    bca3:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bca6:	01 f0                	add    %esi,%eax
    bca8:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    bcad:	8b 08                	mov    (%eax),%ecx
    bcaf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bcb2:	89 d0                	mov    %edx,%eax
    bcb4:	01 c0                	add    %eax,%eax
    bcb6:	01 d0                	add    %edx,%eax
    bcb8:	c1 e0 02             	shl    $0x2,%eax
    bcbb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bcbe:	01 f8                	add    %edi,%eax
    bcc0:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bcc5:	8b 00                	mov    (%eax),%eax
    bcc7:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bccd:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bcd0:	01 da                	add    %ebx,%edx
    bcd2:	83 ec 0c             	sub    $0xc,%esp
    bcd5:	ff 75 e4             	pushl  -0x1c(%ebp)
    bcd8:	51                   	push   %ecx
    bcd9:	50                   	push   %eax
    bcda:	68 20 ee 00 00       	push   $0xee20
    bcdf:	52                   	push   %edx
    bce0:	e8 45 07 00 00       	call   c42a <sprintf>
    bce5:	83 c4 20             	add    $0x20,%esp
    bce8:	01 45 e0             	add    %eax,-0x20(%ebp)
    bceb:	e9 8f 00 00 00       	jmp    bd7f <dump_fd_graph+0x1720>
    bcf0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bcf3:	89 d0                	mov    %edx,%eax
    bcf5:	01 c0                	add    %eax,%eax
    bcf7:	01 d0                	add    %edx,%eax
    bcf9:	c1 e0 02             	shl    $0x2,%eax
    bcfc:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bcff:	01 f0                	add    %esi,%eax
    bd01:	2d 38 2e 00 00       	sub    $0x2e38,%eax
    bd06:	8b 00                	mov    (%eax),%eax
    bd08:	83 f8 02             	cmp    $0x2,%eax
    bd0b:	75 56                	jne    bd63 <dump_fd_graph+0x1704>
    bd0d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bd10:	89 d0                	mov    %edx,%eax
    bd12:	01 c0                	add    %eax,%eax
    bd14:	01 d0                	add    %edx,%eax
    bd16:	c1 e0 02             	shl    $0x2,%eax
    bd19:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bd1c:	01 f8                	add    %edi,%eax
    bd1e:	2d 3c 2e 00 00       	sub    $0x2e3c,%eax
    bd23:	8b 08                	mov    (%eax),%ecx
    bd25:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bd28:	89 d0                	mov    %edx,%eax
    bd2a:	01 c0                	add    %eax,%eax
    bd2c:	01 d0                	add    %edx,%eax
    bd2e:	c1 e0 02             	shl    $0x2,%eax
    bd31:	8d 75 e8             	lea    -0x18(%ebp),%esi
    bd34:	01 f0                	add    %esi,%eax
    bd36:	2d 40 2e 00 00       	sub    $0x2e40,%eax
    bd3b:	8b 00                	mov    (%eax),%eax
    bd3d:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bd43:	8b 55 e0             	mov    -0x20(%ebp),%edx
    bd46:	01 da                	add    %ebx,%edx
    bd48:	83 ec 0c             	sub    $0xc,%esp
    bd4b:	ff 75 e4             	pushl  -0x1c(%ebp)
    bd4e:	51                   	push   %ecx
    bd4f:	50                   	push   %eax
    bd50:	68 6c ee 00 00       	push   $0xee6c
    bd55:	52                   	push   %edx
    bd56:	e8 cf 06 00 00       	call   c42a <sprintf>
    bd5b:	83 c4 20             	add    $0x20,%esp
    bd5e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bd61:	eb 1c                	jmp    bd7f <dump_fd_graph+0x1720>
    bd63:	68 f0 02 00 00       	push   $0x2f0
    bd68:	68 9c e7 00 00       	push   $0xe79c
    bd6d:	68 9c e7 00 00       	push   $0xe79c
    bd72:	68 54 ea 00 00       	push   $0xea54
    bd77:	e8 61 09 00 00       	call   c6dd <assertion_failure>
    bd7c:	83 c4 10             	add    $0x10,%esp
    bd7f:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bd83:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bd86:	3b 45 cc             	cmp    -0x34(%ebp),%eax
    bd89:	0f 8c eb fe ff ff    	jl     bc7a <dump_fd_graph+0x161b>
    bd8f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bd96:	eb 36                	jmp    bdce <dump_fd_graph+0x176f>
    bd98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bd9b:	8b 94 c5 a8 f1 ff ff 	mov    -0xe58(%ebp,%eax,8),%edx
    bda2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bda5:	8b 84 c5 ac f1 ff ff 	mov    -0xe54(%ebp,%eax,8),%eax
    bdac:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    bdb2:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    bdb5:	01 d9                	add    %ebx,%ecx
    bdb7:	52                   	push   %edx
    bdb8:	50                   	push   %eax
    bdb9:	68 b8 ee 00 00       	push   $0xeeb8
    bdbe:	51                   	push   %ecx
    bdbf:	e8 66 06 00 00       	call   c42a <sprintf>
    bdc4:	83 c4 10             	add    $0x10,%esp
    bdc7:	01 45 e0             	add    %eax,-0x20(%ebp)
    bdca:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bdce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bdd1:	3b 45 d8             	cmp    -0x28(%ebp),%eax
    bdd4:	7c c2                	jl     bd98 <dump_fd_graph+0x1739>
    bdd6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bddd:	eb 6e                	jmp    be4d <dump_fd_graph+0x17ee>
    bddf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bde2:	89 d0                	mov    %edx,%eax
    bde4:	01 c0                	add    %eax,%eax
    bde6:	01 d0                	add    %edx,%eax
    bde8:	c1 e0 02             	shl    $0x2,%eax
    bdeb:	8d 7d e8             	lea    -0x18(%ebp),%edi
    bdee:	01 f8                	add    %edi,%eax
    bdf0:	2d 38 1a 00 00       	sub    $0x1a38,%eax
    bdf5:	8b 18                	mov    (%eax),%ebx
    bdf7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    bdfa:	89 d0                	mov    %edx,%eax
    bdfc:	01 c0                	add    %eax,%eax
    bdfe:	01 d0                	add    %edx,%eax
    be00:	c1 e0 02             	shl    $0x2,%eax
    be03:	8d 75 e8             	lea    -0x18(%ebp),%esi
    be06:	01 f0                	add    %esi,%eax
    be08:	2d 3c 1a 00 00       	sub    $0x1a3c,%eax
    be0d:	8b 08                	mov    (%eax),%ecx
    be0f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    be12:	89 d0                	mov    %edx,%eax
    be14:	01 c0                	add    %eax,%eax
    be16:	01 d0                	add    %edx,%eax
    be18:	c1 e0 02             	shl    $0x2,%eax
    be1b:	8d 7d e8             	lea    -0x18(%ebp),%edi
    be1e:	01 f8                	add    %edi,%eax
    be20:	2d 40 1a 00 00       	sub    $0x1a40,%eax
    be25:	8b 00                	mov    (%eax),%eax
    be27:	8b 35 0c 28 01 00    	mov    0x1280c,%esi
    be2d:	8b 55 e0             	mov    -0x20(%ebp),%edx
    be30:	01 f2                	add    %esi,%edx
    be32:	83 ec 0c             	sub    $0xc,%esp
    be35:	53                   	push   %ebx
    be36:	51                   	push   %ecx
    be37:	50                   	push   %eax
    be38:	68 f8 ee 00 00       	push   $0xeef8
    be3d:	52                   	push   %edx
    be3e:	e8 e7 05 00 00       	call   c42a <sprintf>
    be43:	83 c4 20             	add    $0x20,%esp
    be46:	01 45 e0             	add    %eax,-0x20(%ebp)
    be49:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    be4d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be50:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
    be53:	7c 8a                	jl     bddf <dump_fd_graph+0x1780>
    be55:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    be5c:	eb 36                	jmp    be94 <dump_fd_graph+0x1835>
    be5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be61:	8b 94 c5 ac dd ff ff 	mov    -0x2254(%ebp,%eax,8),%edx
    be68:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be6b:	8b 84 c5 a8 dd ff ff 	mov    -0x2258(%ebp,%eax,8),%eax
    be72:	8b 1d 0c 28 01 00    	mov    0x1280c,%ebx
    be78:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    be7b:	01 d9                	add    %ebx,%ecx
    be7d:	52                   	push   %edx
    be7e:	50                   	push   %eax
    be7f:	68 1c ef 00 00       	push   $0xef1c
    be84:	51                   	push   %ecx
    be85:	e8 a0 05 00 00       	call   c42a <sprintf>
    be8a:	83 c4 10             	add    $0x10,%esp
    be8d:	01 45 e0             	add    %eax,-0x20(%ebp)
    be90:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    be94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    be97:	3b 45 d0             	cmp    -0x30(%ebp),%eax
    be9a:	7c c2                	jl     be5e <dump_fd_graph+0x17ff>
    be9c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    bea3:	eb 42                	jmp    bee7 <dump_fd_graph+0x1888>
    bea5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    bea8:	6b c0 2c             	imul   $0x2c,%eax,%eax
    beab:	05 44 39 01 00       	add    $0x13944,%eax
    beb0:	8b 00                	mov    (%eax),%eax
    beb2:	85 c0                	test   %eax,%eax
    beb4:	74 2d                	je     bee3 <dump_fd_graph+0x1884>
    beb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    beb9:	6b c0 2c             	imul   $0x2c,%eax,%eax
    bebc:	05 48 39 01 00       	add    $0x13948,%eax
    bec1:	8b 00                	mov    (%eax),%eax
    bec3:	8b 0d 0c 28 01 00    	mov    0x1280c,%ecx
    bec9:	8b 55 e0             	mov    -0x20(%ebp),%edx
    becc:	01 ca                	add    %ecx,%edx
    bece:	50                   	push   %eax
    becf:	ff 75 e4             	pushl  -0x1c(%ebp)
    bed2:	68 40 ef 00 00       	push   $0xef40
    bed7:	52                   	push   %edx
    bed8:	e8 4d 05 00 00       	call   c42a <sprintf>
    bedd:	83 c4 10             	add    $0x10,%esp
    bee0:	01 45 e0             	add    %eax,-0x20(%ebp)
    bee3:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    bee7:	83 7d e4 3f          	cmpl   $0x3f,-0x1c(%ebp)
    beeb:	7e b8                	jle    bea5 <dump_fd_graph+0x1846>
    beed:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bef3:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bef6:	01 c2                	add    %eax,%edx
    bef8:	83 ec 04             	sub    $0x4,%esp
    befb:	8d 85 60 fb ff ff    	lea    -0x4a0(%ebp),%eax
    bf01:	50                   	push   %eax
    bf02:	68 65 ef 00 00       	push   $0xef65
    bf07:	52                   	push   %edx
    bf08:	e8 1d 05 00 00       	call   c42a <sprintf>
    bf0d:	83 c4 10             	add    $0x10,%esp
    bf10:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf13:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf19:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf1c:	01 d0                	add    %edx,%eax
    bf1e:	83 ec 08             	sub    $0x8,%esp
    bf21:	68 75 ef 00 00       	push   $0xef75
    bf26:	50                   	push   %eax
    bf27:	e8 fe 04 00 00       	call   c42a <sprintf>
    bf2c:	83 c4 10             	add    $0x10,%esp
    bf2f:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf32:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf38:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf3b:	01 d0                	add    %edx,%eax
    bf3d:	83 ec 08             	sub    $0x8,%esp
    bf40:	68 78 ef 00 00       	push   $0xef78
    bf45:	50                   	push   %eax
    bf46:	e8 df 04 00 00       	call   c42a <sprintf>
    bf4b:	83 c4 10             	add    $0x10,%esp
    bf4e:	01 45 e0             	add    %eax,-0x20(%ebp)
    bf51:	a1 00 d0 00 00       	mov    0xd000,%eax
    bf56:	39 45 e0             	cmp    %eax,-0x20(%ebp)
    bf59:	7c 1c                	jl     bf77 <dump_fd_graph+0x1918>
    bf5b:	68 22 03 00 00       	push   $0x322
    bf60:	68 9c e7 00 00       	push   $0xe79c
    bf65:	68 9c e7 00 00       	push   $0xe79c
    bf6a:	68 87 ef 00 00       	push   $0xef87
    bf6f:	e8 69 07 00 00       	call   c6dd <assertion_failure>
    bf74:	83 c4 10             	add    $0x10,%esp
    bf77:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bf7d:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf80:	01 d0                	add    %edx,%eax
    bf82:	c6 00 00             	movb   $0x0,(%eax)
    bf85:	8b 45 e0             	mov    -0x20(%ebp),%eax
    bf88:	89 45 ac             	mov    %eax,-0x54(%ebp)
    bf8b:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%ebp)
    bf92:	eb 6f                	jmp    c003 <dump_fd_graph+0x19a4>
    bf94:	b8 ff 01 00 00       	mov    $0x1ff,%eax
    bf99:	81 7d ac ff 01 00 00 	cmpl   $0x1ff,-0x54(%ebp)
    bfa0:	0f 4e 45 ac          	cmovle -0x54(%ebp),%eax
    bfa4:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
    bfaa:	8b 15 0c 28 01 00    	mov    0x1280c,%edx
    bfb0:	8b 45 a8             	mov    -0x58(%ebp),%eax
    bfb3:	01 d0                	add    %edx,%eax
    bfb5:	83 ec 04             	sub    $0x4,%esp
    bfb8:	ff b5 60 ff ff ff    	pushl  -0xa0(%ebp)
    bfbe:	50                   	push   %eax
    bfbf:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bfc5:	50                   	push   %eax
    bfc6:	e8 85 04 00 00       	call   c450 <memcpy>
    bfcb:	83 c4 10             	add    $0x10,%esp
    bfce:	8d 95 a8 cf ff ff    	lea    -0x3058(%ebp),%edx
    bfd4:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    bfda:	01 d0                	add    %edx,%eax
    bfdc:	c6 00 00             	movb   $0x0,(%eax)
    bfdf:	83 ec 0c             	sub    $0xc,%esp
    bfe2:	8d 85 a8 cf ff ff    	lea    -0x3058(%ebp),%eax
    bfe8:	50                   	push   %eax
    bfe9:	e8 03 e1 ff ff       	call   a0f1 <disklog>
    bfee:	83 c4 10             	add    $0x10,%esp
    bff1:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    bff7:	01 45 a8             	add    %eax,-0x58(%ebp)
    bffa:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
    c000:	29 45 ac             	sub    %eax,-0x54(%ebp)
    c003:	83 7d ac 00          	cmpl   $0x0,-0x54(%ebp)
    c007:	75 8b                	jne    bf94 <dump_fd_graph+0x1935>
    c009:	e8 cf a6 ff ff       	call   66dd <disable_int>
    c00e:	c7 45 dc a0 a4 03 00 	movl   $0x3a4a0,-0x24(%ebp)
    c015:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    c01c:	eb 58                	jmp    c076 <dump_fd_graph+0x1a17>
    c01e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c021:	8b 40 74             	mov    0x74(%eax),%eax
    c024:	83 f8 20             	cmp    $0x20,%eax
    c027:	74 3e                	je     c067 <dump_fd_graph+0x1a08>
    c029:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
    c02d:	74 3b                	je     c06a <dump_fd_graph+0x1a0b>
    c02f:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    c033:	74 35                	je     c06a <dump_fd_graph+0x1a0b>
    c035:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    c039:	74 2f                	je     c06a <dump_fd_graph+0x1a0b>
    c03b:	e8 d2 07 00 00       	call   c812 <getpid>
    c040:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    c043:	74 25                	je     c06a <dump_fd_graph+0x1a0b>
    c045:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c048:	8b 94 85 cc fa ff ff 	mov    -0x534(%ebp,%eax,4),%edx
    c04f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c052:	89 50 5c             	mov    %edx,0x5c(%eax)
    c055:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c058:	8b 94 85 38 fa ff ff 	mov    -0x5c8(%ebp,%eax,4),%edx
    c05f:	8b 45 dc             	mov    -0x24(%ebp),%eax
    c062:	89 50 60             	mov    %edx,0x60(%eax)
    c065:	eb 04                	jmp    c06b <dump_fd_graph+0x1a0c>
    c067:	90                   	nop
    c068:	eb 01                	jmp    c06b <dump_fd_graph+0x1a0c>
    c06a:	90                   	nop
    c06b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    c06f:	81 45 dc 98 01 00 00 	addl   $0x198,-0x24(%ebp)
    c076:	83 7d e4 24          	cmpl   $0x24,-0x1c(%ebp)
    c07a:	7e a2                	jle    c01e <dump_fd_graph+0x19bf>
    c07c:	e8 5e a6 ff ff       	call   66df <enable_int>
    c081:	83 ec 0c             	sub    $0xc,%esp
    c084:	68 9f ef 00 00       	push   $0xef9f
    c089:	e8 77 00 00 00       	call   c105 <printl>
    c08e:	83 c4 10             	add    $0x10,%esp
    c091:	90                   	nop
    c092:	8d 65 f4             	lea    -0xc(%ebp),%esp
    c095:	5b                   	pop    %ebx
    c096:	5e                   	pop    %esi
    c097:	5f                   	pop    %edi
    c098:	5d                   	pop    %ebp
    c099:	c3                   	ret    

0000c09a <printf>:
    c09a:	55                   	push   %ebp
    c09b:	89 e5                	mov    %esp,%ebp
    c09d:	81 ec 18 04 00 00    	sub    $0x418,%esp
    c0a3:	8d 45 0c             	lea    0xc(%ebp),%eax
    c0a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c0a9:	8b 45 08             	mov    0x8(%ebp),%eax
    c0ac:	83 ec 04             	sub    $0x4,%esp
    c0af:	ff 75 f4             	pushl  -0xc(%ebp)
    c0b2:	50                   	push   %eax
    c0b3:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c0b9:	50                   	push   %eax
    c0ba:	e8 ee 00 00 00       	call   c1ad <vsprintf>
    c0bf:	83 c4 10             	add    $0x10,%esp
    c0c2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c0c5:	83 ec 04             	sub    $0x4,%esp
    c0c8:	ff 75 f0             	pushl  -0x10(%ebp)
    c0cb:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    c0d1:	50                   	push   %eax
    c0d2:	6a 01                	push   $0x1
    c0d4:	e8 d7 06 00 00       	call   c7b0 <write>
    c0d9:	83 c4 10             	add    $0x10,%esp
    c0dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c0df:	8b 45 ec             	mov    -0x14(%ebp),%eax
    c0e2:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    c0e5:	74 19                	je     c100 <printf+0x66>
    c0e7:	6a 50                	push   $0x50
    c0e9:	68 a2 ef 00 00       	push   $0xefa2
    c0ee:	68 a2 ef 00 00       	push   $0xefa2
    c0f3:	68 af ef 00 00       	push   $0xefaf
    c0f8:	e8 e0 05 00 00       	call   c6dd <assertion_failure>
    c0fd:	83 c4 10             	add    $0x10,%esp
    c100:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c103:	c9                   	leave  
    c104:	c3                   	ret    

0000c105 <printl>:
    c105:	55                   	push   %ebp
    c106:	89 e5                	mov    %esp,%ebp
    c108:	81 ec 18 04 00 00    	sub    $0x418,%esp
    c10e:	8d 45 0c             	lea    0xc(%ebp),%eax
    c111:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c114:	8b 45 08             	mov    0x8(%ebp),%eax
    c117:	83 ec 04             	sub    $0x4,%esp
    c11a:	ff 75 f4             	pushl  -0xc(%ebp)
    c11d:	50                   	push   %eax
    c11e:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    c124:	50                   	push   %eax
    c125:	e8 83 00 00 00       	call   c1ad <vsprintf>
    c12a:	83 c4 10             	add    $0x10,%esp
    c12d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c130:	83 ec 0c             	sub    $0xc,%esp
    c133:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
    c139:	50                   	push   %eax
    c13a:	e8 7b 0a 00 00       	call   cbba <printx>
    c13f:	83 c4 10             	add    $0x10,%esp
    c142:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c145:	c9                   	leave  
    c146:	c3                   	ret    

0000c147 <i2a>:
    c147:	55                   	push   %ebp
    c148:	89 e5                	mov    %esp,%ebp
    c14a:	53                   	push   %ebx
    c14b:	83 ec 14             	sub    $0x14,%esp
    c14e:	8b 45 08             	mov    0x8(%ebp),%eax
    c151:	99                   	cltd   
    c152:	f7 7d 0c             	idivl  0xc(%ebp)
    c155:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c158:	8b 45 08             	mov    0x8(%ebp),%eax
    c15b:	99                   	cltd   
    c15c:	f7 7d 0c             	idivl  0xc(%ebp)
    c15f:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c162:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    c166:	74 14                	je     c17c <i2a+0x35>
    c168:	83 ec 04             	sub    $0x4,%esp
    c16b:	ff 75 10             	pushl  0x10(%ebp)
    c16e:	ff 75 0c             	pushl  0xc(%ebp)
    c171:	ff 75 f0             	pushl  -0x10(%ebp)
    c174:	e8 ce ff ff ff       	call   c147 <i2a>
    c179:	83 c4 10             	add    $0x10,%esp
    c17c:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
    c180:	7f 0a                	jg     c18c <i2a+0x45>
    c182:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c185:	83 c0 30             	add    $0x30,%eax
    c188:	89 c3                	mov    %eax,%ebx
    c18a:	eb 08                	jmp    c194 <i2a+0x4d>
    c18c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c18f:	83 c0 37             	add    $0x37,%eax
    c192:	89 c3                	mov    %eax,%ebx
    c194:	8b 45 10             	mov    0x10(%ebp),%eax
    c197:	8b 00                	mov    (%eax),%eax
    c199:	8d 48 01             	lea    0x1(%eax),%ecx
    c19c:	8b 55 10             	mov    0x10(%ebp),%edx
    c19f:	89 0a                	mov    %ecx,(%edx)
    c1a1:	88 18                	mov    %bl,(%eax)
    c1a3:	8b 45 10             	mov    0x10(%ebp),%eax
    c1a6:	8b 00                	mov    (%eax),%eax
    c1a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    c1ab:	c9                   	leave  
    c1ac:	c3                   	ret    

0000c1ad <vsprintf>:
    c1ad:	55                   	push   %ebp
    c1ae:	89 e5                	mov    %esp,%ebp
    c1b0:	81 ec 28 04 00 00    	sub    $0x428,%esp
    c1b6:	8b 45 10             	mov    0x10(%ebp),%eax
    c1b9:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c1bc:	8b 45 08             	mov    0x8(%ebp),%eax
    c1bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c1c2:	e9 47 02 00 00       	jmp    c40e <vsprintf+0x261>
    c1c7:	8b 45 0c             	mov    0xc(%ebp),%eax
    c1ca:	0f b6 00             	movzbl (%eax),%eax
    c1cd:	3c 25                	cmp    $0x25,%al
    c1cf:	74 16                	je     c1e7 <vsprintf+0x3a>
    c1d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c1d4:	8d 50 01             	lea    0x1(%eax),%edx
    c1d7:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c1da:	8b 55 0c             	mov    0xc(%ebp),%edx
    c1dd:	0f b6 12             	movzbl (%edx),%edx
    c1e0:	88 10                	mov    %dl,(%eax)
    c1e2:	e9 23 02 00 00       	jmp    c40a <vsprintf+0x25d>
    c1e7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    c1ee:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c1f2:	8b 45 0c             	mov    0xc(%ebp),%eax
    c1f5:	0f b6 00             	movzbl (%eax),%eax
    c1f8:	3c 25                	cmp    $0x25,%al
    c1fa:	75 16                	jne    c212 <vsprintf+0x65>
    c1fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c1ff:	8d 50 01             	lea    0x1(%eax),%edx
    c202:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c205:	8b 55 0c             	mov    0xc(%ebp),%edx
    c208:	0f b6 12             	movzbl (%edx),%edx
    c20b:	88 10                	mov    %dl,(%eax)
    c20d:	e9 f8 01 00 00       	jmp    c40a <vsprintf+0x25d>
    c212:	8b 45 0c             	mov    0xc(%ebp),%eax
    c215:	0f b6 00             	movzbl (%eax),%eax
    c218:	3c 30                	cmp    $0x30,%al
    c21a:	75 0a                	jne    c226 <vsprintf+0x79>
    c21c:	c6 45 eb 30          	movb   $0x30,-0x15(%ebp)
    c220:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c224:	eb 28                	jmp    c24e <vsprintf+0xa1>
    c226:	c6 45 eb 20          	movb   $0x20,-0x15(%ebp)
    c22a:	eb 22                	jmp    c24e <vsprintf+0xa1>
    c22c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    c22f:	89 d0                	mov    %edx,%eax
    c231:	c1 e0 02             	shl    $0x2,%eax
    c234:	01 d0                	add    %edx,%eax
    c236:	01 c0                	add    %eax,%eax
    c238:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    c23b:	8b 45 0c             	mov    0xc(%ebp),%eax
    c23e:	0f b6 00             	movzbl (%eax),%eax
    c241:	0f be c0             	movsbl %al,%eax
    c244:	83 e8 30             	sub    $0x30,%eax
    c247:	01 45 e4             	add    %eax,-0x1c(%ebp)
    c24a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c24e:	8b 45 0c             	mov    0xc(%ebp),%eax
    c251:	0f b6 00             	movzbl (%eax),%eax
    c254:	3c 2f                	cmp    $0x2f,%al
    c256:	76 0a                	jbe    c262 <vsprintf+0xb5>
    c258:	8b 45 0c             	mov    0xc(%ebp),%eax
    c25b:	0f b6 00             	movzbl (%eax),%eax
    c25e:	3c 39                	cmp    $0x39,%al
    c260:	76 ca                	jbe    c22c <vsprintf+0x7f>
    c262:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c268:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c26e:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c274:	83 ec 04             	sub    $0x4,%esp
    c277:	68 00 04 00 00       	push   $0x400
    c27c:	6a 00                	push   $0x0
    c27e:	50                   	push   %eax
    c27f:	e8 f5 01 00 00       	call   c479 <memset>
    c284:	83 c4 10             	add    $0x10,%esp
    c287:	8b 45 0c             	mov    0xc(%ebp),%eax
    c28a:	0f b6 00             	movzbl (%eax),%eax
    c28d:	0f be c0             	movsbl %al,%eax
    c290:	83 f8 64             	cmp    $0x64,%eax
    c293:	74 67                	je     c2fc <vsprintf+0x14f>
    c295:	83 f8 64             	cmp    $0x64,%eax
    c298:	7f 0a                	jg     c2a4 <vsprintf+0xf7>
    c29a:	83 f8 63             	cmp    $0x63,%eax
    c29d:	74 18                	je     c2b7 <vsprintf+0x10a>
    c29f:	e9 d6 00 00 00       	jmp    c37a <vsprintf+0x1cd>
    c2a4:	83 f8 73             	cmp    $0x73,%eax
    c2a7:	0f 84 8f 00 00 00    	je     c33c <vsprintf+0x18f>
    c2ad:	83 f8 78             	cmp    $0x78,%eax
    c2b0:	74 25                	je     c2d7 <vsprintf+0x12a>
    c2b2:	e9 c3 00 00 00       	jmp    c37a <vsprintf+0x1cd>
    c2b7:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c2bd:	8d 50 01             	lea    0x1(%eax),%edx
    c2c0:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c2c6:	8b 55 f0             	mov    -0x10(%ebp),%edx
    c2c9:	0f b6 12             	movzbl (%edx),%edx
    c2cc:	88 10                	mov    %dl,(%eax)
    c2ce:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c2d2:	e9 a3 00 00 00       	jmp    c37a <vsprintf+0x1cd>
    c2d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c2da:	8b 00                	mov    (%eax),%eax
    c2dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c2df:	83 ec 04             	sub    $0x4,%esp
    c2e2:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c2e8:	50                   	push   %eax
    c2e9:	6a 10                	push   $0x10
    c2eb:	ff 75 ec             	pushl  -0x14(%ebp)
    c2ee:	e8 54 fe ff ff       	call   c147 <i2a>
    c2f3:	83 c4 10             	add    $0x10,%esp
    c2f6:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c2fa:	eb 7e                	jmp    c37a <vsprintf+0x1cd>
    c2fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c2ff:	8b 00                	mov    (%eax),%eax
    c301:	89 45 ec             	mov    %eax,-0x14(%ebp)
    c304:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
    c308:	79 15                	jns    c31f <vsprintf+0x172>
    c30a:	f7 5d ec             	negl   -0x14(%ebp)
    c30d:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c313:	8d 50 01             	lea    0x1(%eax),%edx
    c316:	89 95 dc fb ff ff    	mov    %edx,-0x424(%ebp)
    c31c:	c6 00 2d             	movb   $0x2d,(%eax)
    c31f:	83 ec 04             	sub    $0x4,%esp
    c322:	8d 85 dc fb ff ff    	lea    -0x424(%ebp),%eax
    c328:	50                   	push   %eax
    c329:	6a 0a                	push   $0xa
    c32b:	ff 75 ec             	pushl  -0x14(%ebp)
    c32e:	e8 14 fe ff ff       	call   c147 <i2a>
    c333:	83 c4 10             	add    $0x10,%esp
    c336:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c33a:	eb 3e                	jmp    c37a <vsprintf+0x1cd>
    c33c:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c33f:	8b 10                	mov    (%eax),%edx
    c341:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c347:	83 ec 08             	sub    $0x8,%esp
    c34a:	52                   	push   %edx
    c34b:	50                   	push   %eax
    c34c:	e8 49 01 00 00       	call   c49a <strcpy>
    c351:	83 c4 10             	add    $0x10,%esp
    c354:	8b 45 f0             	mov    -0x10(%ebp),%eax
    c357:	8b 00                	mov    (%eax),%eax
    c359:	83 ec 0c             	sub    $0xc,%esp
    c35c:	50                   	push   %eax
    c35d:	e8 50 01 00 00       	call   c4b2 <strlen>
    c362:	83 c4 10             	add    $0x10,%esp
    c365:	89 c2                	mov    %eax,%edx
    c367:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c36d:	01 d0                	add    %edx,%eax
    c36f:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c375:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
    c379:	90                   	nop
    c37a:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    c381:	eb 13                	jmp    c396 <vsprintf+0x1e9>
    c383:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c386:	8d 50 01             	lea    0x1(%eax),%edx
    c389:	89 55 f4             	mov    %edx,-0xc(%ebp)
    c38c:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
    c390:	88 10                	mov    %dl,(%eax)
    c392:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
    c396:	83 ec 0c             	sub    $0xc,%esp
    c399:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c39f:	50                   	push   %eax
    c3a0:	e8 0d 01 00 00       	call   c4b2 <strlen>
    c3a5:	83 c4 10             	add    $0x10,%esp
    c3a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
    c3ab:	7e 1b                	jle    c3c8 <vsprintf+0x21b>
    c3ad:	83 ec 0c             	sub    $0xc,%esp
    c3b0:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c3b6:	50                   	push   %eax
    c3b7:	e8 f6 00 00 00       	call   c4b2 <strlen>
    c3bc:	83 c4 10             	add    $0x10,%esp
    c3bf:	89 c2                	mov    %eax,%edx
    c3c1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    c3c4:	29 d0                	sub    %edx,%eax
    c3c6:	eb 05                	jmp    c3cd <vsprintf+0x220>
    c3c8:	b8 00 00 00 00       	mov    $0x0,%eax
    c3cd:	3b 45 e0             	cmp    -0x20(%ebp),%eax
    c3d0:	7f b1                	jg     c383 <vsprintf+0x1d6>
    c3d2:	8d 85 e0 fb ff ff    	lea    -0x420(%ebp),%eax
    c3d8:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c3de:	eb 1d                	jmp    c3fd <vsprintf+0x250>
    c3e0:	8b 95 dc fb ff ff    	mov    -0x424(%ebp),%edx
    c3e6:	8d 42 01             	lea    0x1(%edx),%eax
    c3e9:	89 85 dc fb ff ff    	mov    %eax,-0x424(%ebp)
    c3ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c3f2:	8d 48 01             	lea    0x1(%eax),%ecx
    c3f5:	89 4d f4             	mov    %ecx,-0xc(%ebp)
    c3f8:	0f b6 12             	movzbl (%edx),%edx
    c3fb:	88 10                	mov    %dl,(%eax)
    c3fd:	8b 85 dc fb ff ff    	mov    -0x424(%ebp),%eax
    c403:	0f b6 00             	movzbl (%eax),%eax
    c406:	84 c0                	test   %al,%al
    c408:	75 d6                	jne    c3e0 <vsprintf+0x233>
    c40a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
    c40e:	8b 45 0c             	mov    0xc(%ebp),%eax
    c411:	0f b6 00             	movzbl (%eax),%eax
    c414:	84 c0                	test   %al,%al
    c416:	0f 85 ab fd ff ff    	jne    c1c7 <vsprintf+0x1a>
    c41c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c41f:	c6 00 00             	movb   $0x0,(%eax)
    c422:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c425:	2b 45 08             	sub    0x8(%ebp),%eax
    c428:	c9                   	leave  
    c429:	c3                   	ret    

0000c42a <sprintf>:
    c42a:	55                   	push   %ebp
    c42b:	89 e5                	mov    %esp,%ebp
    c42d:	83 ec 18             	sub    $0x18,%esp
    c430:	8d 45 0c             	lea    0xc(%ebp),%eax
    c433:	83 c0 04             	add    $0x4,%eax
    c436:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c439:	8b 45 0c             	mov    0xc(%ebp),%eax
    c43c:	83 ec 04             	sub    $0x4,%esp
    c43f:	ff 75 f4             	pushl  -0xc(%ebp)
    c442:	50                   	push   %eax
    c443:	ff 75 08             	pushl  0x8(%ebp)
    c446:	e8 62 fd ff ff       	call   c1ad <vsprintf>
    c44b:	83 c4 10             	add    $0x10,%esp
    c44e:	c9                   	leave  
    c44f:	c3                   	ret    

0000c450 <memcpy>:
    c450:	55                   	push   %ebp
    c451:	89 e5                	mov    %esp,%ebp
    c453:	56                   	push   %esi
    c454:	57                   	push   %edi
    c455:	51                   	push   %ecx
    c456:	8b 7d 08             	mov    0x8(%ebp),%edi
    c459:	8b 75 0c             	mov    0xc(%ebp),%esi
    c45c:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c45f <memcpy.1>:
    c45f:	83 f9 00             	cmp    $0x0,%ecx
    c462:	74 0b                	je     c46f <memcpy.2>
    c464:	3e 8a 06             	mov    %ds:(%esi),%al
    c467:	46                   	inc    %esi
    c468:	26 88 07             	mov    %al,%es:(%edi)
    c46b:	47                   	inc    %edi
    c46c:	49                   	dec    %ecx
    c46d:	eb f0                	jmp    c45f <memcpy.1>

0000c46f <memcpy.2>:
    c46f:	8b 45 08             	mov    0x8(%ebp),%eax
    c472:	59                   	pop    %ecx
    c473:	5f                   	pop    %edi
    c474:	5e                   	pop    %esi
    c475:	89 ec                	mov    %ebp,%esp
    c477:	5d                   	pop    %ebp
    c478:	c3                   	ret    

0000c479 <memset>:
    c479:	55                   	push   %ebp
    c47a:	89 e5                	mov    %esp,%ebp
    c47c:	56                   	push   %esi
    c47d:	57                   	push   %edi
    c47e:	51                   	push   %ecx
    c47f:	8b 7d 08             	mov    0x8(%ebp),%edi
    c482:	8b 55 0c             	mov    0xc(%ebp),%edx
    c485:	8b 4d 10             	mov    0x10(%ebp),%ecx

0000c488 <memset.1>:
    c488:	83 f9 00             	cmp    $0x0,%ecx
    c48b:	74 06                	je     c493 <memset.2>
    c48d:	88 17                	mov    %dl,(%edi)
    c48f:	47                   	inc    %edi
    c490:	49                   	dec    %ecx
    c491:	eb f5                	jmp    c488 <memset.1>

0000c493 <memset.2>:
    c493:	59                   	pop    %ecx
    c494:	5f                   	pop    %edi
    c495:	5e                   	pop    %esi
    c496:	89 ec                	mov    %ebp,%esp
    c498:	5d                   	pop    %ebp
    c499:	c3                   	ret    

0000c49a <strcpy>:
    c49a:	55                   	push   %ebp
    c49b:	89 e5                	mov    %esp,%ebp
    c49d:	8b 75 0c             	mov    0xc(%ebp),%esi
    c4a0:	8b 7d 08             	mov    0x8(%ebp),%edi

0000c4a3 <strcpy.1>:
    c4a3:	8a 06                	mov    (%esi),%al
    c4a5:	46                   	inc    %esi
    c4a6:	88 07                	mov    %al,(%edi)
    c4a8:	47                   	inc    %edi
    c4a9:	3c 00                	cmp    $0x0,%al
    c4ab:	75 f6                	jne    c4a3 <strcpy.1>
    c4ad:	8b 45 08             	mov    0x8(%ebp),%eax
    c4b0:	5d                   	pop    %ebp
    c4b1:	c3                   	ret    

0000c4b2 <strlen>:
    c4b2:	55                   	push   %ebp
    c4b3:	89 e5                	mov    %esp,%ebp
    c4b5:	b8 00 00 00 00       	mov    $0x0,%eax
    c4ba:	8b 75 08             	mov    0x8(%ebp),%esi

0000c4bd <strlen.1>:
    c4bd:	80 3e 00             	cmpb   $0x0,(%esi)
    c4c0:	74 04                	je     c4c6 <strlen.2>
    c4c2:	46                   	inc    %esi
    c4c3:	40                   	inc    %eax
    c4c4:	eb f7                	jmp    c4bd <strlen.1>

0000c4c6 <strlen.2>:
    c4c6:	5d                   	pop    %ebp
    c4c7:	c3                   	ret    

0000c4c8 <send_recv>:
    c4c8:	55                   	push   %ebp
    c4c9:	89 e5                	mov    %esp,%ebp
    c4cb:	83 ec 18             	sub    $0x18,%esp
    c4ce:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c4d5:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c4d9:	75 12                	jne    c4ed <send_recv+0x25>
    c4db:	83 ec 04             	sub    $0x4,%esp
    c4de:	6a 30                	push   $0x30
    c4e0:	6a 00                	push   $0x0
    c4e2:	ff 75 10             	pushl  0x10(%ebp)
    c4e5:	e8 8f ff ff ff       	call   c479 <memset>
    c4ea:	83 c4 10             	add    $0x10,%esp
    c4ed:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c4f1:	7e 59                	jle    c54c <send_recv+0x84>
    c4f3:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c4f7:	7e 3a                	jle    c533 <send_recv+0x6b>
    c4f9:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c4fd:	75 4d                	jne    c54c <send_recv+0x84>
    c4ff:	83 ec 04             	sub    $0x4,%esp
    c502:	ff 75 10             	pushl  0x10(%ebp)
    c505:	ff 75 0c             	pushl  0xc(%ebp)
    c508:	6a 01                	push   $0x1
    c50a:	e8 91 06 00 00       	call   cba0 <sendrec>
    c50f:	83 c4 10             	add    $0x10,%esp
    c512:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c515:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    c519:	75 5e                	jne    c579 <send_recv+0xb1>
    c51b:	83 ec 04             	sub    $0x4,%esp
    c51e:	ff 75 10             	pushl  0x10(%ebp)
    c521:	ff 75 0c             	pushl  0xc(%ebp)
    c524:	6a 02                	push   $0x2
    c526:	e8 75 06 00 00       	call   cba0 <sendrec>
    c52b:	83 c4 10             	add    $0x10,%esp
    c52e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c531:	eb 46                	jmp    c579 <send_recv+0xb1>
    c533:	83 ec 04             	sub    $0x4,%esp
    c536:	ff 75 10             	pushl  0x10(%ebp)
    c539:	ff 75 0c             	pushl  0xc(%ebp)
    c53c:	ff 75 08             	pushl  0x8(%ebp)
    c53f:	e8 5c 06 00 00       	call   cba0 <sendrec>
    c544:	83 c4 10             	add    $0x10,%esp
    c547:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c54a:	eb 31                	jmp    c57d <send_recv+0xb5>
    c54c:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    c550:	74 2a                	je     c57c <send_recv+0xb4>
    c552:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
    c556:	74 24                	je     c57c <send_recv+0xb4>
    c558:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    c55c:	74 1e                	je     c57c <send_recv+0xb4>
    c55e:	6a 39                	push   $0x39
    c560:	68 b8 ef 00 00       	push   $0xefb8
    c565:	68 b8 ef 00 00       	push   $0xefb8
    c56a:	68 c4 ef 00 00       	push   $0xefc4
    c56f:	e8 69 01 00 00       	call   c6dd <assertion_failure>
    c574:	83 c4 10             	add    $0x10,%esp
    c577:	eb 03                	jmp    c57c <send_recv+0xb4>
    c579:	90                   	nop
    c57a:	eb 01                	jmp    c57d <send_recv+0xb5>
    c57c:	90                   	nop
    c57d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c580:	c9                   	leave  
    c581:	c3                   	ret    

0000c582 <memcmp>:
    c582:	55                   	push   %ebp
    c583:	89 e5                	mov    %esp,%ebp
    c585:	83 ec 10             	sub    $0x10,%esp
    c588:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c58c:	74 06                	je     c594 <memcmp+0x12>
    c58e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c592:	75 08                	jne    c59c <memcmp+0x1a>
    c594:	8b 45 08             	mov    0x8(%ebp),%eax
    c597:	2b 45 0c             	sub    0xc(%ebp),%eax
    c59a:	eb 56                	jmp    c5f2 <memcmp+0x70>
    c59c:	8b 45 08             	mov    0x8(%ebp),%eax
    c59f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c5a2:	8b 45 0c             	mov    0xc(%ebp),%eax
    c5a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c5a8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c5af:	eb 34                	jmp    c5e5 <memcmp+0x63>
    c5b1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c5b4:	0f b6 10             	movzbl (%eax),%edx
    c5b7:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c5ba:	0f b6 00             	movzbl (%eax),%eax
    c5bd:	38 c2                	cmp    %al,%dl
    c5bf:	74 18                	je     c5d9 <memcmp+0x57>
    c5c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c5c4:	0f b6 00             	movzbl (%eax),%eax
    c5c7:	0f be d0             	movsbl %al,%edx
    c5ca:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c5cd:	0f b6 00             	movzbl (%eax),%eax
    c5d0:	0f be c0             	movsbl %al,%eax
    c5d3:	29 c2                	sub    %eax,%edx
    c5d5:	89 d0                	mov    %edx,%eax
    c5d7:	eb 19                	jmp    c5f2 <memcmp+0x70>
    c5d9:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    c5dd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c5e1:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c5e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c5e8:	3b 45 10             	cmp    0x10(%ebp),%eax
    c5eb:	7c c4                	jl     c5b1 <memcmp+0x2f>
    c5ed:	b8 00 00 00 00       	mov    $0x0,%eax
    c5f2:	c9                   	leave  
    c5f3:	c3                   	ret    

0000c5f4 <strcmp>:
    c5f4:	55                   	push   %ebp
    c5f5:	89 e5                	mov    %esp,%ebp
    c5f7:	83 ec 10             	sub    $0x10,%esp
    c5fa:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c5fe:	74 06                	je     c606 <strcmp+0x12>
    c600:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c604:	75 08                	jne    c60e <strcmp+0x1a>
    c606:	8b 45 08             	mov    0x8(%ebp),%eax
    c609:	2b 45 0c             	sub    0xc(%ebp),%eax
    c60c:	eb 53                	jmp    c661 <strcmp+0x6d>
    c60e:	8b 45 08             	mov    0x8(%ebp),%eax
    c611:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c614:	8b 45 0c             	mov    0xc(%ebp),%eax
    c617:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c61a:	eb 18                	jmp    c634 <strcmp+0x40>
    c61c:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c61f:	0f b6 10             	movzbl (%eax),%edx
    c622:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c625:	0f b6 00             	movzbl (%eax),%eax
    c628:	38 c2                	cmp    %al,%dl
    c62a:	75 1e                	jne    c64a <strcmp+0x56>
    c62c:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c630:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c634:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c637:	0f b6 00             	movzbl (%eax),%eax
    c63a:	84 c0                	test   %al,%al
    c63c:	74 0d                	je     c64b <strcmp+0x57>
    c63e:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c641:	0f b6 00             	movzbl (%eax),%eax
    c644:	84 c0                	test   %al,%al
    c646:	75 d4                	jne    c61c <strcmp+0x28>
    c648:	eb 01                	jmp    c64b <strcmp+0x57>
    c64a:	90                   	nop
    c64b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c64e:	0f b6 00             	movzbl (%eax),%eax
    c651:	0f be d0             	movsbl %al,%edx
    c654:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c657:	0f b6 00             	movzbl (%eax),%eax
    c65a:	0f be c0             	movsbl %al,%eax
    c65d:	29 c2                	sub    %eax,%edx
    c65f:	89 d0                	mov    %edx,%eax
    c661:	c9                   	leave  
    c662:	c3                   	ret    

0000c663 <strcat>:
    c663:	55                   	push   %ebp
    c664:	89 e5                	mov    %esp,%ebp
    c666:	83 ec 10             	sub    $0x10,%esp
    c669:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    c66d:	74 06                	je     c675 <strcat+0x12>
    c66f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
    c673:	75 07                	jne    c67c <strcat+0x19>
    c675:	b8 00 00 00 00       	mov    $0x0,%eax
    c67a:	eb 44                	jmp    c6c0 <strcat+0x5d>
    c67c:	8b 45 08             	mov    0x8(%ebp),%eax
    c67f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    c682:	eb 04                	jmp    c688 <strcat+0x25>
    c684:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c688:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c68b:	0f b6 00             	movzbl (%eax),%eax
    c68e:	84 c0                	test   %al,%al
    c690:	75 f2                	jne    c684 <strcat+0x21>
    c692:	8b 45 0c             	mov    0xc(%ebp),%eax
    c695:	89 45 f8             	mov    %eax,-0x8(%ebp)
    c698:	eb 13                	jmp    c6ad <strcat+0x4a>
    c69a:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c69d:	0f b6 10             	movzbl (%eax),%edx
    c6a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c6a3:	88 10                	mov    %dl,(%eax)
    c6a5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    c6a9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    c6ad:	8b 45 f8             	mov    -0x8(%ebp),%eax
    c6b0:	0f b6 00             	movzbl (%eax),%eax
    c6b3:	84 c0                	test   %al,%al
    c6b5:	75 e3                	jne    c69a <strcat+0x37>
    c6b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    c6ba:	c6 00 00             	movb   $0x0,(%eax)
    c6bd:	8b 45 08             	mov    0x8(%ebp),%eax
    c6c0:	c9                   	leave  
    c6c1:	c3                   	ret    

0000c6c2 <spin>:
    c6c2:	55                   	push   %ebp
    c6c3:	89 e5                	mov    %esp,%ebp
    c6c5:	83 ec 08             	sub    $0x8,%esp
    c6c8:	83 ec 08             	sub    $0x8,%esp
    c6cb:	ff 75 08             	pushl  0x8(%ebp)
    c6ce:	68 06 f0 00 00       	push   $0xf006
    c6d3:	e8 2d fa ff ff       	call   c105 <printl>
    c6d8:	83 c4 10             	add    $0x10,%esp
    c6db:	eb fe                	jmp    c6db <spin+0x19>

0000c6dd <assertion_failure>:
    c6dd:	55                   	push   %ebp
    c6de:	89 e5                	mov    %esp,%ebp
    c6e0:	83 ec 08             	sub    $0x8,%esp
    c6e3:	83 ec 08             	sub    $0x8,%esp
    c6e6:	ff 75 14             	pushl  0x14(%ebp)
    c6e9:	ff 75 10             	pushl  0x10(%ebp)
    c6ec:	ff 75 0c             	pushl  0xc(%ebp)
    c6ef:	ff 75 08             	pushl  0x8(%ebp)
    c6f2:	6a 03                	push   $0x3
    c6f4:	68 1c f0 00 00       	push   $0xf01c
    c6f9:	e8 07 fa ff ff       	call   c105 <printl>
    c6fe:	83 c4 20             	add    $0x20,%esp
    c701:	83 ec 0c             	sub    $0xc,%esp
    c704:	68 51 f0 00 00       	push   $0xf051
    c709:	e8 b4 ff ff ff       	call   c6c2 <spin>
    c70e:	83 c4 10             	add    $0x10,%esp
    c711:	0f 0b                	ud2    
    c713:	90                   	nop
    c714:	c9                   	leave  
    c715:	c3                   	ret    

0000c716 <open>:
    c716:	55                   	push   %ebp
    c717:	89 e5                	mov    %esp,%ebp
    c719:	83 ec 38             	sub    $0x38,%esp
    c71c:	c7 45 cc 05 00 00 00 	movl   $0x5,-0x34(%ebp)
    c723:	8b 45 08             	mov    0x8(%ebp),%eax
    c726:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c729:	8b 45 0c             	mov    0xc(%ebp),%eax
    c72c:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c72f:	83 ec 0c             	sub    $0xc,%esp
    c732:	ff 75 08             	pushl  0x8(%ebp)
    c735:	e8 78 fd ff ff       	call   c4b2 <strlen>
    c73a:	83 c4 10             	add    $0x10,%esp
    c73d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c740:	83 ec 04             	sub    $0x4,%esp
    c743:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c746:	50                   	push   %eax
    c747:	6a 03                	push   $0x3
    c749:	6a 03                	push   $0x3
    c74b:	e8 78 fd ff ff       	call   c4c8 <send_recv>
    c750:	83 c4 10             	add    $0x10,%esp
    c753:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c756:	83 f8 12             	cmp    $0x12,%eax
    c759:	74 19                	je     c774 <open+0x5e>
    c75b:	6a 2c                	push   $0x2c
    c75d:	68 65 f0 00 00       	push   $0xf065
    c762:	68 65 f0 00 00       	push   $0xf065
    c767:	68 70 f0 00 00       	push   $0xf070
    c76c:	e8 6c ff ff ff       	call   c6dd <assertion_failure>
    c771:	83 c4 10             	add    $0x10,%esp
    c774:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c777:	c9                   	leave  
    c778:	c3                   	ret    

0000c779 <read>:
    c779:	55                   	push   %ebp
    c77a:	89 e5                	mov    %esp,%ebp
    c77c:	83 ec 38             	sub    $0x38,%esp
    c77f:	c7 45 cc 07 00 00 00 	movl   $0x7,-0x34(%ebp)
    c786:	8b 45 08             	mov    0x8(%ebp),%eax
    c789:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c78c:	8b 45 0c             	mov    0xc(%ebp),%eax
    c78f:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c792:	8b 45 10             	mov    0x10(%ebp),%eax
    c795:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c798:	83 ec 04             	sub    $0x4,%esp
    c79b:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c79e:	50                   	push   %eax
    c79f:	6a 03                	push   $0x3
    c7a1:	6a 03                	push   $0x3
    c7a3:	e8 20 fd ff ff       	call   c4c8 <send_recv>
    c7a8:	83 c4 10             	add    $0x10,%esp
    c7ab:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c7ae:	c9                   	leave  
    c7af:	c3                   	ret    

0000c7b0 <write>:
    c7b0:	55                   	push   %ebp
    c7b1:	89 e5                	mov    %esp,%ebp
    c7b3:	83 ec 38             	sub    $0x38,%esp
    c7b6:	c7 45 cc 08 00 00 00 	movl   $0x8,-0x34(%ebp)
    c7bd:	8b 45 08             	mov    0x8(%ebp),%eax
    c7c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c7c3:	8b 45 0c             	mov    0xc(%ebp),%eax
    c7c6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c7c9:	8b 45 10             	mov    0x10(%ebp),%eax
    c7cc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c7cf:	83 ec 04             	sub    $0x4,%esp
    c7d2:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c7d5:	50                   	push   %eax
    c7d6:	6a 03                	push   $0x3
    c7d8:	6a 03                	push   $0x3
    c7da:	e8 e9 fc ff ff       	call   c4c8 <send_recv>
    c7df:	83 c4 10             	add    $0x10,%esp
    c7e2:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c7e5:	c9                   	leave  
    c7e6:	c3                   	ret    

0000c7e7 <close>:
    c7e7:	55                   	push   %ebp
    c7e8:	89 e5                	mov    %esp,%ebp
    c7ea:	83 ec 38             	sub    $0x38,%esp
    c7ed:	c7 45 cc 06 00 00 00 	movl   $0x6,-0x34(%ebp)
    c7f4:	8b 45 08             	mov    0x8(%ebp),%eax
    c7f7:	89 45 d0             	mov    %eax,-0x30(%ebp)
    c7fa:	83 ec 04             	sub    $0x4,%esp
    c7fd:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c800:	50                   	push   %eax
    c801:	6a 03                	push   $0x3
    c803:	6a 03                	push   $0x3
    c805:	e8 be fc ff ff       	call   c4c8 <send_recv>
    c80a:	83 c4 10             	add    $0x10,%esp
    c80d:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c810:	c9                   	leave  
    c811:	c3                   	ret    

0000c812 <getpid>:
    c812:	55                   	push   %ebp
    c813:	89 e5                	mov    %esp,%ebp
    c815:	83 ec 38             	sub    $0x38,%esp
    c818:	c7 45 cc 03 00 00 00 	movl   $0x3,-0x34(%ebp)
    c81f:	83 ec 04             	sub    $0x4,%esp
    c822:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c825:	50                   	push   %eax
    c826:	6a 01                	push   $0x1
    c828:	6a 03                	push   $0x3
    c82a:	e8 99 fc ff ff       	call   c4c8 <send_recv>
    c82f:	83 c4 10             	add    $0x10,%esp
    c832:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c835:	83 f8 12             	cmp    $0x12,%eax
    c838:	74 19                	je     c853 <getpid+0x41>
    c83a:	6a 25                	push   $0x25
    c83c:	68 88 f0 00 00       	push   $0xf088
    c841:	68 88 f0 00 00       	push   $0xf088
    c846:	68 95 f0 00 00       	push   $0xf095
    c84b:	e8 8d fe ff ff       	call   c6dd <assertion_failure>
    c850:	83 c4 10             	add    $0x10,%esp
    c853:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c856:	c9                   	leave  
    c857:	c3                   	ret    

0000c858 <stat>:
    c858:	55                   	push   %ebp
    c859:	89 e5                	mov    %esp,%ebp
    c85b:	83 ec 38             	sub    $0x38,%esp
    c85e:	c7 45 cc 0a 00 00 00 	movl   $0xa,-0x34(%ebp)
    c865:	8b 45 08             	mov    0x8(%ebp),%eax
    c868:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c86b:	8b 45 0c             	mov    0xc(%ebp),%eax
    c86e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c871:	83 ec 0c             	sub    $0xc,%esp
    c874:	ff 75 08             	pushl  0x8(%ebp)
    c877:	e8 36 fc ff ff       	call   c4b2 <strlen>
    c87c:	83 c4 10             	add    $0x10,%esp
    c87f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c882:	83 ec 04             	sub    $0x4,%esp
    c885:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c888:	50                   	push   %eax
    c889:	6a 03                	push   $0x3
    c88b:	6a 03                	push   $0x3
    c88d:	e8 36 fc ff ff       	call   c4c8 <send_recv>
    c892:	83 c4 10             	add    $0x10,%esp
    c895:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c898:	83 f8 12             	cmp    $0x12,%eax
    c89b:	74 19                	je     c8b6 <stat+0x5e>
    c89d:	6a 2c                	push   $0x2c
    c89f:	68 ad f0 00 00       	push   $0xf0ad
    c8a4:	68 ad f0 00 00       	push   $0xf0ad
    c8a9:	68 b8 f0 00 00       	push   $0xf0b8
    c8ae:	e8 2a fe ff ff       	call   c6dd <assertion_failure>
    c8b3:	83 c4 10             	add    $0x10,%esp
    c8b6:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c8b9:	c9                   	leave  
    c8ba:	c3                   	ret    

0000c8bb <fork>:
    c8bb:	55                   	push   %ebp
    c8bc:	89 e5                	mov    %esp,%ebp
    c8be:	83 ec 38             	sub    $0x38,%esp
    c8c1:	c7 45 cc 10 00 00 00 	movl   $0x10,-0x34(%ebp)
    c8c8:	83 ec 04             	sub    $0x4,%esp
    c8cb:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c8ce:	50                   	push   %eax
    c8cf:	6a 04                	push   $0x4
    c8d1:	6a 03                	push   $0x3
    c8d3:	e8 f0 fb ff ff       	call   c4c8 <send_recv>
    c8d8:	83 c4 10             	add    $0x10,%esp
    c8db:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c8de:	83 f8 12             	cmp    $0x12,%eax
    c8e1:	74 19                	je     c8fc <fork+0x41>
    c8e3:	6a 29                	push   $0x29
    c8e5:	68 d0 f0 00 00       	push   $0xf0d0
    c8ea:	68 d0 f0 00 00       	push   $0xf0d0
    c8ef:	68 db f0 00 00       	push   $0xf0db
    c8f4:	e8 e4 fd ff ff       	call   c6dd <assertion_failure>
    c8f9:	83 c4 10             	add    $0x10,%esp
    c8fc:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c8ff:	85 c0                	test   %eax,%eax
    c901:	74 19                	je     c91c <fork+0x61>
    c903:	6a 2a                	push   $0x2a
    c905:	68 d0 f0 00 00       	push   $0xf0d0
    c90a:	68 d0 f0 00 00       	push   $0xf0d0
    c90f:	68 f3 f0 00 00       	push   $0xf0f3
    c914:	e8 c4 fd ff ff       	call   c6dd <assertion_failure>
    c919:	83 c4 10             	add    $0x10,%esp
    c91c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c91f:	c9                   	leave  
    c920:	c3                   	ret    

0000c921 <wait>:
    c921:	55                   	push   %ebp
    c922:	89 e5                	mov    %esp,%ebp
    c924:	83 ec 38             	sub    $0x38,%esp
    c927:	c7 45 cc 0f 00 00 00 	movl   $0xf,-0x34(%ebp)
    c92e:	83 ec 04             	sub    $0x4,%esp
    c931:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c934:	50                   	push   %eax
    c935:	6a 04                	push   $0x4
    c937:	6a 03                	push   $0x3
    c939:	e8 8a fb ff ff       	call   c4c8 <send_recv>
    c93e:	83 c4 10             	add    $0x10,%esp
    c941:	8b 55 d0             	mov    -0x30(%ebp),%edx
    c944:	8b 45 08             	mov    0x8(%ebp),%eax
    c947:	89 10                	mov    %edx,(%eax)
    c949:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c94c:	83 f8 39             	cmp    $0x39,%eax
    c94f:	74 05                	je     c956 <wait+0x35>
    c951:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    c954:	eb 05                	jmp    c95b <wait+0x3a>
    c956:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c95b:	c9                   	leave  
    c95c:	c3                   	ret    

0000c95d <exec>:
    c95d:	55                   	push   %ebp
    c95e:	89 e5                	mov    %esp,%ebp
    c960:	83 ec 38             	sub    $0x38,%esp
    c963:	c7 45 cc 0e 00 00 00 	movl   $0xe,-0x34(%ebp)
    c96a:	8b 45 08             	mov    0x8(%ebp),%eax
    c96d:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c970:	83 ec 0c             	sub    $0xc,%esp
    c973:	ff 75 08             	pushl  0x8(%ebp)
    c976:	e8 37 fb ff ff       	call   c4b2 <strlen>
    c97b:	83 c4 10             	add    $0x10,%esp
    c97e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c981:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    c988:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    c98f:	83 ec 04             	sub    $0x4,%esp
    c992:	8d 45 c8             	lea    -0x38(%ebp),%eax
    c995:	50                   	push   %eax
    c996:	6a 04                	push   $0x4
    c998:	6a 03                	push   $0x3
    c99a:	e8 29 fb ff ff       	call   c4c8 <send_recv>
    c99f:	83 c4 10             	add    $0x10,%esp
    c9a2:	8b 45 cc             	mov    -0x34(%ebp),%eax
    c9a5:	83 f8 12             	cmp    $0x12,%eax
    c9a8:	74 19                	je     c9c3 <exec+0x66>
    c9aa:	6a 2a                	push   $0x2a
    c9ac:	68 04 f1 00 00       	push   $0xf104
    c9b1:	68 04 f1 00 00       	push   $0xf104
    c9b6:	68 0f f1 00 00       	push   $0xf10f
    c9bb:	e8 1d fd ff ff       	call   c6dd <assertion_failure>
    c9c0:	83 c4 10             	add    $0x10,%esp
    c9c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
    c9c6:	c9                   	leave  
    c9c7:	c3                   	ret    

0000c9c8 <execl>:
    c9c8:	55                   	push   %ebp
    c9c9:	89 e5                	mov    %esp,%ebp
    c9cb:	83 ec 18             	sub    $0x18,%esp
    c9ce:	8d 45 0c             	lea    0xc(%ebp),%eax
    c9d1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c9d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
    c9d7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    c9da:	83 ec 08             	sub    $0x8,%esp
    c9dd:	ff 75 f0             	pushl  -0x10(%ebp)
    c9e0:	ff 75 08             	pushl  0x8(%ebp)
    c9e3:	e8 05 00 00 00       	call   c9ed <execv>
    c9e8:	83 c4 10             	add    $0x10,%esp
    c9eb:	c9                   	leave  
    c9ec:	c3                   	ret    

0000c9ed <execv>:
    c9ed:	55                   	push   %ebp
    c9ee:	89 e5                	mov    %esp,%ebp
    c9f0:	81 ec 48 04 00 00    	sub    $0x448,%esp
    c9f6:	8b 45 0c             	mov    0xc(%ebp),%eax
    c9f9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    c9fc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    ca03:	eb 2f                	jmp    ca34 <execv+0x47>
    ca05:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca08:	83 c0 08             	add    $0x8,%eax
    ca0b:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    ca10:	76 19                	jbe    ca2b <execv+0x3e>
    ca12:	6a 47                	push   $0x47
    ca14:	68 04 f1 00 00       	push   $0xf104
    ca19:	68 04 f1 00 00       	push   $0xf104
    ca1e:	68 28 f1 00 00       	push   $0xf128
    ca23:	e8 b5 fc ff ff       	call   c6dd <assertion_failure>
    ca28:	83 c4 10             	add    $0x10,%esp
    ca2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca2e:	83 c0 04             	add    $0x4,%eax
    ca31:	89 45 f0             	mov    %eax,-0x10(%ebp)
    ca34:	8b 45 f4             	mov    -0xc(%ebp),%eax
    ca37:	8d 50 04             	lea    0x4(%eax),%edx
    ca3a:	89 55 f4             	mov    %edx,-0xc(%ebp)
    ca3d:	8b 00                	mov    (%eax),%eax
    ca3f:	85 c0                	test   %eax,%eax
    ca41:	75 c2                	jne    ca05 <execv+0x18>
    ca43:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    ca49:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca4c:	01 d0                	add    %edx,%eax
    ca4e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    ca54:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca57:	83 c0 04             	add    $0x4,%eax
    ca5a:	89 45 f0             	mov    %eax,-0x10(%ebp)
    ca5d:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    ca63:	89 45 ec             	mov    %eax,-0x14(%ebp)
    ca66:	8b 45 0c             	mov    0xc(%ebp),%eax
    ca69:	89 45 f4             	mov    %eax,-0xc(%ebp)
    ca6c:	e9 95 00 00 00       	jmp    cb06 <execv+0x119>
    ca71:	8b 45 ec             	mov    -0x14(%ebp),%eax
    ca74:	8d 50 04             	lea    0x4(%eax),%edx
    ca77:	89 55 ec             	mov    %edx,-0x14(%ebp)
    ca7a:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    ca80:	8b 55 f0             	mov    -0x10(%ebp),%edx
    ca83:	01 ca                	add    %ecx,%edx
    ca85:	89 10                	mov    %edx,(%eax)
    ca87:	8b 45 f4             	mov    -0xc(%ebp),%eax
    ca8a:	8b 00                	mov    (%eax),%eax
    ca8c:	83 ec 0c             	sub    $0xc,%esp
    ca8f:	50                   	push   %eax
    ca90:	e8 1d fa ff ff       	call   c4b2 <strlen>
    ca95:	83 c4 10             	add    $0x10,%esp
    ca98:	89 c2                	mov    %eax,%edx
    ca9a:	8b 45 f0             	mov    -0x10(%ebp),%eax
    ca9d:	01 d0                	add    %edx,%eax
    ca9f:	3d fe 03 00 00       	cmp    $0x3fe,%eax
    caa4:	7e 19                	jle    cabf <execv+0xd2>
    caa6:	6a 52                	push   $0x52
    caa8:	68 04 f1 00 00       	push   $0xf104
    caad:	68 04 f1 00 00       	push   $0xf104
    cab2:	68 5c f1 00 00       	push   $0xf15c
    cab7:	e8 21 fc ff ff       	call   c6dd <assertion_failure>
    cabc:	83 c4 10             	add    $0x10,%esp
    cabf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    cac2:	8b 00                	mov    (%eax),%eax
    cac4:	8d 8d ec fb ff ff    	lea    -0x414(%ebp),%ecx
    caca:	8b 55 f0             	mov    -0x10(%ebp),%edx
    cacd:	01 ca                	add    %ecx,%edx
    cacf:	83 ec 08             	sub    $0x8,%esp
    cad2:	50                   	push   %eax
    cad3:	52                   	push   %edx
    cad4:	e8 c1 f9 ff ff       	call   c49a <strcpy>
    cad9:	83 c4 10             	add    $0x10,%esp
    cadc:	8b 45 f4             	mov    -0xc(%ebp),%eax
    cadf:	8b 00                	mov    (%eax),%eax
    cae1:	83 ec 0c             	sub    $0xc,%esp
    cae4:	50                   	push   %eax
    cae5:	e8 c8 f9 ff ff       	call   c4b2 <strlen>
    caea:	83 c4 10             	add    $0x10,%esp
    caed:	01 45 f0             	add    %eax,-0x10(%ebp)
    caf0:	8d 95 ec fb ff ff    	lea    -0x414(%ebp),%edx
    caf6:	8b 45 f0             	mov    -0x10(%ebp),%eax
    caf9:	01 d0                	add    %edx,%eax
    cafb:	c6 00 00             	movb   $0x0,(%eax)
    cafe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    cb02:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
    cb06:	8b 45 f4             	mov    -0xc(%ebp),%eax
    cb09:	8b 00                	mov    (%eax),%eax
    cb0b:	85 c0                	test   %eax,%eax
    cb0d:	0f 85 5e ff ff ff    	jne    ca71 <execv+0x84>
    cb13:	c7 85 c0 fb ff ff 0e 	movl   $0xe,-0x440(%ebp)
    cb1a:	00 00 00 
    cb1d:	8b 45 08             	mov    0x8(%ebp),%eax
    cb20:	89 85 e4 fb ff ff    	mov    %eax,-0x41c(%ebp)
    cb26:	83 ec 0c             	sub    $0xc,%esp
    cb29:	ff 75 08             	pushl  0x8(%ebp)
    cb2c:	e8 81 f9 ff ff       	call   c4b2 <strlen>
    cb31:	83 c4 10             	add    $0x10,%esp
    cb34:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%ebp)
    cb3a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
    cb40:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
    cb46:	8b 45 f0             	mov    -0x10(%ebp),%eax
    cb49:	89 85 cc fb ff ff    	mov    %eax,-0x434(%ebp)
    cb4f:	83 ec 04             	sub    $0x4,%esp
    cb52:	8d 85 bc fb ff ff    	lea    -0x444(%ebp),%eax
    cb58:	50                   	push   %eax
    cb59:	6a 04                	push   $0x4
    cb5b:	6a 03                	push   $0x3
    cb5d:	e8 66 f9 ff ff       	call   c4c8 <send_recv>
    cb62:	83 c4 10             	add    $0x10,%esp
    cb65:	8b 85 c0 fb ff ff    	mov    -0x440(%ebp),%eax
    cb6b:	83 f8 12             	cmp    $0x12,%eax
    cb6e:	74 19                	je     cb89 <execv+0x19c>
    cb70:	6a 61                	push   $0x61
    cb72:	68 04 f1 00 00       	push   $0xf104
    cb77:	68 04 f1 00 00       	push   $0xf104
    cb7c:	68 0f f1 00 00       	push   $0xf10f
    cb81:	e8 57 fb ff ff       	call   c6dd <assertion_failure>
    cb86:	83 c4 10             	add    $0x10,%esp
    cb89:	8b 85 c4 fb ff ff    	mov    -0x43c(%ebp),%eax
    cb8f:	c9                   	leave  
    cb90:	c3                   	ret    
    cb91:	66 90                	xchg   %ax,%ax
    cb93:	66 90                	xchg   %ax,%ax
    cb95:	66 90                	xchg   %ax,%ax
    cb97:	66 90                	xchg   %ax,%ax
    cb99:	66 90                	xchg   %ax,%ax
    cb9b:	66 90                	xchg   %ax,%ax
    cb9d:	66 90                	xchg   %ax,%ax
    cb9f:	90                   	nop

0000cba0 <sendrec>:
    cba0:	53                   	push   %ebx
    cba1:	51                   	push   %ecx
    cba2:	52                   	push   %edx
    cba3:	b8 01 00 00 00       	mov    $0x1,%eax
    cba8:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    cbac:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    cbb0:	8b 54 24 18          	mov    0x18(%esp),%edx
    cbb4:	cd 90                	int    $0x90
    cbb6:	5a                   	pop    %edx
    cbb7:	59                   	pop    %ecx
    cbb8:	5b                   	pop    %ebx
    cbb9:	c3                   	ret    

0000cbba <printx>:
    cbba:	52                   	push   %edx
    cbbb:	b8 00 00 00 00       	mov    $0x0,%eax
    cbc0:	8b 54 24 08          	mov    0x8(%esp),%edx
    cbc4:	cd 90                	int    $0x90
    cbc6:	5a                   	pop    %edx
    cbc7:	c3                   	ret    
