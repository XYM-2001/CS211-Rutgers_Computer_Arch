
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001700 <_init>:
    1700:	48 83 ec 08          	sub    $0x8,%rsp
    1704:	48 8b 05 dd 38 20 00 	mov    0x2038dd(%rip),%rax        # 204fe8 <__gmon_start__>
    170b:	48 85 c0             	test   %rax,%rax
    170e:	74 02                	je     1712 <_init+0x12>
    1710:	ff d0                	callq  *%rax
    1712:	48 83 c4 08          	add    $0x8,%rsp
    1716:	c3                   	retq   

Disassembly of section .plt:

0000000000001720 <.plt>:
    1720:	ff 35 ca 37 20 00    	pushq  0x2037ca(%rip)        # 204ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1726:	ff 25 cc 37 20 00    	jmpq   *0x2037cc(%rip)        # 204ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    172c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001730 <getenv@plt>:
    1730:	ff 25 ca 37 20 00    	jmpq   *0x2037ca(%rip)        # 204f00 <getenv@GLIBC_2.2.5>
    1736:	68 00 00 00 00       	pushq  $0x0
    173b:	e9 e0 ff ff ff       	jmpq   1720 <.plt>

0000000000001740 <strcasecmp@plt>:
    1740:	ff 25 c2 37 20 00    	jmpq   *0x2037c2(%rip)        # 204f08 <strcasecmp@GLIBC_2.2.5>
    1746:	68 01 00 00 00       	pushq  $0x1
    174b:	e9 d0 ff ff ff       	jmpq   1720 <.plt>

0000000000001750 <__errno_location@plt>:
    1750:	ff 25 ba 37 20 00    	jmpq   *0x2037ba(%rip)        # 204f10 <__errno_location@GLIBC_2.2.5>
    1756:	68 02 00 00 00       	pushq  $0x2
    175b:	e9 c0 ff ff ff       	jmpq   1720 <.plt>

0000000000001760 <strcpy@plt>:
    1760:	ff 25 b2 37 20 00    	jmpq   *0x2037b2(%rip)        # 204f18 <strcpy@GLIBC_2.2.5>
    1766:	68 03 00 00 00       	pushq  $0x3
    176b:	e9 b0 ff ff ff       	jmpq   1720 <.plt>

0000000000001770 <puts@plt>:
    1770:	ff 25 aa 37 20 00    	jmpq   *0x2037aa(%rip)        # 204f20 <puts@GLIBC_2.2.5>
    1776:	68 04 00 00 00       	pushq  $0x4
    177b:	e9 a0 ff ff ff       	jmpq   1720 <.plt>

0000000000001780 <write@plt>:
    1780:	ff 25 a2 37 20 00    	jmpq   *0x2037a2(%rip)        # 204f28 <write@GLIBC_2.2.5>
    1786:	68 05 00 00 00       	pushq  $0x5
    178b:	e9 90 ff ff ff       	jmpq   1720 <.plt>

0000000000001790 <__stack_chk_fail@plt>:
    1790:	ff 25 9a 37 20 00    	jmpq   *0x20379a(%rip)        # 204f30 <__stack_chk_fail@GLIBC_2.4>
    1796:	68 06 00 00 00       	pushq  $0x6
    179b:	e9 80 ff ff ff       	jmpq   1720 <.plt>

00000000000017a0 <alarm@plt>:
    17a0:	ff 25 92 37 20 00    	jmpq   *0x203792(%rip)        # 204f38 <alarm@GLIBC_2.2.5>
    17a6:	68 07 00 00 00       	pushq  $0x7
    17ab:	e9 70 ff ff ff       	jmpq   1720 <.plt>

00000000000017b0 <close@plt>:
    17b0:	ff 25 8a 37 20 00    	jmpq   *0x20378a(%rip)        # 204f40 <close@GLIBC_2.2.5>
    17b6:	68 08 00 00 00       	pushq  $0x8
    17bb:	e9 60 ff ff ff       	jmpq   1720 <.plt>

00000000000017c0 <read@plt>:
    17c0:	ff 25 82 37 20 00    	jmpq   *0x203782(%rip)        # 204f48 <read@GLIBC_2.2.5>
    17c6:	68 09 00 00 00       	pushq  $0x9
    17cb:	e9 50 ff ff ff       	jmpq   1720 <.plt>

00000000000017d0 <fgets@plt>:
    17d0:	ff 25 7a 37 20 00    	jmpq   *0x20377a(%rip)        # 204f50 <fgets@GLIBC_2.2.5>
    17d6:	68 0a 00 00 00       	pushq  $0xa
    17db:	e9 40 ff ff ff       	jmpq   1720 <.plt>

00000000000017e0 <signal@plt>:
    17e0:	ff 25 72 37 20 00    	jmpq   *0x203772(%rip)        # 204f58 <signal@GLIBC_2.2.5>
    17e6:	68 0b 00 00 00       	pushq  $0xb
    17eb:	e9 30 ff ff ff       	jmpq   1720 <.plt>

00000000000017f0 <gethostbyname@plt>:
    17f0:	ff 25 6a 37 20 00    	jmpq   *0x20376a(%rip)        # 204f60 <gethostbyname@GLIBC_2.2.5>
    17f6:	68 0c 00 00 00       	pushq  $0xc
    17fb:	e9 20 ff ff ff       	jmpq   1720 <.plt>

0000000000001800 <__memmove_chk@plt>:
    1800:	ff 25 62 37 20 00    	jmpq   *0x203762(%rip)        # 204f68 <__memmove_chk@GLIBC_2.3.4>
    1806:	68 0d 00 00 00       	pushq  $0xd
    180b:	e9 10 ff ff ff       	jmpq   1720 <.plt>

0000000000001810 <strtol@plt>:
    1810:	ff 25 5a 37 20 00    	jmpq   *0x20375a(%rip)        # 204f70 <strtol@GLIBC_2.2.5>
    1816:	68 0e 00 00 00       	pushq  $0xe
    181b:	e9 00 ff ff ff       	jmpq   1720 <.plt>

0000000000001820 <fflush@plt>:
    1820:	ff 25 52 37 20 00    	jmpq   *0x203752(%rip)        # 204f78 <fflush@GLIBC_2.2.5>
    1826:	68 0f 00 00 00       	pushq  $0xf
    182b:	e9 f0 fe ff ff       	jmpq   1720 <.plt>

0000000000001830 <__isoc99_sscanf@plt>:
    1830:	ff 25 4a 37 20 00    	jmpq   *0x20374a(%rip)        # 204f80 <__isoc99_sscanf@GLIBC_2.7>
    1836:	68 10 00 00 00       	pushq  $0x10
    183b:	e9 e0 fe ff ff       	jmpq   1720 <.plt>

