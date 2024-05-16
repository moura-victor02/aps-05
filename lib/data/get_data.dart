// ignore_for_file: depend_on_referenced_packages, avoid_print, unused_local_variable
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rede_flutter/model/noticia_model.dart';
      dynamic alldata = [];

getData(context, String url) async {
  try {
    final response = await http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<NoticiasData> noticias = [];
      final jsonData = jsonDecode(response.body);

      final List<dynamic> items = jsonData['items'];

      for (var item in items) {
        if (item is Map<String, dynamic>) {
          final String tituloResponse = item['titulo'] ?? '';
          final String introducaoResponse = item['introducao'] ?? '';
          
          alldata.add(
            {
              "titulo":
                  introducaoResponse,
              "texto":
                  tituloResponse,
              "categoria": "Meio Ambiente"
            },
          );
        }
      }
      String dataText = jsonEncode(alldata);
 String filePath = 'C:/aps-05/data.txt';

  // Escrever dados no arquivo
  File(filePath).writeAsString(dataText).then((File file) {
    print('Dados foram escritos com sucesso no arquivo $filePath');
  }).catchError((error) {
    print('Erro ao escrever os dados no arquivo: $error');
  });
      return noticias;
    } else {
      throw Exception('Erro na requisição: ${response.statusCode}');
    }
  } catch (e) {
    Navigator.of(context).pop();
    rethrow;
  }
}

getDataia(context, String url, textos) async {
  try {
    final response = await http.post(
       Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: json.encode({"textos": textos}),
    );

    if (response.statusCode == 200) {
      final List<NoticiasData> noticias = [];
      final jsonData = jsonDecode(response.body);

      final List<dynamic> items = jsonData['items'];

      for (var item in items) {
        if (item is Map<String, dynamic>) {
          final String tituloResponse = item['titulo'] ?? '';
          final String introducaoResponse = item['introducao'] ?? '';
          
          alldata.add(
            {
              "titulo":
                  introducaoResponse,
              "texto":
                  tituloResponse,
              "categoria": "Meio Ambiente"
            },
          );
        }
      }
      String dataText = jsonEncode(alldata);
 String filePath = 'C:/aps-05/data.txt';

  // Escrever dados no arquivo
  File(filePath).writeAsString(dataText).then((File file) {
    print('Dados foram escritos com sucesso no arquivo $filePath');
  }).catchError((error) {
    print('Erro ao escrever os dados no arquivo: $error');
  });
      return noticias;
    } else {
      throw Exception('Erro na requisição: ${response.statusCode}');
    }
  } catch (e) {
    Navigator.of(context).pop();
    rethrow;
  }
}
