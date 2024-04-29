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
    apiKey: 'AIzaSyDTTYJsb_mfjdu778fnP9i6nWZvrYIn53M',
    appId: '1:17885012571:web:4492a026e5075c510ed57e',
    messagingSenderId: '17885012571',
    projectId: 'homeeasy-7cb28',
    authDomain: 'homeeasy-7cb28.firebaseapp.com',
    storageBucket: 'homeeasy-7cb28.appspot.com',
    measurementId: 'G-JLZTN9GBM4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYr38Qbr2G3DrfvsweL_995EhLZj7-Upk',
    appId: '1:17885012571:android:91ad0e33d5927f880ed57e',
    messagingSenderId: '17885012571',
    projectId: 'homeeasy-7cb28',
    storageBucket: 'homeeasy-7cb28.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfguauUG70F2gOK9rf3QaCmilam8LiOMo',
    appId: '1:17885012571:ios:cf74abedd98c0e880ed57e',
    messagingSenderId: '17885012571',
    projectId: 'homeeasy-7cb28',
    storageBucket: 'homeeasy-7cb28.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfguauUG70F2gOK9rf3QaCmilam8LiOMo',
    appId: '1:17885012571:ios:595cf47c7cb238250ed57e',
    messagingSenderId: '17885012571',
    projectId: 'homeeasy-7cb28',
    storageBucket: 'homeeasy-7cb28.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}