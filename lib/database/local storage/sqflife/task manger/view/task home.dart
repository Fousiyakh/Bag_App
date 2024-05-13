import 'package:bag_app/utily/myText_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/EditSheet.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Create Your Notes",style: MyTextThemes.textHeading,),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
          onPressed: () => showSheet (null , context),   /// vera file access kittan context add cheynam
      child: Icon(Icons.note_add_outlined,color: Colors.red,),
      ),
    );
  }

}
