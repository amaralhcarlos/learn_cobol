       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB004.
      ******************************************************************
      * Author: Carlos Amaral
      * Date: 08/25/2021
      * Purpose: MULTI-LEVEL VARIABLES
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       1 WRK-DATA.
           2 WRK-ANO PIC 9(4) VALUE ZEROES.
           2 WRK-MES PIC 9(2) VALUE ZEROES.
           2 WRK-DIA PIC 9(2) VALUE ZEROES.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY "TODAY IS " WRK-DIA " OF " WRK-MES " OF " WRK-ANO.
           STOP RUN.
       END PROGRAM PROGCOB004.
