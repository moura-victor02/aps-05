import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/theme_app.dart';
import '../utils/global.dart';
import '../utils/home_methods.dart';
import 'loading.dart';

Widget searchButton(context) {
  return Align(
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: () {
        loadingPopUp(context);
        getList(context);
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

Widget clearButton(context) {
  return Align(
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: () {
        dadosFiltrados.clear();
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
