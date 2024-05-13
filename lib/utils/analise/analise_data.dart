import '../../model/noticia_model.dart';
import "package:rede_flutter/utils/global.dart";
analyzeData(List<NoticiasData> inputData) {
  Map<String, int> frequencyMap = {};

  // Iterar sobre os dados de entrada para calcular a frequência das palavras-chave
  for (NoticiasData noticia in inputData) {
    String texto = '${noticia.titulo} ${noticia.introducao}';
    
    for (String keyword in keywords) {
      int count = RegExp(keyword, caseSensitive: false).allMatches(texto).length; //Isso cria uma expressão regular (regex) usando a palavra-chave
      frequencyMap[keyword] ??= 0;
       frequencyMap[keyword] = frequencyMap[keyword]! + count;
    }
  }

  // Só converte o mapa em uma lista de valores, resumindo, so to iterando
  List<MapEntry<String, int>> resultadoSearch = frequencyMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

 
  List<String> resultList = [];
  for (MapEntry<String, int> entry in resultadoSearch) {
    resultList.add('${entry.key}: ${entry.value}');
  }

  return resultList;
}
