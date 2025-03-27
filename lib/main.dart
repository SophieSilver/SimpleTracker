import 'package:flutter/material.dart' as flutter;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'src/logging.dart' as logging;
import 'src/widgets.dart';

void main() {
  logging.initLogger();
  flutter.runApp(const ProviderScope(child: App()));
}
