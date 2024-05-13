// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import '../../../theme/theme_app.dart';

PreferredSize? customAppBar(context) {
  final height = MediaQuery.of(context).size.height;

  return PreferredSize(
    preferredSize: Size.fromHeight(height * 0.07),
    child: AppBar(
        toolbarHeight: height * 0.08,
        backgroundColor: AppConstantsColor.darkTextColor,
        title: Text(
          'APS-05 -> Analise de dados',
          style: TextStyle(color: AppConstantsColor.lightTextColor),
        )),
  );
}
