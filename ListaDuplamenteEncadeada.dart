import 'Node.dart';

class ListaDuplamenteEncadeada{
  Node? firstNo = null,
      lastNo = null;
  int tamanho = 0;

  void addFinal(conteudo){
    Node newNo = new Node(conteudo);
    newNo.setProximo(null);
    newNo.setAnterior(lastNo);
    if(firstNo == null){
      firstNo = newNo;
    }
    if(lastNo != null){
      lastNo?.setProximo(newNo);
    }
    lastNo = newNo;
    tamanho++;
  }

  void add(int index, conteudo){
    Node newNo = new Node(conteudo);
    Node? assistantNo = getNode(index);
    newNo.setProximo(assistantNo);

    if(newNo.proximo != null){
      newNo.setAnterior(assistantNo?.anterior);
      newNo.proximo?.setAnterior(newNo);
    }else{
      newNo.setAnterior(lastNo);
      lastNo = newNo;
    }

    if(index==0){
      firstNo = newNo;
    }else{
      newNo.anterior?.setProximo(newNo);
    }
    tamanho++;
  }

  void remove(int index){
    if(index==0){
      firstNo = firstNo?.proximo;
      if(firstNo != null){
        firstNo?.setAnterior(null);
      }
    }else{
      Node? assistantNo = getNode(index);
      assistantNo?.anterior?.setProximo(assistantNo.proximo);
      if(assistantNo != lastNo){
        lastNo?.proximo?.setAnterior(assistantNo?.anterior);
      }else{
        lastNo = assistantNo;
      }
    }
    tamanho--;
  }

  Node? getNode(int index){
    Node? assistantNo = firstNo;
    for(int i=0; i<index && assistantNo!=null; i++){
      assistantNo = assistantNo.proximo;
    }
    return assistantNo;
  }

  int size(){
    return this.tamanho;
  }

  @override
  String toString() {
    String strRetorno = "";
    Node? assistantNo = firstNo;
    for(int i = 0; i<size(); i++){
      strRetorno += "[No=" + assistantNo!.conteudo.toString() + "]<--->";
      assistantNo = assistantNo.proximo;
    }
    strRetorno += "null";
    return strRetorno;
  }
}