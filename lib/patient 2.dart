
import 'package:flutter/material.dart';
import 'package:patient_system/waiting.dart';
import 'package:patient_system/week1screen2.dart';

import 'Diagram Screen.dart';
class patient2 extends StatefulWidget {
  const patient2({Key? key}) : super(key: key);

  @override
  _patient2State createState() => _patient2State();
}

class _patient2State extends State<patient2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
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

                Center(child:Text("Amr Mahmoud",style: TextStyle(fontSize: 30,
                    color: Color.fromRGBO(0, 0, 255, 1)),)),
                SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => waiting()));
                      },
                      child: Container(

                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(child: Text(" ADD NEW SIMPLE",style: TextStyle(color:Colors.white,fontSize: 17),)),
                      ),
                    ),
                    SizedBox(width: 45,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Digramscreen()));
                      },
                      child: Container(

                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(child: Text(" DIAGRAM ",style: TextStyle(color:Colors.white,fontSize: 20),)),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 35,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => week1patient2()));
                  },
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(" Week 1",style: TextStyle(color:Color.fromRGBO(0, 0, 255, 1),fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(" Week 2",style: TextStyle(color:Color.fromRGBO(0, 0, 255, 1),fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(" Week 3",style: TextStyle(color:Color.fromRGBO(0, 0, 255, 1),fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(" Week 4",style: TextStyle(color:Color.fromRGBO(0, 0, 255, 1),fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        )
    );
  }
}
