/* ============================================================================

   Curso de Microcontroladores PIC Avançado WR Kits Channel  Aula 003

   PIC18F4550 _ Hardware e Periféricos


   MCU: PIC18F4550   Clock: 16MHz   Ciclo de Máquina: 250ns


   Autor: Eng. Wagner Rambo
   Data:  Março de 2017


   Loja: www.wrkits.com.br
   Fã Page: www.facebook.com/wrkits
   Canal no YouTube: www.youtube.com/canalwrkits
   Canal no Dailymotion: www.dailymotion.com/wrkits


 ============================================================================ */


// ============================================================================
// ---  Protótipo da Função ---
void piscaLED();


// ============================================================================
// ---  Variáveis Globais ---
 long var1, var2, var3, var4, var5, var6, var7;
 

// ============================================================================
// ---  Função Principal ---
void main()
{
    ADCON1   = 0x0F;                           //Apenas entradas digitais
    TRISB    = 0xFE;                           //Configura o RB0 como saída
    PORTB    = 0xFE;                           //Inicializa o PORTB

    while(1)                                   //loop infinito
    {
       piscaLED();                             //chama função para piscar o LED

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
// ---  Desenvolvimento da Função ---
void piscaLED()
{
    LATB0_bit = 0x01;
    delay_ms(500);
    LATB0_bit = 0x00;
    delay_ms(500);

} //end piscaLED