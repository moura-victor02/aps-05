import 'package:flutter/material.dart';
import 'theme/theme_app.dart';
import 'view/home/home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppConstantsColor.materialButtonColor,
        fontFamily: 'Quicksand',
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: AppConstantsColor.materialButtonColor,
        ),
        scaffoldBackgroundColor: AppConstantsColor.backgroundColorPage,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppConstantsColor.materialButtonColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstantsColor.materialButtonColor,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: AppConstantsColor.materialButtonColor,
          secondary: AppConstantsColor.materialButtonColor,
        ),
      ),
      title: 'Aps-05',
      home: const DataAnalysisPage(),
    );
  }
}
