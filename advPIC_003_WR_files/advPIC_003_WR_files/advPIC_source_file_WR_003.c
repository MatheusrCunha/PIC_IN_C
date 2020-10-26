/* ============================================================================

   Curso de Microcontroladores PIC Avan�ado WR Kits Channel  Aula 003

   PIC18F4550 _ Hardware e Perif�ricos


   MCU: PIC18F4550   Clock: 16MHz   Ciclo de M�quina: 250ns


   Autor: Eng. Wagner Rambo
   Data:  Mar�o de 2017


   Loja: www.wrkits.com.br
   F� Page: www.facebook.com/wrkits
   Canal no YouTube: www.youtube.com/canalwrkits
   Canal no Dailymotion: www.dailymotion.com/wrkits


 ============================================================================ */


// ============================================================================
// ---  Prot�tipo da Fun��o ---
void piscaLED();


// ============================================================================
// ---  Vari�veis Globais ---
 long var1, var2, var3, var4, var5, var6, var7;
 

// ============================================================================
// ---  Fun��o Principal ---
void main()
{
    ADCON1   = 0x0F;                           //Apenas entradas digitais
    TRISB    = 0xFE;                           //Configura o RB0 como sa�da
    PORTB    = 0xFE;                           //Inicializa o PORTB

    while(1)                                   //loop infinito
    {
       piscaLED();                             //chama fun��o para piscar o LED

       var1 = 24;
       var2 = 256;
       var3 = 1232342;
       var4 = 23424;
       var5 = 23454353;
       var6 = 235353;
       var7 = 232542;




    } //end while

} //end main


 // ============================================================================
// ---  Desenvolvimento da Fun��o ---
void piscaLED()
{
    LATB0_bit = 0x01;
    delay_ms(500);
    LATB0_bit = 0x00;
    delay_ms(500);

} //end piscaLED