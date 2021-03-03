      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. calculadora.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 NUMERO PIC 99.
       01 MULTIPLICADOR PIC 999.
       01 RESULTADO PIC 9999.
       01 SALIDA PIC XXXXX.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INICIO.
           DISPLAY "Para salir introduce 'salir' en la consola".
           DISPLAY "Para multiplicar pulsa INTRO".
           ACCEPT SALIDA.

           IF SALIDA = "salir"
               GO TO FINALIZAR
           ELSE
               PERFORM REINICIA-PROGRAMA.
               PERFORM INTRODUCE-NUMERO.
               PERFORM MOSTRAR-TABLA.

           FINALIZAR.
               STOP RUN.

           REINICIA-PROGRAMA.
               MOVE 0 TO MULTIPLICADOR.

           INTRODUCE-NUMERO.
               DISPLAY "Introduce un numero. ".
               ACCEPT NUMERO.

           MOSTRAR-TABLA.
               DISPLAY "La tabla del " NUMERO ":".
               PERFORM CALCULOS.

           CALCULOS.
               ADD 1 TO MULTIPLICADOR.
               COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
               DISPLAY NUMERO " * " MULTIPLICADOR " = " RESULTADO

               IF MULTIPLICADOR < 10
                   GO TO CALCULOS.

               PERFORM INICIO.


       END PROGRAM calculadora.
