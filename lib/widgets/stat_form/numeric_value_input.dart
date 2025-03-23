import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:simple_tracker/logging.dart';
import 'package:simple_tracker/model/stat.dart';

part '../../generated/widgets/stat_form/numeric_value_input.g.dart';

@hwidget
Widget _numericValueInput(
  BuildContext context, {
  required ValueNotifier<StatRecord> record,
  bool isLast = false,
}) {
  final theme = Theme.of(context);
  final textTheme = theme.textTheme;
  final colorScheme = theme.colorScheme;
  final focusNode = useFocusNode();

  return TextFormField(
    focusNode: focusNode,
    decoration: InputDecoration(
      // label: Text("Value"),
      border: const OutlineInputBorder(),
      prefix: Text(
        "Value",
        style: textTheme.bodyLarge?.copyWith(color: colorScheme.outline),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      // helper text takes up the space the error text would take up
      // this when the error text appears, it does not expand the widget
      helperText: " ",

      contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
    ),
    keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
    textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
    textAlign: TextAlign.end,
    inputFormatters: [
      // only allow numeric characters
      FilteringTextInputFormatter.allow(RegExp("[-+0-9\\.]")),
    ],
    onTapOutside: (_) {
      log.d("Tapped outside the text input, unfocusing");
      focusNode.unfocus();
    },
    validator: (input) {
      if (input == null || double.tryParse(input) == null) {
        return "Invalid number";
      }

      return null;
    },
    // only actually update the value on save
    onSaved: (text) {
      final parsed = text == null ? null : double.tryParse(text);
      if (parsed != null) {
        record.value = record.value.copyWith(numericValue: parsed);
      }
    },
  );
}
