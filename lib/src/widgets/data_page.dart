import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'data_page/stat_list.dart';
import 'data_page/export.dart';

part '../generated/widgets/data_page.g.dart';

@swidget
Widget _dataPage(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    child: Column(
      spacing: 20.0,
      children: [
        Expanded(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400.0),
            child: const StatList(),
          ),
        ),
        const ExportButton(),
      ],
    ),
  );
}
