import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String? docId;
  final String titleTask;
  final String description;
  final String category;
  final String dateTask;
  final String timeTask;
  final bool isDone;
  TodoModel({
    this.docId,
    required this.titleTask,
    required this.description,
    required this.category,
    required this.dateTask,
    required this.timeTask,
    required this.isDone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'titleTask': titleTask,
      'description': description,
      'category': category,
      'dateTask': dateTask,
      'timeTask': timeTask,
      'isDone': isDone
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      docId: map['docId'] != null ? map['docId'] as String : null,
      titleTask: map['titleTask'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      dateTask: map['dateTask'] as String,
      timeTask: map['timeTask'] as String,
      isDone: map['isDone'] as bool,
    );
  }

  factory TodoModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TodoModel(
      docId: doc.id,
      titleTask: doc['titleTask'],
      description: doc['description'],
      category: doc['category'],
      dateTask: doc['dateTask'],
      timeTask: doc['timeTask'],
      isDone: doc['isDone'],
    );
  }
}

//docId (opcional): Uma string que representa o ID do documento no Firestore. 
//É opcional porque pode ser nulo em algumas situações, como ao criar uma nova tarefa que ainda não foi salva no banco de dados.

//titleTask: Uma string que armazena o título da tarefa.
//description: Uma string que armazena a descrição da tarefa.
//category: Uma string que armazena a categoria da tarefa.
//dateTask: Uma string que armazena a data da tarefa.
//timeTask: Uma string que armazena a hora da tarefa.

//toMap
//Converte o objeto TodoModel em um Map de pares chave-valor, 
//sonde as chaves correspondem aos nomes das propriedades e os valores correspondem aos valores das propriedades.
//Isso é útil para armazenar ou enviar o objeto TodoModel para o firebase.

//fromMap
//Cria um objeto TodoModel a partir de um Map de pares chave-valor.
//É usado para converter os dados obtidos do firebase  TodoModel.

//fromSnapshot
//Cria um objeto TodoModel a partir de um DocumentSnapshot do Firestore.
//O DocumentSnapshot representa um documento específico no Firestore e contém os dados desse documento.
//Esse método é usado para converter os dados obtidos do DocumentSnapshot no objeto TodoModel.


//Essa classe TodoModel facilita a criação,
// conversão e manipulação de objetos TodoModel no contexto do aplicativo, permitindo que você os armazene, leia, atualize e exclua do Firestore 
//de maneira eficiente e estruturada.
