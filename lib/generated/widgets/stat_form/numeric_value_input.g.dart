// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../widgets/stat_form/numeric_value_input.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class NumericValueInput extends HookWidget {
  const NumericValueInput({
    Key? key,
    required this.record,
    this.isLast = false,
  }) : super(key: key);

  final ValueNotifier<StatRecord> record;

  final bool isLast;

  @override
  Widget build(BuildContext _context) => _numericValueInput(
        _context,
        record: record,
        isLast: isLast,
      );
}
