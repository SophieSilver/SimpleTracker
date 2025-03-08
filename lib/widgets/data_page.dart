import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:so_simple_tracker/widgets/data_page/stat_list.dart';

part '../generated/widgets/data_page.g.dart';

@hwidget
Widget _dataPage(BuildContext context) {
  return Container(
    constraints: const BoxConstraints(maxWidth: 400.0),
    margin: const EdgeInsets.all(20.0),
    child: const Column(
      children: [
        Expanded(
          child: StatList(),
        ),
      ],
    ),
  );
}
