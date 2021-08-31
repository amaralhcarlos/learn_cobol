       01  WRK-MES-ABR.
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
       
       01  WRK-MESES REDEFINES WRK-MES-ABR.
           02  WRK-MES         PIC X(3)        OCCURS 12 TIMES.
           
       77  WRK-VENDAS-MES      PIC 9(8)V99         OCCURS 12 TIMES.
       77  WRK-VENDAS-MES-ED   PIC $ZZZZZZZ9,99    VALUE ZEROES.
       77  WRK-VLR-VENDA       PIC 9(5)V99         VALUE ZEROES.
       77  WRK-MES-VENDA       PIC 9(2)            VALUE ZEROES.

       77  WRK-CONTADOR-FIN    PIC 9(2)        VALUE 01.
