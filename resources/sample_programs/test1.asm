
hello_world.elf:     file format elf32-msp430


Disassembly of section .text:

00004400 <__init_stack>:
    4400:	31 40 00 44 	mov	#17408,	r1	;#0x4400

00004404 <__low_level_init>:
    4404:	15 42 5c 01 	mov	&0x015c,r5	
    4408:	75 f3       	and.b	#-1,	r5	;r3 As==11
    440a:	35 d0 08 5a 	bis	#23048,	r5	;#0x5a08

0000440e <__do_copy_data>:
    440e:	3f 40 00 00 	mov	#0,	r15	;#0x0000
    4412:	0f 93       	tst	r15		
    4414:	07 24       	jz	$+16     	;abs 0x4424
    4416:	82 45 5c 01 	mov	r5,	&0x015c	
    441a:	2f 83       	decd	r15		
    441c:	9f 4f 4a 44 	mov	17482(r15),9216(r15);0x444a(r15), 0x2400(r15)
    4420:	00 24 
    4422:	f9 23       	jnz	$-12     	;abs 0x4416

00004424 <__do_clear_bss>:
    4424:	3f 40 00 00 	mov	#0,	r15	;#0x0000
    4428:	0f 93       	tst	r15		
    442a:	06 24       	jz	$+14     	;abs 0x4438
    442c:	82 45 5c 01 	mov	r5,	&0x015c	
    4430:	1f 83       	dec	r15		
    4432:	cf 43 00 24 	mov.b	#0,	9216(r15);r3 As==00, 0x2400(r15)
    4436:	fa 23       	jnz	$-10     	;abs 0x442c

00004438 <main>:
 
int main(void)
{
    int q = 1;
    return 0;
}
    4438:	0f 43       	clr	r15		

0000443a <__stop_progExec__>:
    443a:	32 d0 f0 00 	bis	#240,	r2	;#0x00f0
    443e:	fd 3f       	jmp	$-4      	;abs 0x443a

00004440 <__ctors_end>:
    4440:	30 40 48 44 	br	#0x4448	

00004444 <putchar>:
 
int  putchar(int c)
{
    // Write a driver here that writes c somewhere
    return 1;
}
    4444:	1f 43       	mov	#1,	r15	;r3 As==01
    4446:	30 41       	ret			

00004448 <_unexpected_>:
    4448:	00 13       	reti			

Disassembly of section .vectors:

0000ff80 <__ivtbl_64>:
    ff80:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ff90:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ffa0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ffb0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ffc0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ffd0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    ffe0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 40 44     @D@D@D@D@D@D@D@D
    fff0:	40 44 40 44 40 44 40 44 40 44 40 44 40 44 00 44     @D@D@D@D@D@D@D.D
