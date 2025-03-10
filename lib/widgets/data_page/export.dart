import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:so_simple_tracker/logging.dart';
import 'package:so_simple_tracker/model/stat.dart';
import 'package:so_simple_tracker/providers/stat_provider.dart';
import 'package:so_simple_tracker/services/export_service.dart';
import 'package:so_simple_tracker/utils.dart';

part '../../generated/widgets/data_page/export.g.dart';

@cwidget
Widget _exportButton(BuildContext context, WidgetRef ref) {
  return FilledButton(
    onPressed: () async {
      log.d("Exporting stats");
      final exportMethod = await showDialog<Export>(
        context: context,
        builder: (context) => const _ExportDialog(),
      );

      if (exportMethod == null && !context.mounted) {
        log.d("No export methods chosen or context unmounted, aborting export");
        return;
      }
      try {
        await _exportStats(
          context: context,
          ref: ref,
          exportMethod: exportMethod!,
        );
      } on Exception catch (error, stackTrace) {
        log.e("Error while exporting stats: $error\n$stackTrace");
        if (!context.mounted) {
          log.w("Context unmounted, rethrowing error");
          rethrow;
        }

        await showDialog(
          context: context,
          builder: (context) => _ErrorAlert(error),
        );
      }
    },
    child: const Text("Export"),
  );
}

@cwidget
Widget __exportDialog(BuildContext context) {
  final theme = Theme.of(context);
  final textTheme = theme.textTheme;

  return Dialog(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.0,
          children: [
            Text("Export", style: textTheme.titleLarge),
            const Text("Please, choose export method"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: supportedExportMethods
                  .map(
                    (exportMethod) => TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(exportMethod);
                      },
                      child: Text(exportMethod.name),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    ),
  );
}

Future<void> _exportStats({
  required BuildContext context,
  required WidgetRef ref,
  required Export exportMethod,
}) async {
  // do it immediately if the data is ready
  final entries = ref.read(statEntriesProvider);

  switch (entries) {
    case AsyncData(:final value):
      log.d("Stats ready immediately, exporting...");
      await exportMethod.export(value.map((entry) => entry.stat));

    case AsyncLoading():
      log.d("Stats not ready yet, waiting...");
      final result = await showDialog<Result<List<StatEntry>, Object>>(
        context: context,
        builder: (context) => _ExportLoading(exportMethod),
      );
      if (result == null) {
        log.i("Stat exporting cancelled");
        return;
      }

      final entries = result.unwrap();
      await exportMethod.export(entries.map((entry) => entry.stat));
      break;

    case AsyncError(:final error, :final stackTrace):
      log.e("Error while exporting stats: $error\n$stackTrace");
      throw error;
  }
  log.i("Stats exported successfully");
}

@cwidget
Widget __exportLoading(
    BuildContext context, WidgetRef ref, Export exportMethod) {
  final entries = ref.watch(statEntriesProvider);
  switch (entries) {
    case AsyncData(:final value):
      log.d("Stats loaded");
      Navigator.of(context).pop(Ok<List<StatEntry>, Object>(value));

    case AsyncError(:final error, :final stackTrace):
      log.w("Stats failed to load");
      Navigator.of(context).pop(
        Err<List<StatEntry>, Object>(error, stackTrace),
      );
  }

  return const Center(child: CircularProgressIndicator());
}

@swidget
Widget __errorAlert(BuildContext context, Object error) {
  final theme = Theme.of(context);
  final textTheme = theme.textTheme;
  final colorScheme = theme.colorScheme;

  return Dialog(
    child: Container(
      padding: const EdgeInsets.all(20.0),
      constraints: const BoxConstraints(maxWidth: 380.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15.0,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10.0,
            children: [
              const Icon(Icons.warning_rounded),
              Text("Error", style: textTheme.titleLarge),
            ],
          ),
          const Text(
            "Unexpected error occurred while trying to export the data.",
          ),
          Text(
            error.toString(),
            style: textTheme.bodyMedium?.copyWith(color: colorScheme.error),
          ),
        ],
      ),
    ),
  );
}
