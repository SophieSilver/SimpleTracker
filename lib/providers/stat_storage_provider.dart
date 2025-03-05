import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:so_simple_tracker/logging.dart';
import 'package:so_simple_tracker/model/stat.dart';
import 'package:so_simple_tracker/providers/database_provider.dart';
import 'package:so_simple_tracker/services/database_service.dart';

part '../generated/providers/stat_storage_provider.g.dart';

/// A read-only view into stat storage that allows querying, but not modifying the stored data.
///
/// In order to modify the data, use the statStorageProvider.notifier
class StatStorageView {
  final DatabaseService _db;

  StatStorageView._({required DatabaseService db}) : _db = db;

  Future<List<StatEntry>> queryStats() async {
    log.d("Retrieving stats from storage...");
    return await _db.queryStats();
  }
}

@riverpod
class StatStorage extends _$StatStorage {
  @override
  Future<StatStorageView> build() async {
    final db = await ref.read(databaseProvider.future);
    log.d("rebuilding statStorageProvider");
    return StatStorageView._(db: db);
  }

  Future<void> insertStat(StatRecord stat) async {
    final db = await ref.read(databaseProvider.future);
    await db.insertStat(stat);
    log.d("Inserted $stat into storage");
    // notifyListeners does not notify watchers,
    // so we just reassign to state to trigger a notification
    state = state;
  }
}
