       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB010.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/28/2021
      *PURPOSE: CALCULATE THE AVERAGE BETWEEN TWO SALES
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77  WRK-SALE1       PIC 9(3)V99     VALUE ZEROES.
       77  WRK-SALE2       PIC 9(3)V99     VALUE ZEROES.
       77  WRK-AVERAGE     PIC 9(4)V99     VALUE ZEROES.
       77  WRK-AVERAGE-ED  PIC $ZZZ9.99    VALUE ZEROES.

       PROCEDURE DIVISION.

           ACCEPT WRK-SALE1 FROM CONSOLE.
           ACCEPT WRK-SALE2 FROM CONSOLE.

           COMPUTE WRK-AVERAGE = (WRK-SALE1 + WRK-SALE2) / 2.

           MOVE WRK-AVERAGE TO WRK-AVERAGE-ED.

           DISPLAY WRK-AVERAGE.

           STOP RUN.

       END PROGRAM PROGCOB010.
