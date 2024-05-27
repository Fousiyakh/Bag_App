 import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

showsucessSnackbar(BuildContext context)=> showTopSnackBar(
  Overlay.of(context),
  CustomSnackBar.success(
    message:
    "Sucessfully created",
  ),
);

 showerrorSnackBar(BuildContext context)=>showTopSnackBar(
   Overlay.of(context),
   CustomSnackBar.error(
     message:
     "Something went wrong. ",
   ),
 );