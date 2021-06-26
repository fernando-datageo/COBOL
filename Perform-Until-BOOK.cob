       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM UNTIL BOOK.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: RECEBER UM NUMERO E GERAR TABUADA DE 1 A 10
      * UTILIZAR PERFORM - UNTIL
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.COB'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           ELSE
               DISPLAY 'A VENDA DEVE SER !=0'
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIAR.
           DISPLAY 'DIGITE UM VALOR DE VENDA: '
           ACCEPT WRK-VENDAS.
       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           MOVE WRK-ACUM TO WRK-ACUM-ED.
      *    ACCEPT WRK-VENDAS.
           PERFORM 0100-INICIAR.

       0300-FINALIZAR.
           DISPLAY '-------------------'.
           ADD -1 TO WRK-QT
           DISPLAY 'QUANTIDADE DE VENDAS: ' WRK-QT
           IF WRK-ACUM > 0
               DISPLAY 'ACUMULADO: R' WRK-ACUM-ED
           ELSE
               DISPLAY 'FINAL DO PROCESSAMENTO'
           END-IF.

           STOP RUN.
