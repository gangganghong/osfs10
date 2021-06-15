
ptr2ptr:     file format elf32-i386


Disassembly of section .init:

08048358 <_init>:
 8048358:	f3 0f 1e fb          	endbr32 
 804835c:	53                   	push   %ebx
 804835d:	83 ec 08             	sub    $0x8,%esp
 8048360:	e8 bb 00 00 00       	call   8048420 <__x86.get_pc_thunk.bx>
 8048365:	81 c3 9b 1c 00 00    	add    $0x1c9b,%ebx
 804836b:	8b 83 f8 ff ff ff    	mov    -0x8(%ebx),%eax
 8048371:	85 c0                	test   %eax,%eax
 8048373:	74 02                	je     8048377 <_init+0x1f>
 8048375:	ff d0                	call   *%eax
 8048377:	83 c4 08             	add    $0x8,%esp
 804837a:	5b                   	pop    %ebx
 804837b:	c3                   	ret    

Disassembly of section .plt:

08048380 <.plt>:
 8048380:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048386:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804838c:	00 00                	add    %al,(%eax)
	...

08048390 <printf@plt>:
 8048390:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048396:	68 00 00 00 00       	push   $0x0
 804839b:	e9 e0 ff ff ff       	jmp    8048380 <.plt>

080483a0 <__libc_start_main@plt>:
 80483a0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483a6:	68 08 00 00 00       	push   $0x8
 80483ab:	e9 d0 ff ff ff       	jmp    8048380 <.plt>

080483b0 <memset@plt>:
 80483b0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80483b6:	68 10 00 00 00       	push   $0x10
 80483bb:	e9 c0 ff ff ff       	jmp    8048380 <.plt>

080483c0 <putchar@plt>:
 80483c0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483c6:	68 18 00 00 00       	push   $0x18
 80483cb:	e9 b0 ff ff ff       	jmp    8048380 <.plt>

Disassembly of section .text:

080483d0 <_start>:
 80483d0:	f3 0f 1e fb          	endbr32 
 80483d4:	31 ed                	xor    %ebp,%ebp
 80483d6:	5e                   	pop    %esi
 80483d7:	89 e1                	mov    %esp,%ecx
 80483d9:	83 e4 f0             	and    $0xfffffff0,%esp
 80483dc:	50                   	push   %eax
 80483dd:	54                   	push   %esp
 80483de:	52                   	push   %edx
 80483df:	e8 23 00 00 00       	call   8048407 <_start+0x37>
 80483e4:	81 c3 1c 1c 00 00    	add    $0x1c1c,%ebx
 80483ea:	8d 83 e0 e5 ff ff    	lea    -0x1a20(%ebx),%eax
 80483f0:	50                   	push   %eax
 80483f1:	8d 83 80 e5 ff ff    	lea    -0x1a80(%ebx),%eax
 80483f7:	50                   	push   %eax
 80483f8:	51                   	push   %ecx
 80483f9:	56                   	push   %esi
 80483fa:	c7 c0 0d 85 04 08    	mov    $0x804850d,%eax
 8048400:	50                   	push   %eax
 8048401:	e8 9a ff ff ff       	call   80483a0 <__libc_start_main@plt>
 8048406:	f4                   	hlt    
 8048407:	8b 1c 24             	mov    (%esp),%ebx
 804840a:	c3                   	ret    

0804840b <.annobin_init.c>:
 804840b:	66 90                	xchg   %ax,%ax
 804840d:	66 90                	xchg   %ax,%ax
 804840f:	90                   	nop

08048410 <_dl_relocate_static_pie>:
 8048410:	f3 0f 1e fb          	endbr32 
 8048414:	c3                   	ret    

08048415 <.annobin__dl_relocate_static_pie.end>:
 8048415:	66 90                	xchg   %ax,%ax
 8048417:	66 90                	xchg   %ax,%ax
 8048419:	66 90                	xchg   %ax,%ax
 804841b:	66 90                	xchg   %ax,%ax
 804841d:	66 90                	xchg   %ax,%ax
 804841f:	90                   	nop

08048420 <__x86.get_pc_thunk.bx>:
 8048420:	8b 1c 24             	mov    (%esp),%ebx
 8048423:	c3                   	ret    
 8048424:	66 90                	xchg   %ax,%ax
 8048426:	66 90                	xchg   %ax,%ax
 8048428:	66 90                	xchg   %ax,%ax
 804842a:	66 90                	xchg   %ax,%ax
 804842c:	66 90                	xchg   %ax,%ax
 804842e:	66 90                	xchg   %ax,%ax

