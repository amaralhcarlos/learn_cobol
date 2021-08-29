       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB013.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/29/2021
      *PURPOSE: EVALUATE STUDENT GRADE
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-GRADE   PIC 9V9 VALUE ZEROES.
       PROCEDURE DIVISION.

           DISPLAY 'PUT A STUDENT GRADE: '
           ACCEPT WRK-GRADE.

           EVALUATE WRK-GRADE
               WHEN 10
                   DISPLAY 'AWESOME!'
               WHEN 7 THRU 9,9
                   DISPLAY 'GREAT!'
               WHEN 5 THRU 6,9
                   DISPLAY 'GOOD'
               WHEN 3 THRU 4,9
                   DISPLAY 'IT COULD BE BETTER...'
               WHEN 1 thru 2,9
                   DISPLAY 'WELL...'
               WHEN 0
                   DISPLAY 'SAD'
           END-EVALUATE.

           STOP RUN.
       END PROGRAM PROGCOB013.
