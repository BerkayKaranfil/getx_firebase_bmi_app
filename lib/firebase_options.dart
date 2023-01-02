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
    apiKey: 'AIzaSyBbYId3xZiR0S6cXkrkVzUSOGk2y-hnsJY',
    appId: '1:478878468730:web:d14f6f8e44c00d301a89c3',
    messagingSenderId: '478878468730',
    projectId: 'bmi-app-1bafd',
    authDomain: 'bmi-app-1bafd.firebaseapp.com',
    storageBucket: 'bmi-app-1bafd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPIirJfrHLMINaHLL7nmAgYAFC4Xa1D7E',
    appId: '1:478878468730:android:b386ddd860c034541a89c3',
    messagingSenderId: '478878468730',
    projectId: 'bmi-app-1bafd',
    storageBucket: 'bmi-app-1bafd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnrjkQj_-ixLwcZEmfIoCboyms0zl9zwE',
    appId: '1:478878468730:ios:6c88c2d8971dff3f1a89c3',
    messagingSenderId: '478878468730',
    projectId: 'bmi-app-1bafd',
    storageBucket: 'bmi-app-1bafd.appspot.com',
    iosClientId: '478878468730-6p2pufihthfpnm5a39oj806cblqpr82d.apps.googleusercontent.com',
    iosBundleId: 'com.example.getxFirebaseBmiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnrjkQj_-ixLwcZEmfIoCboyms0zl9zwE',
    appId: '1:478878468730:ios:6c88c2d8971dff3f1a89c3',
    messagingSenderId: '478878468730',
    projectId: 'bmi-app-1bafd',
    storageBucket: 'bmi-app-1bafd.appspot.com',
    iosClientId: '478878468730-6p2pufihthfpnm5a39oj806cblqpr82d.apps.googleusercontent.com',
    iosBundleId: 'com.example.getxFirebaseBmiApp',
  );
}
