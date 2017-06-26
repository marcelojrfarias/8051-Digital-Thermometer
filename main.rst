                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _pinMode
                                     13 	.globl _digitalWrite
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 ;--------------------------------------------------------
                                     37 ; Stack segment in internal ram 
                                     38 ;--------------------------------------------------------
                                     39 	.area	SSEG
      000008                         40 __start__stack:
      000008                         41 	.ds	1
                                     42 
                                     43 ;--------------------------------------------------------
                                     44 ; indirectly addressable internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area ISEG    (DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; absolute internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area IABS    (ABS,DATA)
                                     51 	.area IABS    (ABS,DATA)
                                     52 ;--------------------------------------------------------
                                     53 ; bit data
                                     54 ;--------------------------------------------------------
                                     55 	.area BSEG    (BIT)
                                     56 ;--------------------------------------------------------
                                     57 ; paged external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area PSEG    (PAG,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XSEG    (XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; absolute external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XABS    (ABS,XDATA)
                                     68 ;--------------------------------------------------------
                                     69 ; external initialized ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XISEG   (XDATA)
                                     72 	.area HOME    (CODE)
                                     73 	.area GSINIT0 (CODE)
                                     74 	.area GSINIT1 (CODE)
                                     75 	.area GSINIT2 (CODE)
                                     76 	.area GSINIT3 (CODE)
                                     77 	.area GSINIT4 (CODE)
                                     78 	.area GSINIT5 (CODE)
                                     79 	.area GSINIT  (CODE)
                                     80 	.area GSFINAL (CODE)
                                     81 	.area CSEG    (CODE)
                                     82 ;--------------------------------------------------------
                                     83 ; interrupt vector 
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME    (CODE)
      000000                         86 __interrupt_vect:
      000000 02 00 06         [24]   87 	ljmp	__sdcc_gsinit_startup
                                     88 ;--------------------------------------------------------
                                     89 ; global & static initialisations
                                     90 ;--------------------------------------------------------
                                     91 	.area HOME    (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 	.area GSFINAL (CODE)
                                     94 	.area GSINIT  (CODE)
                                     95 	.globl __sdcc_gsinit_startup
                                     96 	.globl __sdcc_program_startup
                                     97 	.globl __start__stack
                                     98 	.globl __mcs51_genXINIT
                                     99 	.globl __mcs51_genXRAMCLEAR
                                    100 	.globl __mcs51_genRAMCLEAR
                                    101 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  102 	ljmp	__sdcc_program_startup
                                    103 ;--------------------------------------------------------
                                    104 ; Home
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME    (CODE)
                                    107 	.area HOME    (CODE)
      000003                        108 __sdcc_program_startup:
      000003 02 00 62         [24]  109 	ljmp	_main
                                    110 ;	return from main will return to caller
                                    111 ;--------------------------------------------------------
                                    112 ; code
                                    113 ;--------------------------------------------------------
                                    114 	.area CSEG    (CODE)
                                    115 ;------------------------------------------------------------
                                    116 ;Allocation info for local variables in function 'main'
                                    117 ;------------------------------------------------------------
                                    118 ;	.\main.c:4: void main(void) {
                                    119 ;	-----------------------------------------
                                    120 ;	 function main
                                    121 ;	-----------------------------------------
      000062                        122 _main:
                           000007   123 	ar7 = 0x07
                           000006   124 	ar6 = 0x06
                           000005   125 	ar5 = 0x05
                           000004   126 	ar4 = 0x04
                           000003   127 	ar3 = 0x03
                           000002   128 	ar2 = 0x02
                           000001   129 	ar1 = 0x01
                           000000   130 	ar0 = 0x00
                                    131 ;	.\main.c:6: pinMode(0, OUTPUT);
      000062 75 00 01         [24]  132 	mov	_pinMode_PARM_2,#0x01
      000065 75 82 00         [24]  133 	mov	dpl,#0x00
      000068 12 00 00         [24]  134 	lcall	_pinMode
                                    135 ;	.\main.c:7: digitalWrite(0, HIGH);
      00006B 75 00 01         [24]  136 	mov	_digitalWrite_PARM_2,#0x01
      00006E 75 82 00         [24]  137 	mov	dpl,#0x00
      000071 12 00 00         [24]  138 	lcall	_digitalWrite
                                    139 ;	.\main.c:9: while(1) {
      000074                        140 00102$:
      000074 80 FE            [24]  141 	sjmp	00102$
                                    142 	.area CSEG    (CODE)
                                    143 	.area CONST   (CODE)
                                    144 	.area XINIT   (CODE)
                                    145 	.area CABS    (ABS,CODE)
