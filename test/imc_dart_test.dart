import 'package:test/test.dart';
import 'package:imc_dart/classes/pessoa.dart' as app;

void main() {
  test('calcula o valor do IMC', () {
    expect(app.Pessoa("Teste", 70, 1.7).calculaIMC(), closeTo(20.58, 20.59));
  });

   test('Verifica situação Saudável', () {
    expect(app.Pessoa("Teste", 70, 1.7).situacaoIMC(), equals("Saudável"));
  });

test('Verifica Magreza grave', () {
    expect(app.Pessoa("Teste", 10, 2).situacaoIMC(), equals("Magreza grave"));
  });

test('Verifica Obesidade grau III', () {
    expect(app.Pessoa("Teste", 300, 1.5).situacaoIMC(), equals("Obesidade grau III"));
  });
}
