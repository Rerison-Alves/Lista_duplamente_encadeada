class Node{
  var conteudo;
  Node? proximo = null;
  Node? anterior = null;

  Node(conteudo){
    this.conteudo=conteudo;
  }

  void setProximo(conteudo){
    this.proximo=conteudo;
  }
  void setAnterior(conteudo){
    this.anterior=conteudo;
  }

  @override
  String toString() {
    return 'Node{conteudo: $conteudo, proximo: $proximo, anterior: $anterior}';
  }
}