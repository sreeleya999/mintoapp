import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/product2.dart';
import 'package:minto/product3.dart';
import 'package:minto/product4.dart';
import 'package:minto/product5.dart';
import 'package:minto/product6.dart';

import 'package:minto/productview.dart';

import 'login..dart';

class Productview extends StatefulWidget {
  const Productview({Key? key}) : super(key: key);

  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange,
          actions: [
            Icon(Icons.person),
          ]
      ),
    body:
      Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
    Row(
    //ROW 1
    children: [
    Expanded(
      flex: 1,

      child: Container(

        height: 190,
        width: 140,
        child: InkWell(
            splashColor: Colors.green,
            onTap: ()
            {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Viewpro()),
              );
            },
            child: Column(
              children: <Widget>[
                Image.asset("assets/res7.jpg"),
                Text(
                  "Mandhi",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
                      fontFamily: 'cursive'),
                ),
              ],
            )

        ),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
        ),

      ),
    ),
    Expanded(
    flex: 1,
    child: Container(
    height: 190,
    width: 140,
    child: InkWell(
    splashColor: Colors.green,
    onTap: ()
    {
    Navigator.push(
    context, MaterialPageRoute(builder: (context) => Pro2()),
    );
    },
    child: Column(
      children: <Widget>[
      Image.asset("assets/res5.jpg"),
        Text(
          "BeefBiriyani",
          style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
              fontFamily: 'cursive'),
        ),
    ],
    )
    ),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
    border: Border.all(width: 1, color: Colors.grey),
    ),

    ),
    ),
    ]
    ),
    Row(
    //ROW 1
    children: [
    Expanded(
    flex: 1,
    child: Container(

    height: 190,
    width: 140,
    child: InkWell(
    splashColor: Colors.green,
    onTap: ()
    {
    Navigator.push(
    context, MaterialPageRoute(builder: (context) => Pro3()),
    );
    },
    child: Column(
    children: <Widget>[
    Image.asset("assets/res2.png"),
      Text(
        "Naked Bun",
        style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
            fontFamily: 'cursive'),
      ),
    ],
    )

    ),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
    border: Border.all(width: 1, color: Colors.grey),
    ),

    ),
    ),
      Expanded(
        flex: 1,
        child: Container(
          height: 190,
          width: 140,
          child: InkWell(
              splashColor: Colors.green,
              onTap: ()
              {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pro4()),
                );
              },
              child: Column(
                children: <Widget>[
                  Image.asset("assets/res15.jpg"),
              Text(
                "Veg Pizza",
                style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
                    fontFamily: 'cursive'),
              ),
                ],
              )
          ),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),

        ),
      ),

]
    ),
        Row(
          //ROW 1
            children: [
              Expanded(
                flex: 1,
                child: Container(

                  height: 190,
                  width: 140,
                  child: InkWell(
                      splashColor: Colors.green,
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Pro5()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/res6.jpg"),
                          Text(
                            "SeaFood",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
                                fontFamily: 'cursive'),
                          ),
                        ],
                      )

                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),

                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  height: 190,
                  width: 140,
                  child: InkWell(
                      splashColor: Colors.green,
                      onTap: ()
                      {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Pro6()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/res16.jpg"),
                          Text(
                            "Chicken Biriyani",
                            style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic,
                                fontFamily: 'cursive'),
                          ),
                        ],
                      )
                  ),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),

                ),
              ),

            ]
        ),


    ]
      ),
    );
  }
}

