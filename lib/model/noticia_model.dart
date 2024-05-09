import 'package:flutter/material.dart';

class NoticiasData extends ChangeNotifier {
  String titulo;
  String introducao;

  NoticiasData({required this.titulo, required this.introducao});
}
