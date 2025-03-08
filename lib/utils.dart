import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:so_simple_tracker/logging.dart';

extension RethrowError<T> on AsyncValue<T> {
  void rethrowError() {
    if (this case AsyncError(:final error, :final stackTrace)) {
      log.e("Unhandled error in AsyncValue: $error\n$stackTrace");
      throw error;
    }
  }
}
