// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBbuqqV4naNkhpFGkE4b5cCNEcgEYtClNo',
    appId: '1:405912176458:web:2db28ee439a02cb78423b3',
    messagingSenderId: '405912176458',
    projectId: 'flutter-todo-vitor',
    authDomain: 'flutter-todo-vitor.firebaseapp.com',
    storageBucket: 'flutter-todo-vitor.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArldAxfZnUp9BMDcMnUxNQASZ-Pf5ivrQ',
    appId: '1:405912176458:android:6de24bafb19322788423b3',
    messagingSenderId: '405912176458',
    projectId: 'flutter-todo-vitor',
    storageBucket: 'flutter-todo-vitor.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg-VjlE-HxP16MQ1Xg5XFUUtjTesdjGRw',
    appId: '1:405912176458:ios:5f2d29045142f1bb8423b3',
    messagingSenderId: '405912176458',
    projectId: 'flutter-todo-vitor',
    storageBucket: 'flutter-todo-vitor.appspot.com',
    iosClientId: '405912176458-4pd320sij7f2vh759v5se081qtol05ed.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDg-VjlE-HxP16MQ1Xg5XFUUtjTesdjGRw',
    appId: '1:405912176458:ios:5f2d29045142f1bb8423b3',
    messagingSenderId: '405912176458',
    projectId: 'flutter-todo-vitor',
    storageBucket: 'flutter-todo-vitor.appspot.com',
    iosClientId: '405912176458-4pd320sij7f2vh759v5se081qtol05ed.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoApp',
  );
}