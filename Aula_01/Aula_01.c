void main() 
{
     TRISB = 0b00000000;   //define se é entrada ou saída,0 saída, 1 para entrad
     //configura todos os pinos como saída
     PORTB = 0b00000000;   //desliga todos os pinos do portb
     
     
     while(1)
     {
             RB7_bit = 1;   //led acese com 5v
             delay_ms(1000);
             RB7_bit = 0;   //led desligado
             delay_ms(1000);
             PORTB.RB7 = 1;
             delay_ms(5000);
             
     }
     

}