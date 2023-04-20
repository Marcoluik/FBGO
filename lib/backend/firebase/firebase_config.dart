import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDzXYMAHJnp_EryA6VtLPhD1QoMrTBJMo",
            authDomain: "fbgo-1a679.firebaseapp.com",
            projectId: "fbgo-1a679",
            storageBucket: "fbgo-1a679.appspot.com",
            messagingSenderId: "873312834047",
            appId: "1:873312834047:web:0dd2baab845016c6cd57ca"));
  } else {
    await Firebase.initializeApp();
  }
}
