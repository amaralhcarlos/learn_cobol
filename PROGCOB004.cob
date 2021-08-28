       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB004.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/28/2021
      *PURPOSE: DECIMAL VALUES AND MASK
      *TECTONICS: COBC
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME       PIC X(40)         VALUE SPACES.
       77 WRK-SALARY     PIC 9(6)V99       VALUE ZEROES.
       77 WRK-SALARY-ED  PIC $ZZZ.ZZ9,99   VALUE ZEROES.
       PROCEDURE DIVISION.
           DISPLAY "TYPE THE EMPLOYEE NAME:"
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY "TYPE THE SALARY FOR THE EMPLOYEE:"
           ACCEPT WRK-SALARY FROM CONSOLE.
           MOVE WRK-SALARY TO WRK-SALARY-ED.
      *****EXIBE OS DADOS***********************************************
           DISPLAY "EMPLOYEE: " WRK-NOME.
           DISPLAY "SALARY: "   WRK-SALARY-ED.
           STOP RUN.
       END PROGRAM PROGCOB004.
