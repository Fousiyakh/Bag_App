import 'dart:async';

import 'package:bag_app/database/local%20storage/sqflife/task%20manger/view/task%20home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class TaskSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TaskHome()));
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset("assets/animation/Animation - 1715575397778.json"))
    );
  }
}

