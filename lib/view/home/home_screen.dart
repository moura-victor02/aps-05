import 'package:flutter/material.dart';
import 'package:rede_flutter/theme/theme_app.dart';
import 'package:rede_flutter/widgets/graficos_data.dart';
import '../../utils/global.dart';
import '../../widgets/search_button.dart';
import '../../widgets/welcome.dart';
import 'widget/app_bar.dart';

class DataAnalysisPage extends StatefulWidget {
  const DataAnalysisPage({super.key});

  @override
  DataAnalysisPageState createState() => DataAnalysisPageState();
}

class DataAnalysisPageState extends State<DataAnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstantsColor.lightTextColor,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            welcome(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                searchButton(context),
                const SizedBox(width: 10),
                clearButton(context)
              ],
            ),
            dadosFiltrados.isNotEmpty ? listViewData() : animation(context),
          ],
        ),
      ),
    );
  }
}
