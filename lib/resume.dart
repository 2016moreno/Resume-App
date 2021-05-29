import 'package:flutter/material.dart';

class resumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'David A. Moreno',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              child: Text(
                '',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
