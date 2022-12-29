import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:message_app/screens/chat_screen.dart';
import 'package:message_app/screens/login.dart';
import 'package:message_app/screens/registration_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final user = _auth.currentUser;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ChatScreen(),
      initialRoute:
          user != null ? ChatScreen.initroutes : WelcomeScreen.initroutes,
      routes: {
        WelcomeScreen.initroutes: (context) => const WelcomeScreen(),
        LoginScreen.initroutes: (context) => const LoginScreen(),
        RegistrationScreen.initroutes: (context) => const RegistrationScreen(),
        ChatScreen.initroutes: (context) => const ChatScreen(),
      },
    );
  }
}
