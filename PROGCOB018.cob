       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB018.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/29/2021
      *PURPOSE: CRIAR A TABUADA DE UM NUMERO USANDO PERFORM
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUMERO      PIC 9(2)    VALUE ZEROES.
       77  WRK-CONTADOR    PIC 9(2)    VALUE 1.
       77  WRK-RESUL       PIC 9(3)    VALUE ZEROES.
       PROCEDURE DIVISION.

           PERFORM 0100-INICIALIZA.
           PERFORM 0200-PROCESSA.
           PERFORM 0300-FINALIZA.

           STOP RUN.
       
       0100-INICIALIZA.
           
           DISPLAY 'DIGITE UM NUMERO PARA CALCULAR A TABUADA:'
           ACCEPT WRK-NUMERO.
       
       0200-PROCESSA.
           
           PERFORM 10 TIMES
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL
               ADD 1 TO WRK-CONTADOR
           END-PERFORM.

       0300-FINALIZA.
           
           DISPLAY 'FIM DA TABUADA DO ' WRK-NUMERO.


       END PROGRAM PROGCOB018.
