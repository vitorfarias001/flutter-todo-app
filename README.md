# Building a FullStack App ToDo List with Flutter 

<img width="1920" alt="1" src="https://github.com/vitorfarias001/flutter-todo-app/assets/66703405/440c0abf-88dd-4972-af93-b8f92e1f2d6a">

Features:

- Cupertino Icons
- FireBase Core
- Intl
- Flutter RiverPod
-   sdk: '>=2.19.6 <3.0.0'
```

###  files explaning

- radio_provider 

The radioProvider is defined as a state provider that stores an integer value. 
The initial value of the state is set to 0 through the lambda function passed to the StateProvider constructor.

The ref is a reference object that provides access to various functionalities of Riverpod, such as reading and writing the state. 
It is passed as a parameter to the lambda function, allowing you to interact with the provider's state.

- services_provider

In the context of Flutter Riverpod, yield is a construct used in asynchronous functions that return a continuous stream of values, known as a stream.
It is used in conjunction with async*, which indicates that the function is an asynchronous function that returns a stream.
In the specific case of the code,
yield* getData is being used to emit TodoModel objects obtained from Firestore documents to the consumer of the stream represented by StreamProvider.
Each time a new document is added, modified, or removed in the "todoApp" collection of Firestore, 
yield* getData will emit a new set of updated TodoModel objects to the consumer of the stream, allowing the user 
interface to be updated accordingly.

- date_time_provider 

These state providers can be used in different parts of your Flutter code to store and access information related to date and time, 
allowing you to easily share and manage this data in a reactive manner using Riverpod.
