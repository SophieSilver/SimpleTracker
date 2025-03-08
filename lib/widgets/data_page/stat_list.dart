import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:so_simple_tracker/model/stat.dart';
import 'package:so_simple_tracker/providers/stat_provider.dart';
import 'package:so_simple_tracker/utils.dart';

part '../../generated/widgets/data_page/stat_list.g.dart';

// TODO: deletion

@hwidget
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
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
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
        Flexible(
          flex: 5,
          fit: FlexFit.tight,
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            alignment: Alignment.centerLeft,
            child:
                Text(numText, overflow: TextOverflow.ellipsis, softWrap: false),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
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

@hcwidget
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
