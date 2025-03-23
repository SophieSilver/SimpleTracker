import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simple_tracker/logging.dart';
import 'package:simple_tracker/services/database_service.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as p;

part '../generated/providers/database_provider.g.dart';

const dbName = "soSimpleCounter.db";

/// Provides direct level access to the database service.
/// 
/// Note that the database service does not have a mechanism
/// for listening to updates. 
/// Consider wrapping this provider in another object,
/// if you need to subscribe to updates in the stored data
@Riverpod(keepAlive: true)
Future<DatabaseService> database(Ref ref) async {
  final dbDirectory = await path_provider.getApplicationSupportDirectory();
  final fullDbPath = p.join(dbDirectory.path, dbName);

  final db = await DatabaseService.init(dbPath: fullDbPath);
  logger.i("Opened database at $fullDbPath");

  ref.onDispose(() {
    logger.i("Closed database at $fullDbPath");
    db.close();
  });

  return db;
}
