import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDV5hp8VPt_lSU-Hme--7YYotkEmR4WWiM",
            authDomain: "sign-sync1-02eseu.firebaseapp.com",
            projectId: "sign-sync1-02eseu",
            storageBucket: "sign-sync1-02eseu.appspot.com",
            messagingSenderId: "1065820911393",
            appId: "1:1065820911393:web:3baf8ce2d673309d627060"));
  } else {
    await Firebase.initializeApp();
  }
}
