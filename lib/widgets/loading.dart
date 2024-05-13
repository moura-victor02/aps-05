// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rede_flutter/theme/theme_app.dart';

void loadingPopUp(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: AppConstantsColor.lightTextColor,
    builder: (BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Center(
          child: SizedBox(
            width: width,
            height: height * 0.9,
            child: Lottie.asset('assets/animation/loading.json'),
          ),
        ),
      );
    },
  );
}
