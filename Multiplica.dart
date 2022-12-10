import 'dart:math';
import 'ListaDuplamenteEncadeada.dart';
import 'Node.dart';


class MultiplicacaoDeNumerosGrandes {
  static void Multiplicar(var a, var b){
    print(multLink(a, b));
  }

   static ListaDuplamenteEncadeada convertLista(var num){
     ListaDuplamenteEncadeada list = new ListaDuplamenteEncadeada();
     int ind = (num.toString().length / 3).toDouble().ceil() - 1;
     while(ind>=0){
       list.addFinal(num~/(pow(1000, ind))%1000);
       ind--;
     }
     return list;
  }

  static ListaDuplamenteEncadeada multLink(var a, var b){
     int vaiUm = 0;
     ListaDuplamenteEncadeada lista = convertLista(a),
                              listb = convertLista(b);
     print("Números:");
     print(lista);
     print(listb);
     List<ListaDuplamenteEncadeada> linhas = [];
     for(int a=lista.size()-1;a>=0;a--){
       ListaDuplamenteEncadeada linha = new ListaDuplamenteEncadeada();
        for(int b=listb.size()-1;b>=0;b--){
          var num1 = lista.getNode(a)?.conteudo;
          var num2 = listb.getNode(b)?.conteudo;
          var multiplicao=((num1*num2)+vaiUm);
          linha.addInicio(multiplicao%1000);
          vaiUm = (multiplicao~/1000)%1000;
        }
        linhas.add(linha);
     }
     if(vaiUm!=0)linhas.last.addInicio(vaiUm);
     print("");
     print("Multiplicação:");
     print(linhas);
     print("");
     print("Resultado:");
     return soma(linhas);
  }

  static ListaDuplamenteEncadeada soma(List<ListaDuplamenteEncadeada> linhas) {
     num valor = 0;
     linhas.forEach((linha)=>valor+=
         (recupera(linha.firstNo, linha.size()-1))
             *pow(1000, linhas.indexOf(linha)));
     return convertLista(valor);
  }

  static int recupera(Node? node, int indice){
     int result = (node?.conteudo)*pow(1000, indice);
     indice--;
     if (node?.proximo!=null){
       return result + recupera(node?.proximo, indice);
     }
     return result;
  }


}