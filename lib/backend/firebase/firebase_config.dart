import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD_AZCEfcttDzXD-T_RAX75Vval-y1-XUE",
            authDomain: "polangui-folktales.firebaseapp.com",
            projectId: "polangui-folktales",
            storageBucket: "polangui-folktales.firebasestorage.app",
            messagingSenderId: "299786423415",
            appId: "1:299786423415:web:81109703d0ecf70f318a72"));
  } else {
    await Firebase.initializeApp();
  }
}