08048430 <deregister_tm_clones>:
 8048430:	e8 d4 00 00 00       	call   8048509 <__x86.get_pc_thunk.dx>
 8048435:	81 c2 cb 1b 00 00    	add    $0x1bcb,%edx
 804843b:	8d 8a 20 00 00 00    	lea    0x20(%edx),%ecx
 8048441:	8d 82 20 00 00 00    	lea    0x20(%edx),%eax
 8048447:	39 c8                	cmp    %ecx,%eax
 8048449:	74 1d                	je     8048468 <deregister_tm_clones+0x38>
 804844b:	8b 82 f4 ff ff ff    	mov    -0xc(%edx),%eax
 8048451:	85 c0                	test   %eax,%eax
 8048453:	74 13                	je     8048468 <deregister_tm_clones+0x38>
 8048455:	55                   	push   %ebp
 8048456:	89 e5                	mov    %esp,%ebp
 8048458:	83 ec 14             	sub    $0x14,%esp
 804845b:	51                   	push   %ecx
 804845c:	ff d0                	call   *%eax
 804845e:	83 c4 10             	add    $0x10,%esp
 8048461:	c9                   	leave  
 8048462:	c3                   	ret    
 8048463:	90                   	nop
 8048464:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048468:	c3                   	ret    
 8048469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048470 <register_tm_clones>:
 8048470:	e8 94 00 00 00       	call   8048509 <__x86.get_pc_thunk.dx>
 8048475:	81 c2 8b 1b 00 00    	add    $0x1b8b,%edx
 804847b:	55                   	push   %ebp
 804847c:	89 e5                	mov    %esp,%ebp
 804847e:	53                   	push   %ebx
 804847f:	8d 8a 20 00 00 00    	lea    0x20(%edx),%ecx
 8048485:	8d 82 20 00 00 00    	lea    0x20(%edx),%eax
 804848b:	83 ec 04             	sub    $0x4,%esp
 804848e:	29 c8                	sub    %ecx,%eax
 8048490:	c1 f8 02             	sar    $0x2,%eax
 8048493:	89 c3                	mov    %eax,%ebx
 8048495:	c1 eb 1f             	shr    $0x1f,%ebx
 8048498:	01 d8                	add    %ebx,%eax
 804849a:	d1 f8                	sar    %eax
 804849c:	74 14                	je     80484b2 <register_tm_clones+0x42>
 804849e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
 80484a4:	85 d2                	test   %edx,%edx
 80484a6:	74 0a                	je     80484b2 <register_tm_clones+0x42>
 80484a8:	83 ec 08             	sub    $0x8,%esp
 80484ab:	50                   	push   %eax
 80484ac:	51                   	push   %ecx
 80484ad:	ff d2                	call   *%edx
 80484af:	83 c4 10             	add    $0x10,%esp
 80484b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80484b5:	c9                   	leave  
 80484b6:	c3                   	ret    
 80484b7:	89 f6                	mov    %esi,%esi
 80484b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080484c0 <__do_global_dtors_aux>:
 80484c0:	f3 0f 1e fb          	endbr32 
 80484c4:	55                   	push   %ebp
 80484c5:	89 e5                	mov    %esp,%ebp
 80484c7:	53                   	push   %ebx
 80484c8:	e8 53 ff ff ff       	call   8048420 <__x86.get_pc_thunk.bx>
 80484cd:	81 c3 33 1b 00 00    	add    $0x1b33,%ebx
 80484d3:	83 ec 04             	sub    $0x4,%esp
 80484d6:	80 bb 20 00 00 00 00 	cmpb   $0x0,0x20(%ebx)
 80484dd:	75 0c                	jne    80484eb <__do_global_dtors_aux+0x2b>
 80484df:	e8 4c ff ff ff       	call   8048430 <deregister_tm_clones>
 80484e4:	c6 83 20 00 00 00 01 	movb   $0x1,0x20(%ebx)
 80484eb:	83 c4 04             	add    $0x4,%esp
 80484ee:	5b                   	pop    %ebx
 80484ef:	5d                   	pop    %ebp
 80484f0:	c3                   	ret    
 80484f1:	eb 0d                	jmp    8048500 <frame_dummy>
 80484f3:	90                   	nop
 80484f4:	90                   	nop
 80484f5:	90                   	nop
 80484f6:	90                   	nop
 80484f7:	90                   	nop
 80484f8:	90                   	nop
 80484f9:	90                   	nop
 80484fa:	90                   	nop
 80484fb:	90                   	nop
 80484fc:	90                   	nop
 80484fd:	90                   	nop
 80484fe:	90                   	nop
 80484ff:	90                   	nop

08048500 <frame_dummy>:
 8048500:	f3 0f 1e fb          	endbr32 
 8048504:	e9 67 ff ff ff       	jmp    8048470 <register_tm_clones>

08048509 <__x86.get_pc_thunk.dx>:
 8048509:	8b 14 24             	mov    (%esp),%edx
 804850c:	c3                   	ret    

