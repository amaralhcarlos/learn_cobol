       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB002.
      ******************************************************************
      * Author: Carlos Amaral
      * Date: 08/26/2021
      * Purpose: FIRST VARIABLE
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(30) VALUE SPACES.
       PROCEDURE DIVISION.
           DISPLAY "TYPE YOUR NAME: "
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY "HELLO " WRK-NOME.
           STOP RUN.
       END PROGRAM PROGCOB002.
