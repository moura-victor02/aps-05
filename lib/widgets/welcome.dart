// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:rede_flutter/theme/theme_app.dart';
import 'package:lottie/lottie.dart';


Widget welcome() {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: AppConstantsColor.lightTextColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 7,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sejam bem vindos!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            'Este programa tem como propósito realizar a busca por tópicos relevantes do momento e, com base nos resultados obtidos, apresentar ao usuário, por meio de gráficos, as respectivas porcentagens de cada tema.',
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(height: 10), // Espaçamento entre os textos
        Text(
          'Espero que tenham uma ótima experiência. 👍',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    ),
  );
}

animation(context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

  return SizedBox(
    width: width,
    height: height * 0.6,
    child: Lottie.asset('assets/animation/search.json'),
  );
}
