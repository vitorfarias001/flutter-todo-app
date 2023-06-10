import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/model/todo_interface.dart';

class TodoServices {
  final todoCollection = FirebaseFirestore.instance.collection('todoApp');

  //CREATE
  void addNewTask(TodoModel model) {
    todoCollection.add(model.toMap());
  }
}
