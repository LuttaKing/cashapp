import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                height: screensize.height,
                width: screensize.width,
                
                child: Image.asset('assets/bg.png')),
            Positioned(
                top: 120,
                left: 60,child: Container(
                  height: 65,
                  width: 300,
                  color: Color(0xffffffff),
                  child: Center(child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3,top:2),
                        child: Container(
                            height: 45, child: Image.asset('assets/dollar.png')),
                      ),
                      Text(
                        '5,632.00',
                        style: TextStyle(
                            fontSize: 49.6,
                            fontFamily: 'Ptsans',
                            letterSpacing: 0.15),
                      ),
                    ],
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
