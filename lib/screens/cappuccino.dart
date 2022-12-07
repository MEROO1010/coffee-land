import 'package:coffee_land/screens/latte.dart';
import 'package:coffee_land/screens/mocha.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(cappuccino());
}

class cappuccino extends StatelessWidget {
  cappuccino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color.fromRGBO(237, 229, 218, 1),
        ),
        Scaffold(
          body: Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Find your Coffee..',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromRGBO(240, 183, 127, 1),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 460, left: 40),
            width: 320,
          ),
        ),
        Container(
          child: Text(
            'Find your favorite coffee',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Schyler',
                decoration: TextDecoration.none,
                color: Color.fromRGBO(112, 112, 112, 1),
                fontWeight: FontWeight.w900),
          ),
          padding: EdgeInsets.only(left: 80, top: 80),
        ),
        ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp1.png')),
                  padding: EdgeInsets.only(left: 200, top: 250),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp2.png')),
                  padding: EdgeInsets.only(left: 10, top: 250),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp3.png')),
                  padding: EdgeInsets.only(left: 200, top: 430),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp4.png')),
                  padding: EdgeInsets.only(left: 10, top: 430),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp5.png')),
                  padding: EdgeInsets.only(left: 200, top: 620),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/caupp6.png')),
                  padding: EdgeInsets.only(left: 10, top: 620),
                ),
              ],
            )
          ],
        ),
        Container(
          child: rowcontent(),
        ),
      ],
    );
  }
}

class rowcontent extends StatefulWidget {
  const rowcontent({super.key});

  @override
  State<rowcontent> createState() => _rowcontentState();
}

class _rowcontentState extends State<rowcontent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Cappuccino',
                style: TextStyle(
                    color: Color.fromRGBO(147, 75, 60, 1),
                    fontWeight: FontWeight.w800),
              )),
          padding: EdgeInsets.only(left: 20, top: 220),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: latte(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              child: Text(
                'Latte',
                style: TextStyle(
                    color: Color.fromRGBO(191, 83, 44, 1),
                    fontWeight: FontWeight.normal),
              )),
          padding: EdgeInsets.only(left: 20, top: 220),
        ),
        Container(
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Espresso',
                style: TextStyle(
                    color: Color.fromRGBO(191, 83, 44, 1),
                    fontWeight: FontWeight.normal),
              )),
          padding: EdgeInsets.only(left: 20, top: 220),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: mocha(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              child: Text(
                'Mocha',
                style: TextStyle(
                    color: Color.fromRGBO(191, 83, 44, 1),
                    fontWeight: FontWeight.normal),
              )),
          padding: EdgeInsets.only(left: 20, top: 220),
        )
      ],
    );
  }
}
