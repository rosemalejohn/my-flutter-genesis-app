import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  final String title;

  SimpleLineChart(this.seriesList, {this.animate, this.title = 'Graph'});

  static List<charts.Series<LinearSales, int>> createLinearData(List<LinearSales> data) {
    return [
      new charts.Series<LinearSales, int>(
        id: 'Line graph',
        colorFn: (_, __) => CustomColor.primary,
        domainFn: (LinearSales data, _) => int.parse(data.label),
        measureFn: (LinearSales data, _) => data.value,
        data: data,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

}

class LinearSales {
  final String label;
  final double value;

  LinearSales(this.label, this.value);
}

class CustomColor extends charts.MaterialPalette {

  static const primary = const charts.Color(r: 242, g: 167, b: 39);

}
