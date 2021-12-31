import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class waiting extends StatefulWidget {


  @override
  _waitingState createState() => _waitingState();
}

class _waitingState extends State<waiting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(20),
      child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      Center(
      child: Image.asset(
        "image/logo1.jpg",
        width: 70,
        height: 90,


      ),
    ),
    Center(child:Column(
    children: [
    Text("Integrated ",style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 0, 255, 1)),),
    Text("Clinic ",style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 0, 255, 1)))
    ]
    )),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(

                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 255, 1),
                    borderRadius: BorderRadius.circular(10)

                ),

                height: 100,
                width: 300,
                child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("waiting",
                      style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(width: 15,),
                    Icon(Icons.watch_later_outlined,size: 30,color: Colors.white,),

                  ],
                )),

              ),
            )




    ]
    )
    )
    );
  }
}
