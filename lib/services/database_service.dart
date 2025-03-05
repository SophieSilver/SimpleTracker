import 'package:so_simple_tracker/model/stat.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

const currentVersion = 1;

class UnknownDatabaseVersionException implements Exception {
  @override
  String toString() {
    return "tried to create a database with an unknown version";
  }
}

Future<void> _onConfigure(Database db) async {
  await db.execute("PRAGMA journal_mode=WAL");
  await db.execute("PRAGMA foreign_keys=ON");
}

Future<void> _onCreate(Database db, int version) async {
  if (version != 1) {
    throw UnknownDatabaseVersionException();
  }

  await db.execute(
    """---sql
      CREATE TABLE IF NOT EXISTS Stats (
        id INTEGER PRIMARY KEY,
        timestamp INT NOT NULL,
        numeric_value REAL NOT NULL
      ) STRICT;
    """,
  );
  await db.execute(
    """---sql
      CREATE INDEX IF NOT EXISTS StatsTimestampIndex 
        ON Stats (timestamp);
    """,
  );
}

class DatabaseService {
  final Database _db;

  const DatabaseService._new(this._db);

  static Future<DatabaseService> init({required String dbPath}) async {
    sqfliteFfiInit();
    final db = await databaseFactoryFfi.openDatabase(
      dbPath,
      options: OpenDatabaseOptions(
        version: currentVersion,
        onConfigure: _onConfigure,
        onCreate: _onCreate,
      ),
    );

    return DatabaseService._new(db);
  }

  Future<void> insertStat(StatRecord stat) async {
    await _db.rawInsert(
      """
        INSERT INTO Stats (timestamp, numeric_value)
          VALUES (?, ?);
      """,
      [stat.timestamp, stat.numericValue],
    );
  }

  Future<List<StatEntry>> queryStats() async {
    final entries = await _db.rawQuery(
      """
        SELECT id, timestamp, numeric_value
          FROM Stats;
      """,
    );

    return entries
        .map(
          (entry) => StatEntry(
            id: entry["id"] as int,
            stat: StatRecord.withTimestamp(
              timestamp: entry["timestamp"] as int,
              numericValue: entry["numeric_value"] as double,
            ),
          ),
        )
        .toList();
  }

  Future<void> close() {
    return _db.close();
  }
}
