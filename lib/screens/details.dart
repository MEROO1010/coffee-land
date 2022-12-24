import 'package:coffee_land/screens/cappuccino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) {
  runApp(object1());
}

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color.fromRGBO(237, 229, 218, 1),
        ),
        Container(
          child: Image.asset('assets/images/img1.png'),
          padding: EdgeInsets.only(left: 80, top: 120),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: cappuccino(),
                  isIos: true,
                  duration: Duration(milliseconds: 400),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 40,
              color: Color.fromRGBO(240, 183, 127, 1),
            ),
          ),
          padding: EdgeInsets.only(left: 10, top: 60),
        ),
        Container(
          child: object1(),
        )
      ],
    );
  }
}

class object1 extends StatefulWidget {
  const object1({super.key});

  @override
  State<object1> createState() => _object1State();
}

class _object1State extends State<object1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: Image.asset('assets/images/Union 4.png'),
      padding: EdgeInsets.only(left: 80, top: 500),
    ));
  }
}
