       IDENTIFICATION DIVISION.
       PROGRAM-ID. "OBTAININPUT".
       AUTHOR. CARLOS AMARAL.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC A(20).
 
       PROCEDURE DIVISION.
           0100-START-HERE.
               DISPLAY "Hello! What is your first name?".
               ACCEPT NAME.
               DISPLAY "It is nice to meet you, ", NAME.               
       STOP RUN.
       END PROGRAM OBTAININPUT.
