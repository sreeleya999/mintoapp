import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/login..dart';
import 'package:minto/viewproduct.dart';

class Res extends StatefulWidget {
  const Res({Key? key}) : super(key: key);

  @override
  State<Res> createState() => _ResState();
}

class _ResState extends State<Res> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange,
          actions: [
            Icon(Icons.person),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
        Padding(
        padding: EdgeInsets.only(
          bottom: 30,
        ),
      ),
      Card(
        elevation: 10,
        child: Column(
          children: <Widget>[
            Image.asset("assets/res1.jpg"),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),

              ],
            ),
          ],
        ),
        color: Colors.white,
      ),
            Text(
              "4th Restaurant",
              textAlign: TextAlign.left,

              style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'Font2',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
            ),
            Card(
              child: ListTile(

                  title: Text(" Beach Road, Mananchira, Kozhikode, Kerala - 673032, India"),
                  leading: Icon(Icons.location_on,color: Colors.black,),


              ),
            ),
            Card(
              child: ListTile(

                title: Text("7 AM - 10:30 PM "),
                leading: Icon(Icons.access_time,color: Colors.black,),


              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Productview()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo.shade900),
                child: Text("View Details")),

          ],
    ),
      ),
    );
  }
}
