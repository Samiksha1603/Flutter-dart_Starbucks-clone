import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:madlabb/form.dart';

void main() { runApp(Splash()); }

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyTextPage()
    );
  }
}
class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child:Scaffold(
        backgroundColor: Color(0xFFF3EFEE),
        body:Container(

          margin: EdgeInsets.only(top: 350, left: 80, right: 80),
          child: Column(
            children: <Widget>[
              Image.asset('Images/Starbucks_Corporation_Logo_2011.jpg',
                  height: 120,
                  width: 120),

              Image.asset('Images/starbucks-wide.png',
                  height: 55,
                  width: 150),


    GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(
            builder: (context) => SignupForm(),
        ),
        );
      },
    child:  Text(
      'Inspiring and nurturing the human spirit-one person, one cup and one neighbourhood at a time.',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),),
    ),

              Padding(
                padding: EdgeInsets.only(top:43),
                child: Image.asset('Images/bottom.png',

                  height: 250,
                  width: 250,
                ),   ),



            ],
          ),
        ),
        )
    );
  }
}