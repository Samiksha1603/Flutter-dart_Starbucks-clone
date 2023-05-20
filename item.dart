import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:madlabb/form.dart';
import 'package:madlabb/Home.dart';

void main() { runApp(Item()); }

class Item extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text('Java Chip Frappacicno'),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),

        // backgroundColor: Colors.black,
        // centerTitle: true,title: Text('Java Chip Frappacicno'),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.popUntil(context, ModalRoute.withName('Home'));
        //
        //
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),

      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'Images/jjj.jpg', // Replace with your image file path
              fit: BoxFit.cover,
            ),
          ),
          // Text at the bottom
          Positioned(
            bottom: 140,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    Text(
    'JavaChip Frappuccino',
    style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
    ),
    Text(
    'Mocha sauce and Frappuccino cips with Mocha sauce and Frappussino',
    style: TextStyle(fontSize: 15, color: Colors.white),
    ),
    ],
    ),
          ),
          // Container with button at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFF007549),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Frappuccino',
                        style: TextStyle(fontSize: 18, color: Colors.white, ),
                      ),
                      Text(
                        '₹ 280',
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),

                   ),
                   ),
                  onPressed: () {
                    print('Button clicked');                    // do something
                  },
                  child: Text('Add to Cart', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //
                  //     ),
                  //   ),
                  //   onPressed: () {
                  //     // Handle button click
                  //     print('Button clicked');
                  //   },
                  //   child: Text('Button',
                  //     style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
        );

  }
}