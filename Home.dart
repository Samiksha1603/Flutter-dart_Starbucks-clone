import 'package:flutter/material.dart';
import 'package:madlabb/item.dart';
import 'package:madlabb/signup.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1E3932),
          centerTitle: true,title: Text('Mobile Order and Pay'),
          leading: IconButton(
            onPressed: () {Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginForm(),
              ),
            );
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_sharp),
            ),],
        ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(


        margin: EdgeInsets.only(left:15,right: 15, top:5),

        child:Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(

                    leading: CircleAvatar(

                      backgroundImage: AssetImage(
                        "Images/OIP (1).jpg",

                      ),

                    ),

                    title:

                    Text('\nCaffe Americano',style: TextStyle(fontWeight: FontWeight.bold)),

                    subtitle: Text('SHORT (237 ML) - O KCAL \n\nRich in flavour, full bodied Expresso with hot water in European style'),
//trailing:    Icon(Icons.crop_square_sharp, color: Colors.green, size: 36,),

                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:70),
                        child:Text(
                            '₹ 250',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left:150, bottom: 10),
                        child:ElevatedButton(
                          child: const Text('Add Item'),
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Item()),
                          );},

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1E3932),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(

                      backgroundImage: AssetImage(
                        "Images/OIP (2).jpg",

                      ),

                    ),
                    // leading: Icon(Icons.album),
                    title: Text('\nJavaChip Frappuccino',style: TextStyle(fontWeight: FontWeight.bold)),

                    subtitle: Text('SHORT (337 ML) - O KCAL \n\nMocha sauce and Frappuccino cips with Frappussino'),

                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:70),
                        child:Text(
                            '₹ 280',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left:150, bottom: 5),
                        child:ElevatedButton(
                          child: const Text('Add Item'),
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Item()),
                          );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1E3932),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(

                      backgroundImage: AssetImage(
                        "Images/download.jpg",

                      ),

                    ),
                    // leading: Icon(Icons.album),
                    title: Text('\nCold Coffee',style: TextStyle(fontWeight: FontWeight.bold)),

                    subtitle: Text('SHORT (127 ML) - O KCAL \n\nSignature blend, Rich in flavour expresso blended with delicate vanilla flavour '),

                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:70),
                        child:Text(
                            '₹ 275',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left:150, bottom: 10),
                        child:ElevatedButton(
                          child: const Text('Add Item'),
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Item()),
                          );},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1E3932),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(

                      backgroundImage: AssetImage(
                        "Images/OIP.jpg",

                      ),

                    ),
                    // leading: Icon(Icons.album),
                    title: Text('\nDouble Chocolate CHip Frappe',style: TextStyle(fontWeight: FontWeight.bold)),

                    subtitle: Text('SHORT (207 ML) - O KCAL \n\nRich in flavour, full bodied Expresso with hot water in European style'),

                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:70),
                        child:Text(
                            '₹ 320',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left:150, bottom: 10),
                        child:ElevatedButton(
                          child: const Text('Add Item'),
                          onPressed: () {/* ... */},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1E3932),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),);

  }
}
