import 'package:flutter/material.dart';

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
          backgroundColor: Color.fromARGB(237, 229, 218, 1),
        ),
        Container(
          child: Image.asset('assets/images/caupp1.png'),
        )
      ],
    );
  }
}
