// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../widgets/stat_form.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StatForm extends HookWidget {
  const StatForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _statForm(_context);
}

class _FormSubmitButton extends HookConsumerWidget {
  const _FormSubmitButton({
    Key? key,
    required this.record,
  }) : super(key: key);

  final ValueNotifier<StatRecord> record;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      __formSubmitButton(
        _context,
        _ref,
        record: record,
      );
}
