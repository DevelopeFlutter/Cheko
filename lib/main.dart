import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Authenticate/login_signUp.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:
        LoginSignUp()

        );
  }
}
