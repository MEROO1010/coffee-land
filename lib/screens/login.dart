import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          child: Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/login-page.png"),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        Container(
          child: forms(),
        )
      ],
    );
  }
}

class forms extends StatefulWidget {
  const forms({super.key});

  @override
  State<forms> createState() => _formsState();
}

class _formsState extends State<forms> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Text("Login",
              style: TextStyle(
                  color: Color.fromRGBO(112, 122, 112, 1),
                  fontFamily: 'Roboto-Regular.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  decoration: TextDecoration.none)),
          padding: EdgeInsets.only(left: 50, top: 344),
        ),
        Padding(
            padding: EdgeInsets.only(top: 420, left: 30),
            child: Container(
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      focusColor: Colors.amberAccent,
                      hintText: 'Username or Email',
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
            padding: EdgeInsets.only(top: 520, left: 30),
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
          padding: EdgeInsets.only(top: 640, left: 30),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cappuccino');
            },
            child: Text('Login',
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
