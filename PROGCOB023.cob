       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB023.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/30/2021
      *PURPOSE: USE INDEX VARIABLES TO PRINT SYSTEM DATA USING REDEFINES
      ****************************************************************** 
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WRK-MON.
           02  FILLER PIC X(3) VALUE 'JAN'.
           02  FILLER PIC X(3) VALUE 'FEB'.
           02  FILLER PIC X(3) VALUE 'MAR'.
           02  FILLER PIC X(3) VALUE 'APR'.
           02  FILLER PIC X(3) VALUE 'MAY'.
           02  FILLER PIC X(3) VALUE 'JUN'.
           02  FILLER PIC X(3) VALUE 'JUL'.
           02  FILLER PIC X(3) VALUE 'AUG'.
           02  FILLER PIC X(3) VALUE 'SEP'.
           02  FILLER PIC X(3) VALUE 'OCT'.
           02  FILLER PIC X(3) VALUE 'NOV'.
           02  FILLER PIC X(3) VALUE 'DEC'.

       01  WRK-MONTHS REDEFINES WRK-MON.
           02  WRK-MONTH-ABR PIC X(3) OCCURS 12 TIMES.

       01  WRK-SYSDATA.
           02  WRK-YEAR    PIC 9(4)    VALUE ZEROES.
           02  WRK-MONTH   PIC 9(2)    VALUE ZEROES.
           02  WRK-DAY     PIC 9(2)    VALUE ZEROES.

       PROCEDURE DIVISION.

           PERFORM 0100-LOAD-DATE.
           PERFORM 0200-PROCESS-AND-FINISH.

           STOP RUN.
       
       0100-LOAD-DATE SECTION.
           ACCEPT WRK-SYSDATA FROM DATE YYYYMMDD.

       0200-PROCESS-AND-FINISH SECTION.
           DISPLAY WRK-DAY ' OF ' WRK-MONTH-ABR(WRK-MONTH) ' OF '
                WRK-YEAR.

       END PROGRAM PROGCOB023.
