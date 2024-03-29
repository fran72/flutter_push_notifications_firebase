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
    apiKey: 'AIzaSyCb0pMQCnWJHBdmzexCv_JqqiijKYfYNyY',
    appId: '1:482465229247:web:8d2d0403818350ee10590a',
    messagingSenderId: '482465229247',
    projectId: 'la-nevera-221a0',
    authDomain: 'la-nevera-221a0.firebaseapp.com',
    storageBucket: 'la-nevera-221a0.appspot.com',
    measurementId: 'G-JM5GQTBCQP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpb_Is0owvSf_orVBg-_NzhOgTt3SOT1A',
    appId: '1:482465229247:android:2a82406245ac7fcc10590a',
    messagingSenderId: '482465229247',
    projectId: 'la-nevera-221a0',
    storageBucket: 'la-nevera-221a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFpFTS9kzCgoTStLoQ_azy0R3Bx7ixTTc',
    appId: '1:482465229247:ios:fa5a58bb4bdf126410590a',
    messagingSenderId: '482465229247',
    projectId: 'la-nevera-221a0',
    storageBucket: 'la-nevera-221a0.appspot.com',
    androidClientId:
        '482465229247-6bgs4j8aamp28knkn9hmla4s58gft4mp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication16',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFpFTS9kzCgoTStLoQ_azy0R3Bx7ixTTc',
    appId: '1:482465229247:ios:ae12df7fdd0c858f10590a',
    messagingSenderId: '482465229247',
    projectId: 'la-nevera-221a0',
    storageBucket: 'la-nevera-221a0.appspot.com',
    androidClientId:
        '482465229247-6bgs4j8aamp28knkn9hmla4s58gft4mp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication16.RunnerTests',
  );
}
