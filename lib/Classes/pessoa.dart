class Pessoa {

String _nome = "";
double _peso = 0.0;
double _altura = 0.0;
//double imc = 0;

//Cria sets e gets para variaveis
//Nome
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }
//Peso
  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }
//Altura
  void setAltura(double altura){
    _altura = altura;
  }

  double getAlturae() {
    return _altura;
  }

//Construtor
  Pessoa (String nome, double peso, double altura){
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }


//Realiza Calculo do IMC
  double calculaIMC() {
    double imc = _peso / (_altura*2);
    return imc;
  }

//Define situação
  String situacaoIMC() {
    String situacao = "";
    if (calculaIMC() < 16) {
      situacao = "Magreza grave";
    }
    else if (calculaIMC() >= 16 && calculaIMC() < 17) {
      situacao = "Magreza moderada";
    }
    else if (calculaIMC() >= 17 && calculaIMC() < 18.5) {
      situacao = "Magreza leve";
    }
    else if (calculaIMC() >= 18.5 && calculaIMC() < 25) {
      situacao = "Saudável";
    }
    else if (calculaIMC() >= 25 && calculaIMC() < 30) {
      situacao = "Sobrepeso";
    }
    else if (calculaIMC() >= 30 && calculaIMC() < 35) {
      situacao = "Obesidade grau I";
    }
    else if (calculaIMC() >= 35 && calculaIMC() < 40) {
      situacao = "Obesidade grau II";
    }
    else {
      situacao = "Obesidade grau III";
    }
    return situacao;
  }

//Override
  @override
  String toString() {
    return{
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
      "IMC": calculaIMC().toStringAsFixed(2),
      "Situação": situacaoIMC()
    }.toString();
  }

}