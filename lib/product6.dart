import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/placeorder.dart';

class Pro6 extends StatefulWidget {
  const Pro6({Key? key}) : super(key: key);

  @override
  State<Pro6> createState() => _Pro6State();
}

class _Pro6State extends State<Pro6> {
  final List=[
    '1','2','3',
  ];
  var SelectRestaurant=TextEditingController();
  void getData() {
    print(SelectRestaurant.text);
  }
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
                    Image.asset("assets/res16.jpg"),
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
                "Chicken Biriyani",
                textAlign: TextAlign.left,

                style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'Font2',fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
              ),
              Card(
                child: ListTile(

                  title: Text("800/-"),
                  leading: Icon(Icons.currency_rupee,color: Colors.black,),

                ),
              ),
              Card(
                child: ListTile(

                  title: Text("Select Quantity"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButtonFormField(
                    hint: Text('Qty'),
                    items:List.map((e) {
                      return DropdownMenuItem(
                          value: e,
                          child:Text(e));
                    }).toList(), onChanged: (value){}),
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                  size: 24.0,
                ),
                label: const Text('Buy Now'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade900,
                ),
              )

            ]
        ),
      ),
    );
  }
}
