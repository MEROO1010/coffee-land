import 'package:coffee_land/screens/orderconformed.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class cardlist extends StatefulWidget {
  const cardlist({super.key});

  @override
  State<cardlist> createState() => _cardlistState();
}

class _cardlistState extends State<cardlist> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color.fromRGBO(237, 229, 218, 1),
        ),

        //title
        Container(
          child: Text(
            'Card List',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Color.fromRGBO(191, 83, 44, 1),
                fontWeight: FontWeight.w500,
                fontSize: 46,
                fontFamily: 'Roboto-Medium.ttf'),
          ),
          padding: EdgeInsets.only(left: 100, top: 60),
        ),

        //card 1
        Container(
          child: Image.asset('assets/images/card1.png'),
          padding: EdgeInsets.only(left: 24, top: 180),
        ),

        //card 2
        Container(
          child: Image.asset('assets/images/card2.png'),
          padding: EdgeInsets.only(left: 24, top: 340),
        ),

        Stack(
          children: [
            Container(
              child: Image.asset('assets/images/cardlistbg.png'),
              padding: EdgeInsets.only(left: 10, top: 640),
            ),
            Stack(
              children: [
                Container(
                  child: Text(
                    'Total',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Roboto-Medium.ttf',
                      color: Color.fromRGBO(191, 83, 44, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 68, top: 680),
                ),
                Container(
                  child: Text(
                    '22\$',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Roboto-Medium.ttf',
                      color: Color.fromRGBO(191, 83, 44, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 80, top: 720),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: order(),
                          isIos: true,
                          duration: Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Color.fromRGBO(237, 229, 218, 1),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      minimumSize: Size(140, 40),
                      backgroundColor: Color.fromRGBO(152, 81, 68, 1),
                    ),
                  ),
                  padding: EdgeInsets.only(left: 200, top: 700),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
