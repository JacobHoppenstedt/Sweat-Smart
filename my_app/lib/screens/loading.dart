// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/shared/navbar.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => NavBar(
          key: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double availableWidth = constraints.maxWidth;
            double availableHeight = constraints.maxHeight;

            double logoSize = availableWidth * 0.15;
            double titleFontSize = availableWidth * 0.15;
            double subtitleFontSize = availableWidth * 0.027;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/Sweat Smart Logo.png'),
                      width: logoSize,
                      height: logoSize,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SWEAT SMART',
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'BebasNeue',
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          'POWERED BY CHATGPT',
                          style: TextStyle(
                            fontSize: subtitleFontSize,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, availableHeight * 0.15, 0, 0),
                  child: Image(
                    image: AssetImage("assets/images/loading.gif"),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
