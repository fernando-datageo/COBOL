       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADM USUARIO VN88.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: USUARIO E NIVEL
      * VARIAVEL TIPO 88
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO  PIC X(20) VALUE SPACES.
       77 WRK-NIVEL    PIC 9(02) VALUE ZEROS.
        88 ADM     VALUE 01.
        88 USER    VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO: '
           ACCEPT WRK-USUARIO.

           DISPLAY 'NIVEL: '
           ACCEPT WRK-NIVEL.

           IF ADM
               DISPLAY 'NIVEL ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NIVEL USUARIO'
               ELSE
                   DISPLAY 'NAO AUTORIZADO'
           END-IF.
]
           STOP RUN.
