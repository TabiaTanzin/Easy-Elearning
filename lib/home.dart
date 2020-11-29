
import 'package:edu/Resource.dart';
import 'package:edu/SpeecetoText.dart';
import 'package:edu/consultation.dart';
import 'package:edu/friendly%20font.dart';
import 'package:edu/pdfToSpeece.dart';
import 'package:edu/welcome.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget{
  static const String id = 'home_screen';

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
         backgroundColor: Colors.green,
         actions: <Widget>[
          FlatButton(
            child: Row(
              children: <Widget>[
                Text('Log Out'),
                Icon(Icons.outlined_flag)
              ],
            ),
            textColor: Colors.white,

            onPressed: (){
              Navigator.pushNamed(context, WelcomeScreen.id);

            },
          )
        ],
      ),

      body:Column(


      children: <Widget> [
        Row(
        children: [
        SizedBox( width: 20.0,),
          SizedBox( width: 20.0,),

      Container(
        padding: EdgeInsets.all(10),
        child: Image.network('https://www.onlygfx.com/wp-content/uploads/2017/12/grunge-yes-no-icon-1.png',height: 60,
       ),
      ),
      SizedBox( width: 15.0,),
            Text('Easy E-Learning', style: TextStyle(
        fontSize: 34.0,
        color: Colors.green,
        fontWeight: FontWeight.w900,
      ),
      ),

      ],
    ),
    SizedBox(height: 20,),
        Expanded(
          flex: 1,

          child:
          InkWell(
          child: Container(height: MediaQuery.of(context).size.height * 0.10,
    margin: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width*0.60,

    decoration: new BoxDecoration(
    color: Colors.white12,
    border: new Border.all(color: Colors.blueAccent, width: 2.0),

    borderRadius: new BorderRadius.circular(10.0),),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Text('Pdf to Audio',style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,

    ),),
    Icon(
    Icons.surround_sound,
    color: Colors.blueAccent,
    size: 50.0,

    ),


    ],
    ),



    ),
    onTap: () {
    Navigator.pushNamed(context, TextToSpeech.id);
    },
    )
          ),

        Expanded(
          flex: 1,
          child: InkWell(
          child:Container(
            height: MediaQuery.of(context).size.height * 0.10,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width*0.60,

            decoration: new BoxDecoration(
              color: Colors.white12,
              border: new Border.all(color: Colors.purpleAccent, width: 2.0),

              borderRadius: new BorderRadius.circular(10.0),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Friendly Font',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),),
                Icon(
                  Icons.note,
                  color: Colors.purpleAccent,
                  size: 50.0,
                ),
              ],
            ),


          ),
            onTap: () {
              Navigator.pushNamed(context, FriendlyFont.id);
            },
          )
        ),

        Expanded(
          flex: 1,
          child:InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.10,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width*0.60,

            decoration: new BoxDecoration(
              color: Colors.white12,
              border: new Border.all(color: Colors.brown, width: 2.0),

              borderRadius: new BorderRadius.circular(10.0),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Speech to Text',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),),
                Icon(
                  Icons.speaker_notes,
                  color: Colors.brown,
                  size: 50.0,
                ),
              ],
            ),


          ),
            onTap: () {
              Navigator.pushNamed(context, SpeechScreen.id);
            },
          )
        ),



        Expanded(
          flex: 1,
          child:InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.10,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width*0.60,

            decoration: new BoxDecoration(
              color: Colors.white12,
              border: new Border.all(color: Colors.lightBlueAccent, width: 2.0),

              borderRadius: new BorderRadius.circular(10.0),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Counsellor',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),),
                Icon(
                  Icons.live_help,
                  color: Colors.lightBlueAccent,
                  size: 50.0,
                ),
              ],
            ),


          ),
    onTap: () {
    Navigator.pushNamed(context, CallCounsellor.id);
    },
    )
        ),





        Expanded(
          flex: 1,
          child:InkWell(
    child: Container(
            height: MediaQuery.of(context).size.height * 0.10,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width*0.60,

            decoration: new BoxDecoration(
              color: Colors.white12,
              border: new Border.all(color:Colors.pinkAccent, width: 2.0),

              borderRadius: new BorderRadius.circular(10.0),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Resources',style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,

                ),),
                Icon(
                  Icons.book,
                  color: Colors.pinkAccent,
                  size: 50.0,
                ),
              ],
            ),


          ),
            onTap: () {
              Navigator.pushNamed(context, Resource.id);
            },
          )
        ),

        SizedBox(height: 15.0,),




        ],
      ),
    );
  }
}