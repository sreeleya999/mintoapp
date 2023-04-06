import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minto/viewrestaurant.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  final List=[
    '4th Restaurant',' Keraleeyam Calicut','Coffee Beanz','Mezban','Salkaram','Adam','AdamsTeashop',
  ];
  final List2=[
    'Apr 6 2023','Apr 7 2023','jun 6 2023','Mar 7 2023',

  ];
  final List3=[
    '1 people','2 people','3 people','4 people',

  ];
  final List4=[
    'Table 1    2 seat available','Table 2    4 seat available','Table 3   7 seat available','Table 4    3 seat available',

  ];


  var SelectRestaurant=TextEditingController();
  void getData() {
    print(SelectRestaurant.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
    Image.asset("assets/sel.gif"),

        Padding(
        padding: const EdgeInsets.all(15.0),
        child: DropdownButtonFormField(
            hint: Text('Select Restaurant'),
            items:List.map((e) {
              return DropdownMenuItem(
                  value: e,
                  child:Text(e));
            }).toList(), onChanged: (value){}),
      ),

      Padding(
        padding: const EdgeInsets.all(15.0),
        child: DropdownButtonFormField(
            hint: Text('Date'),
            icon: Icon(
              Icons.calendar_month,
              color: Colors.black,
              size: 20.09,
            ),
            items:List2.map((e) {
              return DropdownMenuItem(
                  value: e,
                  child:Text(e));
            }).toList(), onChanged: (value){}),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: DropdownButtonFormField(
            hint: Text('Select People'),
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 20.09,
            ),
            items:List3.map((e) {
              return DropdownMenuItem(
                  value: e,
                  child:Text(e));
            }).toList(), onChanged: (value){}),
      ),

      Padding(
        padding: const EdgeInsets.all(15.0),
        child: DropdownButtonFormField(
            hint: Text('Book a Table  '),
            icon: Icon(
              Icons.table_bar_rounded,
              color: Colors.black,
              size: 20.09,
            ),
            items:List4.map((e) {
              return DropdownMenuItem(
                  value: e,
                  child:Text(e));
            }).toList(), onChanged: (value){}),
      ),


      ElevatedButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=>Res()),
        );
      },style: ElevatedButton.styleFrom(
          primary: Colors.indigo.shade900),
          child: Text("Let's Go")),

      const SizedBox(height: 15),
     ]

    )
    ),
      ),
    );
  }
}
