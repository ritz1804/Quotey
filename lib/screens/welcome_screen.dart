import 'package:flutter/material.dart';
import 'package:quotey/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset('assets/logo.png'),
                    Text(
                      'Get\nInspired',
                      style: TextStyle(
                          fontSize: 45,
                          fontFamily: 'Poppins'
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 40.0, right: 40.0,top: 65, bottom: 60),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new HomeScreen())
                    );
                  },
                  color: Colors.black,
                  textColor: Color(0xFFFCF7F4),
                  child: Text("GET STARTED",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      )
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
