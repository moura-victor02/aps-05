// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import '../model/chart.dart';
import '../utils/global.dart';

Widget listViewData() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: dadosFiltrados.length,
    itemBuilder: (BuildContext context, int index) {
      return buildChart(dadosFiltrados[index]);
    },
  );
}

Widget buildChart(String dataItem) {
  final List<String> parts = dataItem.split(': ');
  final String title = parts[0];
  final int value = int.parse(parts[1]);

  final List<charts.Series<ChartData, String>> series = [
    charts.Series(
      id: 'Data',
      data: [ChartData('Value', value)],
      domainFn: (ChartData data, _) => data.category,
      measureFn: (ChartData data, _) => data.value,
    ),
  ];

  return Card(
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
        Text(
          title == 'Indústria cresce' ? 'Crescimento Industrial' : title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: charts.BarChart(
            series,
            animate: true,
          ),
        ),
      ],
    ),
  );
}
