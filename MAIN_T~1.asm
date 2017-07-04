;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
; This file was generated Mon Jul 03 21:05:45 2017
;--------------------------------------------------------
	.module MAIN_T_1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _toCelsius
	.globl _toFahrenheit
	.globl _printTemp
	.globl _Display
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _unit
	.globl _tempF
	.globl _tempC
	.globl _lastsw3
	.globl _lastsw2
	.globl _lastsw1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_lastsw1::
	.ds 2
_lastsw2::
	.ds 2
_lastsw3::
	.ds 2
_tempC::
	.ds 2
_tempF::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_unit::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_dados	=	0xffc0
_display	=	0xffc1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:28: void delay(int x) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:30: while(x-- > 0) for (j = 0; j < 255; j++);
00101$:
	mov	ar4,r2
	mov	ar5,r3
	dec	r2
	cjne	r2,#0xff,00115$
	dec	r3
00115$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	mov	r4,#0xFF
	mov	r5,#0x00
00106$:
	dec	r4
	cjne	r4,#0xff,00117$
	dec	r5
00117$:
	mov	a,r4
	orl	a,r5
	jnz	00106$
	sjmp	00101$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;x                         Allocated to stack - offset -4
;n                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:33: void Display(int n, int x) {//n para qual display e x para
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:34: display = disp[n];
	mov	a,r2
	add	a,#_disp
	mov	dpl,a
	mov	a,r3
	addc	a,#(_disp >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_display
	movx	@dptr,a
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:35: dados = alg[x];
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#_alg
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#(_alg >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_dados
	movx	@dptr,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printTemp'
;------------------------------------------------------------
;temp                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:38: void printTemp() {
;	-----------------------------------------
;	 function printTemp
;	-----------------------------------------
_printTemp:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:40: int temp = unit == C ? tempC : tempF;
	jnb	_unit,00106$
	mov	r2,_tempC
	mov	r3,(_tempC + 1)
	sjmp	00107$
00106$:
	mov	r2,_tempF
	mov	r3,(_tempF + 1)
00107$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:42: Display(0, temp/100);
	push	ar2
	push	ar3
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	lcall	_Display
	dec	sp
	dec	sp
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:43: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar3
	pop	ar2
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:44: Display(1, temp%100/10);
	push	ar2
	push	ar3
	mov	a,#0x64
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	push	ar4
	push	ar5
	mov	dptr,#0x0001
	lcall	_Display
	dec	sp
	dec	sp
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:45: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	pop	ar3
	pop	ar2
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:46: Display(2, temp%10);
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	push	ar2
	push	ar3
	mov	dptr,#0x0002
	lcall	_Display
	dec	sp
	dec	sp
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:47: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
	jnb	_unit,00102$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:50: Display(3, 12);
	mov	a,#0x0C
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x0003
	lcall	_Display
	dec	sp
	dec	sp
	sjmp	00103$
00102$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:52: Display(3, 15);
	mov	a,#0x0F
	push	acc
	clr	a
	push	acc
	mov	dptr,#0x0003
	lcall	_Display
	dec	sp
	dec	sp
00103$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:54: delay(2);
	mov	dptr,#0x0002
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'toFahrenheit'
;------------------------------------------------------------
;temp                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:57: int toFahrenheit(int temp) {
;	-----------------------------------------
;	 function toFahrenheit
;	-----------------------------------------
_toFahrenheit:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:58: return temp * 18 / 10 + 32;
	push	ar2
	push	ar3
	mov	dptr,#0x0012
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x20
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toCelsius'
;------------------------------------------------------------
;temp                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:61: int toCelsius(int temp) {
;	-----------------------------------------
;	 function toCelsius
;	-----------------------------------------
_toCelsius:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:62: return (temp - 32) * 10 / 18;
	mov	a,r2
	add	a,#0xe0
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	push	ar2
	push	ar3
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,#0x12
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:65: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:67: lastsw1 = 0;
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:68: lastsw2 = 0;
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:69: lastsw3 = 0;
	clr	a
	mov	_lastsw1,a
	mov	(_lastsw1 + 1),a
	mov	_lastsw2,a
	mov	(_lastsw2 + 1),a
	mov	_lastsw3,a
	mov	(_lastsw3 + 1),a
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:71: unit = C;
	setb	_unit
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:72: tempC = 25;
	mov	_tempC,#0x19
	clr	a
	mov	(_tempC + 1),a
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:73: tempF = toFahrenheit(tempC);
	mov	dptr,#0x0019
	lcall	_toFahrenheit
	mov	_tempF,dpl
	mov	(_tempF + 1),dph
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:75: while(1) {
00122$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:77: printTemp();
	lcall	_printTemp
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:79: if (sw1 != lastsw1) {
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
	cjne	a,_lastsw1,00149$
	mov	a,r3
	cjne	a,(_lastsw1 + 1),00149$
	sjmp	00108$
00149$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:80: lastsw1 = sw1;
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	_lastsw1,a
	mov	(_lastsw1 + 1),#0x00
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:81: if (!sw1) {
	jb	_P1_7,00108$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:91: }
	jnb	_unit,00102$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:84: tempC = tempC < 537 ? tempC + 1 : 537;
	clr	c
	mov	a,_tempC
	subb	a,#0x19
	mov	a,(_tempC + 1)
	subb	a,#0x02
	jnc	00126$
	mov	a,#0x01
	add	a,_tempC
	mov	r2,a
	clr	a
	addc	a,(_tempC + 1)
	mov	r3,a
	sjmp	00127$
00126$:
	mov	r2,#0x19
	mov	r3,#0x02
00127$:
	mov	_tempC,r2
	mov	(_tempC + 1),r3
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:85: tempF = toFahrenheit(tempC);
	mov	dpl,_tempC
	mov	dph,(_tempC + 1)
	lcall	_toFahrenheit
	mov	_tempF,dpl
	mov	(_tempF + 1),dph
00102$:
	jb	_unit,00108$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:88: tempF = tempF < 999 ? tempF + 1 : 999;
	clr	c
	mov	a,_tempF
	subb	a,#0xE7
	mov	a,(_tempF + 1)
	subb	a,#0x03
	jnc	00128$
	mov	a,#0x01
	add	a,_tempF
	mov	r2,a
	clr	a
	addc	a,(_tempF + 1)
	mov	r3,a
	sjmp	00129$
00128$:
	mov	r2,#0xE7
	mov	r3,#0x03
00129$:
	mov	_tempF,r2
	mov	(_tempF + 1),r3
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:89: tempC = toCelsius(tempF);
	mov	dpl,_tempF
	mov	dph,(_tempF + 1)
	lcall	_toCelsius
	mov	_tempC,dpl
	mov	(_tempC + 1),dph
00108$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:96: if (sw2 != lastsw2) {
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
	cjne	a,_lastsw2,00155$
	mov	a,r3
	cjne	a,(_lastsw2 + 1),00155$
	sjmp	00116$
00155$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:98: lastsw2 = sw2;
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	_lastsw2,a
	mov	(_lastsw2 + 1),#0x00
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:100: if (!sw2) {
	jb	_P1_6,00116$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:110: }		
	jnb	_unit,00110$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:103: tempC = tempC > 0 ? tempC - 1 : 0;
	mov	a,_tempC
	orl	a,(_tempC + 1)
	jz	00130$
	mov	a,_tempC
	add	a,#0xff
	mov	r2,a
	mov	a,(_tempC + 1)
	addc	a,#0xff
	mov	r3,a
	sjmp	00131$
00130$:
	mov	r2,#0x00
	mov	r3,#0x00
00131$:
	mov	_tempC,r2
	mov	(_tempC + 1),r3
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:104: tempF = toFahrenheit(tempC);
	mov	dpl,_tempC
	mov	dph,(_tempC + 1)
	lcall	_toFahrenheit
	mov	_tempF,dpl
	mov	(_tempF + 1),dph
00110$:
	jb	_unit,00116$
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:107: tempF = tempF > 32 ? tempF - 1 : 32;
	clr	c
	mov	a,#0x20
	subb	a,_tempF
	clr	a
	subb	a,(_tempF + 1)
	jnc	00132$
	mov	a,_tempF
	add	a,#0xff
	mov	r2,a
	mov	a,(_tempF + 1)
	addc	a,#0xff
	mov	r3,a
	sjmp	00133$
00132$:
	mov	r2,#0x20
	mov	r3,#0x00
00133$:
	mov	_tempF,r2
	mov	(_tempF + 1),r3
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:108: tempC = toCelsius(tempF);
	mov	dpl,_tempF
	mov	dph,(_tempF + 1)
	lcall	_toCelsius
	mov	_tempC,dpl
	mov	(_tempC + 1),dph
00116$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:115: if (sw3 != lastsw3) {
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	r2,a
	mov	r3,#0x00
	cjne	a,_lastsw3,00161$
	mov	a,r3
	cjne	a,(_lastsw3 + 1),00161$
	ljmp	00122$
00161$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:117: lastsw3 = sw3;
	mov	c,_P1_5
	clr	a
	rlc	a
	mov	_lastsw3,a
	mov	(_lastsw3 + 1),#0x00
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:119: if (!sw3) {
	jnb	_P1_5,00162$
	ljmp	00122$
00162$:
;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:120: unit = !unit; 
	cpl	_unit
	ljmp	00122$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_alg:
	.db #0x3F
	.db #0x06
	.db #0x5B
	.db #0x4F
	.db #0x66
	.db #0x6D
	.db #0x7D
	.db #0x07
	.db #0x7F
	.db #0x67
	.db #0x77
	.db #0x7C
	.db #0x39
	.db #0x5E
	.db #0x79
	.db #0x71
_disp:
	.db #0x01
	.db #0x02
	.db #0x04
	.db #0x08
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
