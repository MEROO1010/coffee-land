import 'package:coffee_land/screens/cappuccino.dart';
import 'package:coffee_land/screens/cardlist.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
          padding: EdgeInsets.only(bottom: 300),
          width: 800,
          height: 800,
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
          padding: EdgeInsets.only(left: 10, top: 40),
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
    return Stack(
      children: [
        MaterialApp(
            home: Container(
          child: Image.asset('assets/images/text.png'),
          padding: EdgeInsets.only(left: 20, top: 300),
        )),
        RatingBar.builder(
          initialRating: 4.5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.only(top: 500, left: 40),
          itemSize: 18,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: cardlist(),
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
                borderRadius: new BorderRadius.circular(20.0),
              ),
              minimumSize: Size(100, 40),
              backgroundColor: Color.fromRGBO(152, 81, 68, 1),
            ),
          ),
          padding: EdgeInsets.only(top: 700, left: 220),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Text(
              '10\$',
              style: TextStyle(
                color: Color.fromRGBO(237, 229, 218, 1),
              ),
            ),
            style: TextButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              minimumSize: Size(100, 40),
              backgroundColor: Color.fromRGBO(190, 83, 44, 1),
            ),
          ),
          padding: EdgeInsets.only(top: 700, left: 80),
        ),
      ],
    );
  }
}
