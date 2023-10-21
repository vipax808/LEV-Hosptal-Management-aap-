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
///
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
    apiKey: 'AIzaSyDdYmBYHq-Zvb8dqXe2SKF2LfpBJme3tE4',
    appId: '1:535596220111:web:b68468736d5482241b81ba',
    messagingSenderId: '535596220111',
    projectId: 'levv-dde63',
    authDomain: 'levv-dde63.firebaseapp.com',
    storageBucket: 'levv-dde63.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBP1P104qV1CHNkP7UHAqP-9qnxkb5-Rhg',
    appId: '1:535596220111:android:32c23acd31254a9a1b81ba',
    messagingSenderId: '535596220111',
    projectId: 'levv-dde63',
    storageBucket: 'levv-dde63.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAa_-xGqkVafHV_cTVYSX7GwkeL6uBEo6I',
    appId: '1:535596220111:ios:87374a5f06c051d61b81ba',
    messagingSenderId: '535596220111',
    projectId: 'levv-dde63',
    storageBucket: 'levv-dde63.appspot.com',
    iosBundleId: 'com.example.lev',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAa_-xGqkVafHV_cTVYSX7GwkeL6uBEo6I',
    appId: '1:535596220111:ios:4f5361b8e34012f81b81ba',
    messagingSenderId: '535596220111',
    projectId: 'levv-dde63',
    storageBucket: 'levv-dde63.appspot.com',
    iosBundleId: 'com.example.lev.RunnerTests',
  );
}