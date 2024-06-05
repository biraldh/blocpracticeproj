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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCl3ZmNhKy4BVyhZyzM0wJuuQ1IkeWDkvc',
    appId: '1:1032568367306:web:e5bf566d7b60691819ac33',
    messagingSenderId: '1032568367306',
    projectId: 'blocprac-a253b',
    authDomain: 'blocprac-a253b.firebaseapp.com',
    storageBucket: 'blocprac-a253b.appspot.com',
    measurementId: 'G-F2T5FMM0FK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBotCTbgMJhtUBPn1Fpg_E3fdPrlzByC3E',
    appId: '1:1032568367306:android:ad3c22290943e87b19ac33',
    messagingSenderId: '1032568367306',
    projectId: 'blocprac-a253b',
    storageBucket: 'blocprac-a253b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCX803dvheKFK8vlt9NbJXtOjPMyXUabiY',
    appId: '1:1032568367306:ios:b4716297aea0c5c019ac33',
    messagingSenderId: '1032568367306',
    projectId: 'blocprac-a253b',
    storageBucket: 'blocprac-a253b.appspot.com',
    iosBundleId: 'com.example.blocpracticeproj',
  );
}