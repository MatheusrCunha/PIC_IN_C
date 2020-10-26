#line 1 "C:/You Tube - Meu Canal/04 PIC Curso/advPIC_003__Hardware_e_Periféricos_do_PIC18F4550__22-03-2017/advPIC_003_WR_files/advPIC_source_file_WR_003.c"
#line 26 "C:/You Tube - Meu Canal/04 PIC Curso/advPIC_003__Hardware_e_Periféricos_do_PIC18F4550__22-03-2017/advPIC_003_WR_files/advPIC_source_file_WR_003.c"
void piscaLED();




 long var1, var2, var3, var4, var5, var6, var7;




void main()
{
 ADCON1 = 0x0F;
 TRISB = 0xFE;
 PORTB = 0xFE;

 while(1)
 {
 piscaLED();

 var1 = 24;
 var2 = 256;
 var3 = 1232342;
 var4 = 23424;
 var5 = 23454353;
 var6 = 235353;
 var7 = 232542;




 }

}




void piscaLED()
{
 LATB0_bit = 0x01;
 delay_ms(500);
 LATB0_bit = 0x00;
 delay_ms(500);

}
