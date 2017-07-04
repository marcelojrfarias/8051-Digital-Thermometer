                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.2 #5199 (Jul 29 2008) (MINGW32)
                              4 ; This file was generated Mon Jul 03 21:05:45 2017
                              5 ;--------------------------------------------------------
                              6 	.module MAIN_T_1
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _toCelsius
                             14 	.globl _toFahrenheit
                             15 	.globl _printTemp
                             16 	.globl _Display
                             17 	.globl _delay
                             18 	.globl _CY
                             19 	.globl _AC
                             20 	.globl _F0
                             21 	.globl _RS1
                             22 	.globl _RS0
                             23 	.globl _OV
                             24 	.globl _F1
                             25 	.globl _P
                             26 	.globl _PS
                             27 	.globl _PT1
                             28 	.globl _PX1
                             29 	.globl _PT0
                             30 	.globl _PX0
                             31 	.globl _RD
                             32 	.globl _WR
                             33 	.globl _T1
                             34 	.globl _T0
                             35 	.globl _INT1
                             36 	.globl _INT0
                             37 	.globl _TXD
                             38 	.globl _RXD
                             39 	.globl _P3_7
                             40 	.globl _P3_6
                             41 	.globl _P3_5
                             42 	.globl _P3_4
                             43 	.globl _P3_3
                             44 	.globl _P3_2
                             45 	.globl _P3_1
                             46 	.globl _P3_0
                             47 	.globl _EA
                             48 	.globl _ES
                             49 	.globl _ET1
                             50 	.globl _EX1
                             51 	.globl _ET0
                             52 	.globl _EX0
                             53 	.globl _P2_7
                             54 	.globl _P2_6
                             55 	.globl _P2_5
                             56 	.globl _P2_4
                             57 	.globl _P2_3
                             58 	.globl _P2_2
                             59 	.globl _P2_1
                             60 	.globl _P2_0
                             61 	.globl _SM0
                             62 	.globl _SM1
                             63 	.globl _SM2
                             64 	.globl _REN
                             65 	.globl _TB8
                             66 	.globl _RB8
                             67 	.globl _TI
                             68 	.globl _RI
                             69 	.globl _P1_7
                             70 	.globl _P1_6
                             71 	.globl _P1_5
                             72 	.globl _P1_4
                             73 	.globl _P1_3
                             74 	.globl _P1_2
                             75 	.globl _P1_1
                             76 	.globl _P1_0
                             77 	.globl _TF1
                             78 	.globl _TR1
                             79 	.globl _TF0
                             80 	.globl _TR0
                             81 	.globl _IE1
                             82 	.globl _IT1
                             83 	.globl _IE0
                             84 	.globl _IT0
                             85 	.globl _P0_7
                             86 	.globl _P0_6
                             87 	.globl _P0_5
                             88 	.globl _P0_4
                             89 	.globl _P0_3
                             90 	.globl _P0_2
                             91 	.globl _P0_1
                             92 	.globl _P0_0
                             93 	.globl _B
                             94 	.globl _ACC
                             95 	.globl _PSW
                             96 	.globl _IP
                             97 	.globl _P3
                             98 	.globl _IE
                             99 	.globl _P2
                            100 	.globl _SBUF
                            101 	.globl _SCON
                            102 	.globl _P1
                            103 	.globl _TH1
                            104 	.globl _TH0
                            105 	.globl _TL1
                            106 	.globl _TL0
                            107 	.globl _TMOD
                            108 	.globl _TCON
                            109 	.globl _PCON
                            110 	.globl _DPH
                            111 	.globl _DPL
                            112 	.globl _SP
                            113 	.globl _P0
                            114 	.globl _unit
                            115 	.globl _tempF
                            116 	.globl _tempC
                            117 	.globl _lastsw3
                            118 	.globl _lastsw2
                            119 	.globl _lastsw1
                            120 ;--------------------------------------------------------
                            121 ; special function registers
                            122 ;--------------------------------------------------------
                            123 	.area RSEG    (DATA)
                    0080    124 _P0	=	0x0080
                    0081    125 _SP	=	0x0081
                    0082    126 _DPL	=	0x0082
                    0083    127 _DPH	=	0x0083
                    0087    128 _PCON	=	0x0087
                    0088    129 _TCON	=	0x0088
                    0089    130 _TMOD	=	0x0089
                    008A    131 _TL0	=	0x008a
                    008B    132 _TL1	=	0x008b
                    008C    133 _TH0	=	0x008c
                    008D    134 _TH1	=	0x008d
                    0090    135 _P1	=	0x0090
                    0098    136 _SCON	=	0x0098
                    0099    137 _SBUF	=	0x0099
                    00A0    138 _P2	=	0x00a0
                    00A8    139 _IE	=	0x00a8
                    00B0    140 _P3	=	0x00b0
                    00B8    141 _IP	=	0x00b8
                    00D0    142 _PSW	=	0x00d0
                    00E0    143 _ACC	=	0x00e0
                    00F0    144 _B	=	0x00f0
                            145 ;--------------------------------------------------------
                            146 ; special function bits
                            147 ;--------------------------------------------------------
                            148 	.area RSEG    (DATA)
                    0080    149 _P0_0	=	0x0080
                    0081    150 _P0_1	=	0x0081
                    0082    151 _P0_2	=	0x0082
                    0083    152 _P0_3	=	0x0083
                    0084    153 _P0_4	=	0x0084
                    0085    154 _P0_5	=	0x0085
                    0086    155 _P0_6	=	0x0086
                    0087    156 _P0_7	=	0x0087
                    0088    157 _IT0	=	0x0088
                    0089    158 _IE0	=	0x0089
                    008A    159 _IT1	=	0x008a
                    008B    160 _IE1	=	0x008b
                    008C    161 _TR0	=	0x008c
                    008D    162 _TF0	=	0x008d
                    008E    163 _TR1	=	0x008e
                    008F    164 _TF1	=	0x008f
                    0090    165 _P1_0	=	0x0090
                    0091    166 _P1_1	=	0x0091
                    0092    167 _P1_2	=	0x0092
                    0093    168 _P1_3	=	0x0093
                    0094    169 _P1_4	=	0x0094
                    0095    170 _P1_5	=	0x0095
                    0096    171 _P1_6	=	0x0096
                    0097    172 _P1_7	=	0x0097
                    0098    173 _RI	=	0x0098
                    0099    174 _TI	=	0x0099
                    009A    175 _RB8	=	0x009a
                    009B    176 _TB8	=	0x009b
                    009C    177 _REN	=	0x009c
                    009D    178 _SM2	=	0x009d
                    009E    179 _SM1	=	0x009e
                    009F    180 _SM0	=	0x009f
                    00A0    181 _P2_0	=	0x00a0
                    00A1    182 _P2_1	=	0x00a1
                    00A2    183 _P2_2	=	0x00a2
                    00A3    184 _P2_3	=	0x00a3
                    00A4    185 _P2_4	=	0x00a4
                    00A5    186 _P2_5	=	0x00a5
                    00A6    187 _P2_6	=	0x00a6
                    00A7    188 _P2_7	=	0x00a7
                    00A8    189 _EX0	=	0x00a8
                    00A9    190 _ET0	=	0x00a9
                    00AA    191 _EX1	=	0x00aa
                    00AB    192 _ET1	=	0x00ab
                    00AC    193 _ES	=	0x00ac
                    00AF    194 _EA	=	0x00af
                    00B0    195 _P3_0	=	0x00b0
                    00B1    196 _P3_1	=	0x00b1
                    00B2    197 _P3_2	=	0x00b2
                    00B3    198 _P3_3	=	0x00b3
                    00B4    199 _P3_4	=	0x00b4
                    00B5    200 _P3_5	=	0x00b5
                    00B6    201 _P3_6	=	0x00b6
                    00B7    202 _P3_7	=	0x00b7
                    00B0    203 _RXD	=	0x00b0
                    00B1    204 _TXD	=	0x00b1
                    00B2    205 _INT0	=	0x00b2
                    00B3    206 _INT1	=	0x00b3
                    00B4    207 _T0	=	0x00b4
                    00B5    208 _T1	=	0x00b5
                    00B6    209 _WR	=	0x00b6
                    00B7    210 _RD	=	0x00b7
                    00B8    211 _PX0	=	0x00b8
                    00B9    212 _PT0	=	0x00b9
                    00BA    213 _PX1	=	0x00ba
                    00BB    214 _PT1	=	0x00bb
                    00BC    215 _PS	=	0x00bc
                    00D0    216 _P	=	0x00d0
                    00D1    217 _F1	=	0x00d1
                    00D2    218 _OV	=	0x00d2
                    00D3    219 _RS0	=	0x00d3
                    00D4    220 _RS1	=	0x00d4
                    00D5    221 _F0	=	0x00d5
                    00D6    222 _AC	=	0x00d6
                    00D7    223 _CY	=	0x00d7
                            224 ;--------------------------------------------------------
                            225 ; overlayable register banks
                            226 ;--------------------------------------------------------
                            227 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     228 	.ds 8
                            229 ;--------------------------------------------------------
                            230 ; internal ram data
                            231 ;--------------------------------------------------------
                            232 	.area DSEG    (DATA)
   0008                     233 _lastsw1::
   0008                     234 	.ds 2
   000A                     235 _lastsw2::
   000A                     236 	.ds 2
   000C                     237 _lastsw3::
   000C                     238 	.ds 2
   000E                     239 _tempC::
   000E                     240 	.ds 2
   0010                     241 _tempF::
   0010                     242 	.ds 2
                            243 ;--------------------------------------------------------
                            244 ; overlayable items in internal ram 
                            245 ;--------------------------------------------------------
                            246 	.area OSEG    (OVR,DATA)
                            247 ;--------------------------------------------------------
                            248 ; Stack segment in internal ram 
                            249 ;--------------------------------------------------------
                            250 	.area	SSEG	(DATA)
   0021                     251 __start__stack:
   0021                     252 	.ds	1
                            253 
                            254 ;--------------------------------------------------------
                            255 ; indirectly addressable internal ram data
                            256 ;--------------------------------------------------------
                            257 	.area ISEG    (DATA)
                            258 ;--------------------------------------------------------
                            259 ; absolute internal ram data
                            260 ;--------------------------------------------------------
                            261 	.area IABS    (ABS,DATA)
                            262 	.area IABS    (ABS,DATA)
                            263 ;--------------------------------------------------------
                            264 ; bit data
                            265 ;--------------------------------------------------------
                            266 	.area BSEG    (BIT)
   0000                     267 _unit::
   0000                     268 	.ds 1
                            269 ;--------------------------------------------------------
                            270 ; paged external ram data
                            271 ;--------------------------------------------------------
                            272 	.area PSEG    (PAG,XDATA)
                            273 ;--------------------------------------------------------
                            274 ; external ram data
                            275 ;--------------------------------------------------------
                            276 	.area XSEG    (XDATA)
                    FFC0    277 _dados	=	0xffc0
                    FFC1    278 _display	=	0xffc1
                            279 ;--------------------------------------------------------
                            280 ; absolute external ram data
                            281 ;--------------------------------------------------------
                            282 	.area XABS    (ABS,XDATA)
                            283 ;--------------------------------------------------------
                            284 ; external initialized ram data
                            285 ;--------------------------------------------------------
                            286 	.area XISEG   (XDATA)
                            287 	.area HOME    (CODE)
                            288 	.area GSINIT0 (CODE)
                            289 	.area GSINIT1 (CODE)
                            290 	.area GSINIT2 (CODE)
                            291 	.area GSINIT3 (CODE)
                            292 	.area GSINIT4 (CODE)
                            293 	.area GSINIT5 (CODE)
                            294 	.area GSINIT  (CODE)
                            295 	.area GSFINAL (CODE)
                            296 	.area CSEG    (CODE)
                            297 ;--------------------------------------------------------
                            298 ; interrupt vector 
                            299 ;--------------------------------------------------------
                            300 	.area HOME    (CODE)
   0000                     301 __interrupt_vect:
   0000 02 00 08            302 	ljmp	__sdcc_gsinit_startup
                            303 ;--------------------------------------------------------
                            304 ; global & static initialisations
                            305 ;--------------------------------------------------------
                            306 	.area HOME    (CODE)
                            307 	.area GSINIT  (CODE)
                            308 	.area GSFINAL (CODE)
                            309 	.area GSINIT  (CODE)
                            310 	.globl __sdcc_gsinit_startup
                            311 	.globl __sdcc_program_startup
                            312 	.globl __start__stack
                            313 	.globl __mcs51_genXINIT
                            314 	.globl __mcs51_genXRAMCLEAR
                            315 	.globl __mcs51_genRAMCLEAR
                            316 	.area GSFINAL (CODE)
   0061 02 00 03            317 	ljmp	__sdcc_program_startup
                            318 ;--------------------------------------------------------
                            319 ; Home
                            320 ;--------------------------------------------------------
                            321 	.area HOME    (CODE)
                            322 	.area HOME    (CODE)
   0003                     323 __sdcc_program_startup:
   0003 12 02 0E            324 	lcall	_main
                            325 ;	return from main will lock up
   0006 80 FE               326 	sjmp .
                            327 ;--------------------------------------------------------
                            328 ; code
                            329 ;--------------------------------------------------------
                            330 	.area CSEG    (CODE)
                            331 ;------------------------------------------------------------
                            332 ;Allocation info for local variables in function 'delay'
                            333 ;------------------------------------------------------------
                            334 ;x                         Allocated to registers r2 r3 
                            335 ;j                         Allocated to registers r4 r5 
                            336 ;------------------------------------------------------------
                            337 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:28: void delay(int x) {
                            338 ;	-----------------------------------------
                            339 ;	 function delay
                            340 ;	-----------------------------------------
   0064                     341 _delay:
                    0002    342 	ar2 = 0x02
                    0003    343 	ar3 = 0x03
                    0004    344 	ar4 = 0x04
                    0005    345 	ar5 = 0x05
                    0006    346 	ar6 = 0x06
                    0007    347 	ar7 = 0x07
                    0000    348 	ar0 = 0x00
                    0001    349 	ar1 = 0x01
   0064 AA 82               350 	mov	r2,dpl
   0066 AB 83               351 	mov	r3,dph
                            352 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:30: while(x-- > 0) for (j = 0; j < 255; j++);
   0068                     353 00101$:
   0068 8A 04               354 	mov	ar4,r2
   006A 8B 05               355 	mov	ar5,r3
   006C 1A                  356 	dec	r2
   006D BA FF 01            357 	cjne	r2,#0xff,00115$
   0070 1B                  358 	dec	r3
   0071                     359 00115$:
   0071 C3                  360 	clr	c
   0072 E4                  361 	clr	a
   0073 9C                  362 	subb	a,r4
   0074 74 80               363 	mov	a,#(0x00 ^ 0x80)
   0076 8D F0               364 	mov	b,r5
   0078 63 F0 80            365 	xrl	b,#0x80
   007B 95 F0               366 	subb	a,b
   007D 50 0F               367 	jnc	00107$
   007F 7C FF               368 	mov	r4,#0xFF
   0081 7D 00               369 	mov	r5,#0x00
   0083                     370 00106$:
   0083 1C                  371 	dec	r4
   0084 BC FF 01            372 	cjne	r4,#0xff,00117$
   0087 1D                  373 	dec	r5
   0088                     374 00117$:
   0088 EC                  375 	mov	a,r4
   0089 4D                  376 	orl	a,r5
   008A 70 F7               377 	jnz	00106$
   008C 80 DA               378 	sjmp	00101$
   008E                     379 00107$:
   008E 22                  380 	ret
                            381 ;------------------------------------------------------------
                            382 ;Allocation info for local variables in function 'Display'
                            383 ;------------------------------------------------------------
                            384 ;x                         Allocated to stack - offset -4
                            385 ;n                         Allocated to registers r2 r3 
                            386 ;------------------------------------------------------------
                            387 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:33: void Display(int n, int x) {//n para qual display e x para
                            388 ;	-----------------------------------------
                            389 ;	 function Display
                            390 ;	-----------------------------------------
   008F                     391 _Display:
   008F C0 12               392 	push	_bp
   0091 85 81 12            393 	mov	_bp,sp
   0094 AA 82               394 	mov	r2,dpl
   0096 AB 83               395 	mov	r3,dph
                            396 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:34: display = disp[n];
   0098 EA                  397 	mov	a,r2
   0099 24 71               398 	add	a,#_disp
   009B F5 82               399 	mov	dpl,a
   009D EB                  400 	mov	a,r3
   009E 34 04               401 	addc	a,#(_disp >> 8)
   00A0 F5 83               402 	mov	dph,a
   00A2 E4                  403 	clr	a
   00A3 93                  404 	movc	a,@a+dptr
   00A4 90 FF C1            405 	mov	dptr,#_display
   00A7 F0                  406 	movx	@dptr,a
                            407 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:35: dados = alg[x];
   00A8 E5 12               408 	mov	a,_bp
   00AA 24 FC               409 	add	a,#0xfc
   00AC F8                  410 	mov	r0,a
   00AD E6                  411 	mov	a,@r0
   00AE 24 61               412 	add	a,#_alg
   00B0 F5 82               413 	mov	dpl,a
   00B2 08                  414 	inc	r0
   00B3 E6                  415 	mov	a,@r0
   00B4 34 04               416 	addc	a,#(_alg >> 8)
   00B6 F5 83               417 	mov	dph,a
   00B8 E4                  418 	clr	a
   00B9 93                  419 	movc	a,@a+dptr
   00BA 90 FF C0            420 	mov	dptr,#_dados
   00BD F0                  421 	movx	@dptr,a
   00BE D0 12               422 	pop	_bp
   00C0 22                  423 	ret
                            424 ;------------------------------------------------------------
                            425 ;Allocation info for local variables in function 'printTemp'
                            426 ;------------------------------------------------------------
                            427 ;temp                      Allocated to registers r2 r3 
                            428 ;------------------------------------------------------------
                            429 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:38: void printTemp() {
                            430 ;	-----------------------------------------
                            431 ;	 function printTemp
                            432 ;	-----------------------------------------
   00C1                     433 _printTemp:
                            434 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:40: int temp = unit == C ? tempC : tempF;
   00C1 30 00 06            435 	jnb	_unit,00106$
   00C4 AA 0E               436 	mov	r2,_tempC
   00C6 AB 0F               437 	mov	r3,(_tempC + 1)
   00C8 80 04               438 	sjmp	00107$
   00CA                     439 00106$:
   00CA AA 10               440 	mov	r2,_tempF
   00CC AB 11               441 	mov	r3,(_tempF + 1)
   00CE                     442 00107$:
                            443 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:42: Display(0, temp/100);
   00CE C0 02               444 	push	ar2
   00D0 C0 03               445 	push	ar3
   00D2 74 64               446 	mov	a,#0x64
   00D4 C0 E0               447 	push	acc
   00D6 E4                  448 	clr	a
   00D7 C0 E0               449 	push	acc
   00D9 8A 82               450 	mov	dpl,r2
   00DB 8B 83               451 	mov	dph,r3
   00DD 12 03 AA            452 	lcall	__divsint
   00E0 AC 82               453 	mov	r4,dpl
   00E2 AD 83               454 	mov	r5,dph
   00E4 15 81               455 	dec	sp
   00E6 15 81               456 	dec	sp
   00E8 C0 04               457 	push	ar4
   00EA C0 05               458 	push	ar5
   00EC 90 00 00            459 	mov	dptr,#0x0000
   00EF 12 00 8F            460 	lcall	_Display
   00F2 15 81               461 	dec	sp
   00F4 15 81               462 	dec	sp
                            463 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:43: delay(2);
   00F6 90 00 02            464 	mov	dptr,#0x0002
   00F9 12 00 64            465 	lcall	_delay
   00FC D0 03               466 	pop	ar3
   00FE D0 02               467 	pop	ar2
                            468 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:44: Display(1, temp%100/10);
   0100 C0 02               469 	push	ar2
   0102 C0 03               470 	push	ar3
   0104 74 64               471 	mov	a,#0x64
   0106 C0 E0               472 	push	acc
   0108 E4                  473 	clr	a
   0109 C0 E0               474 	push	acc
   010B 8A 82               475 	mov	dpl,r2
   010D 8B 83               476 	mov	dph,r3
   010F 12 03 6D            477 	lcall	__modsint
   0112 AC 82               478 	mov	r4,dpl
   0114 AD 83               479 	mov	r5,dph
   0116 15 81               480 	dec	sp
   0118 15 81               481 	dec	sp
   011A 74 0A               482 	mov	a,#0x0A
   011C C0 E0               483 	push	acc
   011E E4                  484 	clr	a
   011F C0 E0               485 	push	acc
   0121 8C 82               486 	mov	dpl,r4
   0123 8D 83               487 	mov	dph,r5
   0125 12 03 AA            488 	lcall	__divsint
   0128 AC 82               489 	mov	r4,dpl
   012A AD 83               490 	mov	r5,dph
   012C 15 81               491 	dec	sp
   012E 15 81               492 	dec	sp
   0130 C0 04               493 	push	ar4
   0132 C0 05               494 	push	ar5
   0134 90 00 01            495 	mov	dptr,#0x0001
   0137 12 00 8F            496 	lcall	_Display
   013A 15 81               497 	dec	sp
   013C 15 81               498 	dec	sp
                            499 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:45: delay(2);
   013E 90 00 02            500 	mov	dptr,#0x0002
   0141 12 00 64            501 	lcall	_delay
   0144 D0 03               502 	pop	ar3
   0146 D0 02               503 	pop	ar2
                            504 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:46: Display(2, temp%10);
   0148 74 0A               505 	mov	a,#0x0A
   014A C0 E0               506 	push	acc
   014C E4                  507 	clr	a
   014D C0 E0               508 	push	acc
   014F 8A 82               509 	mov	dpl,r2
   0151 8B 83               510 	mov	dph,r3
   0153 12 03 6D            511 	lcall	__modsint
   0156 AA 82               512 	mov	r2,dpl
   0158 AB 83               513 	mov	r3,dph
   015A 15 81               514 	dec	sp
   015C 15 81               515 	dec	sp
   015E C0 02               516 	push	ar2
   0160 C0 03               517 	push	ar3
   0162 90 00 02            518 	mov	dptr,#0x0002
   0165 12 00 8F            519 	lcall	_Display
   0168 15 81               520 	dec	sp
   016A 15 81               521 	dec	sp
                            522 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:47: delay(2);
   016C 90 00 02            523 	mov	dptr,#0x0002
   016F 12 00 64            524 	lcall	_delay
   0172 30 00 13            525 	jnb	_unit,00102$
                            526 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:50: Display(3, 12);
   0175 74 0C               527 	mov	a,#0x0C
   0177 C0 E0               528 	push	acc
   0179 E4                  529 	clr	a
   017A C0 E0               530 	push	acc
   017C 90 00 03            531 	mov	dptr,#0x0003
   017F 12 00 8F            532 	lcall	_Display
   0182 15 81               533 	dec	sp
   0184 15 81               534 	dec	sp
   0186 80 11               535 	sjmp	00103$
   0188                     536 00102$:
                            537 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:52: Display(3, 15);
   0188 74 0F               538 	mov	a,#0x0F
   018A C0 E0               539 	push	acc
   018C E4                  540 	clr	a
   018D C0 E0               541 	push	acc
   018F 90 00 03            542 	mov	dptr,#0x0003
   0192 12 00 8F            543 	lcall	_Display
   0195 15 81               544 	dec	sp
   0197 15 81               545 	dec	sp
   0199                     546 00103$:
                            547 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:54: delay(2);
   0199 90 00 02            548 	mov	dptr,#0x0002
   019C 02 00 64            549 	ljmp	_delay
                            550 ;------------------------------------------------------------
                            551 ;Allocation info for local variables in function 'toFahrenheit'
                            552 ;------------------------------------------------------------
                            553 ;temp                      Allocated to registers r2 r3 
                            554 ;------------------------------------------------------------
                            555 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:57: int toFahrenheit(int temp) {
                            556 ;	-----------------------------------------
                            557 ;	 function toFahrenheit
                            558 ;	-----------------------------------------
   019F                     559 _toFahrenheit:
   019F AA 82               560 	mov	r2,dpl
   01A1 AB 83               561 	mov	r3,dph
                            562 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:58: return temp * 18 / 10 + 32;
   01A3 C0 02               563 	push	ar2
   01A5 C0 03               564 	push	ar3
   01A7 90 00 12            565 	mov	dptr,#0x0012
   01AA 12 03 4B            566 	lcall	__mulint
   01AD AA 82               567 	mov	r2,dpl
   01AF AB 83               568 	mov	r3,dph
   01B1 15 81               569 	dec	sp
   01B3 15 81               570 	dec	sp
   01B5 74 0A               571 	mov	a,#0x0A
   01B7 C0 E0               572 	push	acc
   01B9 E4                  573 	clr	a
   01BA C0 E0               574 	push	acc
   01BC 8A 82               575 	mov	dpl,r2
   01BE 8B 83               576 	mov	dph,r3
   01C0 12 03 AA            577 	lcall	__divsint
   01C3 AA 82               578 	mov	r2,dpl
   01C5 AB 83               579 	mov	r3,dph
   01C7 15 81               580 	dec	sp
   01C9 15 81               581 	dec	sp
   01CB 74 20               582 	mov	a,#0x20
   01CD 2A                  583 	add	a,r2
   01CE F5 82               584 	mov	dpl,a
   01D0 E4                  585 	clr	a
   01D1 3B                  586 	addc	a,r3
   01D2 F5 83               587 	mov	dph,a
   01D4 22                  588 	ret
                            589 ;------------------------------------------------------------
                            590 ;Allocation info for local variables in function 'toCelsius'
                            591 ;------------------------------------------------------------
                            592 ;temp                      Allocated to registers r2 r3 
                            593 ;------------------------------------------------------------
                            594 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:61: int toCelsius(int temp) {
                            595 ;	-----------------------------------------
                            596 ;	 function toCelsius
                            597 ;	-----------------------------------------
   01D5                     598 _toCelsius:
   01D5 AA 82               599 	mov	r2,dpl
   01D7 AB 83               600 	mov	r3,dph
                            601 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:62: return (temp - 32) * 10 / 18;
   01D9 EA                  602 	mov	a,r2
   01DA 24 E0               603 	add	a,#0xe0
   01DC FA                  604 	mov	r2,a
   01DD EB                  605 	mov	a,r3
   01DE 34 FF               606 	addc	a,#0xff
   01E0 FB                  607 	mov	r3,a
   01E1 C0 02               608 	push	ar2
   01E3 C0 03               609 	push	ar3
   01E5 90 00 0A            610 	mov	dptr,#0x000A
   01E8 12 03 4B            611 	lcall	__mulint
   01EB AA 82               612 	mov	r2,dpl
   01ED AB 83               613 	mov	r3,dph
   01EF 15 81               614 	dec	sp
   01F1 15 81               615 	dec	sp
   01F3 74 12               616 	mov	a,#0x12
   01F5 C0 E0               617 	push	acc
   01F7 E4                  618 	clr	a
   01F8 C0 E0               619 	push	acc
   01FA 8A 82               620 	mov	dpl,r2
   01FC 8B 83               621 	mov	dph,r3
   01FE 12 03 AA            622 	lcall	__divsint
   0201 AA 82               623 	mov	r2,dpl
   0203 AB 83               624 	mov	r3,dph
   0205 15 81               625 	dec	sp
   0207 15 81               626 	dec	sp
   0209 8A 82               627 	mov	dpl,r2
   020B 8B 83               628 	mov	dph,r3
   020D 22                  629 	ret
                            630 ;------------------------------------------------------------
                            631 ;Allocation info for local variables in function 'main'
                            632 ;------------------------------------------------------------
                            633 ;------------------------------------------------------------
                            634 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:65: void main(void) {
                            635 ;	-----------------------------------------
                            636 ;	 function main
                            637 ;	-----------------------------------------
   020E                     638 _main:
                            639 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:67: lastsw1 = 0;
                            640 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:68: lastsw2 = 0;
                            641 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:69: lastsw3 = 0;
   020E E4                  642 	clr	a
   020F F5 08               643 	mov	_lastsw1,a
   0211 F5 09               644 	mov	(_lastsw1 + 1),a
   0213 F5 0A               645 	mov	_lastsw2,a
   0215 F5 0B               646 	mov	(_lastsw2 + 1),a
   0217 F5 0C               647 	mov	_lastsw3,a
   0219 F5 0D               648 	mov	(_lastsw3 + 1),a
                            649 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:71: unit = C;
   021B D2 00               650 	setb	_unit
                            651 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:72: tempC = 25;
   021D 75 0E 19            652 	mov	_tempC,#0x19
   0220 E4                  653 	clr	a
   0221 F5 0F               654 	mov	(_tempC + 1),a
                            655 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:73: tempF = toFahrenheit(tempC);
   0223 90 00 19            656 	mov	dptr,#0x0019
   0226 12 01 9F            657 	lcall	_toFahrenheit
   0229 85 82 10            658 	mov	_tempF,dpl
   022C 85 83 11            659 	mov	(_tempF + 1),dph
                            660 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:75: while(1) {
   022F                     661 00122$:
                            662 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:77: printTemp();
   022F 12 00 C1            663 	lcall	_printTemp
                            664 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:79: if (sw1 != lastsw1) {
   0232 A2 97               665 	mov	c,_P1_7
   0234 E4                  666 	clr	a
   0235 33                  667 	rlc	a
   0236 FA                  668 	mov	r2,a
   0237 7B 00               669 	mov	r3,#0x00
   0239 B5 08 06            670 	cjne	a,_lastsw1,00149$
   023C EB                  671 	mov	a,r3
   023D B5 09 02            672 	cjne	a,(_lastsw1 + 1),00149$
   0240 80 6C               673 	sjmp	00108$
   0242                     674 00149$:
                            675 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:80: lastsw1 = sw1;
   0242 A2 97               676 	mov	c,_P1_7
   0244 E4                  677 	clr	a
   0245 33                  678 	rlc	a
   0246 F5 08               679 	mov	_lastsw1,a
   0248 75 09 00            680 	mov	(_lastsw1 + 1),#0x00
                            681 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:81: if (!sw1) {
   024B 20 97 60            682 	jb	_P1_7,00108$
                            683 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:91: }
   024E 30 00 2D            684 	jnb	_unit,00102$
                            685 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:84: tempC = tempC < 537 ? tempC + 1 : 537;
   0251 C3                  686 	clr	c
   0252 E5 0E               687 	mov	a,_tempC
   0254 94 19               688 	subb	a,#0x19
   0256 E5 0F               689 	mov	a,(_tempC + 1)
   0258 94 02               690 	subb	a,#0x02
   025A 50 0B               691 	jnc	00126$
   025C 74 01               692 	mov	a,#0x01
   025E 25 0E               693 	add	a,_tempC
   0260 FA                  694 	mov	r2,a
   0261 E4                  695 	clr	a
   0262 35 0F               696 	addc	a,(_tempC + 1)
   0264 FB                  697 	mov	r3,a
   0265 80 04               698 	sjmp	00127$
   0267                     699 00126$:
   0267 7A 19               700 	mov	r2,#0x19
   0269 7B 02               701 	mov	r3,#0x02
   026B                     702 00127$:
   026B 8A 0E               703 	mov	_tempC,r2
   026D 8B 0F               704 	mov	(_tempC + 1),r3
                            705 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:85: tempF = toFahrenheit(tempC);
   026F 85 0E 82            706 	mov	dpl,_tempC
   0272 85 0F 83            707 	mov	dph,(_tempC + 1)
   0275 12 01 9F            708 	lcall	_toFahrenheit
   0278 85 82 10            709 	mov	_tempF,dpl
   027B 85 83 11            710 	mov	(_tempF + 1),dph
   027E                     711 00102$:
   027E 20 00 2D            712 	jb	_unit,00108$
                            713 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:88: tempF = tempF < 999 ? tempF + 1 : 999;
   0281 C3                  714 	clr	c
   0282 E5 10               715 	mov	a,_tempF
   0284 94 E7               716 	subb	a,#0xE7
   0286 E5 11               717 	mov	a,(_tempF + 1)
   0288 94 03               718 	subb	a,#0x03
   028A 50 0B               719 	jnc	00128$
   028C 74 01               720 	mov	a,#0x01
   028E 25 10               721 	add	a,_tempF
   0290 FA                  722 	mov	r2,a
   0291 E4                  723 	clr	a
   0292 35 11               724 	addc	a,(_tempF + 1)
   0294 FB                  725 	mov	r3,a
   0295 80 04               726 	sjmp	00129$
   0297                     727 00128$:
   0297 7A E7               728 	mov	r2,#0xE7
   0299 7B 03               729 	mov	r3,#0x03
   029B                     730 00129$:
   029B 8A 10               731 	mov	_tempF,r2
   029D 8B 11               732 	mov	(_tempF + 1),r3
                            733 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:89: tempC = toCelsius(tempF);
   029F 85 10 82            734 	mov	dpl,_tempF
   02A2 85 11 83            735 	mov	dph,(_tempF + 1)
   02A5 12 01 D5            736 	lcall	_toCelsius
   02A8 85 82 0E            737 	mov	_tempC,dpl
   02AB 85 83 0F            738 	mov	(_tempC + 1),dph
   02AE                     739 00108$:
                            740 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:96: if (sw2 != lastsw2) {
   02AE A2 96               741 	mov	c,_P1_6
   02B0 E4                  742 	clr	a
   02B1 33                  743 	rlc	a
   02B2 FA                  744 	mov	r2,a
   02B3 7B 00               745 	mov	r3,#0x00
   02B5 B5 0A 06            746 	cjne	a,_lastsw2,00155$
   02B8 EB                  747 	mov	a,r3
   02B9 B5 0B 02            748 	cjne	a,(_lastsw2 + 1),00155$
   02BC 80 68               749 	sjmp	00116$
   02BE                     750 00155$:
                            751 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:98: lastsw2 = sw2;
   02BE A2 96               752 	mov	c,_P1_6
   02C0 E4                  753 	clr	a
   02C1 33                  754 	rlc	a
   02C2 F5 0A               755 	mov	_lastsw2,a
   02C4 75 0B 00            756 	mov	(_lastsw2 + 1),#0x00
                            757 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:100: if (!sw2) {
   02C7 20 96 5C            758 	jb	_P1_6,00116$
                            759 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:110: }		
   02CA 30 00 29            760 	jnb	_unit,00110$
                            761 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:103: tempC = tempC > 0 ? tempC - 1 : 0;
   02CD E5 0E               762 	mov	a,_tempC
   02CF 45 0F               763 	orl	a,(_tempC + 1)
   02D1 60 0C               764 	jz	00130$
   02D3 E5 0E               765 	mov	a,_tempC
   02D5 24 FF               766 	add	a,#0xff
   02D7 FA                  767 	mov	r2,a
   02D8 E5 0F               768 	mov	a,(_tempC + 1)
   02DA 34 FF               769 	addc	a,#0xff
   02DC FB                  770 	mov	r3,a
   02DD 80 04               771 	sjmp	00131$
   02DF                     772 00130$:
   02DF 7A 00               773 	mov	r2,#0x00
   02E1 7B 00               774 	mov	r3,#0x00
   02E3                     775 00131$:
   02E3 8A 0E               776 	mov	_tempC,r2
   02E5 8B 0F               777 	mov	(_tempC + 1),r3
                            778 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:104: tempF = toFahrenheit(tempC);
   02E7 85 0E 82            779 	mov	dpl,_tempC
   02EA 85 0F 83            780 	mov	dph,(_tempC + 1)
   02ED 12 01 9F            781 	lcall	_toFahrenheit
   02F0 85 82 10            782 	mov	_tempF,dpl
   02F3 85 83 11            783 	mov	(_tempF + 1),dph
   02F6                     784 00110$:
   02F6 20 00 2D            785 	jb	_unit,00116$
                            786 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:107: tempF = tempF > 32 ? tempF - 1 : 32;
   02F9 C3                  787 	clr	c
   02FA 74 20               788 	mov	a,#0x20
   02FC 95 10               789 	subb	a,_tempF
   02FE E4                  790 	clr	a
   02FF 95 11               791 	subb	a,(_tempF + 1)
   0301 50 0C               792 	jnc	00132$
   0303 E5 10               793 	mov	a,_tempF
   0305 24 FF               794 	add	a,#0xff
   0307 FA                  795 	mov	r2,a
   0308 E5 11               796 	mov	a,(_tempF + 1)
   030A 34 FF               797 	addc	a,#0xff
   030C FB                  798 	mov	r3,a
   030D 80 04               799 	sjmp	00133$
   030F                     800 00132$:
   030F 7A 20               801 	mov	r2,#0x20
   0311 7B 00               802 	mov	r3,#0x00
   0313                     803 00133$:
   0313 8A 10               804 	mov	_tempF,r2
   0315 8B 11               805 	mov	(_tempF + 1),r3
                            806 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:108: tempC = toCelsius(tempF);
   0317 85 10 82            807 	mov	dpl,_tempF
   031A 85 11 83            808 	mov	dph,(_tempF + 1)
   031D 12 01 D5            809 	lcall	_toCelsius
   0320 85 82 0E            810 	mov	_tempC,dpl
   0323 85 83 0F            811 	mov	(_tempC + 1),dph
   0326                     812 00116$:
                            813 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:115: if (sw3 != lastsw3) {
   0326 A2 95               814 	mov	c,_P1_5
   0328 E4                  815 	clr	a
   0329 33                  816 	rlc	a
   032A FA                  817 	mov	r2,a
   032B 7B 00               818 	mov	r3,#0x00
   032D B5 0C 07            819 	cjne	a,_lastsw3,00161$
   0330 EB                  820 	mov	a,r3
   0331 B5 0D 03            821 	cjne	a,(_lastsw3 + 1),00161$
   0334 02 02 2F            822 	ljmp	00122$
   0337                     823 00161$:
                            824 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:117: lastsw3 = sw3;
   0337 A2 95               825 	mov	c,_P1_5
   0339 E4                  826 	clr	a
   033A 33                  827 	rlc	a
   033B F5 0C               828 	mov	_lastsw3,a
   033D 75 0D 00            829 	mov	(_lastsw3 + 1),#0x00
                            830 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:119: if (!sw3) {
   0340 30 95 03            831 	jnb	_P1_5,00162$
   0343 02 02 2F            832 	ljmp	00122$
   0346                     833 00162$:
                            834 ;	C:\Users\POLONI~1.PON\DOCUME~1\8051-D~2\MAIN_T~1.C:120: unit = !unit; 
   0346 B2 00               835 	cpl	_unit
   0348 02 02 2F            836 	ljmp	00122$
                            837 	.area CSEG    (CODE)
                            838 	.area CONST   (CODE)
   0461                     839 _alg:
   0461 3F                  840 	.db #0x3F
   0462 06                  841 	.db #0x06
   0463 5B                  842 	.db #0x5B
   0464 4F                  843 	.db #0x4F
   0465 66                  844 	.db #0x66
   0466 6D                  845 	.db #0x6D
   0467 7D                  846 	.db #0x7D
   0468 07                  847 	.db #0x07
   0469 7F                  848 	.db #0x7F
   046A 67                  849 	.db #0x67
   046B 77                  850 	.db #0x77
   046C 7C                  851 	.db #0x7C
   046D 39                  852 	.db #0x39
   046E 5E                  853 	.db #0x5E
   046F 79                  854 	.db #0x79
   0470 71                  855 	.db #0x71
   0471                     856 _disp:
   0471 01                  857 	.db #0x01
   0472 02                  858 	.db #0x02
   0473 04                  859 	.db #0x04
   0474 08                  860 	.db #0x08
                            861 	.area XINIT   (CODE)
                            862 	.area CABS    (ABS,CODE)
