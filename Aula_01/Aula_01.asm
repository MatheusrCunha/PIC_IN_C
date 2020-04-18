
_main:

;Aula_01.c,1 :: 		void main()
;Aula_01.c,3 :: 		TRISB = 0b00000000;   //define se é entrada ou saída,0 saída, 1 para entrad
	CLRF       TRISB+0
;Aula_01.c,5 :: 		PORTB = 0b00000000;   //configurando todos os pinos do PORTB como saída
	CLRF       PORTB+0
;Aula_01.c,7 :: 		while(1)
L_main0:
;Aula_01.c,9 :: 		RB7_bit = 1;   //led acese com 5v
	BSF        RB7_bit+0, 7
;Aula_01.c,10 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Aula_01.c,11 :: 		RB7_bit = 0;   //led desligado
	BCF        RB7_bit+0, 7
;Aula_01.c,12 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Aula_01.c,13 :: 		PORTB.RB7 = 1;
	BSF        PORTB+0, 7
;Aula_01.c,14 :: 		delay_ms(5000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;Aula_01.c,16 :: 		}
	GOTO       L_main0
;Aula_01.c,19 :: 		}
	GOTO       $+0
; end of _main
