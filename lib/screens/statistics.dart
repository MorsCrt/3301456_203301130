import 'package:carrental/widgets/Shared/linear_gradien_appbar.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);
  static String locationsStatistics = "/Statistics";

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  Map<String, double> dataMap = {
    "Mercedes": 1,
    "Tesla": 2,
    "Toyota": 1,
    "Lamborghini": 1,
    "Nissan": 1
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LnrGradiendAppBar(appBarText: "Statistics"),
      body: Center(
        child: PieChart(
          dataMap: dataMap,
          animationDuration: const Duration(seconds: 3),
          chartLegendSpacing: 32,
          chartRadius: MediaQuery.of(context).size.width / 1.85,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          centerText: "Car Types",
          legendOptions: const LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: true,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
      ),
    );
  }
}
