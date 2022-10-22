
unlock:     file format elf64-x86-64


Disassembly of section .init:

0000000000400960 <_init>:
  400960:	48 83 ec 08          	sub    $0x8,%rsp
  400964:	48 8b 05 8d 16 20 00 	mov    0x20168d(%rip),%rax        # 601ff8 <__gmon_start__>
  40096b:	48 85 c0             	test   %rax,%rax
  40096e:	74 05                	je     400975 <_init+0x15>
  400970:	e8 eb 00 00 00       	callq  400a60 <__gmon_start__@plt>
  400975:	48 83 c4 08          	add    $0x8,%rsp
  400979:	c3                   	retq   

Disassembly of section .plt:

0000000000400980 <.plt>:
  400980:	ff 35 82 16 20 00    	pushq  0x201682(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400986:	ff 25 84 16 20 00    	jmpq   *0x201684(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40098c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400990 <putchar@plt>:
  400990:	ff 25 82 16 20 00    	jmpq   *0x201682(%rip)        # 602018 <putchar@GLIBC_2.2.5>
  400996:	68 00 00 00 00       	pushq  $0x0
  40099b:	e9 e0 ff ff ff       	jmpq   400980 <.plt>

00000000004009a0 <unlink@plt>:
  4009a0:	ff 25 7a 16 20 00    	jmpq   *0x20167a(%rip)        # 602020 <unlink@GLIBC_2.2.5>
  4009a6:	68 01 00 00 00       	pushq  $0x1
  4009ab:	e9 d0 ff ff ff       	jmpq   400980 <.plt>

00000000004009b0 <puts@plt>:
  4009b0:	ff 25 72 16 20 00    	jmpq   *0x201672(%rip)        # 602028 <puts@GLIBC_2.2.5>
  4009b6:	68 02 00 00 00       	pushq  $0x2
  4009bb:	e9 c0 ff ff ff       	jmpq   400980 <.plt>

00000000004009c0 <fread@plt>:
  4009c0:	ff 25 6a 16 20 00    	jmpq   *0x20166a(%rip)        # 602030 <fread@GLIBC_2.2.5>
  4009c6:	68 03 00 00 00       	pushq  $0x3
  4009cb:	e9 b0 ff ff ff       	jmpq   400980 <.plt>

00000000004009d0 <fclose@plt>:
  4009d0:	ff 25 62 16 20 00    	jmpq   *0x201662(%rip)        # 602038 <fclose@GLIBC_2.2.5>
  4009d6:	68 04 00 00 00       	pushq  $0x4
  4009db:	e9 a0 ff ff ff       	jmpq   400980 <.plt>

00000000004009e0 <strlen@plt>:
  4009e0:	ff 25 5a 16 20 00    	jmpq   *0x20165a(%rip)        # 602040 <strlen@GLIBC_2.2.5>
  4009e6:	68 05 00 00 00       	pushq  $0x5
  4009eb:	e9 90 ff ff ff       	jmpq   400980 <.plt>

00000000004009f0 <printf@plt>:
  4009f0:	ff 25 52 16 20 00    	jmpq   *0x201652(%rip)        # 602048 <printf@GLIBC_2.2.5>
  4009f6:	68 06 00 00 00       	pushq  $0x6
  4009fb:	e9 80 ff ff ff       	jmpq   400980 <.plt>

0000000000400a00 <nanosleep@plt>:
  400a00:	ff 25 4a 16 20 00    	jmpq   *0x20164a(%rip)        # 602050 <nanosleep@GLIBC_2.2.5>
  400a06:	68 07 00 00 00       	pushq  $0x7
  400a0b:	e9 70 ff ff ff       	jmpq   400980 <.plt>

0000000000400a10 <__assert_fail@plt>:
  400a10:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 602058 <__assert_fail@GLIBC_2.2.5>
  400a16:	68 08 00 00 00       	pushq  $0x8
  400a1b:	e9 60 ff ff ff       	jmpq   400980 <.plt>

0000000000400a20 <__libc_start_main@plt>:
  400a20:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 602060 <__libc_start_main@GLIBC_2.2.5>
  400a26:	68 09 00 00 00       	pushq  $0x9
  400a2b:	e9 50 ff ff ff       	jmpq   400980 <.plt>

0000000000400a30 <calloc@plt>:
  400a30:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 602068 <calloc@GLIBC_2.2.5>
  400a36:	68 0a 00 00 00       	pushq  $0xa
  400a3b:	e9 40 ff ff ff       	jmpq   400980 <.plt>

0000000000400a40 <fprintf@plt>:
  400a40:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 602070 <fprintf@GLIBC_2.2.5>
  400a46:	68 0b 00 00 00       	pushq  $0xb
  400a4b:	e9 30 ff ff ff       	jmpq   400980 <.plt>

0000000000400a50 <ftell@plt>:
  400a50:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 602078 <ftell@GLIBC_2.2.5>
  400a56:	68 0c 00 00 00       	pushq  $0xc
  400a5b:	e9 20 ff ff ff       	jmpq   400980 <.plt>

0000000000400a60 <__gmon_start__@plt>:
  400a60:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 602080 <__gmon_start__>
  400a66:	68 0d 00 00 00       	pushq  $0xd
  400a6b:	e9 10 ff ff ff       	jmpq   400980 <.plt>

0000000000400a70 <fileno@plt>:
  400a70:	ff 25 12 16 20 00    	jmpq   *0x201612(%rip)        # 602088 <fileno@GLIBC_2.2.5>
  400a76:	68 0e 00 00 00       	pushq  $0xe
  400a7b:	e9 00 ff ff ff       	jmpq   400980 <.plt>

0000000000400a80 <__xstat@plt>:
  400a80:	ff 25 0a 16 20 00    	jmpq   *0x20160a(%rip)        # 602090 <__xstat@GLIBC_2.2.5>
  400a86:	68 0f 00 00 00       	pushq  $0xf
  400a8b:	e9 f0 fe ff ff       	jmpq   400980 <.plt>

0000000000400a90 <malloc@plt>:
  400a90:	ff 25 02 16 20 00    	jmpq   *0x201602(%rip)        # 602098 <malloc@GLIBC_2.2.5>
  400a96:	68 10 00 00 00       	pushq  $0x10
  400a9b:	e9 e0 fe ff ff       	jmpq   400980 <.plt>

0000000000400aa0 <fseek@plt>:
  400aa0:	ff 25 fa 15 20 00    	jmpq   *0x2015fa(%rip)        # 6020a0 <fseek@GLIBC_2.2.5>
  400aa6:	68 11 00 00 00       	pushq  $0x11
  400aab:	e9 d0 fe ff ff       	jmpq   400980 <.plt>

0000000000400ab0 <fchmod@plt>:
  400ab0:	ff 25 f2 15 20 00    	jmpq   *0x2015f2(%rip)        # 6020a8 <fchmod@GLIBC_2.2.5>
  400ab6:	68 12 00 00 00       	pushq  $0x12
  400abb:	e9 c0 fe ff ff       	jmpq   400980 <.plt>

0000000000400ac0 <setvbuf@plt>:
  400ac0:	ff 25 ea 15 20 00    	jmpq   *0x2015ea(%rip)        # 6020b0 <setvbuf@GLIBC_2.2.5>
  400ac6:	68 13 00 00 00       	pushq  $0x13
  400acb:	e9 b0 fe ff ff       	jmpq   400980 <.plt>

0000000000400ad0 <fopen@plt>:
  400ad0:	ff 25 e2 15 20 00    	jmpq   *0x2015e2(%rip)        # 6020b8 <fopen@GLIBC_2.2.5>
  400ad6:	68 14 00 00 00       	pushq  $0x14
  400adb:	e9 a0 fe ff ff       	jmpq   400980 <.plt>

0000000000400ae0 <__isoc99_scanf@plt>:
  400ae0:	ff 25 da 15 20 00    	jmpq   *0x2015da(%rip)        # 6020c0 <__isoc99_scanf@GLIBC_2.7>
  400ae6:	68 15 00 00 00       	pushq  $0x15
  400aeb:	e9 90 fe ff ff       	jmpq   400980 <.plt>

0000000000400af0 <exit@plt>:
  400af0:	ff 25 d2 15 20 00    	jmpq   *0x2015d2(%rip)        # 6020c8 <exit@GLIBC_2.2.5>
  400af6:	68 16 00 00 00       	pushq  $0x16
  400afb:	e9 80 fe ff ff       	jmpq   400980 <.plt>

0000000000400b00 <fwrite@plt>:
  400b00:	ff 25 ca 15 20 00    	jmpq   *0x2015ca(%rip)        # 6020d0 <fwrite@GLIBC_2.2.5>
  400b06:	68 17 00 00 00       	pushq  $0x17
  400b0b:	e9 70 fe ff ff       	jmpq   400980 <.plt>

0000000000400b10 <sleep@plt>:
  400b10:	ff 25 c2 15 20 00    	jmpq   *0x2015c2(%rip)        # 6020d8 <sleep@GLIBC_2.2.5>
  400b16:	68 18 00 00 00       	pushq  $0x18
  400b1b:	e9 60 fe ff ff       	jmpq   400980 <.plt>

Disassembly of section .text:

0000000000400b20 <_start>:
  400b20:	31 ed                	xor    %ebp,%ebp
  400b22:	49 89 d1             	mov    %rdx,%r9
  400b25:	5e                   	pop    %rsi
  400b26:	48 89 e2             	mov    %rsp,%rdx
  400b29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400b2d:	50                   	push   %rax
  400b2e:	54                   	push   %rsp
  400b2f:	49 c7 c0 c0 16 40 00 	mov    $0x4016c0,%r8
  400b36:	48 c7 c1 50 16 40 00 	mov    $0x401650,%rcx
  400b3d:	48 c7 c7 db 12 40 00 	mov    $0x4012db,%rdi
  400b44:	e8 d7 fe ff ff       	callq  400a20 <__libc_start_main@plt>
  400b49:	f4                   	hlt    
  400b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400b50 <deregister_tm_clones>:
  400b50:	b8 6f 21 60 00       	mov    $0x60216f,%eax
  400b55:	55                   	push   %rbp
  400b56:	48 2d 68 21 60 00    	sub    $0x602168,%rax
  400b5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400b60:	48 89 e5             	mov    %rsp,%rbp
  400b63:	77 02                	ja     400b67 <deregister_tm_clones+0x17>
  400b65:	5d                   	pop    %rbp
  400b66:	c3                   	retq   
  400b67:	b8 00 00 00 00       	mov    $0x0,%eax
  400b6c:	48 85 c0             	test   %rax,%rax
  400b6f:	74 f4                	je     400b65 <deregister_tm_clones+0x15>
  400b71:	5d                   	pop    %rbp
  400b72:	bf 68 21 60 00       	mov    $0x602168,%edi
  400b77:	ff e0                	jmpq   *%rax
  400b79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400b80 <register_tm_clones>:
  400b80:	b8 68 21 60 00       	mov    $0x602168,%eax
  400b85:	55                   	push   %rbp
  400b86:	48 2d 68 21 60 00    	sub    $0x602168,%rax
  400b8c:	48 c1 f8 03          	sar    $0x3,%rax
  400b90:	48 89 e5             	mov    %rsp,%rbp
  400b93:	48 89 c2             	mov    %rax,%rdx
  400b96:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400b9a:	48 01 d0             	add    %rdx,%rax
  400b9d:	48 d1 f8             	sar    %rax
  400ba0:	75 02                	jne    400ba4 <register_tm_clones+0x24>
  400ba2:	5d                   	pop    %rbp
  400ba3:	c3                   	retq   
  400ba4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ba9:	48 85 d2             	test   %rdx,%rdx
  400bac:	74 f4                	je     400ba2 <register_tm_clones+0x22>
  400bae:	5d                   	pop    %rbp
  400baf:	48 89 c6             	mov    %rax,%rsi
  400bb2:	bf 68 21 60 00       	mov    $0x602168,%edi
  400bb7:	ff e2                	jmpq   *%rdx
  400bb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400bc0 <__do_global_dtors_aux>:
  400bc0:	80 3d c9 15 20 00 00 	cmpb   $0x0,0x2015c9(%rip)        # 602190 <completed.6355>
  400bc7:	75 11                	jne    400bda <__do_global_dtors_aux+0x1a>
  400bc9:	55                   	push   %rbp
  400bca:	48 89 e5             	mov    %rsp,%rbp
  400bcd:	e8 7e ff ff ff       	callq  400b50 <deregister_tm_clones>
  400bd2:	5d                   	pop    %rbp
  400bd3:	c6 05 b6 15 20 00 01 	movb   $0x1,0x2015b6(%rip)        # 602190 <completed.6355>
  400bda:	f3 c3                	repz retq 
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <frame_dummy>:
  400be0:	48 83 3d 38 12 20 00 	cmpq   $0x0,0x201238(%rip)        # 601e20 <__JCR_END__>
  400be7:	00 
  400be8:	74 1e                	je     400c08 <frame_dummy+0x28>
  400bea:	b8 00 00 00 00       	mov    $0x0,%eax
  400bef:	48 85 c0             	test   %rax,%rax
  400bf2:	74 14                	je     400c08 <frame_dummy+0x28>
  400bf4:	55                   	push   %rbp
  400bf5:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  400bfa:	48 89 e5             	mov    %rsp,%rbp
  400bfd:	ff d0                	callq  *%rax
  400bff:	5d                   	pop    %rbp
  400c00:	e9 7b ff ff ff       	jmpq   400b80 <register_tm_clones>
  400c05:	0f 1f 00             	nopl   (%rax)
  400c08:	e9 73 ff ff ff       	jmpq   400b80 <register_tm_clones>

0000000000400c0d <msg>:
  400c0d:	55                   	push   %rbp
  400c0e:	48 89 e5             	mov    %rsp,%rbp
  400c11:	48 83 ec 40          	sub    $0x40,%rsp
  400c15:	48 c7 45 d0 10 17 40 	movq   $0x401710,-0x30(%rbp)
  400c1c:	00 
  400c1d:	48 c7 45 d8 40 17 40 	movq   $0x401740,-0x28(%rbp)
  400c24:	00 
  400c25:	48 c7 45 e0 68 17 40 	movq   $0x401768,-0x20(%rbp)
  400c2c:	00 
  400c2d:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  400c34:	00 
  400c35:	48 c7 45 c8 80 f0 fa 	movq   $0x2faf080,-0x38(%rbp)
  400c3c:	02 
  400c3d:	48 8b 05 3c 15 20 00 	mov    0x20153c(%rip),%rax        # 602180 <stdout@@GLIBC_2.2.5>
  400c44:	b9 00 20 00 00       	mov    $0x2000,%ecx
  400c49:	ba 02 00 00 00       	mov    $0x2,%edx
  400c4e:	be 00 00 00 00       	mov    $0x0,%esi
  400c53:	48 89 c7             	mov    %rax,%rdi
  400c56:	e8 65 fe ff ff       	callq  400ac0 <setvbuf@plt>
  400c5b:	bf 90 17 40 00       	mov    $0x401790,%edi
  400c60:	b8 00 00 00 00       	mov    $0x0,%eax
  400c65:	e8 86 fd ff ff       	callq  4009f0 <printf@plt>
  400c6a:	bf 95 17 40 00       	mov    $0x401795,%edi
  400c6f:	b8 00 00 00 00       	mov    $0x0,%eax
  400c74:	e8 77 fd ff ff       	callq  4009f0 <printf@plt>
  400c79:	bf 05 00 00 00       	mov    $0x5,%edi
  400c7e:	e8 8d fe ff ff       	callq  400b10 <sleep@plt>
  400c83:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400c8a:	eb 5e                	jmp    400cea <msg+0xdd>
  400c8c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c8f:	48 98                	cltq   
  400c91:	48 8b 44 c5 d0       	mov    -0x30(%rbp,%rax,8),%rax
  400c96:	48 89 c7             	mov    %rax,%rdi
  400c99:	e8 42 fd ff ff       	callq  4009e0 <strlen@plt>
  400c9e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400ca1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400ca8:	eb 34                	jmp    400cde <msg+0xd1>
  400caa:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400cad:	48 98                	cltq   
  400caf:	48 8b 54 c5 d0       	mov    -0x30(%rbp,%rax,8),%rdx
  400cb4:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400cb7:	48 98                	cltq   
  400cb9:	48 01 d0             	add    %rdx,%rax
  400cbc:	0f b6 00             	movzbl (%rax),%eax
  400cbf:	0f be c0             	movsbl %al,%eax
  400cc2:	89 c7                	mov    %eax,%edi
  400cc4:	e8 c7 fc ff ff       	callq  400990 <putchar@plt>
  400cc9:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400ccd:	be 00 00 00 00       	mov    $0x0,%esi
  400cd2:	48 89 c7             	mov    %rax,%rdi
  400cd5:	e8 26 fd ff ff       	callq  400a00 <nanosleep@plt>
  400cda:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  400cde:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400ce1:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  400ce4:	7c c4                	jl     400caa <msg+0x9d>
  400ce6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400cea:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  400cee:	7e 9c                	jle    400c8c <msg+0x7f>
  400cf0:	c9                   	leaveq 
  400cf1:	c3                   	retq   

0000000000400cf2 <record_attempts>:
  400cf2:	55                   	push   %rbp
  400cf3:	48 89 e5             	mov    %rsp,%rbp
  400cf6:	53                   	push   %rbx
  400cf7:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  400cfe:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
  400d05:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  400d0c:	00 
  400d0d:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  400d14:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  400d1b:	48 89 d6             	mov    %rdx,%rsi
  400d1e:	48 89 c7             	mov    %rax,%rdi
  400d21:	e8 aa 09 00 00       	callq  4016d0 <__stat>
  400d26:	85 c0                	test   %eax,%eax
  400d28:	74 28                	je     400d52 <record_attempts+0x60>
  400d2a:	48 8b 05 57 14 20 00 	mov    0x201457(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400d31:	48 89 c1             	mov    %rax,%rcx
  400d34:	ba 13 00 00 00       	mov    $0x13,%edx
  400d39:	be 01 00 00 00       	mov    $0x1,%esi
  400d3e:	bf 9a 17 40 00       	mov    $0x40179a,%edi
  400d43:	e8 b8 fd ff ff       	callq  400b00 <fwrite@plt>
  400d48:	bf 01 00 00 00       	mov    $0x1,%edi
  400d4d:	e8 9e fd ff ff       	callq  400af0 <exit@plt>
  400d52:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  400d59:	be ae 17 40 00       	mov    $0x4017ae,%esi
  400d5e:	48 89 c7             	mov    %rax,%rdi
  400d61:	e8 6a fd ff ff       	callq  400ad0 <fopen@plt>
  400d66:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400d6a:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  400d6f:	75 28                	jne    400d99 <record_attempts+0xa7>
  400d71:	48 8b 05 10 14 20 00 	mov    0x201410(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400d78:	48 89 c1             	mov    %rax,%rcx
  400d7b:	ba 13 00 00 00       	mov    $0x13,%edx
  400d80:	be 01 00 00 00       	mov    $0x1,%esi
  400d85:	bf b0 17 40 00       	mov    $0x4017b0,%edi
  400d8a:	e8 71 fd ff ff       	callq  400b00 <fwrite@plt>
  400d8f:	bf 01 00 00 00       	mov    $0x1,%edi
  400d94:	e8 57 fd ff ff       	callq  400af0 <exit@plt>
  400d99:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400d9d:	ba 02 00 00 00       	mov    $0x2,%edx
  400da2:	be 00 00 00 00       	mov    $0x0,%esi
  400da7:	48 89 c7             	mov    %rax,%rdi
  400daa:	e8 f1 fc ff ff       	callq  400aa0 <fseek@plt>
  400daf:	85 c0                	test   %eax,%eax
  400db1:	74 28                	je     400ddb <record_attempts+0xe9>
  400db3:	48 8b 05 ce 13 20 00 	mov    0x2013ce(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400dba:	48 89 c1             	mov    %rax,%rcx
  400dbd:	ba 13 00 00 00       	mov    $0x13,%edx
  400dc2:	be 01 00 00 00       	mov    $0x1,%esi
  400dc7:	bf c4 17 40 00       	mov    $0x4017c4,%edi
  400dcc:	e8 2f fd ff ff       	callq  400b00 <fwrite@plt>
  400dd1:	bf 01 00 00 00       	mov    $0x1,%edi
  400dd6:	e8 15 fd ff ff       	callq  400af0 <exit@plt>
  400ddb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ddf:	48 89 c7             	mov    %rax,%rdi
  400de2:	e8 69 fc ff ff       	callq  400a50 <ftell@plt>
  400de7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400deb:	48 83 7d e0 ff       	cmpq   $0xffffffffffffffff,-0x20(%rbp)
  400df0:	75 28                	jne    400e1a <record_attempts+0x128>
  400df2:	48 8b 05 8f 13 20 00 	mov    0x20138f(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400df9:	48 89 c1             	mov    %rax,%rcx
  400dfc:	ba 13 00 00 00       	mov    $0x13,%edx
  400e01:	be 01 00 00 00       	mov    $0x1,%esi
  400e06:	bf d8 17 40 00       	mov    $0x4017d8,%edi
  400e0b:	e8 f0 fc ff ff       	callq  400b00 <fwrite@plt>
  400e10:	bf 01 00 00 00       	mov    $0x1,%edi
  400e15:	e8 d6 fc ff ff       	callq  400af0 <exit@plt>
  400e1a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e1e:	ba 00 00 00 00       	mov    $0x0,%edx
  400e23:	be 00 00 00 00       	mov    $0x0,%esi
  400e28:	48 89 c7             	mov    %rax,%rdi
  400e2b:	e8 70 fc ff ff       	callq  400aa0 <fseek@plt>
  400e30:	85 c0                	test   %eax,%eax
  400e32:	74 28                	je     400e5c <record_attempts+0x16a>
  400e34:	48 8b 05 4d 13 20 00 	mov    0x20134d(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400e3b:	48 89 c1             	mov    %rax,%rcx
  400e3e:	ba 13 00 00 00       	mov    $0x13,%edx
  400e43:	be 01 00 00 00       	mov    $0x1,%esi
  400e48:	bf ec 17 40 00       	mov    $0x4017ec,%edi
  400e4d:	e8 ae fc ff ff       	callq  400b00 <fwrite@plt>
  400e52:	bf 01 00 00 00       	mov    $0x1,%edi
  400e57:	e8 94 fc ff ff       	callq  400af0 <exit@plt>
  400e5c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400e60:	48 89 c7             	mov    %rax,%rdi
  400e63:	e8 28 fc ff ff       	callq  400a90 <malloc@plt>
  400e68:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  400e6c:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  400e71:	75 28                	jne    400e9b <record_attempts+0x1a9>
  400e73:	48 8b 05 0e 13 20 00 	mov    0x20130e(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400e7a:	48 89 c1             	mov    %rax,%rcx
  400e7d:	ba 15 00 00 00       	mov    $0x15,%edx
  400e82:	be 01 00 00 00       	mov    $0x1,%esi
  400e87:	bf 00 18 40 00       	mov    $0x401800,%edi
  400e8c:	e8 6f fc ff ff       	callq  400b00 <fwrite@plt>
  400e91:	bf 01 00 00 00       	mov    $0x1,%edi
  400e96:	e8 55 fc ff ff       	callq  400af0 <exit@plt>
  400e9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400e9f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400ea3:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  400ea7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  400eab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400eaf:	be 01 00 00 00       	mov    $0x1,%esi
  400eb4:	48 89 c7             	mov    %rax,%rdi
  400eb7:	e8 04 fb ff ff       	callq  4009c0 <fread@plt>
  400ebc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  400ec0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  400ec4:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  400ec8:	73 28                	jae    400ef2 <record_attempts+0x200>
  400eca:	48 8b 05 b7 12 20 00 	mov    0x2012b7(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400ed1:	48 89 c1             	mov    %rax,%rcx
  400ed4:	ba 13 00 00 00       	mov    $0x13,%edx
  400ed9:	be 01 00 00 00       	mov    $0x1,%esi
  400ede:	bf 16 18 40 00       	mov    $0x401816,%edi
  400ee3:	e8 18 fc ff ff       	callq  400b00 <fwrite@plt>
  400ee8:	bf 01 00 00 00       	mov    $0x1,%edi
  400eed:	e8 fe fb ff ff       	callq  400af0 <exit@plt>
  400ef2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ef6:	48 89 c7             	mov    %rax,%rdi
  400ef9:	e8 d2 fa ff ff       	callq  4009d0 <fclose@plt>
  400efe:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  400f05:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  400f0c:	eb 3f                	jmp    400f4d <record_attempts+0x25b>
  400f0e:	b8 03 00 00 00       	mov    $0x3,%eax
  400f13:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  400f17:	48 29 c2             	sub    %rax,%rdx
  400f1a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400f1d:	48 98                	cltq   
  400f1f:	48 01 d0             	add    %rdx,%rax
  400f22:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
  400f26:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400f2a:	48 01 d0             	add    %rdx,%rax
  400f2d:	0f b6 10             	movzbl (%rax),%edx
  400f30:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400f33:	48 98                	cltq   
  400f35:	0f b6 80 00 17 40 00 	movzbl 0x401700(%rax),%eax
  400f3c:	38 c2                	cmp    %al,%dl
  400f3e:	74 09                	je     400f49 <record_attempts+0x257>
  400f40:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  400f47:	eb 14                	jmp    400f5d <record_attempts+0x26b>
  400f49:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  400f4d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400f50:	48 63 d0             	movslq %eax,%rdx
  400f53:	b8 03 00 00 00       	mov    $0x3,%eax
  400f58:	48 39 c2             	cmp    %rax,%rdx
  400f5b:	72 b1                	jb     400f0e <record_attempts+0x21c>
  400f5d:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  400f61:	74 70                	je     400fd3 <record_attempts+0x2e1>
  400f63:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400f67:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
  400f6b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400f6f:	48 01 d0             	add    %rdx,%rax
  400f72:	0f b6 00             	movzbl (%rax),%eax
  400f75:	3c 01                	cmp    $0x1,%al
  400f77:	75 05                	jne    400f7e <record_attempts+0x28c>
  400f79:	e9 15 02 00 00       	jmpq   401193 <record_attempts+0x4a1>
  400f7e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400f82:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  400f86:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400f8a:	48 01 d0             	add    %rdx,%rax
  400f8d:	0f b6 00             	movzbl (%rax),%eax
  400f90:	3c 02                	cmp    $0x2,%al
  400f92:	7e 28                	jle    400fbc <record_attempts+0x2ca>
  400f94:	48 8b 05 ed 11 20 00 	mov    0x2011ed(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400f9b:	48 89 c1             	mov    %rax,%rcx
  400f9e:	ba 1a 00 00 00       	mov    $0x1a,%edx
  400fa3:	be 01 00 00 00       	mov    $0x1,%esi
  400fa8:	bf 2a 18 40 00       	mov    $0x40182a,%edi
  400fad:	e8 4e fb ff ff       	callq  400b00 <fwrite@plt>
  400fb2:	bf 01 00 00 00       	mov    $0x1,%edi
  400fb7:	e8 34 fb ff ff       	callq  400af0 <exit@plt>
  400fbc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400fc0:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  400fc4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400fc8:	48 01 d0             	add    %rdx,%rax
  400fcb:	0f b6 10             	movzbl (%rax),%edx
  400fce:	83 c2 01             	add    $0x1,%edx
  400fd1:	88 10                	mov    %dl,(%rax)
  400fd3:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  400fda:	48 89 c7             	mov    %rax,%rdi
  400fdd:	e8 be f9 ff ff       	callq  4009a0 <unlink@plt>
  400fe2:	83 f8 ff             	cmp    $0xffffffff,%eax
  400fe5:	75 28                	jne    40100f <record_attempts+0x31d>
  400fe7:	48 8b 05 9a 11 20 00 	mov    0x20119a(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  400fee:	48 89 c1             	mov    %rax,%rcx
  400ff1:	ba 15 00 00 00       	mov    $0x15,%edx
  400ff6:	be 01 00 00 00       	mov    $0x1,%esi
  400ffb:	bf 45 18 40 00       	mov    $0x401845,%edi
  401000:	e8 fb fa ff ff       	callq  400b00 <fwrite@plt>
  401005:	bf 01 00 00 00       	mov    $0x1,%edi
  40100a:	e8 e1 fa ff ff       	callq  400af0 <exit@plt>
  40100f:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  401016:	be 5b 18 40 00       	mov    $0x40185b,%esi
  40101b:	48 89 c7             	mov    %rax,%rdi
  40101e:	e8 ad fa ff ff       	callq  400ad0 <fopen@plt>
  401023:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401027:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40102c:	75 28                	jne    401056 <record_attempts+0x364>
  40102e:	48 8b 05 53 11 20 00 	mov    0x201153(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  401035:	48 89 c1             	mov    %rax,%rcx
  401038:	ba 13 00 00 00       	mov    $0x13,%edx
  40103d:	be 01 00 00 00       	mov    $0x1,%esi
  401042:	bf 5d 18 40 00       	mov    $0x40185d,%edi
  401047:	e8 b4 fa ff ff       	callq  400b00 <fwrite@plt>
  40104c:	bf 01 00 00 00       	mov    $0x1,%edi
  401051:	e8 9a fa ff ff       	callq  400af0 <exit@plt>
  401056:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40105a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40105e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401062:	be 01 00 00 00       	mov    $0x1,%esi
  401067:	48 89 c7             	mov    %rax,%rdi
  40106a:	e8 91 fa ff ff       	callq  400b00 <fwrite@plt>
  40106f:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  401073:	74 28                	je     40109d <record_attempts+0x3ab>
  401075:	48 8b 05 0c 11 20 00 	mov    0x20110c(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  40107c:	48 89 c1             	mov    %rax,%rcx
  40107f:	ba 14 00 00 00       	mov    $0x14,%edx
  401084:	be 01 00 00 00       	mov    $0x1,%esi
  401089:	bf 71 18 40 00       	mov    $0x401871,%edi
  40108e:	e8 6d fa ff ff       	callq  400b00 <fwrite@plt>
  401093:	bf 01 00 00 00       	mov    $0x1,%edi
  401098:	e8 53 fa ff ff       	callq  400af0 <exit@plt>
  40109d:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  4010a1:	0f 85 99 00 00 00    	jne    401140 <record_attempts+0x44e>
  4010a7:	b8 03 00 00 00       	mov    $0x3,%eax
  4010ac:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4010b0:	48 89 d1             	mov    %rdx,%rcx
  4010b3:	48 89 c2             	mov    %rax,%rdx
  4010b6:	be 01 00 00 00       	mov    $0x1,%esi
  4010bb:	bf 00 17 40 00       	mov    $0x401700,%edi
  4010c0:	e8 3b fa ff ff       	callq  400b00 <fwrite@plt>
  4010c5:	ba 03 00 00 00       	mov    $0x3,%edx
  4010ca:	48 39 d0             	cmp    %rdx,%rax
  4010cd:	74 28                	je     4010f7 <record_attempts+0x405>
  4010cf:	48 8b 05 b2 10 20 00 	mov    0x2010b2(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  4010d6:	48 89 c1             	mov    %rax,%rcx
  4010d9:	ba 14 00 00 00       	mov    $0x14,%edx
  4010de:	be 01 00 00 00       	mov    $0x1,%esi
  4010e3:	bf 86 18 40 00       	mov    $0x401886,%edi
  4010e8:	e8 13 fa ff ff       	callq  400b00 <fwrite@plt>
  4010ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4010f2:	e8 f9 f9 ff ff       	callq  400af0 <exit@plt>
  4010f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4010fb:	48 89 c1             	mov    %rax,%rcx
  4010fe:	ba 02 00 00 00       	mov    $0x2,%edx
  401103:	be 01 00 00 00       	mov    $0x1,%esi
  401108:	bf 9b 18 40 00       	mov    $0x40189b,%edi
  40110d:	e8 ee f9 ff ff       	callq  400b00 <fwrite@plt>
  401112:	48 83 f8 02          	cmp    $0x2,%rax
  401116:	74 28                	je     401140 <record_attempts+0x44e>
  401118:	48 8b 05 69 10 20 00 	mov    0x201069(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  40111f:	48 89 c1             	mov    %rax,%rcx
  401122:	ba 14 00 00 00       	mov    $0x14,%edx
  401127:	be 01 00 00 00       	mov    $0x1,%esi
  40112c:	bf 9e 18 40 00       	mov    $0x40189e,%edi
  401131:	e8 ca f9 ff ff       	callq  400b00 <fwrite@plt>
  401136:	bf 01 00 00 00       	mov    $0x1,%edi
  40113b:	e8 b0 f9 ff ff       	callq  400af0 <exit@plt>
  401140:	8b 9d 48 ff ff ff    	mov    -0xb8(%rbp),%ebx
  401146:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40114a:	48 89 c7             	mov    %rax,%rdi
  40114d:	e8 1e f9 ff ff       	callq  400a70 <fileno@plt>
  401152:	89 de                	mov    %ebx,%esi
  401154:	89 c7                	mov    %eax,%edi
  401156:	e8 55 f9 ff ff       	callq  400ab0 <fchmod@plt>
  40115b:	85 c0                	test   %eax,%eax
  40115d:	74 28                	je     401187 <record_attempts+0x495>
  40115f:	48 8b 05 22 10 20 00 	mov    0x201022(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  401166:	48 89 c1             	mov    %rax,%rcx
  401169:	ba 41 00 00 00       	mov    $0x41,%edx
  40116e:	be 01 00 00 00       	mov    $0x1,%esi
  401173:	bf b8 18 40 00       	mov    $0x4018b8,%edi
  401178:	e8 83 f9 ff ff       	callq  400b00 <fwrite@plt>
  40117d:	bf 01 00 00 00       	mov    $0x1,%edi
  401182:	e8 69 f9 ff ff       	callq  400af0 <exit@plt>
  401187:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40118b:	48 89 c7             	mov    %rax,%rdi
  40118e:	e8 3d f8 ff ff       	callq  4009d0 <fclose@plt>
  401193:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401197:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  40119b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40119f:	48 01 d0             	add    %rdx,%rax
  4011a2:	0f b6 00             	movzbl (%rax),%eax
  4011a5:	0f be c0             	movsbl %al,%eax
  4011a8:	89 05 e6 0f 20 00    	mov    %eax,0x200fe6(%rip)        # 602194 <n_attempts>
  4011ae:	c7 05 e0 0f 20 00 01 	movl   $0x1,0x200fe0(%rip)        # 602198 <n_attempts_ok>
  4011b5:	00 00 00 
  4011b8:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  4011bf:	5b                   	pop    %rbx
  4011c0:	5d                   	pop    %rbp
  4011c1:	c3                   	retq   

00000000004011c2 <check_unlock>:
  4011c2:	55                   	push   %rbp
  4011c3:	48 89 e5             	mov    %rsp,%rbp
  4011c6:	48 83 ec 30          	sub    $0x30,%rsp
  4011ca:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4011ce:	89 75 d4             	mov    %esi,-0x2c(%rbp)
  4011d1:	89 55 d0             	mov    %edx,-0x30(%rbp)
  4011d4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4011d7:	48 98                	cltq   
  4011d9:	be 01 00 00 00       	mov    $0x1,%esi
  4011de:	48 89 c7             	mov    %rax,%rdi
  4011e1:	e8 4a f8 ff ff       	callq  400a30 <calloc@plt>
  4011e6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4011ea:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4011ef:	75 26                	jne    401217 <check_unlock+0x55>
  4011f1:	48 8b 05 90 0f 20 00 	mov    0x200f90(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  4011f8:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  4011fb:	be 00 19 40 00       	mov    $0x401900,%esi
  401200:	48 89 c7             	mov    %rax,%rdi
  401203:	b8 00 00 00 00       	mov    $0x0,%eax
  401208:	e8 33 f8 ff ff       	callq  400a40 <fprintf@plt>
  40120d:	bf 01 00 00 00       	mov    $0x1,%edi
  401212:	e8 d9 f8 ff ff       	callq  400af0 <exit@plt>
  401217:	b8 00 00 00 00       	mov    $0x0,%eax
  40121c:	e8 4b 02 00 00       	callq  40146c <ks>
  401221:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401224:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401228:	89 d6                	mov    %edx,%esi
  40122a:	48 89 c7             	mov    %rax,%rdi
  40122d:	e8 02 03 00 00       	callq  401534 <xnc>
  401232:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  401235:	8b 05 c5 0e 20 00    	mov    0x200ec5(%rip),%eax        # 602100 <secret_len>
  40123b:	39 c2                	cmp    %eax,%edx
  40123d:	74 14                	je     401253 <check_unlock+0x91>
  40123f:	bf 2f 19 40 00       	mov    $0x40192f,%edi
  401244:	e8 67 f7 ff ff       	callq  4009b0 <puts@plt>
  401249:	b8 01 00 00 00       	mov    $0x1,%eax
  40124e:	e9 86 00 00 00       	jmpq   4012d9 <check_unlock+0x117>
  401253:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40125a:	eb 66                	jmp    4012c2 <check_unlock+0x100>
  40125c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40125f:	48 63 d0             	movslq %eax,%rdx
  401262:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401266:	48 01 d0             	add    %rdx,%rax
  401269:	0f b6 10             	movzbl (%rax),%edx
  40126c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40126f:	48 98                	cltq   
  401271:	8b 04 85 20 21 60 00 	mov    0x602120(,%rax,4),%eax
  401278:	31 d0                	xor    %edx,%eax
  40127a:	88 45 ef             	mov    %al,-0x11(%rbp)
  40127d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401280:	48 98                	cltq   
  401282:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401289:	00 
  40128a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40128e:	48 01 d0             	add    %rdx,%rax
  401291:	8b 10                	mov    (%rax),%edx
  401293:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401296:	31 c2                	xor    %eax,%edx
  401298:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40129b:	31 c2                	xor    %eax,%edx
  40129d:	8b 05 b1 0e 20 00    	mov    0x200eb1(%rip),%eax        # 602154 <PN>
  4012a3:	31 c2                	xor    %eax,%edx
  4012a5:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
  4012a9:	39 c2                	cmp    %eax,%edx
  4012ab:	74 11                	je     4012be <check_unlock+0xfc>
  4012ad:	bf 2f 19 40 00       	mov    $0x40192f,%edi
  4012b2:	e8 f9 f6 ff ff       	callq  4009b0 <puts@plt>
  4012b7:	b8 01 00 00 00       	mov    $0x1,%eax
  4012bc:	eb 1b                	jmp    4012d9 <check_unlock+0x117>
  4012be:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012c2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012c5:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4012c8:	7c 92                	jl     40125c <check_unlock+0x9a>
  4012ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4012cf:	e8 39 f9 ff ff       	callq  400c0d <msg>
  4012d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d9:	c9                   	leaveq 
  4012da:	c3                   	retq   

00000000004012db <main>:
  4012db:	55                   	push   %rbp
  4012dc:	48 89 e5             	mov    %rsp,%rbp
  4012df:	48 83 ec 30          	sub    $0x30,%rsp
  4012e3:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4012e6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4012ea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4012ee:	48 8b 00             	mov    (%rax),%rax
  4012f1:	48 89 c7             	mov    %rax,%rdi
  4012f4:	e8 f9 f9 ff ff       	callq  400cf2 <record_attempts>
  4012f9:	8b 05 99 0e 20 00    	mov    0x200e99(%rip),%eax        # 602198 <n_attempts_ok>
  4012ff:	83 f8 01             	cmp    $0x1,%eax
  401302:	74 28                	je     40132c <main+0x51>
  401304:	48 8b 05 7d 0e 20 00 	mov    0x200e7d(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  40130b:	48 89 c1             	mov    %rax,%rcx
  40130e:	ba 18 00 00 00       	mov    $0x18,%edx
  401313:	be 01 00 00 00       	mov    $0x1,%esi
  401318:	bf 4a 19 40 00       	mov    $0x40194a,%edi
  40131d:	e8 de f7 ff ff       	callq  400b00 <fwrite@plt>
  401322:	bf 03 00 00 00       	mov    $0x3,%edi
  401327:	e8 c4 f7 ff ff       	callq  400af0 <exit@plt>
  40132c:	8b 05 62 0e 20 00    	mov    0x200e62(%rip),%eax        # 602194 <n_attempts>
  401332:	89 c6                	mov    %eax,%esi
  401334:	bf 63 19 40 00       	mov    $0x401963,%edi
  401339:	b8 00 00 00 00       	mov    $0x0,%eax
  40133e:	e8 ad f6 ff ff       	callq  4009f0 <printf@plt>
  401343:	8b 05 b7 0d 20 00    	mov    0x200db7(%rip),%eax        # 602100 <secret_len>
  401349:	89 c6                	mov    %eax,%esi
  40134b:	bf 78 19 40 00       	mov    $0x401978,%edi
  401350:	b8 00 00 00 00       	mov    $0x0,%eax
  401355:	e8 96 f6 ff ff       	callq  4009f0 <printf@plt>
  40135a:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  40135e:	48 89 c6             	mov    %rax,%rsi
  401361:	bf a5 19 40 00       	mov    $0x4019a5,%edi
  401366:	b8 00 00 00 00       	mov    $0x0,%eax
  40136b:	e8 70 f7 ff ff       	callq  400ae0 <__isoc99_scanf@plt>
  401370:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401374:	48 89 c6             	mov    %rax,%rsi
  401377:	bf a5 19 40 00       	mov    $0x4019a5,%edi
  40137c:	b8 00 00 00 00       	mov    $0x0,%eax
  401381:	e8 5a f7 ff ff       	callq  400ae0 <__isoc99_scanf@plt>
  401386:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401389:	83 f8 04             	cmp    $0x4,%eax
  40138c:	7e 0a                	jle    401398 <main+0xbd>
  40138e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401391:	3d ff 00 00 00       	cmp    $0xff,%eax
  401396:	7e 0a                	jle    4013a2 <main+0xc7>
  401398:	bf 01 00 00 00       	mov    $0x1,%edi
  40139d:	e8 4e f7 ff ff       	callq  400af0 <exit@plt>
  4013a2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4013a5:	48 98                	cltq   
  4013a7:	be 04 00 00 00       	mov    $0x4,%esi
  4013ac:	48 89 c7             	mov    %rax,%rdi
  4013af:	e8 7c f6 ff ff       	callq  400a30 <calloc@plt>
  4013b4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4013b8:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4013bd:	75 26                	jne    4013e5 <main+0x10a>
  4013bf:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4013c2:	48 8b 05 bf 0d 20 00 	mov    0x200dbf(%rip),%rax        # 602188 <stderr@@GLIBC_2.2.5>
  4013c9:	be 00 19 40 00       	mov    $0x401900,%esi
  4013ce:	48 89 c7             	mov    %rax,%rdi
  4013d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d6:	e8 65 f6 ff ff       	callq  400a40 <fprintf@plt>
  4013db:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e0:	e8 0b f7 ff ff       	callq  400af0 <exit@plt>
  4013e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4013ec:	eb 60                	jmp    40144e <main+0x173>
  4013ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013f1:	48 98                	cltq   
  4013f3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4013fa:	00 
  4013fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4013ff:	48 01 d0             	add    %rdx,%rax
  401402:	48 89 c6             	mov    %rax,%rsi
  401405:	bf a5 19 40 00       	mov    $0x4019a5,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 cc f6 ff ff       	callq  400ae0 <__isoc99_scanf@plt>
  401414:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401417:	48 98                	cltq   
  401419:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401420:	00 
  401421:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401425:	48 01 d0             	add    %rdx,%rax
  401428:	8b 00                	mov    (%rax),%eax
  40142a:	3d ff 00 00 00       	cmp    $0xff,%eax
  40142f:	76 19                	jbe    40144a <main+0x16f>
  401431:	b9 bc 19 40 00       	mov    $0x4019bc,%ecx
  401436:	ba e0 00 00 00       	mov    $0xe0,%edx
  40143b:	be a8 19 40 00       	mov    $0x4019a8,%esi
  401440:	bf b1 19 40 00       	mov    $0x4019b1,%edi
  401445:	e8 c6 f5 ff ff       	callq  400a10 <__assert_fail@plt>
  40144a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40144e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401451:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  401454:	7c 98                	jl     4013ee <main+0x113>
  401456:	8b 55 e8             	mov    -0x18(%rbp),%edx
  401459:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40145c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401460:	89 ce                	mov    %ecx,%esi
  401462:	48 89 c7             	mov    %rax,%rdi
  401465:	e8 58 fd ff ff       	callq  4011c2 <check_unlock>
  40146a:	c9                   	leaveq 
  40146b:	c3                   	retq   

000000000040146c <ks>:
  40146c:	55                   	push   %rbp
  40146d:	48 89 e5             	mov    %rsp,%rbp
  401470:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401477:	eb 14                	jmp    40148d <ks+0x21>
  401479:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40147c:	89 c2                	mov    %eax,%edx
  40147e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401481:	48 98                	cltq   
  401483:	88 90 a0 21 60 00    	mov    %dl,0x6021a0(%rax)
  401489:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40148d:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%rbp)
  401494:	7e e3                	jle    401479 <ks+0xd>
  401496:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40149d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4014a4:	eb 7f                	jmp    401525 <ks+0xb9>
  4014a6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4014a9:	48 98                	cltq   
  4014ab:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  4014b2:	0f b6 d0             	movzbl %al,%edx
  4014b5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4014b8:	8d 34 02             	lea    (%rdx,%rax,1),%esi
  4014bb:	8b 0d 97 0c 20 00    	mov    0x200c97(%rip),%ecx        # 602158 <kl>
  4014c1:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4014c4:	99                   	cltd   
  4014c5:	f7 f9                	idiv   %ecx
  4014c7:	89 d0                	mov    %edx,%eax
  4014c9:	48 98                	cltq   
  4014cb:	0f b6 80 5c 21 60 00 	movzbl 0x60215c(%rax),%eax
  4014d2:	0f b6 c0             	movzbl %al,%eax
  4014d5:	8d 14 06             	lea    (%rsi,%rax,1),%edx
  4014d8:	89 d0                	mov    %edx,%eax
  4014da:	c1 f8 1f             	sar    $0x1f,%eax
  4014dd:	c1 e8 18             	shr    $0x18,%eax
  4014e0:	01 c2                	add    %eax,%edx
  4014e2:	0f b6 d2             	movzbl %dl,%edx
  4014e5:	29 c2                	sub    %eax,%edx
  4014e7:	89 d0                	mov    %edx,%eax
  4014e9:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4014ec:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4014ef:	48 98                	cltq   
  4014f1:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  4014f8:	88 45 f3             	mov    %al,-0xd(%rbp)
  4014fb:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4014fe:	48 98                	cltq   
  401500:	0f b6 90 a0 21 60 00 	movzbl 0x6021a0(%rax),%edx
  401507:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40150a:	48 98                	cltq   
  40150c:	88 90 a0 21 60 00    	mov    %dl,0x6021a0(%rax)
  401512:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401515:	48 98                	cltq   
  401517:	0f b6 55 f3          	movzbl -0xd(%rbp),%edx
  40151b:	88 90 a0 21 60 00    	mov    %dl,0x6021a0(%rax)
  401521:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  401525:	81 7d f4 ff 00 00 00 	cmpl   $0xff,-0xc(%rbp)
  40152c:	0f 8e 74 ff ff ff    	jle    4014a6 <ks+0x3a>
  401532:	5d                   	pop    %rbp
  401533:	c3                   	retq   

0000000000401534 <xnc>:
  401534:	55                   	push   %rbp
  401535:	48 89 e5             	mov    %rsp,%rbp
  401538:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40153c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
  40153f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401546:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40154d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401554:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40155b:	e9 d3 00 00 00       	jmpq   401633 <xnc+0xff>
  401560:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401563:	8d 50 01             	lea    0x1(%rax),%edx
  401566:	89 d0                	mov    %edx,%eax
  401568:	c1 f8 1f             	sar    $0x1f,%eax
  40156b:	c1 e8 18             	shr    $0x18,%eax
  40156e:	01 c2                	add    %eax,%edx
  401570:	0f b6 d2             	movzbl %dl,%edx
  401573:	29 c2                	sub    %eax,%edx
  401575:	89 d0                	mov    %edx,%eax
  401577:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40157a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40157d:	48 98                	cltq   
  40157f:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  401586:	0f b6 d0             	movzbl %al,%edx
  401589:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40158c:	01 c2                	add    %eax,%edx
  40158e:	89 d0                	mov    %edx,%eax
  401590:	c1 f8 1f             	sar    $0x1f,%eax
  401593:	c1 e8 18             	shr    $0x18,%eax
  401596:	01 c2                	add    %eax,%edx
  401598:	0f b6 d2             	movzbl %dl,%edx
  40159b:	29 c2                	sub    %eax,%edx
  40159d:	89 d0                	mov    %edx,%eax
  40159f:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4015a2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015a5:	48 98                	cltq   
  4015a7:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  4015ae:	88 45 ef             	mov    %al,-0x11(%rbp)
  4015b1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015b4:	48 98                	cltq   
  4015b6:	0f b6 90 a0 21 60 00 	movzbl 0x6021a0(%rax),%edx
  4015bd:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015c0:	48 98                	cltq   
  4015c2:	88 90 a0 21 60 00    	mov    %dl,0x6021a0(%rax)
  4015c8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015cb:	48 98                	cltq   
  4015cd:	0f b6 55 ef          	movzbl -0x11(%rbp),%edx
  4015d1:	88 90 a0 21 60 00    	mov    %dl,0x6021a0(%rax)
  4015d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015da:	48 98                	cltq   
  4015dc:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  4015e3:	0f b6 d0             	movzbl %al,%edx
  4015e6:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015e9:	48 98                	cltq   
  4015eb:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  4015f2:	0f b6 c0             	movzbl %al,%eax
  4015f5:	01 d0                	add    %edx,%eax
  4015f7:	0f b6 c0             	movzbl %al,%eax
  4015fa:	48 98                	cltq   
  4015fc:	0f b6 80 a0 21 60 00 	movzbl 0x6021a0(%rax),%eax
  401603:	0f b6 c0             	movzbl %al,%eax
  401606:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401609:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40160c:	48 63 d0             	movslq %eax,%rdx
  40160f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401613:	48 01 c2             	add    %rax,%rdx
  401616:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401619:	48 63 c8             	movslq %eax,%rcx
  40161c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401620:	48 01 c8             	add    %rcx,%rax
  401623:	0f b6 00             	movzbl (%rax),%eax
  401626:	89 c1                	mov    %eax,%ecx
  401628:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40162b:	31 c8                	xor    %ecx,%eax
  40162d:	88 02                	mov    %al,(%rdx)
  40162f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  401633:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401636:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  401639:	0f 8c 21 ff ff ff    	jl     401560 <xnc+0x2c>
  40163f:	5d                   	pop    %rbp
  401640:	c3                   	retq   
  401641:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401648:	00 00 00 
  40164b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401650 <__libc_csu_init>:
  401650:	41 57                	push   %r15
  401652:	41 89 ff             	mov    %edi,%r15d
  401655:	41 56                	push   %r14
  401657:	49 89 f6             	mov    %rsi,%r14
  40165a:	41 55                	push   %r13
  40165c:	49 89 d5             	mov    %rdx,%r13
  40165f:	41 54                	push   %r12
  401661:	4c 8d 25 a8 07 20 00 	lea    0x2007a8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  401668:	55                   	push   %rbp
  401669:	48 8d 2d a8 07 20 00 	lea    0x2007a8(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  401670:	53                   	push   %rbx
  401671:	4c 29 e5             	sub    %r12,%rbp
  401674:	31 db                	xor    %ebx,%ebx
  401676:	48 c1 fd 03          	sar    $0x3,%rbp
  40167a:	48 83 ec 08          	sub    $0x8,%rsp
  40167e:	e8 dd f2 ff ff       	callq  400960 <_init>
  401683:	48 85 ed             	test   %rbp,%rbp
  401686:	74 1e                	je     4016a6 <__libc_csu_init+0x56>
  401688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40168f:	00 
  401690:	4c 89 ea             	mov    %r13,%rdx
  401693:	4c 89 f6             	mov    %r14,%rsi
  401696:	44 89 ff             	mov    %r15d,%edi
  401699:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40169d:	48 83 c3 01          	add    $0x1,%rbx
  4016a1:	48 39 eb             	cmp    %rbp,%rbx
  4016a4:	75 ea                	jne    401690 <__libc_csu_init+0x40>
  4016a6:	48 83 c4 08          	add    $0x8,%rsp
  4016aa:	5b                   	pop    %rbx
  4016ab:	5d                   	pop    %rbp
  4016ac:	41 5c                	pop    %r12
  4016ae:	41 5d                	pop    %r13
  4016b0:	41 5e                	pop    %r14
  4016b2:	41 5f                	pop    %r15
  4016b4:	c3                   	retq   
  4016b5:	90                   	nop
  4016b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016bd:	00 00 00 

00000000004016c0 <__libc_csu_fini>:
  4016c0:	f3 c3                	repz retq 
  4016c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016c9:	00 00 00 
  4016cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004016d0 <__stat>:
  4016d0:	48 89 f2             	mov    %rsi,%rdx
  4016d3:	48 89 fe             	mov    %rdi,%rsi
  4016d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4016db:	e9 a0 f3 ff ff       	jmpq   400a80 <__xstat@plt>

Disassembly of section .fini:

00000000004016e0 <_fini>:
  4016e0:	48 83 ec 08          	sub    $0x8,%rsp
  4016e4:	48 83 c4 08          	add    $0x8,%rsp
  4016e8:	c3                   	retq   
