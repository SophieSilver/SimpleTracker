import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import '/widgets.dart';

part '../generated/widgets/track_page.g.dart';

@swidget
Widget _trackPage() {
  return Container(
    alignment: Alignment.topCenter,
    padding: const EdgeInsets.only(top: 40.0),
    child: const StatForm(),
  );
}
