import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/logging.dart';
import '/model.dart';
import '/services.dart';
import 'database_provider.dart';

part '../generated/providers/stat_storage_provider.g.dart';

/// A read-only view into stat storage that allows querying, but not modifying the stored data.
///
/// In order to modify the data, use the statStorageProvider.notifier
class StatStorageView {
  final DatabaseService _db;

  StatStorageView._({required DatabaseService db}) : _db = db;

  Future<List<StatEntry>> queryStats() async {
    logger.d("Retrieving stats from storage...");
    return await _db.queryStats();
  }
}

/// A provider for StatStorage,
///
/// Returns an object that can be used to query the stats
@riverpod
class StatStorage extends _$StatStorage {
  @override
  Future<StatStorageView> build() async {
    final db = await ref.read(databaseProvider.future);
    logger.d("building statStorageProvider");
    return StatStorageView._(db: db);
  }

  Future<void> insertStat(StatRecord stat) async {
    final db = await ref.read(databaseProvider.future);
    await db.insertStat(stat);
    logger.d("Inserted $stat into storage");
    // notifyListeners does not notify watchers,
    // so we just reassign to state to trigger a notification
    state = state;
  }
}
