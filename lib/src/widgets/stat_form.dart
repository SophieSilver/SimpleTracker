import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/src/model.dart';
import '/src/providers.dart';
import 'stat_form/numeric_value_input.dart';
import 'stat_form/stat_date_input.dart';

part '../generated/widgets/stat_form.g.dart';

@hwidget
Widget _statForm(BuildContext context) {
  final record = useValueNotifier(StatRecord.defaultNow());

  return Form(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    child: Container(
      constraints: const BoxConstraints(maxWidth: 350.0),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        spacing: 20.0,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            spacing: 10.0,
            children: [
              StatDateInput(record: record),
              NumericValueInput(record: record),
            ],
          ),
          _FormSubmitButton(record: record),
        ],
      ),
    ),
  );
}

@hcwidget
Widget __formSubmitButton(
  BuildContext context,
  WidgetRef ref, {
  required ValueNotifier<StatRecord> record,
}) {
  return Align(
    alignment: Alignment.center,
    child: FilledButton(
      onPressed: () async {
        final form = Form.of(context);
        if (!form.validate()) {
          return;
        }
        form.save();

        ref.read(statStorageProvider.notifier).insertStat(record.value);

        if (context.mounted) {
          form.reset();
          _showSubmittedSnackbar(context);
        }
      },
      child: const Text("Submit"),
    ),
  );
}

void _showSubmittedSnackbar(BuildContext context) {
  const snackBar = SnackBar(
    behavior: SnackBarBehavior.fixed,
    showCloseIcon: true,
    content: Text("Submitted successfully"),
  );

  final messenger = ScaffoldMessenger.of(context);
  messenger.clearSnackBars();
  messenger.showSnackBar(
    snackBar,
  );
}
