import 'package:flutter/material.dart' as flutter;
import 'package:so_simple_tracker/widgets/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'logging.dart' as logging;

void main() {
  logging.initLogger();
  flutter.runApp(const ProviderScope(child: App()));
}
