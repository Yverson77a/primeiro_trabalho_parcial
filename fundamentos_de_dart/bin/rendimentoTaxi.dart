import 'dart:io';

void main() {
  print('Digite a quilometragem inicial do hodômetro:');
  double kmInicial = double.parse(stdin.readLineSync()!);

  print('Digite a quilometragem final do hodômetro:');
  double kmFinal = double.parse(stdin.readLineSync()!);

  print('Digite a quantidade de litros de combustível consumidos:');
  double litros = double.parse(stdin.readLineSync()!);

  print('Digite o valor total recebido dos passageiros:');
  double valorRecebido = double.parse(stdin.readLineSync()!);

  double distancia = kmFinal - kmInicial;
  double consumoMedio = distancia / litros;

  double precoCombustivel = 6.50;
  double gastoCombustivel = litros * precoCombustivel;

  double lucroLiquido = valorRecebido - gastoCombustivel;

  print('\n------');
  print('Distância percorrida: ${distancia.toStringAsFixed(2)} km');
  print('Consumo médio: ${consumoMedio.toStringAsFixed(2)} km/L');
  print('Lucro líquido do dia: R\$ ${lucroLiquido.toStringAsFixed(2)}');
}