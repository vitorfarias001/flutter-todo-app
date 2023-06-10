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



