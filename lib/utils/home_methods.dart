import 'package:flutter/material.dart';

import '../data/get_data.dart';
import 'analise/analise_data.dart';
import 'global.dart';

getList(context) async {
  dynamic dataNoticias = await getData(context,urlPadrao);
  dynamic analysisResult = await analyzeData(dataNoticias);
  dadosFiltrados = analysisResult;
  Navigator.of(context).pop();
}