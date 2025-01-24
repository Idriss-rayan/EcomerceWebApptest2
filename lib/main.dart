import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_ecomerce_app/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDyJGk_PQBRE2c2E8Q6xYtFfsHti72Q_ag", //
    projectId: "ecomerceweb-4d551", //
    messagingSenderId: "1034631884002", //
    appId: "1:1034631884002:web:a29e692d6dfc65838402bb", //
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
