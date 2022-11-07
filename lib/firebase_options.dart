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
    apiKey: 'AIzaSyAVtALShswqkqnMDw9cwJ3fCIim2WQ1JlM',
    appId: '1:446052217280:web:5e27bfd3f880577f425825',
    messagingSenderId: '446052217280',
    projectId: 'test-364121',
    authDomain: 'test-364121.firebaseapp.com',
    storageBucket: 'test-364121.appspot.com',
    measurementId: 'G-QQLX0WVZYD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZ6SOkiJ8NIzrKjinGDKsDhWhsOOeQCj8',
    appId: '1:446052217280:android:189d1754cd21d524425825',
    messagingSenderId: '446052217280',
    projectId: 'test-364121',
    storageBucket: 'test-364121.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNMSjEPL7l_2SS8FjNsWDZ1VPYP8apC6A',
    appId: '1:446052217280:ios:9dbfb13035e7c46c425825',
    messagingSenderId: '446052217280',
    projectId: 'test-364121',
    storageBucket: 'test-364121.appspot.com',
    androidClientId: '446052217280-i3n5tod009817uenb1314m0qv0eitb46.apps.googleusercontent.com',
    iosClientId: '446052217280-mg7otosk1m5h6eltrm0a46lbkpalobqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseFire',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNMSjEPL7l_2SS8FjNsWDZ1VPYP8apC6A',
    appId: '1:446052217280:ios:9dbfb13035e7c46c425825',
    messagingSenderId: '446052217280',
    projectId: 'test-364121',
    storageBucket: 'test-364121.appspot.com',
    androidClientId: '446052217280-i3n5tod009817uenb1314m0qv0eitb46.apps.googleusercontent.com',
    iosClientId: '446052217280-mg7otosk1m5h6eltrm0a46lbkpalobqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseFire',
  );
}
