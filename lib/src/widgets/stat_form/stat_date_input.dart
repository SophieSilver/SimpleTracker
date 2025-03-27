import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';

import '/src/model.dart';

part '../../generated/widgets/stat_form/stat_date_input.g.dart';

@swidget
Widget _statDateInput(
  BuildContext context, {
  required ValueNotifier<StatRecord> record,
}) {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;
  final textStyle = theme.textTheme.bodyLarge?.copyWith(color: colorScheme.outline);

  return Container(
    // It seems like the Input container is 48 pixels high, so we use that size
    constraints: const BoxConstraints.tightFor(height: 48.0),
    padding: const EdgeInsets.only(left: 15.0, right: 3.0),
    decoration: BoxDecoration(
      border: Border.all(color: colorScheme.outline),
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Date", style: textStyle),
        StatDatePicker(record: record),
      ],
    ),
  );
}

@hwidget
Widget _statDatePicker(
  BuildContext context, {
  required ValueNotifier<StatRecord> record,
}) {
  // rebuild when datetime changes
  useListenableSelector(record, () => record.value.dateTime);

  final now = DateTime.now();

  return TextButton(
    onPressed: () {
      showDatePicker(
        context: context,
        firstDate: DateTime(now.year - 20),
        currentDate: record.value.dateTime,
        lastDate: DateTime(now.year + 20),
        locale: const Locale("en", "GB"), // use a normal date format
      ).then((newDateTime) {
        if (newDateTime != null) {
          record.value = record.value.copyWith(dateTime: newDateTime);
        }
      });
    },
    child: Row(
      spacing: 8.0,
      children: [
        Text(DateFormat("d MMMM y").format(record.value.dateTime)),
        const Icon(Icons.calendar_month, size: 20.0),
      ],
    ),
  );
}
