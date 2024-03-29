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
    apiKey: 'AIzaSyCy3JxX4A7lDBaRlWIy1Ive2ykxhAavA00',
    appId: '1:49607203429:web:dad344a6cf25b32509448c',
    messagingSenderId: '49607203429',
    projectId: 'uauthentication-c8ab9',
    authDomain: 'uauthentication-c8ab9.firebaseapp.com',
    storageBucket: 'uauthentication-c8ab9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArCbxu6n9m91yOlJTE4PvEkIi7OQYTN-k',
    appId: '1:49607203429:android:29ffff66e8b1894d09448c',
    messagingSenderId: '49607203429',
    projectId: 'uauthentication-c8ab9',
    storageBucket: 'uauthentication-c8ab9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMnbdKJwaC764EdH_QYaM-r97JhtRnz0Y',
    appId: '1:49607203429:ios:0e2c602ceeeebc8009448c',
    messagingSenderId: '49607203429',
    projectId: 'uauthentication-c8ab9',
    storageBucket: 'uauthentication-c8ab9.appspot.com',
    iosBundleId: 'com.example.uAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMnbdKJwaC764EdH_QYaM-r97JhtRnz0Y',
    appId: '1:49607203429:ios:f98cbb8446408d3309448c',
    messagingSenderId: '49607203429',
    projectId: 'uauthentication-c8ab9',
    storageBucket: 'uauthentication-c8ab9.appspot.com',
    iosBundleId: 'com.example.uAuthentication.RunnerTests',
  );
}
