import 'dart:io';

import 'Multiplica.dart';

void main(){
  print("Digite 2 números:");
  num? number1 = num.tryParse(stdin.readLineSync().toString());
  num? number2 = num.tryParse(stdin.readLineSync().toString());
  MultiplicacaoDeNumerosGrandes.Multiplicar(number1, number2);
}