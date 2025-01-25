import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:so_simple_tracker/logging.dart';
import 'package:so_simple_tracker/model/stat.dart';
import 'package:so_simple_tracker/providers/database_provider.dart';

part '../generated/providers/storage_provider.g.dart';

@riverpod
class Storage extends _$Storage {
  @override
  Future<void> build() async {}

  Future<void> insertStat(StatRecord stat) async {
    final db = await ref.read(databaseProvider.future);
    await db.insertStat(stat);
    log.d("Inserted $stat into storage");
  }
}
