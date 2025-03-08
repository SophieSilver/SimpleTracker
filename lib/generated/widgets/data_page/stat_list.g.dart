// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../widgets/data_page/stat_list.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class StatListItem extends HookWidget {
  const StatListItem(
    this.entry, {
    Key? key,
  }) : super(key: key);

  final StatEntry entry;

  @override
  Widget build(BuildContext _context) => _statListItem(
        _context,
        entry,
      );
}

class StatListView extends HookConsumerWidget {
  const StatListView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      _statListView(
        _context,
        _ref,
      );
}

class StatListHeader extends HookWidget {
  const StatListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _statListHeader(_context);
}

class StatList extends HookWidget {
  const StatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _statList(_context);
}
