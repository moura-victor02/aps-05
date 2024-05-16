import 'package:flutter/material.dart';

class NoticiasData extends ChangeNotifier {
  String titulo;
  String introducao;
  String categoria;

  NoticiasData({required this.titulo, required this.introducao, required this.categoria});
}
