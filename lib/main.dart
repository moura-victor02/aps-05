import 'package:flutter/material.dart';
import 'theme/theme_app.dart';
import 'view/home/home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppConstantsColor.lightTextColor,
        fontFamily: 'Quicksand',
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: AppConstantsColor.lightTextColor,
        ),
        scaffoldBackgroundColor: AppConstantsColor.backgroundColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppConstantsColor.lightTextColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstantsColor.lightTextColor,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: AppConstantsColor.lightTextColor,
          secondary: AppConstantsColor.lightTextColor,
        ),
      ),
      title: 'Aps-05',
      home: const DataAnalysisPage(),
    );
  }
}
