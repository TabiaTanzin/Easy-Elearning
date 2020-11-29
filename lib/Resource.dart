import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resource extends StatefulWidget{
  static const String id='resource_Screen';
  @override
  ResourceState createState() => new ResourceState();
}
class ResourceState extends State<Resource>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,

        backgroundColor: Colors.green,
        title: Text('Resource'),
      ),

      body: Column(
        children: [
          SizedBox(height: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network('https://image.freepik.com/free-vector/illustration-new-normal-education-learning-with-mobile-apps-e-classroom-design-can-be-used-landing-page-website-mobile-app-poster-flyers-banner_4968-1199.jpg',height: 160,),
              Padding(padding: EdgeInsets.fromLTRB(25, 0,25,0),
                child: Text('Breaking the barriers in Classroom'
                ,style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
              ),


            ],
          ),
            SizedBox(height: 20,),
            Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
    children: <Widget>[
    Card(

    child: ListTile(
    leading: Image.network("https://lh3.googleusercontent.com/E_kpq1HGn5WU2P4S2yu0BwrPEHqiA-VBh2R7qoIjPFXdNvKA0A-8zi0RzRslUtEOnUvA"),
    title: Text('Visualize Mathematics'),
    contentPadding:
    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
    trailing: RaisedButton(
    child: Text('Go'),
    color: Colors.pink[100],
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
    side: BorderSide(color: Colors.black)),
    onPressed: () {}),
    ),
    color: Colors.blue[100],
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(55),
    ),
    ),

      Card(
        child: ListTile(
          leading: Image.network("https://static.thenounproject.com/png/21044-200.png"),
          title: Text('Audiobook Collection'),
          contentPadding:
          EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          trailing: RaisedButton(
              child: Text('Go'),
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black)),
              onPressed: () {}),
        ),
        color: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
      ),


      Card(
        child: ListTile(
          leading: Image.network("https://i.pinimg.com/originals/d8/25/da/d825dacfabbae73344e9418d99ac52df.png"),
          title: Text('Oppurtunity'),
          contentPadding:
          EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          trailing: RaisedButton(
              child: Text('Go'),
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black)),
              onPressed: () {}),
        ),
        color: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
      ),
    ],
    ),
            ),


        ],
      ),

    );
  }
}