0804850d <main>:
 804850d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048511:	83 e4 f0             	and    $0xfffffff0,%esp
 8048514:	ff 71 fc             	pushl  -0x4(%ecx)
 8048517:	55                   	push   %ebp
 8048518:	89 e5                	mov    %esp,%ebp
 804851a:	51                   	push   %ecx
 804851b:	83 ec 14             	sub    $0x14,%esp
 804851e:	83 ec 04             	sub    $0x4,%esp
 8048521:	6a 0a                	push   $0xa
 8048523:	6a 00                	push   $0x0
 8048525:	8d 45 ea             	lea    -0x16(%ebp),%eax
 8048528:	50                   	push   %eax
 8048529:	e8 82 fe ff ff       	call   80483b0 <memset@plt>
 804852e:	83 c4 10             	add    $0x10,%esp
 8048531:	8d 45 ea             	lea    -0x16(%ebp),%eax
 8048534:	c7 00 48 65 6c 6c    	movl   $0x6c6c6548,(%eax)
 804853a:	66 c7 40 04 6f 00    	movw   $0x6f,0x4(%eax)
 8048540:	83 ec 0c             	sub    $0xc,%esp
 8048543:	6a 0a                	push   $0xa
 8048545:	e8 76 fe ff ff       	call   80483c0 <putchar@plt>
 804854a:	83 c4 10             	add    $0x10,%esp
 804854d:	8d 45 ea             	lea    -0x16(%ebp),%eax
 8048550:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048553:	83 ec 08             	sub    $0x8,%esp
 8048556:	8d 45 ea             	lea    -0x16(%ebp),%eax
 8048559:	50                   	push   %eax
 804855a:	68 0c 86 04 08       	push   $0x804860c
 804855f:	e8 2c fe ff ff       	call   8048390 <printf@plt>
 8048564:	83 c4 10             	add    $0x10,%esp
 8048567:	b8 00 00 00 00       	mov    $0x0,%eax
 804856c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 804856f:	c9                   	leave  
 8048570:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048573:	c3                   	ret    
 8048574:	66 90                	xchg   %ax,%ax
 8048576:	66 90                	xchg   %ax,%ax
 8048578:	66 90                	xchg   %ax,%ax
 804857a:	66 90                	xchg   %ax,%ax
 804857c:	66 90                	xchg   %ax,%ax
 804857e:	66 90                	xchg   %ax,%ax

08048580 <__libc_csu_init>:
 8048580:	f3 0f 1e fb          	endbr32 
 8048584:	55                   	push   %ebp
 8048585:	57                   	push   %edi
 8048586:	56                   	push   %esi
 8048587:	53                   	push   %ebx
 8048588:	e8 93 fe ff ff       	call   8048420 <__x86.get_pc_thunk.bx>
 804858d:	81 c3 73 1a 00 00    	add    $0x1a73,%ebx
 8048593:	83 ec 0c             	sub    $0xc,%esp
 8048596:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804859a:	e8 b9 fd ff ff       	call   8048358 <_init>
 804859f:	8d b3 08 ff ff ff    	lea    -0xf8(%ebx),%esi
 80485a5:	8d 83 04 ff ff ff    	lea    -0xfc(%ebx),%eax
 80485ab:	29 c6                	sub    %eax,%esi
 80485ad:	c1 fe 02             	sar    $0x2,%esi
 80485b0:	74 23                	je     80485d5 <__libc_csu_init+0x55>
 80485b2:	31 ff                	xor    %edi,%edi
 80485b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485b8:	83 ec 04             	sub    $0x4,%esp
 80485bb:	55                   	push   %ebp
 80485bc:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485c0:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485c4:	ff 94 bb 04 ff ff ff 	call   *-0xfc(%ebx,%edi,4)
 80485cb:	83 c7 01             	add    $0x1,%edi
 80485ce:	83 c4 10             	add    $0x10,%esp
 80485d1:	39 fe                	cmp    %edi,%esi
 80485d3:	75 e3                	jne    80485b8 <__libc_csu_init+0x38>
 80485d5:	83 c4 0c             	add    $0xc,%esp
 80485d8:	5b                   	pop    %ebx
 80485d9:	5e                   	pop    %esi
 80485da:	5f                   	pop    %edi
 80485db:	5d                   	pop    %ebp
 80485dc:	c3                   	ret    

080485dd <.annobin___libc_csu_fini.start>:
 80485dd:	8d 76 00             	lea    0x0(%esi),%esi

080485e0 <__libc_csu_fini>:
 80485e0:	f3 0f 1e fb          	endbr32 
 80485e4:	c3                   	ret    

Disassembly of section .fini:

080485e8 <_fini>:
 80485e8:	f3 0f 1e fb          	endbr32 
 80485ec:	53                   	push   %ebx
 80485ed:	83 ec 08             	sub    $0x8,%esp
 80485f0:	e8 2b fe ff ff       	call   8048420 <__x86.get_pc_thunk.bx>
 80485f5:	81 c3 0b 1a 00 00    	add    $0x1a0b,%ebx
 80485fb:	83 c4 08             	add    $0x8,%esp
 80485fe:	5b                   	pop    %ebx
 80485ff:	c3                   	ret    
