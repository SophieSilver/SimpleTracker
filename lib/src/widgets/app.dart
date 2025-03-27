import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import '/src/widgets.dart';

part '../generated/widgets/app.g.dart';

@swidget
Widget _app(BuildContext context) {
  return MaterialApp(
    title: "SimpleTracker",
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    theme: ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo.shade900,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    ),
    home: const Home(),
  );
}
