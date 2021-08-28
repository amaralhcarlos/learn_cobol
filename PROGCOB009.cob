       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB009.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/28/2021
      *PURPOSE: USE + OR - TO VARIABLES RESULTS
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALUE1       PIC 9(2)    VALUE ZEROES.
       77 WRK-VALUE2       PIC 9(2)    VALUE ZEROES.
       77 WRK-RESULT       PIC S9(3)   VALUE ZEROES.
       77 WRK-RESULT-ED    PIC -ZZ9    VALUE ZEROES.

       PROCEDURE DIVISION.

           ACCEPT WRK-VALUE1 FROM CONSOLE.
           ACCEPT WRK-VALUE2 FROM CONSOLE.

           SUBTRACT WRK-VALUE2 FROM WRK-VALUE1 GIVING WRK-RESULT.

           MOVE WRK-RESULT TO WRK-RESULT-ED.

           DISPLAY WRK-RESULT.
           DISPLAY WRK-RESULT-ED.

           STOP RUN.
       END PROGRAM PROGCOB009.
