import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        Row(
          children: [
            Container(
              child: TextButton(onPressed: () {}, child: Text('Cappuccino')),
              padding: EdgeInsets.only(left: 20, top: 220),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Latte')),
              padding: EdgeInsets.only(left: 20, top: 220),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Espresso')),
              padding: EdgeInsets.only(left: 20, top: 220),
            ),
            Container(
              child: TextButton(onPressed: () {}, child: Text('Mocha')),
              padding: EdgeInsets.only(left: 20, top: 220),
            )
          ],
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
        GNav(
            rippleColor:
                Colors.amberAccent, // tab button ripple color when pressed
            hoverColor: Colors.yellow, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: Colors.black, width: 1), // tab button border
            tabBorder:
                Border.all(color: Colors.grey, width: 1), // tab button border
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 900), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.purple, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                Colors.purple.withOpacity(0.1), // selected tab background color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabMargin: EdgeInsets.only(top: 700, left: 10),
            // navigation bar padding
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                margin: EdgeInsets.only(left: 10, top: 700),
              ),
              GButton(
                icon: Icons.car_repair_rounded,
                text: 'Likes',
                margin: EdgeInsets.only(right: 8, top: 700),
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                margin: EdgeInsets.only(right: 8, top: 700),
              ),
              GButton(
                icon: Icons.settings,
                text: 'Profile',
                margin: EdgeInsets.only(right: 8, top: 700),
              )
            ]),
      ],
    );
  }
}
