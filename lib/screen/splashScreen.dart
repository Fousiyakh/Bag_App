import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utily/myText_theme.dart';
import 'login deatails/login_page.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/baglogo.png"))
            )
          ),
          Positioned(
            top: 500,
              child: Text("V 1.0.1",style: MyTextThemes.bodyTextstyle1,))
        ],
      ) ,
    );
  }
}

