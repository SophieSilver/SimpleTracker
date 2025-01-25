import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'package:so_simple_tracker/widgets/app_page.dart';
import 'package:so_simple_tracker/widgets/home.dart';
import 'package:so_simple_tracker/widgets/track_page.dart';

part '../generated/widgets/app.g.dart';

@swidget
Widget _app() {
  return MaterialApp(
    title: "So Simple Tracker",
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
    home: Home(),
  );
}
