import 'package:bag_app/utily/myText_theme.dart';
import 'package:bag_app/utily/mycolors.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Column(
            children: [
              Image(image: AssetImage("assets/image/baglogo.png"),width: 100,height: 100,),
              Text("Login to Active eCommerce",style: MyTextThemes.textHeading,),
              Padding(
                padding: const EdgeInsets.all(10.0),

                  child: TextFormField(
                    validator: (email){
                      if(email!.isEmpty || !email.contains("@")){
                        return "Email should be valid";
                      }else {
                        null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ), labelText: 'Email', hintText: "abc@gmail.com",

                    ),

                  ),

              ),
          Padding(
            padding: const EdgeInsets.all(10.0),
              child: TextFormField(

                obscuringCharacter: '*',

                validator: (paswrd){
                  if(paswrd!.isEmpty || paswrd.length<6){
                    return "Incorrect Password";
                  }else {
                    null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){

                  },
                      icon: Icon(Icons.visibility_off )),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                ),
              ),
          ),
          MaterialButton(onPressed: (){},
            child: Text("Login Now", style: MyTextThemes.buttonTextStyle),color: MyColors.buttonColors,
          padding:
          EdgeInsetsDirectional.only(top: 10,bottom: 10,end: 70, start: 70),
          )  ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("or create an account"),
              ),
              MaterialButton(onPressed: (){},child: Text("Sign Up", style: MyTextThemes.buttonTextStyle),color: MyColors.buttonColors,
                padding: EdgeInsetsDirectional.only(top: 10,bottom: 10,end: 80, start: 80),
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Login with"),
              ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2DxLE9XHPDHjBNQwyrGAJDR_uv4etRrNb0FG5VsGBCQ&s"),
                    height:40 , width: 40,),
                  Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXV_RdyFs9pC6yG7JRs2d7mVa3Z6nCacv9cz_ccyy36A&s"),
                    height:40 , width: 40,),
                  Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/f/f2/Logo_Twitter.png"),
                    height:40 , width: 40,),
                ],
              ),
            )
            ],
          ),
        ),
    );
  }
}