import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Stack(
      children: [
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signup-page.png"),
                    fit: BoxFit.cover)),
          ),
        ),
        Container(
          child: forms2(),
        )
      ],
    ));
  }
}

class forms2 extends StatefulWidget {
  const forms2({super.key});

  @override
  State<forms2> createState() => _forms2State();
}

class _forms2State extends State<forms2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Text("Sign-Up",
              style: TextStyle(
                  color: Color.fromRGBO(112, 122, 112, 1),
                  fontFamily: 'Roboto-Regular.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  decoration: TextDecoration.none)),
          padding: EdgeInsets.only(left: 50, top: 322),
        ),
        Padding(
            padding: EdgeInsets.only(top: 400, left: 20),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Name',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromRGBO(237, 229, 218, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              width: 340,
            )),
        Padding(
            padding: EdgeInsets.only(top: 480, left: 20),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromRGBO(237, 229, 218, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              width: 340,
            )),
        Padding(
            padding: EdgeInsets.only(top: 560, left: 20),
            child: Container(
              child: Material(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromRGBO(237, 229, 218, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              width: 340,
            )),

        /* Login Button */
        Container(
          padding: EdgeInsets.only(left: 20, top: 660),
          child: TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/cappuccino');
            },
            child: Text('Sign-Up',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(237, 229, 218, 1))),
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(191, 83, 44, 1),
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                minimumSize: Size(340, 50)),
          ),
        )
      ],
    );
  }
}
