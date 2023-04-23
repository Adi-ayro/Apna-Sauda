import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCA6NB4vMKenl6r_Zn0IXKryIDo3lY-rqk",
            authDomain: "apna-sauda.firebaseapp.com",
            projectId: "apna-sauda",
            storageBucket: "apna-sauda.appspot.com",
            messagingSenderId: "610019368138",
            appId: "1:610019368138:web:d0390d8a72c380206e6833",
            measurementId: "G-T1SV480RGR"));
  } else {
    await Firebase.initializeApp();
  }
}
