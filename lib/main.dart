import 'package:chat_base/screens/auth_screen.dart';
// import 'package:chat_base/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, appSnapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Chat_base',
            theme: ThemeData(
              primarySwatch: Colors.pink,
              backgroundColor: Colors.pink,
              accentColor: Colors.deepPurple,
              accentColorBrightness: Brightness.dark,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              // buttonTheme: ButtonTheme.of(context).copyWith(
              //   buttonColor: Colors.pink,
              //   textTheme: ButtonTextTheme.primary,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              // ),
            ),
            home: AuthScreen(),
          );
        });
  }
}
