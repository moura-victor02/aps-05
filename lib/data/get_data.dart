// ignore_for_file: depend_on_referenced_packages
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rede_flutter/model/noticia_model.dart';

 getData(String url) async {
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

          noticias.add(
            NoticiasData(
              introducao: introducaoResponse,
              titulo: tituloResponse,
            ),
          );
        }
      }

      return noticias; 
    } else {
      throw Exception('Erro na requisição: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro durante a requisição: $e');
    rethrow; 
    
  }
}
