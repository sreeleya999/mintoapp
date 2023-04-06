import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login..dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name=TextEditingController();

  var Password=TextEditingController();
  var ConfirmPassword=TextEditingController();
  void getData(){
    print(name.text);
    print(Password.text);
    print(ConfirmPassword.text);}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:Colors.orange,

        ),
    body:
    Center(
        child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    children: [


      Text(
        'Create An Account',
        style: TextStyle(color: Colors.black, fontSize: 28,fontFamily: 'cursive',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: name,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
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
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "Password",hintText: "Enter your password",
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
    controller: ConfirmPassword,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    ),
    labelText: "Confirm Password",hintText: "Enter your password again",
    ),
    ),
    ),


      ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo.shade900),
          child: Text("SIGNUP")),


    ],
    )
    )
    );
  }
}
