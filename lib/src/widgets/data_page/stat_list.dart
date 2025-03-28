import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '/src/model.dart';
import '/src/providers.dart';
import '/src/utils.dart';

part '../../generated/widgets/data_page/stat_list.g.dart';

// TODO: deletion

@swidget
Widget _statListItem(BuildContext context, StatEntry entry) {
  final colorScheme = Theme.of(context).colorScheme;

  final dateText = DateFormat("dd MMM y").format(entry.stat.dateTime);
  final numValue = entry.stat.numericValue;
  final isWhole = numValue.truncateToDouble() == numValue;
  final isLarge = numValue >= 1e21;

  final numText =
      isWhole && !isLarge ? numValue.toInt().toString() : numValue.toString();

  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 1.0, color: colorScheme.surfaceContainerHigh),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0).copyWith(left: 10.0),
            alignment: Alignment.center,
            child: Text(
              dateText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            child:
                Text(numText, overflow: TextOverflow.ellipsis, softWrap: false),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 10.0),
            child: const SizedBox(),
          ),
        ),
      ],
    ),
  );
}

@cwidget
Widget _statListView(BuildContext context, WidgetRef ref) {
  final entries = ref.watch(statEntriesProvider);
  entries.rethrowError();

  return switch (entries) {
    AsyncLoading() => const Center(child: CircularProgressIndicator()),
    AsyncData(:final value) => ListView(
        children: value
            .map((entry) => StatListItem(entry, key: Key(entry.id.toString())))
            .toList(),
      ),
    _ => throw Exception(),
  };
}

@swidget
Widget _statListHeader(BuildContext context) {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;

  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: colorScheme.outlineVariant, width: 2.0),
      ),
      color: colorScheme.surfaceContainer,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0).copyWith(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // make everything before and after the text take up an equal amount of space
                // so that the text is centered
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.calendar_month,
                          color: theme.textTheme.bodyMedium?.color),
                      const SizedBox(width: 5.0)
                    ],
                  ),
                ),
                const Text(
                  "Date",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 10.0,
            ),
            child: Text(
              "Value",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Expanded(flex: 3, child: SizedBox()),
      ],
    ),
  );
}

@swidget
Widget _statList(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;

  return Material(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: colorScheme.inversePrimary, width: 2.0),
      borderRadius: BorderRadius.circular(20.0),
    ),
    borderOnForeground: true,
    color: colorScheme.surfaceContainerLowest,
    clipBehavior: Clip.antiAlias,
    child: const Column(
      children: [
        StatListHeader(),
        Expanded(child: StatListView()),
      ],
    ),
  );
}
