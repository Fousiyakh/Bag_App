import 'package:bag_app/database/local%20storage/sqflife/task%20manger/view/task%20home.dart';
import 'package:bag_app/database/local%20storage/sqflife/task%20manger/view/tasksplash.dart';
import 'package:bag_app/screen/Home_page.dart';
import 'package:bag_app/screen/splashScreen.dart';
import 'package:bag_app/screen/views/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
     ///home: SpashScreen(),
        home:  HomePage(),
     // home: TaskSplash(),

    );
  }

}


