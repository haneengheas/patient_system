import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatefulWidget {
  List<AcretinData>? list;
  Charts({Key? key}) : super(key: key);

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  late List<AcretinData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 500,
                child: SfCircularChart(
                  legend: Legend(
                      isVisible: true,
                      overflowMode: LegendItemOverflowMode.wrap),
                  tooltipBehavior: _tooltipBehavior,
                  series: [
                    PieSeries<AcretinData, String>(
                      dataSource: _chartData,
                      xValueMapper: (AcretinData data, _) => data.week,
                      yValueMapper: (AcretinData data, _) => data.acretin,
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                      ),
                      enableTooltip: true,
                    )
                  ],
                ))));
  }

  List<AcretinData> getChartData() {
    final List<AcretinData> ChartData = [
      AcretinData("week1", 1.1),
      AcretinData("week2", .8),
      AcretinData("week3", .5),
      AcretinData("week4", .3),
    ];

    return ChartData;
  }
}

class AcretinData {
  final String week;
  final double acretin;

  AcretinData(
    this.week,
    this.acretin,
  );
}
