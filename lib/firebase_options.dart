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
    apiKey: 'AIzaSyA3RW5QNCLrYJQKEINbDIk_EnW0epgPao8',
    appId: '1:685927582427:web:973010e0e7b0955ddc1afe',
    messagingSenderId: '685927582427',
    projectId: 'omnia-2024',
    authDomain: 'omnia-2024.firebaseapp.com',
    storageBucket: 'omnia-2024.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXYD5adHd9pAn4ZumFV7vrhUozjWb_P-k',
    appId: '1:685927582427:android:d618d5034dcac1f4dc1afe',
    messagingSenderId: '685927582427',
    projectId: 'omnia-2024',
    storageBucket: 'omnia-2024.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdmpHN9xPtk5I9ZW6RtuzjZMprtuvirck',
    appId: '1:685927582427:ios:6114dbfb274f60f9dc1afe',
    messagingSenderId: '685927582427',
    projectId: 'omnia-2024',
    storageBucket: 'omnia-2024.appspot.com',
    iosBundleId: 'com.example.omnia',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdmpHN9xPtk5I9ZW6RtuzjZMprtuvirck',
    appId: '1:685927582427:ios:3bddabb30af47f0edc1afe',
    messagingSenderId: '685927582427',
    projectId: 'omnia-2024',
    storageBucket: 'omnia-2024.appspot.com',
    iosBundleId: 'com.example.omnia.RunnerTests',
  );
}