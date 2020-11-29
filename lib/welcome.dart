import 'package:edu/Resource.dart';
import 'package:edu/SpeecetoText.dart';
import 'package:edu/consultation.dart';
import 'package:edu/pdfToSpeece.dart';
import 'package:flutter/material.dart';
import 'package:edu/login.dart';
import 'package:edu/registration.dart';
import 'package:edu/helper.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Row(
              children: [
                SizedBox( width: 20.0,),
                Container(
                  height: 60.0,
                  child: Image.network('https://www.onlygfx.com/wp-content/uploads/2017/12/grunge-yes-no-icon-1.png'),
                ),
                SizedBox( width: 20.0,),
                Text('Easy E-Learning', style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.green,
                  fontWeight: FontWeight.w900,
                ),
                ),

              ],
            ),
            SizedBox(height: 40,),
            RoundedButton(
              title: "Register",
              colour: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context,RegistraionScreen.id);

              },
            ),
            RoundedButton(
              title: "Log In",
              colour: Colors.green,
              onPressed: (){
                Navigator.pushNamed(context,LoginScreen.id);
              },
            )

          ],

        ),


      ),

    );
  }
}