       IDENTIFICATION DIVISION.
       PROGRAM-ID. AUMENTO PROGRESSIVO.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS F C LAZANHA
      * OBJETIVO: RECEBER NOME, ANO DE ENTRADA, SALARIO
      * CALCULAR AUMENTO PROGRASSIVO
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME         PIC X(20)      VALUE SPACE.
       77 WRK-ANOENTRADA   PIC 9(04)      VALUE ZEROS.
       77 WRK-SALARIO      PIC 9(06)V99   VALUE ZEROS.
       77 WRK-AUMENTO      PIC 9(03)V99   VALUE ZEROS.
       77 WRK-TEMPOCASA    PIC 9(02)      VALUE ZEROS.
       77 WRK-ANOATUAL     PIC 9(04)      VALUE ZEROS.
       77 WRK-AUMENTO-ED   PIC $Z.ZZZ,99  VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

       0100-INICIAR.
       DISPLAY 'NOME DO FUNCIONARIO: '
           ACCEPT WRK-NOME.
       DISPLAY 'ANO DE ENTRADA NA EMPRESA: '
           ACCEPT WRK-ANOENTRADA.
       DISPLAY 'ANO ATUAL: '
           ACCEPT WRK-ANOATUAL.
       DISPLAY 'SALARIO ATUAL'
           ACCEPT WRK-SALARIO.

       0200-PROCESSAR.
       COMPUTE WRK-TEMPOCASA = WRK-ANOATUAL - WRK-ANOENTRADA.
       DISPLAY 'TEMPO DE CASA: ' WRK-TEMPOCASA ' ANO(S)'
      ******************************************
       EVALUATE WRK-TEMPOCASA
           WHEN 0 THRU 1
               COMPUTE WRK-AUMENTO = 0
           WHEN 2 THRU 5
               COMPUTE WRK-AUMENTO = WRK-SALARIO * 1,05
           WHEN 6 THRU 15
               COMPUTE WRK-AUMENTO = WRK-SALARIO * 1,10
           WHEN OTHER
               COMPUTE WRK-AUMENTO = WRK-SALARIO * 1,15
       END-EVALUATE.
      ******************************************
           MOVE WRK-AUMENTO TO WRK-AUMENTO-ED.
           DISPLAY 'AUMENTO SALARIAL DE: R' WRK-AUMENTO-ED.

       0300-FINALIZAR.
           DISPLAY '---------------'.
           DISPLAY 'FIM DO PROCESSAMENTO'.
           STOP RUN.
