       IDENTIFICATION DIVISION.
       PROGRAM-ID. "CALCULATEIMC".
       AUTHOR. CARLOS AMARAL.
      *Este programa calcula o IMC
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER_HEIGHT PIC 999V99.
       01 USER_WEIGHT PIC 999V99.
       01 IMC PIC 99V99.
 
       PROCEDURE DIVISION.
           0100-START-HERE.
               DISPLAY "Hello! What is your height?".
               ACCEPT USER_HEIGHT.
               DISPLAY "And your weight?"
               ACCEPT USER_WEIGHT.
               COMPUTE IMC = USER_WEIGHT / (USER_HEIGHT * USER_HEIGHT).
               DISPLAY "Your IMC is ", IMC.               
       STOP RUN.
       END PROGRAM CALCULATEIMC.
