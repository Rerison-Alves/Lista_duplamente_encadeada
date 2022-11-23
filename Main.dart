import 'Node.dart';
import 'ListaDuplamenteEncadeada.dart';

void main(){
  ListaDuplamenteEncadeada list = new ListaDuplamenteEncadeada();

  list.addFinal(1);
  list.addFinal(2);
  list.addFinal(3);
  list.addFinal(4);
  list.addFinal(5);

  print(list);

  list.add(2, 44);

  print(list);

  list.remove(2);

  print(list);
}