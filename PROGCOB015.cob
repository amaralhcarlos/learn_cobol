       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB015.
      ******************************************************************
      *AUTHOR: CARLOS AMARAL
      *DATE: 08/29/2021
      *PURPOSE: EVALUATE USER LEVEL ON APPLICATION
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-USER        PIC X(20)   VALUE SPACES.
       77  WRK-USERLEVEL   PIC 9(2)    VALUE ZEROES.
           88  ADMIN  VALUE 01.
           88  BASIC  VALUE 02.
       PROCEDURE DIVISION.

           DISPLAY 'INPUT THE USERNAME:'
           ACCEPT WRK-USER.

           DISPLAY 'INPUT THE LEVEL: '
           ACCEPT WRK-USERLEVEL.

           IF ADMIN
               DISPLAY 'WELCOME SYSADMIN' WRK-USER
           ELSE
               IF BASIC
                   DISPLAY 'WELCOME ' WRK-USER
               ELSE
                   DISPLAY 'NON-AUTHORIZED USER'
               END-IF
           END-IF.

           STOP RUN.
       END PROGRAM PROGCOB015.
