import 'package:flutter/material.dart';
import 'resume.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profpic.png'),
            ),
            Text(
              'David A. Moreno',
              style: TextStyle(
                fontFamily: 'Staatliches',
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              'DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                color: Colors.red[100],
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150,
              child: Divider(
                thickness: 2,
                color: Colors.red.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                title: Text('+1-956-576-6509',
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0)),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                title: Text('2016moreno@gmail.com',
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0)),
              ),
            ),
            InkWell(
              onTap: _launchURL,
              child: new Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.chrome_reader_mode,
                    color: Colors.red,
                  ),
                  title: Text('Resume',
                      style: TextStyle(
                          color: Colors.red.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://drive.google.com/file/d/1Cdm_30iI-wtqBdqJRT4igMyEMhjAyCdl/view';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
