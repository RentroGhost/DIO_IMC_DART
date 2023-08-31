import 'dart:convert';
import 'dart:io';

import 'package:imc_dart/Classes/pessoa.dart';
import 'package:imc_dart/Exceptions/nomeInvalidoException.dart';
import 'package:imc_dart/Exceptions/valorInvalidoException.dart';

void main(List<String> arguments) {
//Coleta dados do terminal
  String nome = "";
  double peso = 0;
  double altura = 0;

  try{
  print("Informe seu nome por favor:");
  nome = LerString();
  if((nome.trim() == "") ){
    throw nomeInvalidoException();
    }
  }
  catch (nomeInvalidoException){
    nome = "nome Padrão";
    print(nomeInvalidoException);
    exit(0);
  }


  try{
    print("Informe seu peso em KG, por favor:");
    peso = double.parse(LerStringDouble());
    if (peso == 0.0) {
    throw valorInvalidoException();
  }
  }
  catch (valorInvalidoException) {
    peso = 0;
    print(valorInvalidoException);
    exit(0);
  }
  try{
    print("Informe sua altura em metros, por favor:");
    altura = double.parse(LerStringDouble());
    if (altura == 0.0) {
    throw valorInvalidoException();
  }
  }
  catch (valorInvalidoException) {
    peso = 0;
    print(valorInvalidoException);
    exit(0);
  }

  
  

  
Pessoa pessoa = Pessoa(nome, peso, altura);

print("Abaixo os dados da pessoa cadastrada:");
print(pessoa);
}

String LerString() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}
String LerStringDouble() {
  return stdin.readLineSync(encoding: utf8) ?? "0.0";
}