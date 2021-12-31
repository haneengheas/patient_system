import 'package:flutter/material.dart';
class week3 extends StatefulWidget {
  const week3({Key? key}) : super(key: key);

  @override
  _week3State createState() => _week3State();
}

class _week3State extends State<week3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(


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
                Text("Clinic ",style: TextStyle(fontSize: 20,color: Color.fromRGBO(0, 0, 255, 1)),)
              ],
            )),
            SizedBox(height: 30,),
            Center(child:Text("Ahmad Hassan",style: TextStyle(fontSize: 30,
                color: Color.fromRGBO(0, 0, 255, 1)),)),
            SizedBox(height: 20,),
            Container(
                width: 400,
                height: 440,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueAccent)
                ),
                child:Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("First Prescription :",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("20/10/2020",style: TextStyle(fontSize: 20,color: Colors.black45))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("blood analysis :",style: TextStyle(fontSize: 20,color: Colors.black)),
                        Text("20/10/2020",style: TextStyle(fontSize: 20,color: Colors.black45))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Creatinine:",style: TextStyle(fontSize: 20,color: Colors.black)),
                        Text("0.5",style: TextStyle(fontSize: 20,color: Colors.black45))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Bun :",style: TextStyle(fontSize: 20,color: Colors.black)),
                        Text("24",style: TextStyle(fontSize: 20,color: Colors.black45))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Urea Ratio :",style: TextStyle(fontSize: 20,color: Colors.black)),
                        Text("10",style: TextStyle(fontSize: 20,color: Colors.black45))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Status:",style: TextStyle(fontSize: 20,color: Colors.black)),
                        Text("Stable",style: TextStyle(fontSize: 20,color: Colors.green))
                      ],
                    )
                  ],
                )


            ),
          ],
        ),
      ),
    );
  }
}
