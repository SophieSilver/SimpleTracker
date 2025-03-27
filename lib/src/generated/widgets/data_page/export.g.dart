// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../widgets/data_page/export.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ExportButton extends ConsumerWidget {
  const ExportButton({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _exportButton(
        _context,
        _ref,
      );
}

class _ExportDialog extends ConsumerWidget {
  const _ExportDialog({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      __exportDialog(_context);
}

class _ExportLoading extends ConsumerWidget {
  const _ExportLoading(
    this.exportMethod, {
    Key? key,
  }) : super(key: key);

  final Export exportMethod;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      __exportLoading(
        _context,
        _ref,
        exportMethod,
      );
}

class _ErrorAlert extends StatelessWidget {
  const _ErrorAlert(
    this.error, {
    Key? key,
  }) : super(key: key);

  final Object error;

  @override
  Widget build(BuildContext _context) => __errorAlert(
        _context,
        error,
      );
}
