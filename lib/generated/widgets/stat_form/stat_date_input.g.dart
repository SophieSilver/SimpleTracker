// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../widgets/stat_form/stat_date_input.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StatDateInput extends StatelessWidget {
  const StatDateInput({
    Key? key,
    required this.record,
  }) : super(key: key);

  final ValueNotifier<StatRecord> record;

  @override
  Widget build(BuildContext _context) => _statDateInput(
        _context,
        record: record,
      );
}

class StatDatePicker extends HookWidget {
  const StatDatePicker({
    Key? key,
    required this.record,
  }) : super(key: key);

  final ValueNotifier<StatRecord> record;

  @override
  Widget build(BuildContext _context) => _statDatePicker(
        _context,
        record: record,
      );
}
