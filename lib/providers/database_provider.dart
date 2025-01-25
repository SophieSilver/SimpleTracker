import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:so_simple_tracker/logging.dart';
import 'package:so_simple_tracker/services/database_service.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as p;

part '../generated/providers/database_provider.g.dart';

const dbName = "soSimpleCounter.db";

@Riverpod(keepAlive: true)
Future<DatabaseService> database(Ref ref) async {
  final dbDirectory = await path_provider
      .getApplicationSupportDirectory();
  final fullDbPath = p.join(dbDirectory.path, dbName);

  final db = await DatabaseService.init(dbPath: fullDbPath);
  log.i("Opened database at $fullDbPath"); 
  return db;
}
