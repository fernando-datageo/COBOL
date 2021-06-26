       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E STATUS
      * UTILIZAR COMANDO IF/ELSE/END-IF
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1    PIC 9(02)V9  VALUE ZEROS.
       77 WRK-NOTA2    PIC 9(02)V9  VALUE ZEROS.
       77 WRK-MEDIA    PIC 9(02)V9  VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE A NOTA 1: '
           ACCEPT WRK-NOTA1.
           DISPLAY 'DIGITE A NOTA 2: '
           ACCEPT WRK-NOTA2.
           DISPLAY 'NOTA 1: ' WRK-NOTA1.
           DISPLAY 'NOTA 2: ' WRK-NOTA2.
      *******************************************
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           DISPLAY 'MEDIA FINAL: ' WRK-MEDIA
               EVALUATE WRK-MEDIA
                   WHEN 10
                    DISPLAY 'APROVADO COM EXCELENCIA'
                   WHEN 6 THRU 9,99
                    DISPLAY 'APROVADO'
                   WHEN 2 THRU 5,99
                    DISPLAY 'RECUPERACAO'
                   WHEN OTHER
                    DISPLAY 'REPROVADO'
               END-EVALUATE.

           STOP RUN.
