       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB005.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/28/2021
      *PURPOSE: DISPLAY A CPF ON THE SCREEN
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WRK-NAME     PIC X(20)           VALUE SPACES.

       01 WRK-CPF.
           02 WRK-CPF1 PIC 999 VALUE ZEROES.
           02 WRK-CPF2 PIC 999 VALUE ZEROES.
           02 WRK-CPF3 PIC 999 VALUE ZEROES.
           02 WRK-CPF4 PIC 99  VALUE ZEROES.

       01 WRK-CPF-ED.
           02 WRK-CPF1 PIC 999 VALUE ZEROES.
           02 FILLER   PIC X   VALUE '.'.
           02 WRK-CPF2 PIC 999 VALUE ZEROES.
           02 FILLER   PIC X   VALUE '.'.
           02 WRK-CPF3 PIC 999 VALUE ZEROES.
           02 FILLER   PIC X   VALUE '-'.
           02 WRK-CPF4 PIC 99  VALUE ZEROES.

       PROCEDURE DIVISION.
           DISPLAY 'TYPE YOUR NAME: '.
           ACCEPT WRK-NAME.
           DISPLAY 'TYPE YOUR CPF:  '.
           ACCEPT WRK-CPF.
           MOVE CORRESPONDING WRK-CPF TO WRK-CPF-ED.

           DISPLAY 'HELLO ' WRK-NAME.
           DISPLAY 'CPF: ' WRK-CPF-ED.
       STOP RUN.
       END PROGRAM PROGCOB005.
