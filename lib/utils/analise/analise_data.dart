import '../../model/noticia_model.dart';

String analyzeData(List<NoticiasData> inputData) {
  List<String> keywords = [
    'barragens',
    'enchentes',
    'queimadas',
    'aterramentos',
    'desmoronamentos',
    'chuvas'
  ];

  Map<String, int> frequencyMap = {};

  for (NoticiasData noticia in inputData) {
    String texto = '${noticia.titulo} ${noticia.introducao}';

    for (String keyword in keywords) {
      int count =
          RegExp(keyword, caseSensitive: false).allMatches(texto).length;
      frequencyMap[keyword] ??= 0;
      frequencyMap[keyword] = frequencyMap[keyword]! + count;
    }
  }

  List<MapEntry<String, int>> sortedEntries = frequencyMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  String result = '';
  for (MapEntry<String, int> entry in sortedEntries) {
    result += '${entry.key}: ${entry.value}\n';
  }

  return result;
}
