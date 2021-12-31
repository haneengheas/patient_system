import 'package:flutter/material.dart';

import 'log in.dart';
class cover extends StatefulWidget {
  const cover({Key? key}) : super(key: key);

  @override
  _coverState createState() => _coverState();
}

class _coverState extends State<cover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "image/clinic.png",
              width: 200,
              height: 200,
            ),
          ),
          Center(
            child: Image.asset(
              "image/new.jpg",
              width: 400,
              height: 300,
            ),
          ),

          SizedBox(height: 20,),
          Center(child: Text("Your ALLMEDICAL HISTORY IN ONEPLACE",style: TextStyle(fontSize: 15),),),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => logScreen()));
            },
            child: Container(

              height: 40,
              width: 150,
              decoration: BoxDecoration(
                 border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(child: Text(" Get Started",style: TextStyle(color:Color.fromRGBO(0, 0, 255, 1),fontSize: 20),)),
            ),
          ),
        ],
      )
      ,
    );
  }
}
