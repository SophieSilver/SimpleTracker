import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_tracker/logging.dart';
export 'utils/result.dart';

extension RethrowError<T> on AsyncValue<T> {
  void rethrowError() {
    if (this case AsyncError(:final error, :final stackTrace)) {
      logger.e("Unhandled error in AsyncValue: $error\n$stackTrace");
      throw error;
    }
  }
}
