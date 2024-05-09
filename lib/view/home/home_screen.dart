import 'package:flutter/material.dart';

import '../../data/get_data.dart';
import '../../utils/analise/analise_data.dart';
import '../../utils/global.dart';

class DataAnalysisPage extends StatefulWidget {
  const DataAnalysisPage({super.key});



  @override
  _DataAnalysisPageState createState() => _DataAnalysisPageState();
}

class _DataAnalysisPageState extends State<DataAnalysisPage> {
  TextEditingController _dataInputController = TextEditingController();
  String _analysisResult = '';

  @override
  void dispose() {
    _dataInputController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Análise de Dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _dataInputController,
              decoration: const InputDecoration(
                labelText: 'Insira os dados',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed:() async {
                dynamic dataNoticias = await getData(urlPadrao); 
                analyzeData(dataNoticias);
              }, 
              child: const Text('Analisar'),
            ),
            const SizedBox(height: 16.0),
            Text(
              _analysisResult,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
