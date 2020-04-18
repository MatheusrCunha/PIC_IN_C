#line 1 "C:/Users/Matheus Cunha/Desktop/pic/Aula_01/Aula_01.c"
void main()
{
 TRISB = 0b00000000;

 PORTB = 0b00000000;

 while(1)
 {
 RB7_bit = 1;
 delay_ms(1000);
 RB7_bit = 0;
 delay_ms(1000);
 PORTB.RB7 = 1;
 delay_ms(5000);

 }


}
