import 'package:flutter/material.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromRGBO(237, 229, 218, 1),
        ),
        Container(
          child: Text(
            'Your order conformed',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Roboto-Regular.ttf',
                fontWeight: FontWeight.w500,
                fontSize: 28,
                color: Color.fromRGBO(190, 83, 44, 1)),
          ),
          padding: EdgeInsets.only(left: 62, top: 100),
        ),
        Container(
          child: Image.asset('assets/images/thank_you.png'),
          padding: EdgeInsets.only(top: 250),
        ),
      ],
    );
  }
}
