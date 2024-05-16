import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/get_data.dart';
import '../theme/theme_app.dart';
import '../utils/global.dart';
import '../utils/home_methods.dart';
import 'loading.dart';

Widget searchButton(context, attPage) {
  return Align(
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: () async {
         await loadingPopUp(context);
       await getList(context);
       attPage();
        save();
        alldata != '' ?save(): null;
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppConstantsColor.green,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'Analisar',
              style: TextStyle(
                color: AppConstantsColor.lightTextColor,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.check_circle,
              color: AppConstantsColor.lightTextColor,
            ),
            Spacer(),
          ],
        ),
      ),
    ),
  );
}

save() {
  String dataText = jsonEncode(alldata);

  // Caminho do arquivo de texto
  String filePath = 'C:/aps-05/data.txt';

  // Escrever dados no arquivo
  File(filePath).writeAsString(dataText).then((File file) {
    print('Dados foram escritos com sucesso no arquivo $filePath');
  }).catchError((error) {
    print('Erro ao escrever os dados no arquivo: $error');
  });
}

Widget clearButton(context, attPage) {
  return Align(
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: () {
        dadosFiltrados.clear();
        attPage();
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'Limpar',
              style: TextStyle(
                color: AppConstantsColor.lightTextColor,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              CupertinoIcons.trash,
              color: AppConstantsColor.lightTextColor,
            ),
            Spacer(),
          ],
        ),
      ),
    ),
  );
}