0000000000001840 <__printf_chk@plt>:
    1840:	ff 25 42 37 20 00    	jmpq   *0x203742(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
    1846:	68 11 00 00 00       	pushq  $0x11
    184b:	e9 d0 fe ff ff       	jmpq   1720 <.plt>

0000000000001850 <fopen@plt>:
    1850:	ff 25 3a 37 20 00    	jmpq   *0x20373a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
    1856:	68 12 00 00 00       	pushq  $0x12
    185b:	e9 c0 fe ff ff       	jmpq   1720 <.plt>

0000000000001860 <gethostname@plt>:
    1860:	ff 25 32 37 20 00    	jmpq   *0x203732(%rip)        # 204f98 <gethostname@GLIBC_2.2.5>
    1866:	68 13 00 00 00       	pushq  $0x13
    186b:	e9 b0 fe ff ff       	jmpq   1720 <.plt>

0000000000001870 <exit@plt>:
    1870:	ff 25 2a 37 20 00    	jmpq   *0x20372a(%rip)        # 204fa0 <exit@GLIBC_2.2.5>
    1876:	68 14 00 00 00       	pushq  $0x14
    187b:	e9 a0 fe ff ff       	jmpq   1720 <.plt>

0000000000001880 <connect@plt>:
    1880:	ff 25 22 37 20 00    	jmpq   *0x203722(%rip)        # 204fa8 <connect@GLIBC_2.2.5>
    1886:	68 15 00 00 00       	pushq  $0x15
    188b:	e9 90 fe ff ff       	jmpq   1720 <.plt>

0000000000001890 <__fprintf_chk@plt>:
    1890:	ff 25 1a 37 20 00    	jmpq   *0x20371a(%rip)        # 204fb0 <__fprintf_chk@GLIBC_2.3.4>
    1896:	68 16 00 00 00       	pushq  $0x16
    189b:	e9 80 fe ff ff       	jmpq   1720 <.plt>

00000000000018a0 <sleep@plt>:
    18a0:	ff 25 12 37 20 00    	jmpq   *0x203712(%rip)        # 204fb8 <sleep@GLIBC_2.2.5>
    18a6:	68 17 00 00 00       	pushq  $0x17
    18ab:	e9 70 fe ff ff       	jmpq   1720 <.plt>

00000000000018b0 <__ctype_b_loc@plt>:
    18b0:	ff 25 0a 37 20 00    	jmpq   *0x20370a(%rip)        # 204fc0 <__ctype_b_loc@GLIBC_2.3>
    18b6:	68 18 00 00 00       	pushq  $0x18
    18bb:	e9 60 fe ff ff       	jmpq   1720 <.plt>

00000000000018c0 <__sprintf_chk@plt>:
    18c0:	ff 25 02 37 20 00    	jmpq   *0x203702(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
    18c6:	68 19 00 00 00       	pushq  $0x19
    18cb:	e9 50 fe ff ff       	jmpq   1720 <.plt>

00000000000018d0 <socket@plt>:
    18d0:	ff 25 fa 36 20 00    	jmpq   *0x2036fa(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
    18d6:	68 1a 00 00 00       	pushq  $0x1a
    18db:	e9 40 fe ff ff       	jmpq   1720 <.plt>

Disassembly of section .plt.got:

00000000000018e0 <__cxa_finalize@plt>:
    18e0:	ff 25 12 37 20 00    	jmpq   *0x203712(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    18e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000018f0 <_start>:
    18f0:	31 ed                	xor    %ebp,%ebp
    18f2:	49 89 d1             	mov    %rdx,%r9
    18f5:	5e                   	pop    %rsi
    18f6:	48 89 e2             	mov    %rsp,%rdx
    18f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    18fd:	50                   	push   %rax
    18fe:	54                   	push   %rsp
    18ff:	4c 8d 05 fa 18 00 00 	lea    0x18fa(%rip),%r8        # 3200 <__libc_csu_fini>
    1906:	48 8d 0d 83 18 00 00 	lea    0x1883(%rip),%rcx        # 3190 <__libc_csu_init>
    190d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 19fa <main>
    1914:	ff 15 c6 36 20 00    	callq  *0x2036c6(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    191a:	f4                   	hlt    
    191b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001920 <deregister_tm_clones>:
    1920:	48 8d 3d 59 3d 20 00 	lea    0x203d59(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    1927:	55                   	push   %rbp
    1928:	48 8d 05 51 3d 20 00 	lea    0x203d51(%rip),%rax        # 205680 <stdout@@GLIBC_2.2.5>
    192f:	48 39 f8             	cmp    %rdi,%rax
    1932:	48 89 e5             	mov    %rsp,%rbp
    1935:	74 19                	je     1950 <deregister_tm_clones+0x30>
    1937:	48 8b 05 9a 36 20 00 	mov    0x20369a(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    193e:	48 85 c0             	test   %rax,%rax
    1941:	74 0d                	je     1950 <deregister_tm_clones+0x30>
    1943:	5d                   	pop    %rbp
    1944:	ff e0                	jmpq   *%rax
    1946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    194d:	00 00 00 
    1950:	5d                   	pop    %rbp
    1951:	c3                   	retq   
    1952:	0f 1f 40 00          	nopl   0x0(%rax)
    1956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    195d:	00 00 00 

0000000000001960 <register_tm_clones>:
    1960:	48 8d 3d 19 3d 20 00 	lea    0x203d19(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    1967:	48 8d 35 12 3d 20 00 	lea    0x203d12(%rip),%rsi        # 205680 <stdout@@GLIBC_2.2.5>
    196e:	55                   	push   %rbp
    196f:	48 29 fe             	sub    %rdi,%rsi
    1972:	48 89 e5             	mov    %rsp,%rbp
    1975:	48 c1 fe 03          	sar    $0x3,%rsi
    1979:	48 89 f0             	mov    %rsi,%rax
    197c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1980:	48 01 c6             	add    %rax,%rsi
    1983:	48 d1 fe             	sar    %rsi
    1986:	74 18                	je     19a0 <register_tm_clones+0x40>
    1988:	48 8b 05 61 36 20 00 	mov    0x203661(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    198f:	48 85 c0             	test   %rax,%rax
    1992:	74 0c                	je     19a0 <register_tm_clones+0x40>
    1994:	5d                   	pop    %rbp
    1995:	ff e0                	jmpq   *%rax
    1997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    199e:	00 00 
    19a0:	5d                   	pop    %rbp
    19a1:	c3                   	retq   
    19a2:	0f 1f 40 00          	nopl   0x0(%rax)
    19a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19ad:	00 00 00 

00000000000019b0 <__do_global_dtors_aux>:
    19b0:	80 3d f1 3c 20 00 00 	cmpb   $0x0,0x203cf1(%rip)        # 2056a8 <completed.7698>
    19b7:	75 2f                	jne    19e8 <__do_global_dtors_aux+0x38>
    19b9:	48 83 3d 37 36 20 00 	cmpq   $0x0,0x203637(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    19c0:	00 
    19c1:	55                   	push   %rbp
    19c2:	48 89 e5             	mov    %rsp,%rbp
    19c5:	74 0c                	je     19d3 <__do_global_dtors_aux+0x23>
    19c7:	48 8b 3d 3a 36 20 00 	mov    0x20363a(%rip),%rdi        # 205008 <__dso_handle>
    19ce:	e8 0d ff ff ff       	callq  18e0 <__cxa_finalize@plt>
    19d3:	e8 48 ff ff ff       	callq  1920 <deregister_tm_clones>
    19d8:	c6 05 c9 3c 20 00 01 	movb   $0x1,0x203cc9(%rip)        # 2056a8 <completed.7698>
    19df:	5d                   	pop    %rbp
    19e0:	c3                   	retq   
    19e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    19e8:	f3 c3                	repz retq 
    19ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000019f0 <frame_dummy>:
    19f0:	55                   	push   %rbp
    19f1:	48 89 e5             	mov    %rsp,%rbp
    19f4:	5d                   	pop    %rbp
    19f5:	e9 66 ff ff ff       	jmpq   1960 <register_tm_clones>

00000000000019fa <main>:
    19fa:	53                   	push   %rbx
    19fb:	83 ff 01             	cmp    $0x1,%edi
    19fe:	0f 84 f8 00 00 00    	je     1afc <main+0x102>
    1a04:	48 89 f3             	mov    %rsi,%rbx
    1a07:	83 ff 02             	cmp    $0x2,%edi
    1a0a:	0f 85 21 01 00 00    	jne    1b31 <main+0x137>
    1a10:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1a14:	48 8d 35 09 18 00 00 	lea    0x1809(%rip),%rsi        # 3224 <_IO_stdin_used+0x4>
    1a1b:	e8 30 fe ff ff       	callq  1850 <fopen@plt>
    1a20:	48 89 05 89 3c 20 00 	mov    %rax,0x203c89(%rip)        # 2056b0 <infile>
    1a27:	48 85 c0             	test   %rax,%rax
    1a2a:	0f 84 df 00 00 00    	je     1b0f <main+0x115>
    1a30:	e8 5d 06 00 00       	callq  2092 <initialize_bomb>
    1a35:	48 8d 3d 6c 18 00 00 	lea    0x186c(%rip),%rdi        # 32a8 <_IO_stdin_used+0x88>
    1a3c:	e8 2f fd ff ff       	callq  1770 <puts@plt>
    1a41:	48 8d 3d a0 18 00 00 	lea    0x18a0(%rip),%rdi        # 32e8 <_IO_stdin_used+0xc8>
    1a48:	e8 23 fd ff ff       	callq  1770 <puts@plt>
    1a4d:	e8 5a 09 00 00       	callq  23ac <read_line>
    1a52:	48 89 c7             	mov    %rax,%rdi
    1a55:	e8 fa 00 00 00       	callq  1b54 <phase_1>
    1a5a:	e8 91 0a 00 00       	callq  24f0 <phase_defused>
    1a5f:	48 8d 3d b2 18 00 00 	lea    0x18b2(%rip),%rdi        # 3318 <_IO_stdin_used+0xf8>
    1a66:	e8 05 fd ff ff       	callq  1770 <puts@plt>
    1a6b:	e8 3c 09 00 00       	callq  23ac <read_line>
    1a70:	48 89 c7             	mov    %rax,%rdi
    1a73:	e8 fc 00 00 00       	callq  1b74 <phase_2>
    1a78:	e8 73 0a 00 00       	callq  24f0 <phase_defused>
    1a7d:	48 8d 3d d9 17 00 00 	lea    0x17d9(%rip),%rdi        # 325d <_IO_stdin_used+0x3d>
    1a84:	e8 e7 fc ff ff       	callq  1770 <puts@plt>
    1a89:	e8 1e 09 00 00       	callq  23ac <read_line>
    1a8e:	48 89 c7             	mov    %rax,%rdi
    1a91:	e8 4d 01 00 00       	callq  1be3 <phase_3>
    1a96:	e8 55 0a 00 00       	callq  24f0 <phase_defused>
    1a9b:	48 8d 3d d9 17 00 00 	lea    0x17d9(%rip),%rdi        # 327b <_IO_stdin_used+0x5b>
    1aa2:	e8 c9 fc ff ff       	callq  1770 <puts@plt>
    1aa7:	e8 00 09 00 00       	callq  23ac <read_line>
    1aac:	48 89 c7             	mov    %rax,%rdi
    1aaf:	e8 17 02 00 00       	callq  1ccb <phase_4>
    1ab4:	e8 37 0a 00 00       	callq  24f0 <phase_defused>
    1ab9:	48 8d 3d 88 18 00 00 	lea    0x1888(%rip),%rdi        # 3348 <_IO_stdin_used+0x128>
    1ac0:	e8 ab fc ff ff       	callq  1770 <puts@plt>
    1ac5:	e8 e2 08 00 00       	callq  23ac <read_line>
    1aca:	48 89 c7             	mov    %rax,%rdi
    1acd:	e8 6e 02 00 00       	callq  1d40 <phase_5>
    1ad2:	e8 19 0a 00 00       	callq  24f0 <phase_defused>
    1ad7:	48 8d 3d ac 17 00 00 	lea    0x17ac(%rip),%rdi        # 328a <_IO_stdin_used+0x6a>
    1ade:	e8 8d fc ff ff       	callq  1770 <puts@plt>
    1ae3:	e8 c4 08 00 00       	callq  23ac <read_line>
    1ae8:	48 89 c7             	mov    %rax,%rdi
    1aeb:	e8 e3 02 00 00       	callq  1dd3 <phase_6>
    1af0:	e8 fb 09 00 00       	callq  24f0 <phase_defused>
    1af5:	b8 00 00 00 00       	mov    $0x0,%eax
    1afa:	5b                   	pop    %rbx
    1afb:	c3                   	retq   
    1afc:	48 8b 05 8d 3b 20 00 	mov    0x203b8d(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    1b03:	48 89 05 a6 3b 20 00 	mov    %rax,0x203ba6(%rip)        # 2056b0 <infile>
    1b0a:	e9 21 ff ff ff       	jmpq   1a30 <main+0x36>
    1b0f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1b13:	48 8b 13             	mov    (%rbx),%rdx
    1b16:	48 8d 35 09 17 00 00 	lea    0x1709(%rip),%rsi        # 3226 <_IO_stdin_used+0x6>
    1b1d:	bf 01 00 00 00       	mov    $0x1,%edi
    1b22:	e8 19 fd ff ff       	callq  1840 <__printf_chk@plt>
    1b27:	bf 08 00 00 00       	mov    $0x8,%edi
    1b2c:	e8 3f fd ff ff       	callq  1870 <exit@plt>
    1b31:	48 8b 16             	mov    (%rsi),%rdx
    1b34:	48 8d 35 08 17 00 00 	lea    0x1708(%rip),%rsi        # 3243 <_IO_stdin_used+0x23>
    1b3b:	bf 01 00 00 00       	mov    $0x1,%edi
    1b40:	b8 00 00 00 00       	mov    $0x0,%eax
    1b45:	e8 f6 fc ff ff       	callq  1840 <__printf_chk@plt>
    1b4a:	bf 08 00 00 00       	mov    $0x8,%edi
    1b4f:	e8 1c fd ff ff       	callq  1870 <exit@plt>

0000000000001b54 <phase_1>:
    1b54:	48 83 ec 08          	sub    $0x8,%rsp
    1b58:	48 8d 35 11 18 00 00 	lea    0x1811(%rip),%rsi        # 3370 <_IO_stdin_used+0x150>
    1b5f:	e8 c7 04 00 00       	callq  202b <strings_not_equal>
    1b64:	85 c0                	test   %eax,%eax
    1b66:	75 05                	jne    1b6d <phase_1+0x19>
    1b68:	48 83 c4 08          	add    $0x8,%rsp
    1b6c:	c3                   	retq   
    1b6d:	e8 bd 07 00 00       	callq  232f <explode_bomb>
    1b72:	eb f4                	jmp    1b68 <phase_1+0x14>

0000000000001b74 <phase_2>:
    1b74:	55                   	push   %rbp
    1b75:	53                   	push   %rbx
    1b76:	48 83 ec 28          	sub    $0x28,%rsp
    1b7a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b81:	00 00 
    1b83:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1b88:	31 c0                	xor    %eax,%eax
    1b8a:	48 89 e6             	mov    %rsp,%rsi
    1b8d:	e8 d9 07 00 00       	callq  236b <read_six_numbers>
    1b92:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1b96:	75 07                	jne    1b9f <phase_2+0x2b>
    1b98:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1b9d:	74 05                	je     1ba4 <phase_2+0x30>
    1b9f:	e8 8b 07 00 00       	callq  232f <explode_bomb>
    1ba4:	48 89 e3             	mov    %rsp,%rbx
    1ba7:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    1bab:	eb 09                	jmp    1bb6 <phase_2+0x42>
    1bad:	48 83 c3 04          	add    $0x4,%rbx
    1bb1:	48 39 eb             	cmp    %rbp,%rbx
    1bb4:	74 11                	je     1bc7 <phase_2+0x53>
    1bb6:	8b 43 04             	mov    0x4(%rbx),%eax
    1bb9:	03 03                	add    (%rbx),%eax
    1bbb:	39 43 08             	cmp    %eax,0x8(%rbx)
    1bbe:	74 ed                	je     1bad <phase_2+0x39>
    1bc0:	e8 6a 07 00 00       	callq  232f <explode_bomb>
    1bc5:	eb e6                	jmp    1bad <phase_2+0x39>
    1bc7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1bcc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1bd3:	00 00 
    1bd5:	75 07                	jne    1bde <phase_2+0x6a>
    1bd7:	48 83 c4 28          	add    $0x28,%rsp
    1bdb:	5b                   	pop    %rbx
    1bdc:	5d                   	pop    %rbp
    1bdd:	c3                   	retq   
    1bde:	e8 ad fb ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000001be3 <phase_3>:
    1be3:	48 83 ec 18          	sub    $0x18,%rsp
    1be7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bee:	00 00 
    1bf0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1bf5:	31 c0                	xor    %eax,%eax
    1bf7:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1bfc:	48 89 e2             	mov    %rsp,%rdx
    1bff:	48 8d 35 87 1a 00 00 	lea    0x1a87(%rip),%rsi        # 368d <array.3417+0x28d>
    1c06:	e8 25 fc ff ff       	callq  1830 <__isoc99_sscanf@plt>
    1c0b:	83 f8 01             	cmp    $0x1,%eax
    1c0e:	7e 19                	jle    1c29 <phase_3+0x46>
    1c10:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1c14:	77 4b                	ja     1c61 <phase_3+0x7e>
    1c16:	8b 04 24             	mov    (%rsp),%eax
    1c19:	48 8d 15 c0 17 00 00 	lea    0x17c0(%rip),%rdx        # 33e0 <_IO_stdin_used+0x1c0>
    1c20:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1c24:	48 01 d0             	add    %rdx,%rax
    1c27:	ff e0                	jmpq   *%rax
    1c29:	e8 01 07 00 00       	callq  232f <explode_bomb>
    1c2e:	eb e0                	jmp    1c10 <phase_3+0x2d>
    1c30:	b8 2c 01 00 00       	mov    $0x12c,%eax
    1c35:	eb 3b                	jmp    1c72 <phase_3+0x8f>
    1c37:	b8 dc 01 00 00       	mov    $0x1dc,%eax
    1c3c:	eb 34                	jmp    1c72 <phase_3+0x8f>
    1c3e:	b8 3b 00 00 00       	mov    $0x3b,%eax
    1c43:	eb 2d                	jmp    1c72 <phase_3+0x8f>
    1c45:	b8 6e 02 00 00       	mov    $0x26e,%eax
    1c4a:	eb 26                	jmp    1c72 <phase_3+0x8f>
    1c4c:	b8 fa 02 00 00       	mov    $0x2fa,%eax
    1c51:	eb 1f                	jmp    1c72 <phase_3+0x8f>
    1c53:	b8 0d 02 00 00       	mov    $0x20d,%eax
    1c58:	eb 18                	jmp    1c72 <phase_3+0x8f>
    1c5a:	b8 e0 02 00 00       	mov    $0x2e0,%eax
    1c5f:	eb 11                	jmp    1c72 <phase_3+0x8f>
    1c61:	e8 c9 06 00 00       	callq  232f <explode_bomb>
    1c66:	b8 00 00 00 00       	mov    $0x0,%eax
    1c6b:	eb 05                	jmp    1c72 <phase_3+0x8f>
    1c6d:	b8 4a 00 00 00       	mov    $0x4a,%eax
    1c72:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1c76:	74 05                	je     1c7d <phase_3+0x9a>
    1c78:	e8 b2 06 00 00       	callq  232f <explode_bomb>
    1c7d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c82:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c89:	00 00 
    1c8b:	75 05                	jne    1c92 <phase_3+0xaf>
    1c8d:	48 83 c4 18          	add    $0x18,%rsp
    1c91:	c3                   	retq   
    1c92:	e8 f9 fa ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000001c97 <func4>:
    1c97:	53                   	push   %rbx
    1c98:	89 d0                	mov    %edx,%eax
    1c9a:	29 f0                	sub    %esi,%eax
    1c9c:	89 c3                	mov    %eax,%ebx
    1c9e:	c1 eb 1f             	shr    $0x1f,%ebx
    1ca1:	01 c3                	add    %eax,%ebx
    1ca3:	d1 fb                	sar    %ebx
    1ca5:	01 f3                	add    %esi,%ebx
    1ca7:	39 fb                	cmp    %edi,%ebx
    1ca9:	7f 08                	jg     1cb3 <func4+0x1c>
    1cab:	39 fb                	cmp    %edi,%ebx
    1cad:	7c 10                	jl     1cbf <func4+0x28>
    1caf:	89 d8                	mov    %ebx,%eax
    1cb1:	5b                   	pop    %rbx
    1cb2:	c3                   	retq   
    1cb3:	8d 53 ff             	lea    -0x1(%rbx),%edx
    1cb6:	e8 dc ff ff ff       	callq  1c97 <func4>
    1cbb:	01 c3                	add    %eax,%ebx
    1cbd:	eb f0                	jmp    1caf <func4+0x18>
    1cbf:	8d 73 01             	lea    0x1(%rbx),%esi
    1cc2:	e8 d0 ff ff ff       	callq  1c97 <func4>
    1cc7:	01 c3                	add    %eax,%ebx
    1cc9:	eb e4                	jmp    1caf <func4+0x18>

0000000000001ccb <phase_4>:
    1ccb:	48 83 ec 18          	sub    $0x18,%rsp
    1ccf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1cd6:	00 00 
    1cd8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1cdd:	31 c0                	xor    %eax,%eax
    1cdf:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1ce4:	48 89 e2             	mov    %rsp,%rdx
    1ce7:	48 8d 35 9f 19 00 00 	lea    0x199f(%rip),%rsi        # 368d <array.3417+0x28d>
    1cee:	e8 3d fb ff ff       	callq  1830 <__isoc99_sscanf@plt>
    1cf3:	83 f8 02             	cmp    $0x2,%eax
    1cf6:	75 06                	jne    1cfe <phase_4+0x33>
    1cf8:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    1cfc:	76 05                	jbe    1d03 <phase_4+0x38>
    1cfe:	e8 2c 06 00 00       	callq  232f <explode_bomb>
    1d03:	ba 0e 00 00 00       	mov    $0xe,%edx
    1d08:	be 00 00 00 00       	mov    $0x0,%esi
    1d0d:	8b 3c 24             	mov    (%rsp),%edi
    1d10:	e8 82 ff ff ff       	callq  1c97 <func4>
    1d15:	83 f8 0d             	cmp    $0xd,%eax
    1d18:	75 07                	jne    1d21 <phase_4+0x56>
    1d1a:	83 7c 24 04 0d       	cmpl   $0xd,0x4(%rsp)
    1d1f:	74 05                	je     1d26 <phase_4+0x5b>
    1d21:	e8 09 06 00 00       	callq  232f <explode_bomb>
    1d26:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1d2b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1d32:	00 00 
    1d34:	75 05                	jne    1d3b <phase_4+0x70>
    1d36:	48 83 c4 18          	add    $0x18,%rsp
    1d3a:	c3                   	retq   
    1d3b:	e8 50 fa ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000001d40 <phase_5>:
    1d40:	48 83 ec 18          	sub    $0x18,%rsp
    1d44:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d4b:	00 00 
    1d4d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1d52:	31 c0                	xor    %eax,%eax
    1d54:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1d59:	48 89 e2             	mov    %rsp,%rdx
    1d5c:	48 8d 35 2a 19 00 00 	lea    0x192a(%rip),%rsi        # 368d <array.3417+0x28d>
    1d63:	e8 c8 fa ff ff       	callq  1830 <__isoc99_sscanf@plt>
    1d68:	83 f8 01             	cmp    $0x1,%eax
    1d6b:	7e 5a                	jle    1dc7 <phase_5+0x87>
    1d6d:	8b 04 24             	mov    (%rsp),%eax
    1d70:	83 e0 0f             	and    $0xf,%eax
    1d73:	89 04 24             	mov    %eax,(%rsp)
    1d76:	83 f8 0f             	cmp    $0xf,%eax
    1d79:	74 32                	je     1dad <phase_5+0x6d>
    1d7b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1d80:	ba 00 00 00 00       	mov    $0x0,%edx
    1d85:	48 8d 35 74 16 00 00 	lea    0x1674(%rip),%rsi        # 3400 <array.3417>
    1d8c:	83 c2 01             	add    $0x1,%edx
    1d8f:	48 98                	cltq   
    1d91:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    1d94:	01 c1                	add    %eax,%ecx
    1d96:	83 f8 0f             	cmp    $0xf,%eax
    1d99:	75 f1                	jne    1d8c <phase_5+0x4c>
    1d9b:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1da2:	83 fa 0f             	cmp    $0xf,%edx
    1da5:	75 06                	jne    1dad <phase_5+0x6d>
    1da7:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1dab:	74 05                	je     1db2 <phase_5+0x72>
    1dad:	e8 7d 05 00 00       	callq  232f <explode_bomb>
    1db2:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1db7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1dbe:	00 00 
    1dc0:	75 0c                	jne    1dce <phase_5+0x8e>
    1dc2:	48 83 c4 18          	add    $0x18,%rsp
    1dc6:	c3                   	retq   
    1dc7:	e8 63 05 00 00       	callq  232f <explode_bomb>
    1dcc:	eb 9f                	jmp    1d6d <phase_5+0x2d>
    1dce:	e8 bd f9 ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000001dd3 <phase_6>:
    1dd3:	41 55                	push   %r13
    1dd5:	41 54                	push   %r12
    1dd7:	55                   	push   %rbp
    1dd8:	53                   	push   %rbx
    1dd9:	48 83 ec 68          	sub    $0x68,%rsp
    1ddd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1de4:	00 00 
    1de6:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1deb:	31 c0                	xor    %eax,%eax
    1ded:	49 89 e4             	mov    %rsp,%r12
    1df0:	4c 89 e6             	mov    %r12,%rsi
    1df3:	e8 73 05 00 00       	callq  236b <read_six_numbers>
    1df8:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1dfe:	eb 25                	jmp    1e25 <phase_6+0x52>
    1e00:	e8 2a 05 00 00       	callq  232f <explode_bomb>
    1e05:	eb 2d                	jmp    1e34 <phase_6+0x61>
    1e07:	83 c3 01             	add    $0x1,%ebx
    1e0a:	83 fb 05             	cmp    $0x5,%ebx
    1e0d:	7f 12                	jg     1e21 <phase_6+0x4e>
    1e0f:	48 63 c3             	movslq %ebx,%rax
    1e12:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1e15:	39 45 00             	cmp    %eax,0x0(%rbp)
    1e18:	75 ed                	jne    1e07 <phase_6+0x34>
    1e1a:	e8 10 05 00 00       	callq  232f <explode_bomb>
    1e1f:	eb e6                	jmp    1e07 <phase_6+0x34>
    1e21:	49 83 c4 04          	add    $0x4,%r12
    1e25:	4c 89 e5             	mov    %r12,%rbp
    1e28:	41 8b 04 24          	mov    (%r12),%eax
    1e2c:	83 e8 01             	sub    $0x1,%eax
    1e2f:	83 f8 05             	cmp    $0x5,%eax
    1e32:	77 cc                	ja     1e00 <phase_6+0x2d>
    1e34:	41 83 c5 01          	add    $0x1,%r13d
    1e38:	41 83 fd 06          	cmp    $0x6,%r13d
    1e3c:	74 35                	je     1e73 <phase_6+0xa0>
    1e3e:	44 89 eb             	mov    %r13d,%ebx
    1e41:	eb cc                	jmp    1e0f <phase_6+0x3c>
    1e43:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1e47:	83 c0 01             	add    $0x1,%eax
    1e4a:	39 c8                	cmp    %ecx,%eax
    1e4c:	75 f5                	jne    1e43 <phase_6+0x70>
    1e4e:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1e53:	48 83 c6 01          	add    $0x1,%rsi
    1e57:	48 83 fe 06          	cmp    $0x6,%rsi
    1e5b:	74 1d                	je     1e7a <phase_6+0xa7>
    1e5d:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1e60:	b8 01 00 00 00       	mov    $0x1,%eax
    1e65:	48 8d 15 b4 33 20 00 	lea    0x2033b4(%rip),%rdx        # 205220 <node1>
    1e6c:	83 f9 01             	cmp    $0x1,%ecx
    1e6f:	7f d2                	jg     1e43 <phase_6+0x70>
    1e71:	eb db                	jmp    1e4e <phase_6+0x7b>
    1e73:	be 00 00 00 00       	mov    $0x0,%esi
    1e78:	eb e3                	jmp    1e5d <phase_6+0x8a>
    1e7a:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1e7f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1e84:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1e88:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1e8d:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1e91:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1e96:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1e9a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1e9f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1ea3:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1ea8:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1eac:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1eb3:	00 
    1eb4:	bd 05 00 00 00       	mov    $0x5,%ebp
    1eb9:	eb 09                	jmp    1ec4 <phase_6+0xf1>
    1ebb:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1ebf:	83 ed 01             	sub    $0x1,%ebp
    1ec2:	74 11                	je     1ed5 <phase_6+0x102>
    1ec4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1ec8:	8b 00                	mov    (%rax),%eax
    1eca:	39 03                	cmp    %eax,(%rbx)
    1ecc:	7e ed                	jle    1ebb <phase_6+0xe8>
    1ece:	e8 5c 04 00 00       	callq  232f <explode_bomb>
    1ed3:	eb e6                	jmp    1ebb <phase_6+0xe8>
    1ed5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1eda:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1ee1:	00 00 
    1ee3:	75 0b                	jne    1ef0 <phase_6+0x11d>
    1ee5:	48 83 c4 68          	add    $0x68,%rsp
    1ee9:	5b                   	pop    %rbx
    1eea:	5d                   	pop    %rbp
    1eeb:	41 5c                	pop    %r12
    1eed:	41 5d                	pop    %r13
    1eef:	c3                   	retq   
    1ef0:	e8 9b f8 ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000001ef5 <fun7>:
    1ef5:	48 85 ff             	test   %rdi,%rdi
    1ef8:	74 34                	je     1f2e <fun7+0x39>
    1efa:	48 83 ec 08          	sub    $0x8,%rsp
    1efe:	8b 17                	mov    (%rdi),%edx
    1f00:	39 f2                	cmp    %esi,%edx
    1f02:	7f 0e                	jg     1f12 <fun7+0x1d>
    1f04:	b8 00 00 00 00       	mov    $0x0,%eax
    1f09:	39 f2                	cmp    %esi,%edx
    1f0b:	75 12                	jne    1f1f <fun7+0x2a>
    1f0d:	48 83 c4 08          	add    $0x8,%rsp
    1f11:	c3                   	retq   
    1f12:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1f16:	e8 da ff ff ff       	callq  1ef5 <fun7>
    1f1b:	01 c0                	add    %eax,%eax
    1f1d:	eb ee                	jmp    1f0d <fun7+0x18>
    1f1f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1f23:	e8 cd ff ff ff       	callq  1ef5 <fun7>
    1f28:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1f2c:	eb df                	jmp    1f0d <fun7+0x18>
    1f2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f33:	c3                   	retq   

0000000000001f34 <secret_phase>:
    1f34:	53                   	push   %rbx
    1f35:	e8 72 04 00 00       	callq  23ac <read_line>
    1f3a:	ba 0a 00 00 00       	mov    $0xa,%edx
    1f3f:	be 00 00 00 00       	mov    $0x0,%esi
    1f44:	48 89 c7             	mov    %rax,%rdi
    1f47:	e8 c4 f8 ff ff       	callq  1810 <strtol@plt>
    1f4c:	48 89 c3             	mov    %rax,%rbx
    1f4f:	8d 40 ff             	lea    -0x1(%rax),%eax
    1f52:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1f57:	77 2b                	ja     1f84 <secret_phase+0x50>
    1f59:	89 de                	mov    %ebx,%esi
    1f5b:	48 8d 3d de 31 20 00 	lea    0x2031de(%rip),%rdi        # 205140 <n1>
    1f62:	e8 8e ff ff ff       	callq  1ef5 <fun7>
    1f67:	83 f8 01             	cmp    $0x1,%eax
    1f6a:	74 05                	je     1f71 <secret_phase+0x3d>
    1f6c:	e8 be 03 00 00       	callq  232f <explode_bomb>
    1f71:	48 8d 3d 30 14 00 00 	lea    0x1430(%rip),%rdi        # 33a8 <_IO_stdin_used+0x188>
    1f78:	e8 f3 f7 ff ff       	callq  1770 <puts@plt>
    1f7d:	e8 6e 05 00 00       	callq  24f0 <phase_defused>
    1f82:	5b                   	pop    %rbx
    1f83:	c3                   	retq   
    1f84:	e8 a6 03 00 00       	callq  232f <explode_bomb>
    1f89:	eb ce                	jmp    1f59 <secret_phase+0x25>

0000000000001f8b <sig_handler>:
    1f8b:	48 83 ec 08          	sub    $0x8,%rsp
    1f8f:	48 8d 3d aa 14 00 00 	lea    0x14aa(%rip),%rdi        # 3440 <array.3417+0x40>
    1f96:	e8 d5 f7 ff ff       	callq  1770 <puts@plt>
    1f9b:	bf 03 00 00 00       	mov    $0x3,%edi
    1fa0:	e8 fb f8 ff ff       	callq  18a0 <sleep@plt>
    1fa5:	48 8d 35 5d 16 00 00 	lea    0x165d(%rip),%rsi        # 3609 <array.3417+0x209>
    1fac:	bf 01 00 00 00       	mov    $0x1,%edi
    1fb1:	b8 00 00 00 00       	mov    $0x0,%eax
    1fb6:	e8 85 f8 ff ff       	callq  1840 <__printf_chk@plt>
    1fbb:	48 8b 3d be 36 20 00 	mov    0x2036be(%rip),%rdi        # 205680 <stdout@@GLIBC_2.2.5>
    1fc2:	e8 59 f8 ff ff       	callq  1820 <fflush@plt>
    1fc7:	bf 01 00 00 00       	mov    $0x1,%edi
    1fcc:	e8 cf f8 ff ff       	callq  18a0 <sleep@plt>
    1fd1:	48 8d 3d 39 16 00 00 	lea    0x1639(%rip),%rdi        # 3611 <array.3417+0x211>
    1fd8:	e8 93 f7 ff ff       	callq  1770 <puts@plt>
    1fdd:	bf 10 00 00 00       	mov    $0x10,%edi
    1fe2:	e8 89 f8 ff ff       	callq  1870 <exit@plt>

0000000000001fe7 <invalid_phase>:
    1fe7:	48 83 ec 08          	sub    $0x8,%rsp
    1feb:	48 89 fa             	mov    %rdi,%rdx
    1fee:	48 8d 35 24 16 00 00 	lea    0x1624(%rip),%rsi        # 3619 <array.3417+0x219>
    1ff5:	bf 01 00 00 00       	mov    $0x1,%edi
    1ffa:	b8 00 00 00 00       	mov    $0x0,%eax
    1fff:	e8 3c f8 ff ff       	callq  1840 <__printf_chk@plt>
    2004:	bf 08 00 00 00       	mov    $0x8,%edi
    2009:	e8 62 f8 ff ff       	callq  1870 <exit@plt>

000000000000200e <string_length>:
    200e:	80 3f 00             	cmpb   $0x0,(%rdi)
    2011:	74 12                	je     2025 <string_length+0x17>
    2013:	48 89 fa             	mov    %rdi,%rdx
    2016:	48 83 c2 01          	add    $0x1,%rdx
    201a:	89 d0                	mov    %edx,%eax
    201c:	29 f8                	sub    %edi,%eax
    201e:	80 3a 00             	cmpb   $0x0,(%rdx)
    2021:	75 f3                	jne    2016 <string_length+0x8>
    2023:	f3 c3                	repz retq 
    2025:	b8 00 00 00 00       	mov    $0x0,%eax
    202a:	c3                   	retq   

000000000000202b <strings_not_equal>:
    202b:	41 54                	push   %r12
    202d:	55                   	push   %rbp
    202e:	53                   	push   %rbx
    202f:	48 89 fb             	mov    %rdi,%rbx
    2032:	48 89 f5             	mov    %rsi,%rbp
    2035:	e8 d4 ff ff ff       	callq  200e <string_length>
    203a:	41 89 c4             	mov    %eax,%r12d
    203d:	48 89 ef             	mov    %rbp,%rdi
    2040:	e8 c9 ff ff ff       	callq  200e <string_length>
    2045:	ba 01 00 00 00       	mov    $0x1,%edx
    204a:	41 39 c4             	cmp    %eax,%r12d
    204d:	74 07                	je     2056 <strings_not_equal+0x2b>
    204f:	89 d0                	mov    %edx,%eax
    2051:	5b                   	pop    %rbx
    2052:	5d                   	pop    %rbp
    2053:	41 5c                	pop    %r12
    2055:	c3                   	retq   
    2056:	0f b6 03             	movzbl (%rbx),%eax
    2059:	84 c0                	test   %al,%al
    205b:	74 27                	je     2084 <strings_not_equal+0x59>
    205d:	3a 45 00             	cmp    0x0(%rbp),%al
    2060:	75 29                	jne    208b <strings_not_equal+0x60>
    2062:	48 83 c3 01          	add    $0x1,%rbx
    2066:	48 83 c5 01          	add    $0x1,%rbp
    206a:	0f b6 03             	movzbl (%rbx),%eax
    206d:	84 c0                	test   %al,%al
    206f:	74 0c                	je     207d <strings_not_equal+0x52>
    2071:	38 45 00             	cmp    %al,0x0(%rbp)
    2074:	74 ec                	je     2062 <strings_not_equal+0x37>
    2076:	ba 01 00 00 00       	mov    $0x1,%edx
    207b:	eb d2                	jmp    204f <strings_not_equal+0x24>
    207d:	ba 00 00 00 00       	mov    $0x0,%edx
    2082:	eb cb                	jmp    204f <strings_not_equal+0x24>
    2084:	ba 00 00 00 00       	mov    $0x0,%edx
    2089:	eb c4                	jmp    204f <strings_not_equal+0x24>
    208b:	ba 01 00 00 00       	mov    $0x1,%edx
    2090:	eb bd                	jmp    204f <strings_not_equal+0x24>

0000000000002092 <initialize_bomb>:
    2092:	55                   	push   %rbp
    2093:	53                   	push   %rbx
    2094:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    209b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20a2:	00 00 
    20a4:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    20ab:	00 
    20ac:	31 c0                	xor    %eax,%eax
    20ae:	48 8d 35 d6 fe ff ff 	lea    -0x12a(%rip),%rsi        # 1f8b <sig_handler>
    20b5:	bf 02 00 00 00       	mov    $0x2,%edi
    20ba:	e8 21 f7 ff ff       	callq  17e0 <signal@plt>
    20bf:	48 89 e7             	mov    %rsp,%rdi
    20c2:	be 40 00 00 00       	mov    $0x40,%esi
    20c7:	e8 94 f7 ff ff       	callq  1860 <gethostname@plt>
    20cc:	85 c0                	test   %eax,%eax
    20ce:	75 45                	jne    2115 <initialize_bomb+0x83>
    20d0:	48 8b 3d a9 31 20 00 	mov    0x2031a9(%rip),%rdi        # 205280 <host_table>
    20d7:	48 8d 1d aa 31 20 00 	lea    0x2031aa(%rip),%rbx        # 205288 <host_table+0x8>
    20de:	48 89 e5             	mov    %rsp,%rbp
    20e1:	48 85 ff             	test   %rdi,%rdi
    20e4:	74 19                	je     20ff <initialize_bomb+0x6d>
    20e6:	48 89 ee             	mov    %rbp,%rsi
    20e9:	e8 52 f6 ff ff       	callq  1740 <strcasecmp@plt>
    20ee:	85 c0                	test   %eax,%eax
    20f0:	74 5e                	je     2150 <initialize_bomb+0xbe>
    20f2:	48 83 c3 08          	add    $0x8,%rbx
    20f6:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    20fa:	48 85 ff             	test   %rdi,%rdi
    20fd:	75 e7                	jne    20e6 <initialize_bomb+0x54>
    20ff:	48 8d 3d aa 13 00 00 	lea    0x13aa(%rip),%rdi        # 34b0 <array.3417+0xb0>
    2106:	e8 65 f6 ff ff       	callq  1770 <puts@plt>
    210b:	bf 08 00 00 00       	mov    $0x8,%edi
    2110:	e8 5b f7 ff ff       	callq  1870 <exit@plt>
    2115:	48 8d 3d 5c 13 00 00 	lea    0x135c(%rip),%rdi        # 3478 <array.3417+0x78>
    211c:	e8 4f f6 ff ff       	callq  1770 <puts@plt>
    2121:	bf 08 00 00 00       	mov    $0x8,%edi
    2126:	e8 45 f7 ff ff       	callq  1870 <exit@plt>
    212b:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2130:	48 8d 35 f3 14 00 00 	lea    0x14f3(%rip),%rsi        # 362a <array.3417+0x22a>
    2137:	bf 01 00 00 00       	mov    $0x1,%edi
    213c:	b8 00 00 00 00       	mov    $0x0,%eax
    2141:	e8 fa f6 ff ff       	callq  1840 <__printf_chk@plt>
    2146:	bf 08 00 00 00       	mov    $0x8,%edi
    214b:	e8 20 f7 ff ff       	callq  1870 <exit@plt>
    2150:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2155:	e8 b2 0d 00 00       	callq  2f0c <init_driver>
    215a:	85 c0                	test   %eax,%eax
    215c:	78 cd                	js     212b <initialize_bomb+0x99>
    215e:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    2165:	00 
    2166:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    216d:	00 00 
    216f:	75 0a                	jne    217b <initialize_bomb+0xe9>
    2171:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2178:	5b                   	pop    %rbx
    2179:	5d                   	pop    %rbp
    217a:	c3                   	retq   
    217b:	e8 10 f6 ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000002180 <initialize_bomb_solve>:
    2180:	f3 c3                	repz retq 

0000000000002182 <blank_line>:
    2182:	55                   	push   %rbp
    2183:	53                   	push   %rbx
    2184:	48 83 ec 08          	sub    $0x8,%rsp
    2188:	48 89 fd             	mov    %rdi,%rbp
    218b:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    218f:	84 db                	test   %bl,%bl
    2191:	74 1e                	je     21b1 <blank_line+0x2f>
    2193:	e8 18 f7 ff ff       	callq  18b0 <__ctype_b_loc@plt>
    2198:	48 83 c5 01          	add    $0x1,%rbp
    219c:	48 0f be db          	movsbq %bl,%rbx
    21a0:	48 8b 00             	mov    (%rax),%rax
    21a3:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    21a8:	75 e1                	jne    218b <blank_line+0x9>
    21aa:	b8 00 00 00 00       	mov    $0x0,%eax
    21af:	eb 05                	jmp    21b6 <blank_line+0x34>
    21b1:	b8 01 00 00 00       	mov    $0x1,%eax
    21b6:	48 83 c4 08          	add    $0x8,%rsp
    21ba:	5b                   	pop    %rbx
    21bb:	5d                   	pop    %rbp
    21bc:	c3                   	retq   

00000000000021bd <skip>:
    21bd:	55                   	push   %rbp
    21be:	53                   	push   %rbx
    21bf:	48 83 ec 08          	sub    $0x8,%rsp
    21c3:	48 8d 2d f6 34 20 00 	lea    0x2034f6(%rip),%rbp        # 2056c0 <input_strings>
    21ca:	48 63 05 db 34 20 00 	movslq 0x2034db(%rip),%rax        # 2056ac <num_input_strings>
    21d1:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    21d5:	48 c1 e7 04          	shl    $0x4,%rdi
    21d9:	48 01 ef             	add    %rbp,%rdi
    21dc:	48 8b 15 cd 34 20 00 	mov    0x2034cd(%rip),%rdx        # 2056b0 <infile>
    21e3:	be 50 00 00 00       	mov    $0x50,%esi
    21e8:	e8 e3 f5 ff ff       	callq  17d0 <fgets@plt>
    21ed:	48 89 c3             	mov    %rax,%rbx
    21f0:	48 85 c0             	test   %rax,%rax
    21f3:	74 0c                	je     2201 <skip+0x44>
    21f5:	48 89 c7             	mov    %rax,%rdi
    21f8:	e8 85 ff ff ff       	callq  2182 <blank_line>
    21fd:	85 c0                	test   %eax,%eax
    21ff:	75 c9                	jne    21ca <skip+0xd>
    2201:	48 89 d8             	mov    %rbx,%rax
    2204:	48 83 c4 08          	add    $0x8,%rsp
    2208:	5b                   	pop    %rbx
    2209:	5d                   	pop    %rbp
    220a:	c3                   	retq   

000000000000220b <send_msg>:
    220b:	53                   	push   %rbx
    220c:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    2213:	41 89 f8             	mov    %edi,%r8d
    2216:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    221d:	00 00 
    221f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2226:	00 
    2227:	31 c0                	xor    %eax,%eax
    2229:	8b 35 7d 34 20 00    	mov    0x20347d(%rip),%esi        # 2056ac <num_input_strings>
    222f:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2232:	48 98                	cltq   
    2234:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    2238:	48 c1 e2 04          	shl    $0x4,%rdx
    223c:	48 8d 05 7d 34 20 00 	lea    0x20347d(%rip),%rax        # 2056c0 <input_strings>
    2243:	48 01 c2             	add    %rax,%rdx
    2246:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    224d:	b8 00 00 00 00       	mov    $0x0,%eax
    2252:	48 89 d7             	mov    %rdx,%rdi
    2255:	f2 ae                	repnz scas %es:(%rdi),%al
    2257:	48 89 c8             	mov    %rcx,%rax
    225a:	48 f7 d0             	not    %rax
    225d:	48 83 c0 63          	add    $0x63,%rax
    2261:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2267:	0f 87 86 00 00 00    	ja     22f3 <send_msg+0xe8>
    226d:	45 85 c0             	test   %r8d,%r8d
    2270:	4c 8d 0d cd 13 00 00 	lea    0x13cd(%rip),%r9        # 3644 <array.3417+0x244>
    2277:	48 8d 05 ce 13 00 00 	lea    0x13ce(%rip),%rax        # 364c <array.3417+0x24c>
    227e:	4c 0f 44 c8          	cmove  %rax,%r9
    2282:	48 89 e3             	mov    %rsp,%rbx
    2285:	52                   	push   %rdx
    2286:	56                   	push   %rsi
    2287:	44 8b 05 ae 2e 20 00 	mov    0x202eae(%rip),%r8d        # 20513c <bomb_id>
    228e:	48 8d 0d c0 13 00 00 	lea    0x13c0(%rip),%rcx        # 3655 <array.3417+0x255>
    2295:	ba 00 20 00 00       	mov    $0x2000,%edx
    229a:	be 01 00 00 00       	mov    $0x1,%esi
    229f:	48 89 df             	mov    %rbx,%rdi
    22a2:	b8 00 00 00 00       	mov    $0x0,%eax
    22a7:	e8 14 f6 ff ff       	callq  18c0 <__sprintf_chk@plt>
    22ac:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    22b3:	00 
    22b4:	b9 00 00 00 00       	mov    $0x0,%ecx
    22b9:	48 89 da             	mov    %rbx,%rdx
    22bc:	48 8d 35 5d 2e 20 00 	lea    0x202e5d(%rip),%rsi        # 205120 <user_password>
    22c3:	48 8d 3d 6b 2e 20 00 	lea    0x202e6b(%rip),%rdi        # 205135 <userid>
    22ca:	e8 46 0e 00 00       	callq  3115 <driver_post>
    22cf:	48 83 c4 10          	add    $0x10,%rsp
    22d3:	85 c0                	test   %eax,%eax
    22d5:	78 3c                	js     2313 <send_msg+0x108>
    22d7:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    22de:	00 
    22df:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    22e6:	00 00 
    22e8:	75 40                	jne    232a <send_msg+0x11f>
    22ea:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    22f1:	5b                   	pop    %rbx
    22f2:	c3                   	retq   
    22f3:	48 8d 35 ee 11 00 00 	lea    0x11ee(%rip),%rsi        # 34e8 <array.3417+0xe8>
    22fa:	bf 01 00 00 00       	mov    $0x1,%edi
    22ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2304:	e8 37 f5 ff ff       	callq  1840 <__printf_chk@plt>
    2309:	bf 08 00 00 00       	mov    $0x8,%edi
    230e:	e8 5d f5 ff ff       	callq  1870 <exit@plt>
    2313:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    231a:	00 
    231b:	e8 50 f4 ff ff       	callq  1770 <puts@plt>
    2320:	bf 00 00 00 00       	mov    $0x0,%edi
    2325:	e8 46 f5 ff ff       	callq  1870 <exit@plt>
    232a:	e8 61 f4 ff ff       	callq  1790 <__stack_chk_fail@plt>

000000000000232f <explode_bomb>:
    232f:	48 83 ec 08          	sub    $0x8,%rsp
    2333:	48 8d 3d 27 13 00 00 	lea    0x1327(%rip),%rdi        # 3661 <array.3417+0x261>
    233a:	e8 31 f4 ff ff       	callq  1770 <puts@plt>
    233f:	48 8d 3d 24 13 00 00 	lea    0x1324(%rip),%rdi        # 366a <array.3417+0x26a>
    2346:	e8 25 f4 ff ff       	callq  1770 <puts@plt>
    234b:	bf 00 00 00 00       	mov    $0x0,%edi
    2350:	e8 b6 fe ff ff       	callq  220b <send_msg>
    2355:	48 8d 3d b4 11 00 00 	lea    0x11b4(%rip),%rdi        # 3510 <array.3417+0x110>
    235c:	e8 0f f4 ff ff       	callq  1770 <puts@plt>
    2361:	bf 08 00 00 00       	mov    $0x8,%edi
    2366:	e8 05 f5 ff ff       	callq  1870 <exit@plt>

000000000000236b <read_six_numbers>:
    236b:	48 83 ec 08          	sub    $0x8,%rsp
    236f:	48 89 f2             	mov    %rsi,%rdx
    2372:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2376:	48 8d 46 14          	lea    0x14(%rsi),%rax
    237a:	50                   	push   %rax
    237b:	48 8d 46 10          	lea    0x10(%rsi),%rax
    237f:	50                   	push   %rax
    2380:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2384:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2388:	48 8d 35 f2 12 00 00 	lea    0x12f2(%rip),%rsi        # 3681 <array.3417+0x281>
    238f:	b8 00 00 00 00       	mov    $0x0,%eax
    2394:	e8 97 f4 ff ff       	callq  1830 <__isoc99_sscanf@plt>
    2399:	48 83 c4 10          	add    $0x10,%rsp
    239d:	83 f8 05             	cmp    $0x5,%eax
    23a0:	7e 05                	jle    23a7 <read_six_numbers+0x3c>
    23a2:	48 83 c4 08          	add    $0x8,%rsp
    23a6:	c3                   	retq   
    23a7:	e8 83 ff ff ff       	callq  232f <explode_bomb>

00000000000023ac <read_line>:
    23ac:	48 83 ec 08          	sub    $0x8,%rsp
    23b0:	b8 00 00 00 00       	mov    $0x0,%eax
    23b5:	e8 03 fe ff ff       	callq  21bd <skip>
    23ba:	48 85 c0             	test   %rax,%rax
    23bd:	74 6f                	je     242e <read_line+0x82>
    23bf:	8b 35 e7 32 20 00    	mov    0x2032e7(%rip),%esi        # 2056ac <num_input_strings>
    23c5:	48 63 c6             	movslq %esi,%rax
    23c8:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    23cc:	48 c1 e2 04          	shl    $0x4,%rdx
    23d0:	48 8d 05 e9 32 20 00 	lea    0x2032e9(%rip),%rax        # 2056c0 <input_strings>
    23d7:	48 01 c2             	add    %rax,%rdx
    23da:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    23e1:	b8 00 00 00 00       	mov    $0x0,%eax
    23e6:	48 89 d7             	mov    %rdx,%rdi
    23e9:	f2 ae                	repnz scas %es:(%rdi),%al
    23eb:	48 f7 d1             	not    %rcx
    23ee:	48 83 e9 01          	sub    $0x1,%rcx
    23f2:	83 f9 4e             	cmp    $0x4e,%ecx
    23f5:	0f 8f ab 00 00 00    	jg     24a6 <read_line+0xfa>
    23fb:	83 e9 01             	sub    $0x1,%ecx
    23fe:	48 63 c9             	movslq %ecx,%rcx
    2401:	48 63 c6             	movslq %esi,%rax
    2404:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2408:	48 c1 e0 04          	shl    $0x4,%rax
    240c:	48 89 c7             	mov    %rax,%rdi
    240f:	48 8d 05 aa 32 20 00 	lea    0x2032aa(%rip),%rax        # 2056c0 <input_strings>
    2416:	48 01 f8             	add    %rdi,%rax
    2419:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    241d:	83 c6 01             	add    $0x1,%esi
    2420:	89 35 86 32 20 00    	mov    %esi,0x203286(%rip)        # 2056ac <num_input_strings>
    2426:	48 89 d0             	mov    %rdx,%rax
    2429:	48 83 c4 08          	add    $0x8,%rsp
    242d:	c3                   	retq   
    242e:	48 8b 05 5b 32 20 00 	mov    0x20325b(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    2435:	48 39 05 74 32 20 00 	cmp    %rax,0x203274(%rip)        # 2056b0 <infile>
    243c:	74 1b                	je     2459 <read_line+0xad>
    243e:	48 8d 3d 6c 12 00 00 	lea    0x126c(%rip),%rdi        # 36b1 <array.3417+0x2b1>
    2445:	e8 e6 f2 ff ff       	callq  1730 <getenv@plt>
    244a:	48 85 c0             	test   %rax,%rax
    244d:	74 20                	je     246f <read_line+0xc3>
    244f:	bf 00 00 00 00       	mov    $0x0,%edi
    2454:	e8 17 f4 ff ff       	callq  1870 <exit@plt>
    2459:	48 8d 3d 33 12 00 00 	lea    0x1233(%rip),%rdi        # 3693 <array.3417+0x293>
    2460:	e8 0b f3 ff ff       	callq  1770 <puts@plt>
    2465:	bf 08 00 00 00       	mov    $0x8,%edi
    246a:	e8 01 f4 ff ff       	callq  1870 <exit@plt>
    246f:	48 8b 05 1a 32 20 00 	mov    0x20321a(%rip),%rax        # 205690 <stdin@@GLIBC_2.2.5>
    2476:	48 89 05 33 32 20 00 	mov    %rax,0x203233(%rip)        # 2056b0 <infile>
    247d:	b8 00 00 00 00       	mov    $0x0,%eax
    2482:	e8 36 fd ff ff       	callq  21bd <skip>
    2487:	48 85 c0             	test   %rax,%rax
    248a:	0f 85 2f ff ff ff    	jne    23bf <read_line+0x13>
    2490:	48 8d 3d fc 11 00 00 	lea    0x11fc(%rip),%rdi        # 3693 <array.3417+0x293>
    2497:	e8 d4 f2 ff ff       	callq  1770 <puts@plt>
    249c:	bf 00 00 00 00       	mov    $0x0,%edi
    24a1:	e8 ca f3 ff ff       	callq  1870 <exit@plt>
    24a6:	48 8d 3d 0f 12 00 00 	lea    0x120f(%rip),%rdi        # 36bc <array.3417+0x2bc>
    24ad:	e8 be f2 ff ff       	callq  1770 <puts@plt>
    24b2:	8b 05 f4 31 20 00    	mov    0x2031f4(%rip),%eax        # 2056ac <num_input_strings>
    24b8:	8d 50 01             	lea    0x1(%rax),%edx
    24bb:	89 15 eb 31 20 00    	mov    %edx,0x2031eb(%rip)        # 2056ac <num_input_strings>
    24c1:	48 98                	cltq   
    24c3:	48 6b c0 50          	imul   $0x50,%rax,%rax
    24c7:	48 8d 15 f2 31 20 00 	lea    0x2031f2(%rip),%rdx        # 2056c0 <input_strings>
    24ce:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    24d5:	75 6e 63 
    24d8:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    24df:	2a 2a 00 
    24e2:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    24e6:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    24eb:	e8 3f fe ff ff       	callq  232f <explode_bomb>

00000000000024f0 <phase_defused>:
    24f0:	48 83 ec 78          	sub    $0x78,%rsp
    24f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24fb:	00 00 
    24fd:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    2502:	31 c0                	xor    %eax,%eax
    2504:	bf 01 00 00 00       	mov    $0x1,%edi
    2509:	e8 fd fc ff ff       	callq  220b <send_msg>
    250e:	83 3d 97 31 20 00 06 	cmpl   $0x6,0x203197(%rip)        # 2056ac <num_input_strings>
    2515:	74 19                	je     2530 <phase_defused+0x40>
    2517:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    251c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2523:	00 00 
    2525:	0f 85 84 00 00 00    	jne    25af <phase_defused+0xbf>
    252b:	48 83 c4 78          	add    $0x78,%rsp
    252f:	c3                   	retq   
    2530:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2535:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    253a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    253f:	48 8d 35 91 11 00 00 	lea    0x1191(%rip),%rsi        # 36d7 <array.3417+0x2d7>
    2546:	48 8d 3d 63 32 20 00 	lea    0x203263(%rip),%rdi        # 2057b0 <input_strings+0xf0>
    254d:	b8 00 00 00 00       	mov    $0x0,%eax
    2552:	e8 d9 f2 ff ff       	callq  1830 <__isoc99_sscanf@plt>
    2557:	83 f8 03             	cmp    $0x3,%eax
    255a:	74 1a                	je     2576 <phase_defused+0x86>
    255c:	48 8d 3d 35 10 00 00 	lea    0x1035(%rip),%rdi        # 3598 <array.3417+0x198>
    2563:	e8 08 f2 ff ff       	callq  1770 <puts@plt>
    2568:	48 8d 3d 59 10 00 00 	lea    0x1059(%rip),%rdi        # 35c8 <array.3417+0x1c8>
    256f:	e8 fc f1 ff ff       	callq  1770 <puts@plt>
    2574:	eb a1                	jmp    2517 <phase_defused+0x27>
    2576:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    257b:	48 8d 35 5e 11 00 00 	lea    0x115e(%rip),%rsi        # 36e0 <array.3417+0x2e0>
    2582:	e8 a4 fa ff ff       	callq  202b <strings_not_equal>
    2587:	85 c0                	test   %eax,%eax
    2589:	75 d1                	jne    255c <phase_defused+0x6c>
    258b:	48 8d 3d a6 0f 00 00 	lea    0xfa6(%rip),%rdi        # 3538 <array.3417+0x138>
    2592:	e8 d9 f1 ff ff       	callq  1770 <puts@plt>
    2597:	48 8d 3d c2 0f 00 00 	lea    0xfc2(%rip),%rdi        # 3560 <array.3417+0x160>
    259e:	e8 cd f1 ff ff       	callq  1770 <puts@plt>
    25a3:	b8 00 00 00 00       	mov    $0x0,%eax
    25a8:	e8 87 f9 ff ff       	callq  1f34 <secret_phase>
    25ad:	eb ad                	jmp    255c <phase_defused+0x6c>
    25af:	e8 dc f1 ff ff       	callq  1790 <__stack_chk_fail@plt>

00000000000025b4 <sigalrm_handler>:
    25b4:	48 83 ec 08          	sub    $0x8,%rsp
    25b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    25bd:	48 8d 15 54 19 00 00 	lea    0x1954(%rip),%rdx        # 3f18 <array.3417+0xb18>
    25c4:	be 01 00 00 00       	mov    $0x1,%esi
    25c9:	48 8b 3d d0 30 20 00 	mov    0x2030d0(%rip),%rdi        # 2056a0 <stderr@@GLIBC_2.2.5>
    25d0:	b8 00 00 00 00       	mov    $0x0,%eax
    25d5:	e8 b6 f2 ff ff       	callq  1890 <__fprintf_chk@plt>
    25da:	bf 01 00 00 00       	mov    $0x1,%edi
    25df:	e8 8c f2 ff ff       	callq  1870 <exit@plt>

00000000000025e4 <rio_readlineb>:
    25e4:	41 56                	push   %r14
    25e6:	41 55                	push   %r13
    25e8:	41 54                	push   %r12
    25ea:	55                   	push   %rbp
    25eb:	53                   	push   %rbx
    25ec:	48 89 fb             	mov    %rdi,%rbx
    25ef:	49 89 f4             	mov    %rsi,%r12
    25f2:	49 89 d6             	mov    %rdx,%r14
    25f5:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    25fb:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    25ff:	48 83 fa 01          	cmp    $0x1,%rdx
    2603:	77 0c                	ja     2611 <rio_readlineb+0x2d>
    2605:	eb 60                	jmp    2667 <rio_readlineb+0x83>
    2607:	e8 44 f1 ff ff       	callq  1750 <__errno_location@plt>
    260c:	83 38 04             	cmpl   $0x4,(%rax)
    260f:	75 67                	jne    2678 <rio_readlineb+0x94>
    2611:	8b 43 04             	mov    0x4(%rbx),%eax
    2614:	85 c0                	test   %eax,%eax
    2616:	7f 20                	jg     2638 <rio_readlineb+0x54>
    2618:	ba 00 20 00 00       	mov    $0x2000,%edx
    261d:	48 89 ee             	mov    %rbp,%rsi
    2620:	8b 3b                	mov    (%rbx),%edi
    2622:	e8 99 f1 ff ff       	callq  17c0 <read@plt>
    2627:	89 43 04             	mov    %eax,0x4(%rbx)
    262a:	85 c0                	test   %eax,%eax
    262c:	78 d9                	js     2607 <rio_readlineb+0x23>
    262e:	85 c0                	test   %eax,%eax
    2630:	74 4f                	je     2681 <rio_readlineb+0x9d>
    2632:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2636:	eb d9                	jmp    2611 <rio_readlineb+0x2d>
    2638:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    263c:	0f b6 0a             	movzbl (%rdx),%ecx
    263f:	48 83 c2 01          	add    $0x1,%rdx
    2643:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    2647:	83 e8 01             	sub    $0x1,%eax
    264a:	89 43 04             	mov    %eax,0x4(%rbx)
    264d:	49 83 c4 01          	add    $0x1,%r12
    2651:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2656:	80 f9 0a             	cmp    $0xa,%cl
    2659:	74 0c                	je     2667 <rio_readlineb+0x83>
    265b:	41 83 c5 01          	add    $0x1,%r13d
    265f:	49 63 c5             	movslq %r13d,%rax
    2662:	4c 39 f0             	cmp    %r14,%rax
    2665:	72 aa                	jb     2611 <rio_readlineb+0x2d>
    2667:	41 c6 04 24 00       	movb   $0x0,(%r12)
    266c:	49 63 c5             	movslq %r13d,%rax
    266f:	5b                   	pop    %rbx
    2670:	5d                   	pop    %rbp
    2671:	41 5c                	pop    %r12
    2673:	41 5d                	pop    %r13
    2675:	41 5e                	pop    %r14
    2677:	c3                   	retq   
    2678:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    267f:	eb 05                	jmp    2686 <rio_readlineb+0xa2>
    2681:	b8 00 00 00 00       	mov    $0x0,%eax
    2686:	85 c0                	test   %eax,%eax
    2688:	75 0d                	jne    2697 <rio_readlineb+0xb3>
    268a:	b8 00 00 00 00       	mov    $0x0,%eax
    268f:	41 83 fd 01          	cmp    $0x1,%r13d
    2693:	75 d2                	jne    2667 <rio_readlineb+0x83>
    2695:	eb d8                	jmp    266f <rio_readlineb+0x8b>
    2697:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    269e:	eb cf                	jmp    266f <rio_readlineb+0x8b>

00000000000026a0 <submitr>:
    26a0:	41 57                	push   %r15
    26a2:	41 56                	push   %r14
    26a4:	41 55                	push   %r13
    26a6:	41 54                	push   %r12
    26a8:	55                   	push   %rbp
    26a9:	53                   	push   %rbx
    26aa:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    26b1:	49 89 fd             	mov    %rdi,%r13
    26b4:	89 f5                	mov    %esi,%ebp
    26b6:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    26bb:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    26c0:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    26c5:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    26ca:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    26d1:	00 
    26d2:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    26d9:	00 
    26da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26e1:	00 00 
    26e3:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    26ea:	00 
    26eb:	31 c0                	xor    %eax,%eax
    26ed:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    26f4:	00 
    26f5:	ba 00 00 00 00       	mov    $0x0,%edx
    26fa:	be 01 00 00 00       	mov    $0x1,%esi
    26ff:	bf 02 00 00 00       	mov    $0x2,%edi
    2704:	e8 c7 f1 ff ff       	callq  18d0 <socket@plt>
    2709:	85 c0                	test   %eax,%eax
    270b:	0f 88 35 01 00 00    	js     2846 <submitr+0x1a6>
    2711:	41 89 c4             	mov    %eax,%r12d
    2714:	4c 89 ef             	mov    %r13,%rdi
    2717:	e8 d4 f0 ff ff       	callq  17f0 <gethostbyname@plt>
    271c:	48 85 c0             	test   %rax,%rax
    271f:	0f 84 71 01 00 00    	je     2896 <submitr+0x1f6>
    2725:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    272a:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    2731:	00 00 
    2733:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    273a:	00 
    273b:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    2742:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2749:	48 63 50 14          	movslq 0x14(%rax),%rdx
    274d:	48 8b 40 18          	mov    0x18(%rax),%rax
    2751:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2756:	b9 0c 00 00 00       	mov    $0xc,%ecx
    275b:	48 8b 30             	mov    (%rax),%rsi
    275e:	e8 9d f0 ff ff       	callq  1800 <__memmove_chk@plt>
    2763:	66 c1 cd 08          	ror    $0x8,%bp
    2767:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    276c:	ba 10 00 00 00       	mov    $0x10,%edx
    2771:	4c 89 ee             	mov    %r13,%rsi
    2774:	44 89 e7             	mov    %r12d,%edi
    2777:	e8 04 f1 ff ff       	callq  1880 <connect@plt>
    277c:	85 c0                	test   %eax,%eax
    277e:	0f 88 7d 01 00 00    	js     2901 <submitr+0x261>
    2784:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    278b:	b8 00 00 00 00       	mov    $0x0,%eax
    2790:	4c 89 c9             	mov    %r9,%rcx
    2793:	48 89 df             	mov    %rbx,%rdi
    2796:	f2 ae                	repnz scas %es:(%rdi),%al
    2798:	48 89 ce             	mov    %rcx,%rsi
    279b:	48 f7 d6             	not    %rsi
    279e:	4c 89 c9             	mov    %r9,%rcx
    27a1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    27a6:	f2 ae                	repnz scas %es:(%rdi),%al
    27a8:	49 89 c8             	mov    %rcx,%r8
    27ab:	4c 89 c9             	mov    %r9,%rcx
    27ae:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    27b3:	f2 ae                	repnz scas %es:(%rdi),%al
    27b5:	48 89 ca             	mov    %rcx,%rdx
    27b8:	48 f7 d2             	not    %rdx
    27bb:	4c 89 c9             	mov    %r9,%rcx
    27be:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    27c3:	f2 ae                	repnz scas %es:(%rdi),%al
    27c5:	4c 29 c2             	sub    %r8,%rdx
    27c8:	48 29 ca             	sub    %rcx,%rdx
    27cb:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    27d0:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    27d5:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    27db:	0f 87 7d 01 00 00    	ja     295e <submitr+0x2be>
    27e1:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    27e8:	00 
    27e9:	b9 00 04 00 00       	mov    $0x400,%ecx
    27ee:	b8 00 00 00 00       	mov    $0x0,%eax
    27f3:	48 89 d7             	mov    %rdx,%rdi
    27f6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    27f9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2800:	48 89 df             	mov    %rbx,%rdi
    2803:	f2 ae                	repnz scas %es:(%rdi),%al
    2805:	48 89 ca             	mov    %rcx,%rdx
    2808:	48 f7 d2             	not    %rdx
    280b:	48 89 d1             	mov    %rdx,%rcx
    280e:	48 83 e9 01          	sub    $0x1,%rcx
    2812:	85 c9                	test   %ecx,%ecx
    2814:	0f 84 3f 06 00 00    	je     2e59 <submitr+0x7b9>
    281a:	8d 41 ff             	lea    -0x1(%rcx),%eax
    281d:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2822:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2829:	00 
    282a:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2831:	00 
    2832:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2837:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    283e:	00 20 00 
    2841:	e9 a6 01 00 00       	jmpq   29ec <submitr+0x34c>
    2846:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    284d:	3a 20 43 
    2850:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2857:	20 75 6e 
    285a:	49 89 07             	mov    %rax,(%r15)
    285d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2861:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2868:	74 6f 20 
    286b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2872:	65 20 73 
    2875:	49 89 47 10          	mov    %rax,0x10(%r15)
    2879:	49 89 57 18          	mov    %rdx,0x18(%r15)
    287d:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2884:	65 
    2885:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    288c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2891:	e9 9a 04 00 00       	jmpq   2d30 <submitr+0x690>
    2896:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    289d:	3a 20 44 
    28a0:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    28a7:	20 75 6e 
    28aa:	49 89 07             	mov    %rax,(%r15)
    28ad:	49 89 57 08          	mov    %rdx,0x8(%r15)
    28b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28b8:	74 6f 20 
    28bb:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    28c2:	76 65 20 
    28c5:	49 89 47 10          	mov    %rax,0x10(%r15)
    28c9:	49 89 57 18          	mov    %rdx,0x18(%r15)
    28cd:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    28d4:	72 20 61 
    28d7:	49 89 47 20          	mov    %rax,0x20(%r15)
    28db:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    28e2:	65 
    28e3:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    28ea:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    28ef:	44 89 e7             	mov    %r12d,%edi
    28f2:	e8 b9 ee ff ff       	callq  17b0 <close@plt>
    28f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28fc:	e9 2f 04 00 00       	jmpq   2d30 <submitr+0x690>
    2901:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2908:	3a 20 55 
    290b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2912:	20 74 6f 
    2915:	49 89 07             	mov    %rax,(%r15)
    2918:	49 89 57 08          	mov    %rdx,0x8(%r15)
    291c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2923:	65 63 74 
    2926:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    292d:	68 65 20 
    2930:	49 89 47 10          	mov    %rax,0x10(%r15)
    2934:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2938:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    293f:	76 
    2940:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2947:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    294c:	44 89 e7             	mov    %r12d,%edi
    294f:	e8 5c ee ff ff       	callq  17b0 <close@plt>
    2954:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2959:	e9 d2 03 00 00       	jmpq   2d30 <submitr+0x690>
    295e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2965:	3a 20 52 
    2968:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    296f:	20 73 74 
    2972:	49 89 07             	mov    %rax,(%r15)
    2975:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2979:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2980:	74 6f 6f 
    2983:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    298a:	65 2e 20 
    298d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2991:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2995:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    299c:	61 73 65 
    299f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    29a6:	49 54 52 
    29a9:	49 89 47 20          	mov    %rax,0x20(%r15)
    29ad:	49 89 57 28          	mov    %rdx,0x28(%r15)
    29b1:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    29b8:	55 46 00 
    29bb:	49 89 47 30          	mov    %rax,0x30(%r15)
    29bf:	44 89 e7             	mov    %r12d,%edi
    29c2:	e8 e9 ed ff ff       	callq  17b0 <close@plt>
    29c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29cc:	e9 5f 03 00 00       	jmpq   2d30 <submitr+0x690>
    29d1:	49 0f a3 c5          	bt     %rax,%r13
    29d5:	73 21                	jae    29f8 <submitr+0x358>
    29d7:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    29db:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    29df:	48 83 c3 01          	add    $0x1,%rbx
    29e3:	4c 39 f3             	cmp    %r14,%rbx
    29e6:	0f 84 6d 04 00 00    	je     2e59 <submitr+0x7b9>
    29ec:	44 0f b6 03          	movzbl (%rbx),%r8d
    29f0:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    29f4:	3c 35                	cmp    $0x35,%al
    29f6:	76 d9                	jbe    29d1 <submitr+0x331>
    29f8:	44 89 c0             	mov    %r8d,%eax
    29fb:	83 e0 df             	and    $0xffffffdf,%eax
    29fe:	83 e8 41             	sub    $0x41,%eax
    2a01:	3c 19                	cmp    $0x19,%al
    2a03:	76 d2                	jbe    29d7 <submitr+0x337>
    2a05:	41 80 f8 20          	cmp    $0x20,%r8b
    2a09:	74 60                	je     2a6b <submitr+0x3cb>
    2a0b:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2a0f:	3c 5f                	cmp    $0x5f,%al
    2a11:	76 0a                	jbe    2a1d <submitr+0x37d>
    2a13:	41 80 f8 09          	cmp    $0x9,%r8b
    2a17:	0f 85 af 03 00 00    	jne    2dcc <submitr+0x72c>
    2a1d:	45 0f b6 c0          	movzbl %r8b,%r8d
    2a21:	48 8d 0d c8 15 00 00 	lea    0x15c8(%rip),%rcx        # 3ff0 <array.3417+0xbf0>
    2a28:	ba 08 00 00 00       	mov    $0x8,%edx
    2a2d:	be 01 00 00 00       	mov    $0x1,%esi
    2a32:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2a37:	b8 00 00 00 00       	mov    $0x0,%eax
    2a3c:	e8 7f ee ff ff       	callq  18c0 <__sprintf_chk@plt>
    2a41:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2a48:	00 
    2a49:	88 45 00             	mov    %al,0x0(%rbp)
    2a4c:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2a53:	00 
    2a54:	88 45 01             	mov    %al,0x1(%rbp)
    2a57:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2a5e:	00 
    2a5f:	88 45 02             	mov    %al,0x2(%rbp)
    2a62:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2a66:	e9 74 ff ff ff       	jmpq   29df <submitr+0x33f>
    2a6b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2a6f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2a73:	e9 67 ff ff ff       	jmpq   29df <submitr+0x33f>
    2a78:	49 01 c5             	add    %rax,%r13
    2a7b:	48 29 c5             	sub    %rax,%rbp
    2a7e:	74 26                	je     2aa6 <submitr+0x406>
    2a80:	48 89 ea             	mov    %rbp,%rdx
    2a83:	4c 89 ee             	mov    %r13,%rsi
    2a86:	44 89 e7             	mov    %r12d,%edi
    2a89:	e8 f2 ec ff ff       	callq  1780 <write@plt>
    2a8e:	48 85 c0             	test   %rax,%rax
    2a91:	7f e5                	jg     2a78 <submitr+0x3d8>
    2a93:	e8 b8 ec ff ff       	callq  1750 <__errno_location@plt>
    2a98:	83 38 04             	cmpl   $0x4,(%rax)
    2a9b:	0f 85 31 01 00 00    	jne    2bd2 <submitr+0x532>
    2aa1:	4c 89 f0             	mov    %r14,%rax
    2aa4:	eb d2                	jmp    2a78 <submitr+0x3d8>
    2aa6:	48 85 db             	test   %rbx,%rbx
    2aa9:	0f 88 23 01 00 00    	js     2bd2 <submitr+0x532>
    2aaf:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2ab4:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2abb:	00 
    2abc:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2ac1:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2ac5:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2aca:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2ad1:	00 
    2ad2:	ba 00 20 00 00       	mov    $0x2000,%edx
    2ad7:	e8 08 fb ff ff       	callq  25e4 <rio_readlineb>
    2adc:	48 85 c0             	test   %rax,%rax
    2adf:	0f 8e 4c 01 00 00    	jle    2c31 <submitr+0x591>
    2ae5:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2aea:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2af1:	00 
    2af2:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2af9:	00 
    2afa:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2b01:	00 
    2b02:	48 8d 35 ee 14 00 00 	lea    0x14ee(%rip),%rsi        # 3ff7 <array.3417+0xbf7>
    2b09:	b8 00 00 00 00       	mov    $0x0,%eax
    2b0e:	e8 1d ed ff ff       	callq  1830 <__isoc99_sscanf@plt>
    2b13:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2b18:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2b1f:	0f 85 80 01 00 00    	jne    2ca5 <submitr+0x605>
    2b25:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2b2c:	00 
    2b2d:	48 8d 2d d4 14 00 00 	lea    0x14d4(%rip),%rbp        # 4008 <array.3417+0xc08>
    2b34:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    2b39:	b9 03 00 00 00       	mov    $0x3,%ecx
    2b3e:	48 89 de             	mov    %rbx,%rsi
    2b41:	48 89 ef             	mov    %rbp,%rdi
    2b44:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2b46:	0f 97 c0             	seta   %al
    2b49:	1c 00                	sbb    $0x0,%al
    2b4b:	84 c0                	test   %al,%al
    2b4d:	0f 84 89 01 00 00    	je     2cdc <submitr+0x63c>
    2b53:	ba 00 20 00 00       	mov    $0x2000,%edx
    2b58:	48 89 de             	mov    %rbx,%rsi
    2b5b:	4c 89 ef             	mov    %r13,%rdi
    2b5e:	e8 81 fa ff ff       	callq  25e4 <rio_readlineb>
    2b63:	48 85 c0             	test   %rax,%rax
    2b66:	7f d1                	jg     2b39 <submitr+0x499>
    2b68:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b6f:	3a 20 43 
    2b72:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b79:	20 75 6e 
    2b7c:	49 89 07             	mov    %rax,(%r15)
    2b7f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2b83:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b8a:	74 6f 20 
    2b8d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2b94:	68 65 61 
    2b97:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b9b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b9f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2ba6:	66 72 6f 
    2ba9:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2bb0:	76 65 72 
    2bb3:	49 89 47 20          	mov    %rax,0x20(%r15)
    2bb7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2bbb:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2bc0:	44 89 e7             	mov    %r12d,%edi
    2bc3:	e8 e8 eb ff ff       	callq  17b0 <close@plt>
    2bc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bcd:	e9 5e 01 00 00       	jmpq   2d30 <submitr+0x690>
    2bd2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2bd9:	3a 20 43 
    2bdc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2be3:	20 75 6e 
    2be6:	49 89 07             	mov    %rax,(%r15)
    2be9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2bed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bf4:	74 6f 20 
    2bf7:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2bfe:	20 74 6f 
    2c01:	49 89 47 10          	mov    %rax,0x10(%r15)
    2c05:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2c09:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2c10:	73 65 72 
    2c13:	49 89 47 20          	mov    %rax,0x20(%r15)
    2c17:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2c1e:	00 
    2c1f:	44 89 e7             	mov    %r12d,%edi
    2c22:	e8 89 eb ff ff       	callq  17b0 <close@plt>
    2c27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c2c:	e9 ff 00 00 00       	jmpq   2d30 <submitr+0x690>
    2c31:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c38:	3a 20 43 
    2c3b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c42:	20 75 6e 
    2c45:	49 89 07             	mov    %rax,(%r15)
    2c48:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2c4c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c53:	74 6f 20 
    2c56:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c5d:	66 69 72 
    2c60:	49 89 47 10          	mov    %rax,0x10(%r15)
    2c64:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2c68:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c6f:	61 64 65 
    2c72:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2c79:	6d 20 73 
    2c7c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2c80:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2c84:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2c8b:	65 
    2c8c:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2c93:	44 89 e7             	mov    %r12d,%edi
    2c96:	e8 15 eb ff ff       	callq  17b0 <close@plt>
    2c9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ca0:	e9 8b 00 00 00       	jmpq   2d30 <submitr+0x690>
    2ca5:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2cac:	00 
    2cad:	48 8d 0d 8c 12 00 00 	lea    0x128c(%rip),%rcx        # 3f40 <array.3417+0xb40>
    2cb4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2cbb:	be 01 00 00 00       	mov    $0x1,%esi
    2cc0:	4c 89 ff             	mov    %r15,%rdi
    2cc3:	b8 00 00 00 00       	mov    $0x0,%eax
    2cc8:	e8 f3 eb ff ff       	callq  18c0 <__sprintf_chk@plt>
    2ccd:	44 89 e7             	mov    %r12d,%edi
    2cd0:	e8 db ea ff ff       	callq  17b0 <close@plt>
    2cd5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cda:	eb 54                	jmp    2d30 <submitr+0x690>
    2cdc:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2ce3:	00 
    2ce4:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2ce9:	ba 00 20 00 00       	mov    $0x2000,%edx
    2cee:	e8 f1 f8 ff ff       	callq  25e4 <rio_readlineb>
    2cf3:	48 85 c0             	test   %rax,%rax
    2cf6:	7e 61                	jle    2d59 <submitr+0x6b9>
    2cf8:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2cff:	00 
    2d00:	4c 89 ff             	mov    %r15,%rdi
    2d03:	e8 58 ea ff ff       	callq  1760 <strcpy@plt>
    2d08:	44 89 e7             	mov    %r12d,%edi
    2d0b:	e8 a0 ea ff ff       	callq  17b0 <close@plt>
    2d10:	b9 03 00 00 00       	mov    $0x3,%ecx
    2d15:	48 8d 3d ef 12 00 00 	lea    0x12ef(%rip),%rdi        # 400b <array.3417+0xc0b>
    2d1c:	4c 89 fe             	mov    %r15,%rsi
    2d1f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d21:	0f 97 c0             	seta   %al
    2d24:	1c 00                	sbb    $0x0,%al
    2d26:	84 c0                	test   %al,%al
    2d28:	0f 95 c0             	setne  %al
    2d2b:	0f b6 c0             	movzbl %al,%eax
    2d2e:	f7 d8                	neg    %eax
    2d30:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2d37:	00 
    2d38:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    2d3f:	00 00 
    2d41:	0f 85 95 01 00 00    	jne    2edc <submitr+0x83c>
    2d47:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    2d4e:	5b                   	pop    %rbx
    2d4f:	5d                   	pop    %rbp
    2d50:	41 5c                	pop    %r12
    2d52:	41 5d                	pop    %r13
    2d54:	41 5e                	pop    %r14
    2d56:	41 5f                	pop    %r15
    2d58:	c3                   	retq   
    2d59:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d60:	3a 20 43 
    2d63:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d6a:	20 75 6e 
    2d6d:	49 89 07             	mov    %rax,(%r15)
    2d70:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2d74:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d7b:	74 6f 20 
    2d7e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d85:	73 74 61 
    2d88:	49 89 47 10          	mov    %rax,0x10(%r15)
    2d8c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2d90:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d97:	65 73 73 
    2d9a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2da1:	72 6f 6d 
    2da4:	49 89 47 20          	mov    %rax,0x20(%r15)
    2da8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2dac:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2db3:	65 72 00 
    2db6:	49 89 47 30          	mov    %rax,0x30(%r15)
    2dba:	44 89 e7             	mov    %r12d,%edi
    2dbd:	e8 ee e9 ff ff       	callq  17b0 <close@plt>
    2dc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dc7:	e9 64 ff ff ff       	jmpq   2d30 <submitr+0x690>
    2dcc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2dd3:	3a 20 52 
    2dd6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2ddd:	20 73 74 
    2de0:	49 89 07             	mov    %rax,(%r15)
    2de3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2de7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2dee:	63 6f 6e 
    2df1:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2df8:	20 61 6e 
    2dfb:	49 89 47 10          	mov    %rax,0x10(%r15)
    2dff:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2e03:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2e0a:	67 61 6c 
    2e0d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2e14:	6e 70 72 
    2e17:	49 89 47 20          	mov    %rax,0x20(%r15)
    2e1b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2e1f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2e26:	6c 65 20 
    2e29:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2e30:	63 74 65 
    2e33:	49 89 47 30          	mov    %rax,0x30(%r15)
    2e37:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2e3b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2e42:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2e47:	44 89 e7             	mov    %r12d,%edi
    2e4a:	e8 61 e9 ff ff       	callq  17b0 <close@plt>
    2e4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e54:	e9 d7 fe ff ff       	jmpq   2d30 <submitr+0x690>
    2e59:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2e60:	00 
    2e61:	48 83 ec 08          	sub    $0x8,%rsp
    2e65:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    2e6c:	00 
    2e6d:	50                   	push   %rax
    2e6e:	ff 74 24 28          	pushq  0x28(%rsp)
    2e72:	ff 74 24 38          	pushq  0x38(%rsp)
    2e76:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2e7b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2e80:	48 8d 0d e9 10 00 00 	lea    0x10e9(%rip),%rcx        # 3f70 <array.3417+0xb70>
    2e87:	ba 00 20 00 00       	mov    $0x2000,%edx
    2e8c:	be 01 00 00 00       	mov    $0x1,%esi
    2e91:	48 89 df             	mov    %rbx,%rdi
    2e94:	b8 00 00 00 00       	mov    $0x0,%eax
    2e99:	e8 22 ea ff ff       	callq  18c0 <__sprintf_chk@plt>
    2e9e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2ea5:	b8 00 00 00 00       	mov    $0x0,%eax
    2eaa:	48 89 df             	mov    %rbx,%rdi
    2ead:	f2 ae                	repnz scas %es:(%rdi),%al
    2eaf:	48 f7 d1             	not    %rcx
    2eb2:	48 89 cb             	mov    %rcx,%rbx
    2eb5:	48 83 eb 01          	sub    $0x1,%rbx
    2eb9:	48 83 c4 20          	add    $0x20,%rsp
    2ebd:	48 89 dd             	mov    %rbx,%rbp
    2ec0:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    2ec7:	00 
    2ec8:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2ece:	48 85 db             	test   %rbx,%rbx
    2ed1:	0f 85 a9 fb ff ff    	jne    2a80 <submitr+0x3e0>
    2ed7:	e9 d3 fb ff ff       	jmpq   2aaf <submitr+0x40f>
    2edc:	e8 af e8 ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000002ee1 <init_timeout>:
    2ee1:	85 ff                	test   %edi,%edi
    2ee3:	74 25                	je     2f0a <init_timeout+0x29>
    2ee5:	53                   	push   %rbx
    2ee6:	89 fb                	mov    %edi,%ebx
    2ee8:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 25b4 <sigalrm_handler>
    2eef:	bf 0e 00 00 00       	mov    $0xe,%edi
    2ef4:	e8 e7 e8 ff ff       	callq  17e0 <signal@plt>
    2ef9:	85 db                	test   %ebx,%ebx
    2efb:	bf 00 00 00 00       	mov    $0x0,%edi
    2f00:	0f 49 fb             	cmovns %ebx,%edi
    2f03:	e8 98 e8 ff ff       	callq  17a0 <alarm@plt>
    2f08:	5b                   	pop    %rbx
    2f09:	c3                   	retq   
    2f0a:	f3 c3                	repz retq 

0000000000002f0c <init_driver>:
    2f0c:	41 54                	push   %r12
    2f0e:	55                   	push   %rbp
    2f0f:	53                   	push   %rbx
    2f10:	48 83 ec 20          	sub    $0x20,%rsp
    2f14:	49 89 fc             	mov    %rdi,%r12
    2f17:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f1e:	00 00 
    2f20:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2f25:	31 c0                	xor    %eax,%eax
    2f27:	be 01 00 00 00       	mov    $0x1,%esi
    2f2c:	bf 0d 00 00 00       	mov    $0xd,%edi
    2f31:	e8 aa e8 ff ff       	callq  17e0 <signal@plt>
    2f36:	be 01 00 00 00       	mov    $0x1,%esi
    2f3b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f40:	e8 9b e8 ff ff       	callq  17e0 <signal@plt>
    2f45:	be 01 00 00 00       	mov    $0x1,%esi
    2f4a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f4f:	e8 8c e8 ff ff       	callq  17e0 <signal@plt>
    2f54:	ba 00 00 00 00       	mov    $0x0,%edx
    2f59:	be 01 00 00 00       	mov    $0x1,%esi
    2f5e:	bf 02 00 00 00       	mov    $0x2,%edi
    2f63:	e8 68 e9 ff ff       	callq  18d0 <socket@plt>
    2f68:	85 c0                	test   %eax,%eax
    2f6a:	0f 88 a3 00 00 00    	js     3013 <init_driver+0x107>
    2f70:	89 c3                	mov    %eax,%ebx
    2f72:	48 8d 3d 2f 08 00 00 	lea    0x82f(%rip),%rdi        # 37a8 <array.3417+0x3a8>
    2f79:	e8 72 e8 ff ff       	callq  17f0 <gethostbyname@plt>
    2f7e:	48 85 c0             	test   %rax,%rax
    2f81:	0f 84 df 00 00 00    	je     3066 <init_driver+0x15a>
    2f87:	48 89 e5             	mov    %rsp,%rbp
    2f8a:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2f91:	00 00 
    2f93:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2f9a:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2fa0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2fa6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2faa:	48 8b 40 18          	mov    0x18(%rax),%rax
    2fae:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2fb2:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2fb7:	48 8b 30             	mov    (%rax),%rsi
    2fba:	e8 41 e8 ff ff       	callq  1800 <__memmove_chk@plt>
    2fbf:	66 c7 44 24 02 4e f4 	movw   $0xf44e,0x2(%rsp)
    2fc6:	ba 10 00 00 00       	mov    $0x10,%edx
    2fcb:	48 89 ee             	mov    %rbp,%rsi
    2fce:	89 df                	mov    %ebx,%edi
    2fd0:	e8 ab e8 ff ff       	callq  1880 <connect@plt>
    2fd5:	85 c0                	test   %eax,%eax
    2fd7:	0f 88 fb 00 00 00    	js     30d8 <init_driver+0x1cc>
    2fdd:	89 df                	mov    %ebx,%edi
    2fdf:	e8 cc e7 ff ff       	callq  17b0 <close@plt>
    2fe4:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2feb:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2ff1:	b8 00 00 00 00       	mov    $0x0,%eax
    2ff6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2ffb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3002:	00 00 
    3004:	0f 85 06 01 00 00    	jne    3110 <init_driver+0x204>
    300a:	48 83 c4 20          	add    $0x20,%rsp
    300e:	5b                   	pop    %rbx
    300f:	5d                   	pop    %rbp
    3010:	41 5c                	pop    %r12
    3012:	c3                   	retq   
    3013:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    301a:	3a 20 43 
    301d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3024:	20 75 6e 
    3027:	49 89 04 24          	mov    %rax,(%r12)
    302b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3030:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3037:	74 6f 20 
    303a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3041:	65 20 73 
    3044:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    3049:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    304e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    3055:	6b 65 
    3057:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    305e:	00 
    305f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3064:	eb 90                	jmp    2ff6 <init_driver+0xea>
    3066:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    306d:	3a 20 44 
    3070:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3077:	20 75 6e 
    307a:	49 89 04 24          	mov    %rax,(%r12)
    307e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3083:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    308a:	74 6f 20 
    308d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3094:	76 65 20 
    3097:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    309c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    30a1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    30a8:	72 20 61 
    30ab:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    30b0:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    30b7:	72 65 
    30b9:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    30c0:	73 
    30c1:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    30c7:	89 df                	mov    %ebx,%edi
    30c9:	e8 e2 e6 ff ff       	callq  17b0 <close@plt>
    30ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    30d3:	e9 1e ff ff ff       	jmpq   2ff6 <init_driver+0xea>
    30d8:	4c 8d 05 c9 06 00 00 	lea    0x6c9(%rip),%r8        # 37a8 <array.3417+0x3a8>
    30df:	48 8d 0d e2 0e 00 00 	lea    0xee2(%rip),%rcx        # 3fc8 <array.3417+0xbc8>
    30e6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    30ed:	be 01 00 00 00       	mov    $0x1,%esi
    30f2:	4c 89 e7             	mov    %r12,%rdi
    30f5:	b8 00 00 00 00       	mov    $0x0,%eax
    30fa:	e8 c1 e7 ff ff       	callq  18c0 <__sprintf_chk@plt>
    30ff:	89 df                	mov    %ebx,%edi
    3101:	e8 aa e6 ff ff       	callq  17b0 <close@plt>
    3106:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    310b:	e9 e6 fe ff ff       	jmpq   2ff6 <init_driver+0xea>
    3110:	e8 7b e6 ff ff       	callq  1790 <__stack_chk_fail@plt>

0000000000003115 <driver_post>:
    3115:	53                   	push   %rbx
    3116:	4c 89 c3             	mov    %r8,%rbx
    3119:	85 c9                	test   %ecx,%ecx
    311b:	75 17                	jne    3134 <driver_post+0x1f>
    311d:	48 85 ff             	test   %rdi,%rdi
    3120:	74 05                	je     3127 <driver_post+0x12>
    3122:	80 3f 00             	cmpb   $0x0,(%rdi)
    3125:	75 33                	jne    315a <driver_post+0x45>
    3127:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    312c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3130:	89 c8                	mov    %ecx,%eax
    3132:	5b                   	pop    %rbx
    3133:	c3                   	retq   
    3134:	48 8d 35 d3 0e 00 00 	lea    0xed3(%rip),%rsi        # 400e <array.3417+0xc0e>
    313b:	bf 01 00 00 00       	mov    $0x1,%edi
    3140:	b8 00 00 00 00       	mov    $0x0,%eax
    3145:	e8 f6 e6 ff ff       	callq  1840 <__printf_chk@plt>
    314a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    314f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3153:	b8 00 00 00 00       	mov    $0x0,%eax
    3158:	eb d8                	jmp    3132 <driver_post+0x1d>
    315a:	41 50                	push   %r8
    315c:	52                   	push   %rdx
    315d:	4c 8d 0d c1 0e 00 00 	lea    0xec1(%rip),%r9        # 4025 <array.3417+0xc25>
    3164:	49 89 f0             	mov    %rsi,%r8
    3167:	48 89 f9             	mov    %rdi,%rcx
    316a:	48 8d 15 b8 0e 00 00 	lea    0xeb8(%rip),%rdx        # 4029 <array.3417+0xc29>
    3171:	be f4 4e 00 00       	mov    $0x4ef4,%esi
    3176:	48 8d 3d 2b 06 00 00 	lea    0x62b(%rip),%rdi        # 37a8 <array.3417+0x3a8>
    317d:	e8 1e f5 ff ff       	callq  26a0 <submitr>
    3182:	48 83 c4 10          	add    $0x10,%rsp
    3186:	eb aa                	jmp    3132 <driver_post+0x1d>
    3188:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    318f:	00 

0000000000003190 <__libc_csu_init>:
    3190:	41 57                	push   %r15
    3192:	41 56                	push   %r14
    3194:	49 89 d7             	mov    %rdx,%r15
    3197:	41 55                	push   %r13
    3199:	41 54                	push   %r12
    319b:	4c 8d 25 46 1b 20 00 	lea    0x201b46(%rip),%r12        # 204ce8 <__frame_dummy_init_array_entry>
    31a2:	55                   	push   %rbp
    31a3:	48 8d 2d 46 1b 20 00 	lea    0x201b46(%rip),%rbp        # 204cf0 <__init_array_end>
    31aa:	53                   	push   %rbx
    31ab:	41 89 fd             	mov    %edi,%r13d
    31ae:	49 89 f6             	mov    %rsi,%r14
    31b1:	4c 29 e5             	sub    %r12,%rbp
    31b4:	48 83 ec 08          	sub    $0x8,%rsp
    31b8:	48 c1 fd 03          	sar    $0x3,%rbp
    31bc:	e8 3f e5 ff ff       	callq  1700 <_init>
    31c1:	48 85 ed             	test   %rbp,%rbp
    31c4:	74 20                	je     31e6 <__libc_csu_init+0x56>
    31c6:	31 db                	xor    %ebx,%ebx
    31c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    31cf:	00 
    31d0:	4c 89 fa             	mov    %r15,%rdx
    31d3:	4c 89 f6             	mov    %r14,%rsi
    31d6:	44 89 ef             	mov    %r13d,%edi
    31d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    31dd:	48 83 c3 01          	add    $0x1,%rbx
    31e1:	48 39 dd             	cmp    %rbx,%rbp
    31e4:	75 ea                	jne    31d0 <__libc_csu_init+0x40>
    31e6:	48 83 c4 08          	add    $0x8,%rsp
    31ea:	5b                   	pop    %rbx
    31eb:	5d                   	pop    %rbp
    31ec:	41 5c                	pop    %r12
    31ee:	41 5d                	pop    %r13
    31f0:	41 5e                	pop    %r14
    31f2:	41 5f                	pop    %r15
    31f4:	c3                   	retq   
    31f5:	90                   	nop
    31f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    31fd:	00 00 00 

0000000000003200 <__libc_csu_fini>:
    3200:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003204 <_fini>:
    3204:	48 83 ec 08          	sub    $0x8,%rsp
    3208:	48 83 c4 08          	add    $0x8,%rsp
    320c:	c3                   	retq   
