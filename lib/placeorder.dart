import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/check.dart';
import 'package:minto/login..dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange,
          actions: [
            Icon(Icons.person),
          ]
      ),
      body:Center(
    child: SingleChildScrollView(
    child: Column(

    children: [

          Text(
            'Enter Your Details',
            style: TextStyle(color: Colors.black, fontSize: 30,fontFamily: 'cursive',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

        Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            labelText: "Enter Your Name (Required)*",
hintText: "Enter Your Name (Required)*",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            labelText: "phone Number(Required)*",
            hintText: "phone Number(Required)*",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            labelText: "House No,Buliding Name(Required)*",
            hintText: "House No,Buliding Name(Required)* ",
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            labelText: "Road Name,Area,Colony (Required)*",
            hintText: "Road Name,Area,Colony (Required)*",
          ),
        ),
      ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.published_with_changes_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            label: const Text('Place Order'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash1()),
              );
            },
            style: ElevatedButton.styleFrom(
             primary: Colors.indigo.shade900,
            ),
          )



],
    )
    ),
      ),
    );
  }
}
