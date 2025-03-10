// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../utils/result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T, E> {}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res, Result<T, E>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res, $Val extends Result<T, E>>
    implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OkImplCopyWith<T, E, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<T, E> value, $Res Function(_$OkImpl<T, E>) then) =
      __$$OkImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$OkImplCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res, _$OkImpl<T, E>>
    implements _$$OkImplCopyWith<T, E, $Res> {
  __$$OkImplCopyWithImpl(
      _$OkImpl<T, E> _value, $Res Function(_$OkImpl<T, E>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$OkImpl<T, E>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OkImpl<T, E> implements Ok<T, E> {
  const _$OkImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T, $E>.ok(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<T, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<T, E, _$OkImpl<T, E>> get copyWith =>
      __$$OkImplCopyWithImpl<T, E, _$OkImpl<T, E>>(this, _$identity);
}

abstract class Ok<T, E> implements Result<T, E> {
  const factory Ok(final T value) = _$OkImpl<T, E>;

  T get value;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OkImplCopyWith<T, E, _$OkImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrImplCopyWith<T, E, $Res> {
  factory _$$ErrImplCopyWith(
          _$ErrImpl<T, E> value, $Res Function(_$ErrImpl<T, E>) then) =
      __$$ErrImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ErrImplCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res, _$ErrImpl<T, E>>
    implements _$$ErrImplCopyWith<T, E, $Res> {
  __$$ErrImplCopyWithImpl(
      _$ErrImpl<T, E> _value, $Res Function(_$ErrImpl<T, E>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ErrImpl<T, E>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrImpl<T, E> implements Err<T, E> {
  const _$ErrImpl(this.error, [this.stackTrace]);

  @override
  final E error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T, $E>.err(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrImpl<T, E> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrImplCopyWith<T, E, _$ErrImpl<T, E>> get copyWith =>
      __$$ErrImplCopyWithImpl<T, E, _$ErrImpl<T, E>>(this, _$identity);
}

abstract class Err<T, E> implements Result<T, E> {
  const factory Err(final E error, [final StackTrace? stackTrace]) =
      _$ErrImpl<T, E>;

  E get error;
  StackTrace? get stackTrace;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrImplCopyWith<T, E, _$ErrImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
