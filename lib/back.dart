import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bac extends StatefulWidget {
  const Bac({Key? key}) : super(key: key);

  @override
  State<Bac> createState() => _BacState();
}

class _BacState extends State<Bac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/res5.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
