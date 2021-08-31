       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB024.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/30/2021
      *PURPOSE: ACUMULA VENDAS NO ANO.
      ******************************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'PROGCOB024-BOOK.cob'.
       
       PROCEDURE DIVISION.

           PERFORM 0100-ZERA-VENDAS.
           PERFORM 0200-RECEBE-MES UNTIL WRK-MES-VENDA = 99.
           PERFORM 0400-FINALIZA.

           STOP RUN.
       
       0100-ZERA-VENDAS SECTION.
           MOVE 0 TO WRK-VENDAS-MES(01).
           MOVE 0 TO WRK-VENDAS-MES(02).
           MOVE 0 TO WRK-VENDAS-MES(03).
           MOVE 0 TO WRK-VENDAS-MES(04).
           MOVE 0 TO WRK-VENDAS-MES(05).
           MOVE 0 TO WRK-VENDAS-MES(06).
           MOVE 0 TO WRK-VENDAS-MES(07).
           MOVE 0 TO WRK-VENDAS-MES(08).
           MOVE 0 TO WRK-VENDAS-MES(09).
           MOVE 0 TO WRK-VENDAS-MES(10).
           MOVE 0 TO WRK-VENDAS-MES(11).
           MOVE 0 TO WRK-VENDAS-MES(12).

       0200-RECEBE-MES SECTION.
           DISPLAY 'DIGITE O MES DA VENDA: '.
           ACCEPT WRK-MES-VENDA.

           IF WRK-MES-VENDA NOT EQUAL 99
               PERFORM 0300-RECEBE-VALOR-VENDA
           END-IF.

       0300-RECEBE-VALOR-VENDA SECTION.
           DISPLAY 'DIGITE O VALOR DA VENDA: '.
           ACCEPT WRK-VLR-VENDA.
           ADD WRK-VLR-VENDA TO WRK-VENDAS-MES(WRK-MES-VENDA).

       0400-FINALIZA SECTION.
           
           DISPLAY '----------TOTAL DE VENDAS-----------------'
           PERFORM VARYING WRK-CONTADOR-FIN FROM 1 BY 1 
                           UNTIL WRK-CONTADOR-FIN > 12
               MOVE WRK-VENDAS-MES(WRK-CONTADOR-FIN) 
                   TO WRK-VENDAS-MES-ED
               DISPLAY WRK-MES(WRK-CONTADOR-FIN) ' - ' WRK-VENDAS-MES-ED
           END-PERFORM.

       END PROGRAM PROGCOB024.
       