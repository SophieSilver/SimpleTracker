import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/model.dart';
import 'stat_storage_provider.dart';

part '/generated/providers/stat_provider.g.dart';

/// Get stored stat entries
@riverpod
Future<List<StatEntry>> statEntries(Ref ref) async {
  final storage = await ref.watch(statStorageProvider.future);
  final stats = await storage.queryStats();
  return stats;
}
