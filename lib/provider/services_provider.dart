import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/model/todo_interface.dart';
import 'package:todo_app/services/todo_services.dart';

final serviceProvider = StateProvider((ref) {
  return TodoService();
});

final fetchProvider = StreamProvider<List<TodoModel>>((ref) async* {
  final getData = FirebaseFirestore.instance
      .collection('todoApp')
      .snapshots()
      .map((event) => event.docs
          .map((snapshots) => TodoModel.fromSnapshot(snapshots))
          .toList());
  yield* getData;
  return;
});

//No contexto do Flutter Riverpod, 
//o yield é uma construção usada em funções assíncronas que retornam um fluxo contínuo de valores, 
//conhecido como um stream. 
//Ele é usado junto com o async*, que indica que a função é uma função assíncrona que retorna um stream.


//No caso específico do  código, 
//o yield* getData está sendo usado para emitir os objetos TodoModel
// obtidos a partir dos documentos do Firestore para o consumidor do stream representado pelo StreamProvider. 
//Cada vez que um novo documento é adicionado, modificado ou removido na coleção "todoApp" do Firestore, 
//o yield* getData irá emitir um novo conjunto de objetos TodoModel atualizados para o consumidor do stream, 
//permitindo que a interface do usuário seja atualizada de acordo.





