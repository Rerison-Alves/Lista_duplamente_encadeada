
class Node{
  var conteudo;
  Node proximo = new Node(null);
  Node anterior = new Node(null);

  Node(conteudo){
    this.conteudo=conteudo;
  }

  @override
  String toString() {
    return 'Node{conteudo: $conteudo, proximo: $proximo, anterior: $anterior}';
  }
}