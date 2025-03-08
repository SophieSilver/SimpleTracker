import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:so_simple_tracker/widgets/data_page/stat_list.dart';

part '../generated/widgets/data_page.g.dart';

@hwidget
Widget _dataPage(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;

  return Column(
    children: [
      Expanded(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400.0),
          margin: const EdgeInsets.all(20.0),
          // decoration: BoxDecoration(

          //   border: Border.all(color: colorScheme.outline),
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          // clipBehavior: Clip.antiAlias,
          child: Material(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: colorScheme.inversePrimary, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            borderOnForeground: true,
            clipBehavior: Clip.antiAlias,
            child: const Column(
              children: [
                StatListHeader(),
                Expanded(child: StatListView()),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
