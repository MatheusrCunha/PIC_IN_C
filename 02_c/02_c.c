void piscaLED();

void main() 
{
    ADCON1 = 0x07F;             //Apenas entradas digitais
    TRISB = 0xFE;               //Configura o RB0 como saída
    PORTB = 0xFE;               //Inicia o portb
    
    while(1){
    
       piscaLED();
    }
    
    asm goto $;  //loop infinito
}

void piscaLED()
{
     LATB0_bit = 0x01;
     delay_ms(500);
     LATB0_bit = 0x00;
     delay_ms(500);
}