import 'package:flutter/material.dart';

class RadioTap extends StatefulWidget {
  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_body.png'),
          Text('إذاعة القرأن الكريم',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'El_Messiri',
                  color: Color(0XFF242424))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/Iconmetro_next.png'),
              Image.asset('assets/images/Iconawesome_play.png'),
              RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset('assets/images/Iconmetro_next.png')),
            ],
          )
        ],
      ),
    );
  }
}
