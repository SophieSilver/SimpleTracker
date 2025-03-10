import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/utils/result.freezed.dart';

@Freezed(
  map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
)
sealed class Result<T, E> with _$Result<T, E> {
  const factory Result.ok(T value) = Ok;
  const factory Result.err(E error, [StackTrace? stackTrace]) = Err;
}

extension ResultExt<T, E> on Result<T, E> {
  T unwrap() {
    return switch (this) {
      Ok(:final value) => value,
      Err(:final Object error) => throw error,
    };
  }

  Result<U, E> map<U>(U Function(T) f) {
    return switch (this) {
      Ok(:final value) => Ok(f(value)),
      Err(:final error, :final stackTrace) => Err(error, stackTrace)
    };
  }

  static Result<T, Exception> tryFn<T>(T Function() f) {
    try {
      return Ok(f());
    } on Exception catch (error, stackTrace) {
      return Err(error, stackTrace);
    }
  }
}
