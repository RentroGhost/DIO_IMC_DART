class valorInvalidoException implements Exception{

  String error() => "Valor Inválido";

  @override
  String toString(){
    return "Invalid value exception: ${error()}";
  }
}