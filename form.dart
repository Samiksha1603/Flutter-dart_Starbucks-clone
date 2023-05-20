import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:madlabb/signup.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Initialize Firebase

// Access Firestore
final FirebaseFirestore firestore = FirebaseFirestore.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SignupForm());
}

class SignupForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body:
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[

                    Container(

                      height: 500.0,
                      width: 500.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(50.0))),
                          child: new Center(

                            child: LoginPage(),
                          ),

                          )),



                  ],),
            ),

        ),

    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
final controller=TextEditingController();
  final controller1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(

      body: new Container(

          padding: new EdgeInsets.only( left:50, right:50, top:50),
          child:Form(

            key: _formKey,

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text("SignUp", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,),textAlign: TextAlign.start),

                TextFormField(
                  controller: controller,
            decoration: new InputDecoration(

                labelText: 'USERNAME'
            ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: controller1,
                  decoration: new InputDecoration(

                      labelText: 'PASSWORD'
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                Container(
                  width: screenSize.width,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),

                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1E3932),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                    ),
                    onPressed: () {
                      final name=controller.text;
                      final pass=controller1.text;
                      Map <String,dynamic> data ={"Username":controller.text, "Password": controller1.text};
                      FirebaseFirestore.instance.collection("test").add(data);
                      print("button is pressed");
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginForm()),
                        );
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.


                      }
                    },
                    child: const Text('SignUp'),

                  ),
                  margin: new EdgeInsets.only(
                      top: 30.0
                  ),
                ),

               GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginForm()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Already have an account? LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )



              ],
            ),
          ),
      ),
    );


  }
}