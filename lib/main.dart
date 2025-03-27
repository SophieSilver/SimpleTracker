import 'package:flutter/material.dart' as flutter;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/logging.dart' as logging;
import '/widgets.dart';

void main() {
  logging.initLogger();
  flutter.runApp(const ProviderScope(child: App()));
}
