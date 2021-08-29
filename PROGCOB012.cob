       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB012.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/29/2021
      *PURPOSE: CHECK WEEKDAY
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-WEEKDAY    PIC 9 VALUE ZEROES.
       PROCEDURE DIVISION.

           DISPLAY 'PUT A NUMBER FROM 1 - 7: '
           ACCEPT WRK-WEEKDAY.

           EVALUATE WRK-WEEKDAY
               WHEN 1
                   DISPLAY 'SUNDAY'
               WHEN 2
                   DISPLAY 'MONDAY'
               WHEN 3
                   DISPLAY 'TUESDAY'
               WHEN 4
                   DISPLAY 'WEDNESDAY'
               WHEN 5
                   DISPLAY 'THURSDAY'
               WHEN 6
                   DISPLAY 'FRIDAY'
               WHEN 7
                   DISPLAY 'SATURDAY'
           END-EVALUATE.

           STOP RUN.
       END PROGRAM PROGCOB012.
