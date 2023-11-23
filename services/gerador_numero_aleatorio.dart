import 'dart:math';

class gerador_numeros_aleatorio_services {
 static int gerar_numero_aleatorio( int numeroMaximo) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numeroMaximo);
  }
}