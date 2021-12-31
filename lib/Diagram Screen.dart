import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

import 'chart2.dart';


class Digramscreen extends StatefulWidget {

 Digramscreen({Key? key}) : super(key: key);
  @override
  _DigramscreenState createState() => _DigramscreenState();
}
class _DigramscreenState extends State<Digramscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child:
        SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:
          [
          Center(
          child: Image.asset(
          "image/logo1.jpg",
            width: 90,
            height: 60,
          ),
      ),
          Center(
              child: Column(
                children: [
                  Text(
                    "Integrated ",
                    style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 255, 1)),
                  ),
                  Text(
                    "Clinic ",
                    style: TextStyle(fontSize: 20, color:  Color.fromRGBO(0, 0, 255, 1)),
                  )
                ],
              )),

                 SizedBox(height: 30,),
                 Center(child: Text("Result",style: TextStyle(fontSize: 35,
                     fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 0, 255, 1) ),)),
            SizedBox(height: 20,),
                 Stack(
                   children: [
                     Container(
                         width: 400,
                         height: 600,
                      margin: const EdgeInsets.all(15),
                       padding: const EdgeInsets.all(15),
                         decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Colors.blueAccent)
                         ),
                         child: Charts()

                     ),

                     Padding(
                       padding: const EdgeInsets.only(left: 40),
                       child: Container(
                         width: 160,
                         height: 50,
                        color: Colors.white,
                        child: Center(child: Text("Creatinine",style: TextStyle(fontSize: 30,color:  Color.fromRGBO(0, 0, 255, 1)),)),
                       ),
                     )
                   ],
                 ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                    width: 400,
                    height: 500,
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child:SfCartesianChart(

                      title:ChartTitle(
                          text: " CHART",textStyle: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold)
                      ),
                      primaryXAxis: CategoryAxis(title: AxisTitle(text: "ALL WEEKS",textStyle: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold))),
                      primaryYAxis: CategoryAxis(title: AxisTitle(text: "RESULTS",textStyle: TextStyle(fontSize: 20,color: Colors.indigo,fontWeight: FontWeight.bold))),
                      series: <ChartSeries>[
                        ColumnSeries<SalesData,String>(
                          color: Colors.indigo,
                          dataSource:getColumnData(),
                          xValueMapper: (SalesData Sales,_)=>Sales.x,
                          yValueMapper: (SalesData Sales,_)=>Sales.y,
                          borderRadius: BorderRadius.circular(5),
                          isVisible: true,
                        )
                      ],
                    )


                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    width: 120,
                    height: 50,
                    color: Colors.white,
                    child: Center(child: Text("Bun",style: TextStyle(fontSize: 30,color:  Color.fromRGBO(0, 0, 255, 1)),)),
                  ),
                )
              ],
            )
            ]),
        )),
    );
  }


}

class SalesData{
  String x;
  double y;
  Color colorval;
  SalesData(this.x,this.y,this.colorval);
}
dynamic getColumnData(){
  List<SalesData>ColumnData=<SalesData>[
    SalesData("week1", 18,Colors.greenAccent),
    SalesData("week2", 22,Colors.redAccent),
    SalesData("week3", 24,Colors.red),
    SalesData("week4", 21,Colors.green),
  ];
  return ColumnData;


}