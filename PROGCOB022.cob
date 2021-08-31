       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB022.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/30/2021
      *PURPOSE: USE INDEX VARIABLES TO PRINT SYSTEM DATA
      ****************************************************************** 
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-MONTHS      PIC X(9)    OCCURS 12 TIMES.
       01  WRK-SYSDATA.
           02  WRK-YEAR    PIC 9(4)    VALUE ZEROES.
           02  WRK-MONTH   PIC 9(2)    VALUE ZEROES.
           02  WRK-DAY     PIC 9(2)    VALUE ZEROES.

       PROCEDURE DIVISION.

           PERFORM 0100-LOAD-MONTHS.
           PERFORM 0200-LOAD-DATE.
           PERFORM 0300-PROCESS-AND-FINISH.

           STOP RUN.

       0100-LOAD-MONTHS SECTION.
           MOVE 'JANUARY  '    TO WRK-MONTHS(01).
           MOVE 'FEBRUARY '    TO WRK-MONTHS(02).
           MOVE 'MARCH    '    TO WRK-MONTHS(03).
           MOVE 'APRIL    '    TO WRK-MONTHS(04).
           MOVE 'MAY      '    TO WRK-MONTHS(05).
           MOVE 'JUNE     '    TO WRK-MONTHS(06).
           MOVE 'JULY     '    TO WRK-MONTHS(07).
           MOVE 'AUGUST   '    TO WRK-MONTHS(08).
           MOVE 'SEPTEMBER'    TO WRK-MONTHS(09).
           MOVE 'OCTOBER  '    TO WRK-MONTHS(10).
           MOVE 'NOVEMBER '    TO WRK-MONTHS(11).
           MOVE 'DECEMBER '    TO WRK-MONTHS(12).
       
       0200-LOAD-DATE SECTION.
           ACCEPT WRK-SYSDATA FROM DATE YYYYMMDD.

       0300-PROCESS-AND-FINISH SECTION.
           DISPLAY WRK-DAY ' OF ' WRK-MONTHS(WRK-MONTH) ' OF ' WRK-YEAR.

       END PROGRAM PROGCOB022.
