       IDENTIFICATION DIVISION.
       PROGRAM-ID. FRETE.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: RECEBER PRODUTO, VALOR E FRETE
      * UTILIZAR COMANDO EVALUATE
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO  PIC X(20)       VALUE SPACES.
       77 WRK-UF       PIC X(02)       VALUE SPACES.
       77 WRK-VALOR    PIC 9(06)V99    VALUE ZEROS.
       77 WRK-FRETE    PIC 9(07)V99    VALUE ZEROS.
       77 WRK-FRETE-ED PIC $ZZ.ZZ9,99  VALUE ZEROS.
       
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO: '
           ACCEPT WRK-PRODUTO.
           DISPLAY 'UF: '
           ACCEPT WRK-UF.
           DISPLAY 'VALOR: '
           ACCEPT WRK-VALOR.
      *******************************************
       EVALUATE WRK-UF
           WHEN 'SP'
               COMPUTE WRK-FRETE = WRK-VALOR *1,05
           WHEN 'RJ'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,10
           WHEN 'MG'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,15
           WHEN OTHER
               DISPLAY 'NAO ENTREGAMOS NO SEU ESTADO'
           END-EVALUATE.
       MOVE WRK-FRETE TO WRK-FRETE-ED.
           IF WRK-FRETE NOT EQUAL 0
       DISPLAY 'FRETE COM O PRODUTO: ' WRK-FRETE-ED.

           STOP RUN.
