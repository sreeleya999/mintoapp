import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/register.dart';
import 'package:minto/selectres.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username=TextEditingController();

  var Password=TextEditingController();

  void getData() {
    print(username.text);
    print(Password.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.orange,

        ),
        body:Center(
            child: SingleChildScrollView(
              child: Column(

                children: [
                  Image.asset("assets/down.png"),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(color: Colors.black, fontSize: 28,fontFamily: 'cursive',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: "User name",hintText: "Enter your user name",
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: Password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: "Password",hintText: "Enter your password",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Selection()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo.shade900),
                      child: Text("LOGIN")),



TextButton(onPressed:(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>Register()));

    },
    child: Text("Don't have any account please login her!"))
  ],

              ),
            ),

        ),


    );
  }
}
