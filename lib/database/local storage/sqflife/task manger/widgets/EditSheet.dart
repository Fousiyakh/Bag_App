import 'package:bag_app/database/local%20storage/sqflife/task%20manger/database%20pge/dbfunctions.dart';
import 'package:bag_app/utily/myText_theme.dart';
import 'package:flutter/material.dart';

final titleController = TextEditingController();
final contentController = TextEditingController();
showSheet(int? id, BuildContext context) {


  showModalBottomSheet(
    isScrollControlled: true,
  context: context,
      builder: (context){
   return Padding(
     padding: const EdgeInsets.only(
       top: 15,
       bottom: 15,
       left: 15,
       right: 15
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller: titleController,
             decoration: InputDecoration(
               hintText: "Title", border: OutlineInputBorder()
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(
               top: 15,
               bottom: 15,
               left: 15,
               right: 15),
           child: TextField(
             maxLines: 6,
             controller: contentController,
             decoration: InputDecoration(
               hintText: " Title", border: OutlineInputBorder()
             ),
           ),
         ),
         MaterialButton(color: Colors.black,
             shape: StadiumBorder(),
             onPressed: (){
          CreateNote();
             }, child: Text( id == null ? " Create Note" : "  Update Notes", style: MyTextThemes.buttonTextStyle,))
       ],
     ),
   );
  }
  );
}
void CreateNote(){

  String title = titleController.text;
  String content = contentController.text;
 // int id = SQLStorage.createNote(title, content)
}
