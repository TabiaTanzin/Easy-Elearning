import 'package:edu/Resource.dart';
import 'package:edu/SpeecetoText.dart';
import 'package:edu/consultation.dart';
import 'package:edu/friendly%20font.dart';
import 'package:edu/home.dart';
import 'package:edu/login.dart';
import 'package:edu/pdfToSpeece.dart';
import 'package:edu/welcome.dart';

import 'package:flutter/material.dart';
import 'package:edu/registration.dart';
import 'package:provider/provider.dart';
import 'auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
       WelcomeScreen.id: (context) => WelcomeScreen(),
        TextToSpeech.id:(context)=> TextToSpeech(),
        RegistraionScreen.id: (context) => RegistraionScreen(),
       LoginScreen.id: (context) => LoginScreen(),
        home.id:(context) =>home(),
        CallCounsellor.id:(context) =>CallCounsellor(),
        SpeechScreen.id:(context)=>SpeechScreen(),
        Resource.id:(context) =>Resource(),
        FriendlyFont.id:(context)=>FriendlyFont(),
      },
    ),
    );
  }
}

