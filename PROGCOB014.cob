       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB014.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/29/2021
      *PURPOSE: FRETE POR ESTADO
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO         PIC X(20)       VALUE SPACES.
       77  WRK-VLR             PIC 9(4)V99     VALUE ZEROES.
       77  WRK-VLRFRETE        PIC 9(3)V99     VALUE ZEROES.
       77  WRK-VLRFINAL        PIC 9(5)V99     VALUE ZEROES.
       77  WRK-VLRFINAL-ED     PIC $ZZZZ9,99   VALUE ZEROES.
       77  WRK-ESTADO          PIC AA          VALUE SPACES.
       PROCEDURE DIVISION.

           DISPLAY 'DIGITE O PRODUTO: '.
           ACCEPT WRK-PRODUTO.

           DISPLAY 'DIGITE O VALOR: '.
           ACCEPT WRK-VLR.

           DISPLAY 'DIGITE O ESTADO A ENTREGAR: '.
           ACCEPT WRK-ESTADO.

           EVALUATE WRK-ESTADO
               WHEN 'SP'
                   COMPUTE WRK-VLRFRETE = WRK-VLR * 1,05
               WHEN 'CE'
                   COMPUTE WRK-VLRFRETE = WRK-VLR * 1,30
               WHEN 'AM'
                   COMPUTE WRK-VLRFRETE = WRK-VLR * 1,50
               WHEN OTHER
                   DISPLAY 'NAO ENVIAMOS PARA ' WRK-ESTADO
           END-EVALUATE.

           ADD WRK-VLR WRK-VLRFRETE TO WRK-VLRFINAL.

           IF WRK-VLRFRETE NOT EQUALS 0
               DISPLAY WRK-PRODUTO '- VALOR COM FRETE: ' WRK-VLRFINAL
           END-IF.

           STOP RUN.
       END PROGRAM PROGCOB014.
