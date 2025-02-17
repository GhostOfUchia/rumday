/*
// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC8snTyuD-dc1uT3Cou-Pv_ecMvE5gEEug',
    appId: '1:177296093192:web:88ab06636db0353ff421bd',
    messagingSenderId: '177296093192',
    projectId: 'rumday-8bb67',
    authDomain: 'rumday-8bb67.firebaseapp.com',
    storageBucket: 'rumday-8bb67.appspot.com',
    measurementId: 'G-BEB0VJD5K9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGfp9W6ywLSQViA_LyyuRY-pWogXaxOWo',
    appId: '1:177296093192:android:a6b68efef240e7d5f421bd',
    messagingSenderId: '177296093192',
    projectId: 'rumday-8bb67',
    storageBucket: 'rumday-8bb67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAiMDM6diPqaVXlpOSnRBcSNW3kTcJT9jE',
    appId: '1:177296093192:ios:d1a77d8444999325f421bd',
    messagingSenderId: '177296093192',
    projectId: 'rumday-8bb67',
    storageBucket: 'rumday-8bb67.appspot.com',
    iosBundleId: 'com.example.rumedy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAiMDM6diPqaVXlpOSnRBcSNW3kTcJT9jE',
    appId: '1:177296093192:ios:d1a77d8444999325f421bd',
    messagingSenderId: '177296093192',
    projectId: 'rumday-8bb67',
    storageBucket: 'rumday-8bb67.appspot.com',
    iosBundleId: 'com.example.rumedy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC8snTyuD-dc1uT3Cou-Pv_ecMvE5gEEug',
    appId: '1:177296093192:web:16a3b37b7622c4edf421bd',
    messagingSenderId: '177296093192',
    projectId: 'rumday-8bb67',
    authDomain: 'rumday-8bb67.firebaseapp.com',
    storageBucket: 'rumday-8bb67.appspot.com',
    measurementId: 'G-8C4ZFTVC9W',
  );
}
*/