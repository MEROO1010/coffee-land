import 'package:coffee_land/screens/login.dart';
import 'package:coffee_land/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': ((context) => Home()),
      '/login': (context) => login(),
      '/signup': (context) => signup()
    },
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/get_Start.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            child: Image.asset('assets/images/coffee_land.png'),
            padding: EdgeInsets.only(left: 20, top: 220),
          ),
          //login button
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: login(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              child: Text("Login",
                  style: TextStyle(
                    color: Color.fromRGBO(112, 122, 112, 1),
                    fontFamily: 'Roboto-Regular.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  minimumSize: Size(200, 40)),
            ),
            padding: EdgeInsets.only(left: 100, top: 500),
          ),

          //signup button

          Container(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: signup(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              child: Text("Sign Up ",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Roboto-Regular.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(191, 83, 44, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  minimumSize: Size(200, 40)),
            ),
            padding: EdgeInsets.only(left: 100, top: 560),
          )
        ],
      ),
    );
  }
}
