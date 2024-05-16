import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'data/get_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> textos = [
    "A sustentabilidade é importante para o nosso futuro.",
    "O desmatamento na região continua a aumentar.",
    "A melhora na economia é visível.",
    "A crise econômica está afetando muitas pessoas negativamente."
  ];

  int totalPositivo = 0;
  int totalNegativo = 0;

  Future<void> contarOcorrencias() async {
    final url = 'http://127.0.0.1:5000/contar_ocorrencias';
    final response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode({"textos": textos}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        totalPositivo = data['positivo'];
        totalNegativo = data['negativo'];
      });
    } else {
      throw Exception('Erro ao contar ocorrências');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contagem de Ocorrências"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                getDataia(context, 'http://127.0.0.1:5000/contar_ocorrencias', textos);
              },
              child: Text("Contar Ocorrências"),
            ),
            SizedBox(height: 20),
            Text("Total de ocorrências positivas: $totalPositivo"),
            Text("Total de ocorrências negativas: $totalNegativo"),
          ],
        ),
      ),
    );
  }
}

/*void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppConstantsColor.lightTextColor,
        fontFamily: 'Quicksand',
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: AppConstantsColor.lightTextColor,
        ),
        scaffoldBackgroundColor: AppConstantsColor.backgroundColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppConstantsColor.lightTextColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstantsColor.lightTextColor,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: AppConstantsColor.lightTextColor,
          secondary: AppConstantsColor.lightTextColor,
        ),
      ),
      title: 'Aps-05',
      home: const DataAnalysisPage(),
    );
  }
}
*/
val(value) {
  value * 2.5;
  return value * 2;
}
