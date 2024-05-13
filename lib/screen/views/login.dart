import 'package:bag_app/screen/Home_page.dart';
import 'package:bag_app/utily/myText_theme.dart';
import 'package:bag_app/utily/mycolors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRef extends StatefulWidget {
  const LoginRef({super.key});

  @override
  State<LoginRef> createState() => _LoginRefState();
}

class _LoginRefState extends State<LoginRef> {
  final emailcontroller = TextEditingController();
  final paswdcontroller = TextEditingController();

  late SharedPreferences preferences;
  late bool logedIn;

  void initstate() {
    chech_user_already_login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: MyTextThemes.bodyTextstyle,),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
                  labelText: "email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(),
                  labelText: "Password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: () {
              storedatalogin(emailcontroller.text, paswdcontroller.text);
            },
              child: Text("Login Now"), color: MyColors.buttonColor2,
              padding:
              EdgeInsetsDirectional.only(
                  top: 10, bottom: 10, end: 70, start: 70),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(
                    text: 'Not a  user ?',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const HomePage()));
                            },
                          text: 'Register Now',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))
                    ])),
          ),
        ],
      ),
    );
  }

  void storedatalogin(String email, String password) {
    preferences.setString("username", email);
    preferences.setBool("userloginIn", true);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Future<void> chech_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    logedIn = preferences.getBool('userloginIn') ?? false;
    if (logedIn == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}



