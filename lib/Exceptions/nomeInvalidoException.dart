class nomeInvalidoException implements Exception{

  String error() => "Nome Inválido";

  @override
  String toString(){
    return "Invalid Name exception: ${error()}";
  }
}