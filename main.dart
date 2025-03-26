import 'dart:io';

class CalculadoraIMC {
  // Função para calcular o IMC
  static double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  // Função para classificar o IMC
  static String classificarIMC(double imc) {
    if (imc <= 16.9) {
      return 'Muito abaixo do peso';
    } else if (imc <= 18.4) {
      return 'Abaixo do peso';
    } else if (imc <= 24.9) {
      return 'Peso normal';
    } else if (imc <= 29.9) {
      return 'Acima do peso';
    } else if (imc <= 34.9) {
      return 'Obesidade grau I';
    } else if (imc <= 40) {
      return 'Obesidade grau II';
    } else {
      return 'Obesidade grau III';
    }
  }
}

void main() {
  // Solicita entrada do usuário
  stdout.write('Digite seu Nome: ');
  String nome = stdin.readLineSync()!;

  stdout.write('Digite seu peso (kg): ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura (m): ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calcula e exibe o IMC
  double imc = CalculadoraIMC.calcularIMC(peso, altura);
  String classificacao = CalculadoraIMC.classificarIMC(imc);

  print('\nSeu IMC é: ${imc.toStringAsFixed(2)}');
  print('Classificação: $classificacao');
}
