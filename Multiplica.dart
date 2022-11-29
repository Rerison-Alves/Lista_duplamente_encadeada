import 'dart:math';

import 'Node.dart';
import 'ListaDuplamenteEncadeada.dart';
class Multiplica {
  int aux=0;
   ListaDuplamenteEncadeada ConvertLista(int num){
     ListaDuplamenteEncadeada list = new ListaDuplamenteEncadeada();
     int ind = (num.toString().length / 3).toDouble().ceil() - 1;
     while(ind>=0){
       list.addFinal(num~/(pow(1000, ind))%1000);
       ind--;
     }
     return list;
  }

  void MultLink (int a, int b){
     ListaDuplamenteEncadeada lista = ConvertLista(a);
     ListaDuplamenteEncadeada listb = ConvertLista(b);

  }



}