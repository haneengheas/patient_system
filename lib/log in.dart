
import 'package:flutter/material.dart';
import 'package:patient_system/patient%202.dart';

import 'Diagram Screen.dart';
import 'login screen.dart';

class logScreen extends StatefulWidget {
  const logScreen({Key? key}) : super(key: key);
  @override
  _logScreenState createState() => _logScreenState();
}

class _logScreenState extends State<logScreen> {
  TextEditingController _nameTextEditing=TextEditingController();
  TextEditingController _phoneTextEditing=TextEditingController();
 TextEditingController _noTextEditing=TextEditingController();
 var one ="";
  void open(){
      if(_nameTextEditing.text=="Ahmad Hassan"&&_phoneTextEditing.text=="010123456"){
     done();
      }
   else if(_nameTextEditing.text=="Amr Mahmoud"&&_phoneTextEditing.text=="0107891011"){
        done1();
      }
      else{
        no();
      }
  }
  void done(){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => loginscreen()));
  }
  void done1(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => patient2()));
  }
  void no(){
     one="NO Correct Information";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "image/logo1.jpg",
                        width: 70,
                        height: 90,
                      ),
                    ),
                    Center(
                        child: Column(
                      children: [
                        Text(
                          "Integrated ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 255, 1)),
                        ),
                        Text(
                          "Clinic ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 255, 1)),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Text(
                          "Log",
                          style: TextStyle(
                              decorationThickness: 1,
                              //textBaseline: TextBaseline.alphabetic,
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(0, 0, 255, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                        Text(
                          " in ",
                          style: TextStyle(
                              decorationThickness: 1,
                              //textBaseline: TextBaseline.alphabetic,
                              decorationStyle: TextDecorationStyle.dashed,
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(0, 0, 255, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        controller:_nameTextEditing ,
                        decoration: InputDecoration(

                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _phoneTextEditing,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Center(
                      child: ElevatedButton(

                          onPressed: ()  {
                            setState(() {
                              open();
                            });
                          },
                          style: TextButton.styleFrom(

                              backgroundColor: Color.fromRGBO(0, 0, 255, 1),
                              minimumSize: Size(200, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          )),
                    ),
                       SizedBox(height: 10,),
                       Center(
                         child: Container(

                           child: Text("${one}",style: TextStyle(color: Colors.red,fontSize: 20),),
                         ),
                       )

                  ]),
            )));
  }
}
