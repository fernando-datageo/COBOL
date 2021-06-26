       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM VARYNG.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: RECEBER UM NUMERO E GERAR TABUADA DE 1 A 10
      * UTILIZAR PERFORM - VARYING
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       77 WRK-RESUL    PIC 9(03) VALUE ZEROS.
       77 WRK-RESUL-ED PIC ZZ9   VALUES ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           ELSE
               DISPLAY 'O NUMERO DEVE SER !=0'
           END-IF.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIAR.
           DISPLAY 'DIGITE UM NUMERO: '
           ACCEPT WRK-NUMERO.
       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                           UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               MOVE WRK-RESUL TO WRK-RESUL-ED
               DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESUL-ED
           END-PERFORM.



       0300-FINALIZAR.
           DISPLAY '-------------------'.
           DISPLAY 'FINAL DO PROCESSAMENTO'.
           STOP RUN.
