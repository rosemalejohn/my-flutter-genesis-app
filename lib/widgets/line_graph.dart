import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate});

  static List<charts.Series<dynamic, dynamic>> createLinearData(List<LinearSales> data) {
    return [
      new charts.Series<LinearSales, dynamic>(
        id: 'Sales',
        colorFn: (_, __) => CustomColor.primary,
        // colorFn: (_, __) => Palette,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
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
  final String year;
  final double sales;

  LinearSales(this.year, this.sales);
}

class CustomColor extends charts.MaterialPalette {

  static const primary = const charts.Color(r: 242, g: 167, b: 39);

}
