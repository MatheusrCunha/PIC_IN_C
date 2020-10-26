
_main:

;advPIC_source_file_WR_003.c,36 :: 		void main()
;advPIC_source_file_WR_003.c,38 :: 		ADCON1   = 0x0F;                           //Apenas entradas digitais
	MOVLW       15
	MOVWF       ADCON1+0 
;advPIC_source_file_WR_003.c,39 :: 		TRISB    = 0xFE;                           //Configura o RB0 como saída
	MOVLW       254
	MOVWF       TRISB+0 
;advPIC_source_file_WR_003.c,40 :: 		PORTB    = 0xFE;                           //Inicializa o PORTB
	MOVLW       254
	MOVWF       PORTB+0 
;advPIC_source_file_WR_003.c,42 :: 		while(1)                                   //loop infinito
L_main0:
;advPIC_source_file_WR_003.c,44 :: 		piscaLED();                             //chama função para piscar o LED
	CALL        _piscaLED+0, 0
;advPIC_source_file_WR_003.c,46 :: 		var1 = 24;
	MOVLW       24
	MOVWF       _var1+0 
	MOVLW       0
	MOVWF       _var1+1 
	MOVWF       _var1+2 
	MOVWF       _var1+3 
;advPIC_source_file_WR_003.c,47 :: 		var2 = 256;
	MOVLW       0
	MOVWF       _var2+0 
	MOVLW       1
	MOVWF       _var2+1 
	MOVLW       0
	MOVWF       _var2+2 
	MOVWF       _var2+3 
;advPIC_source_file_WR_003.c,48 :: 		var3 = 1232342;
	MOVLW       214
	MOVWF       _var3+0 
	MOVLW       205
	MOVWF       _var3+1 
	MOVLW       18
	MOVWF       _var3+2 
	MOVLW       0
	MOVWF       _var3+3 
;advPIC_source_file_WR_003.c,49 :: 		var4 = 23424;
	MOVLW       128
	MOVWF       _var4+0 
	MOVLW       91
	MOVWF       _var4+1 
	MOVLW       0
	MOVWF       _var4+2 
	MOVWF       _var4+3 
;advPIC_source_file_WR_003.c,50 :: 		var5 = 23454353;
	MOVLW       145
	MOVWF       _var5+0 
	MOVLW       226
	MOVWF       _var5+1 
	MOVLW       101
	MOVWF       _var5+2 
	MOVLW       1
	MOVWF       _var5+3 
;advPIC_source_file_WR_003.c,51 :: 		var6 = 235353;
	MOVLW       89
	MOVWF       _var6+0 
	MOVLW       151
	MOVWF       _var6+1 
	MOVLW       3
	MOVWF       _var6+2 
	MOVLW       0
	MOVWF       _var6+3 
;advPIC_source_file_WR_003.c,52 :: 		var7 = 232542;
	MOVLW       94
	MOVWF       _var7+0 
	MOVLW       140
	MOVWF       _var7+1 
	MOVLW       3
	MOVWF       _var7+2 
	MOVLW       0
	MOVWF       _var7+3 
;advPIC_source_file_WR_003.c,57 :: 		} //end while
	GOTO        L_main0
;advPIC_source_file_WR_003.c,59 :: 		} //end main
	GOTO        $+0
; end of _main

_piscaLED:

;advPIC_source_file_WR_003.c,64 :: 		void piscaLED()
;advPIC_source_file_WR_003.c,66 :: 		LATB0_bit = 0x01;
	BSF         LATB0_bit+0, 0 
;advPIC_source_file_WR_003.c,67 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_piscaLED2:
	DECFSZ      R13, 1, 1
	BRA         L_piscaLED2
	DECFSZ      R12, 1, 1
	BRA         L_piscaLED2
	DECFSZ      R11, 1, 1
	BRA         L_piscaLED2
	NOP
	NOP
;advPIC_source_file_WR_003.c,68 :: 		LATB0_bit = 0x00;
	BCF         LATB0_bit+0, 0 
;advPIC_source_file_WR_003.c,69 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_piscaLED3:
	DECFSZ      R13, 1, 1
	BRA         L_piscaLED3
	DECFSZ      R12, 1, 1
	BRA         L_piscaLED3
	DECFSZ      R11, 1, 1
	BRA         L_piscaLED3
	NOP
	NOP
;advPIC_source_file_WR_003.c,71 :: 		} //end piscaLED
	RETURN      0
; end of _piscaLED
