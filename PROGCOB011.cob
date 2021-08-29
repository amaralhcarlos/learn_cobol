       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB011.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/28/2021
      *PURPOSE: CHECK IF THE STUDENT ACHIEVED THE GRADE TO BE APPROVED
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-GRADE1       PIC 9(2)V9  VALUE ZEROES.
       77 WRK-GRADE2       PIC 9(2)V9  VALUE ZEROES.
       77 WRK-AVERAGE      PIC 9(2)V9  VALUE ZEROES.
       77 WRK-AVERAGE-ED   PIC Z9,9  VALUE ZEROES.

       PROCEDURE DIVISION.
       
           ACCEPT WRK-GRADE1 FROM CONSOLE.
           ACCEPT WRK-GRADE2 FROM CONSOLE.

           COMPUTE WRK-AVERAGE = (WRK-GRADE1 + WRK-GRADE2) / 2.
           
           MOVE WRK-AVERAGE TO WRK-AVERAGE-ED

           DISPLAY "STUDENT AVERAGE: " WRK-AVERAGE-ED.

           IF WRK-AVERAGE >= 7
               DISPLAY "STUDENT APPROVED"
           ELSE
               IF WRK-AVERAGE >= 5
                   DISPLAY "STUDENT WILL NEED TO RETAKE A TEST"
               ELSE
                   DISPLAY "STUDENT REPROVED"
               END-IF
           END-IF.

           STOP RUN.
       END PROGRAM PROGCOB011.
       