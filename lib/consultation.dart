import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallCounsellor extends StatefulWidget {
  static const String id='callCounsellor';

  @override
  _CallCounsellorState createState() => _CallCounsellorState();
}

class _CallCounsellorState extends State<CallCounsellor> {
  String mobilenum = '01726419272';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        elevation: 2,
        brightness: Brightness.light,
        backgroundColor: Colors.green,
        title: Text('Counsellor Call',textAlign: TextAlign.center,),
      ),
      body: Container(
        child: Column(
          children: [
            Image.network("https://www.gigadocs.com/blog/wp-content/uploads/2020/05/videocalling-with-therapist_23-2148512091.jpg"),
            RaisedButton(
              child: Text(
                'Call the Counsellor',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black)),
              onPressed: () {
                _makePhoneCall('tel:$mobilenum');
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String number) async {
    if (await canLaunch(number)) {
      await launch(number);
    } else {
      throw 'Could not launch $number';
    }
  }
}