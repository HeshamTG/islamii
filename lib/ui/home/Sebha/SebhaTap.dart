import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int tasbeehNumber = 0;

  String zekr = 'سبحان الله';

  int rotationNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              // alignment: Alignment(50, 50),
              children: [
                Positioned(
                  top: -40,
                  right: 95,
                  child: Image.asset(
                    'assets/images/head_of_sebha.png',
                    fit: BoxFit.fill,
                  ),
                ),
                InkWell(
                  onTap: () {
                    rotationNumber += 15;
                    if (tasbeehNumber == 33) {
                      zekr = 'الله اكبر';
                    }
                    if (tasbeehNumber == 66) {
                      zekr = 'الحمد لله';
                    }
                    if (tasbeehNumber == 100) {
                      zekr = 'سبحان الله';
                      tasbeehNumber = 0;
                    }
                    tasbeehNumber++;
                    ;
                    setState(() {});
                  },
                  child: new RotationTransition(
                      turns: new AlwaysStoppedAnimation(rotationNumber / 300),
                      child: Image.asset('assets/images/body_of_sebha.png')),
                ),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(
                color: Color(0xff242424),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFC9B496),
            ),
            width: 69,
            height: 81,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '$tasbeehNumber',
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                setState(() {});
                rotationNumber += 15;
                if (tasbeehNumber == 33) {
                  zekr = 'الله اكبر';
                }
                if (tasbeehNumber == 66) {
                  zekr = 'الحمد لله';
                }
                if (tasbeehNumber == 100) {
                  zekr = 'سبحان الله';
                  tasbeehNumber = 0;
                }
                tasbeehNumber++;
              },
              child: Text(
                zekr,
                style: TextStyle(fontSize: 25),
              )),
        ],
      ),
    );
  }
}
