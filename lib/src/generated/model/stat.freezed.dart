// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../model/stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatEntry {
  int get id => throw _privateConstructorUsedError;
  StatRecord get stat => throw _privateConstructorUsedError;

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatEntryCopyWith<StatEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatEntryCopyWith<$Res> {
  factory $StatEntryCopyWith(StatEntry value, $Res Function(StatEntry) then) =
      _$StatEntryCopyWithImpl<$Res, StatEntry>;
  @useResult
  $Res call({int id, StatRecord stat});

  $StatRecordCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatEntryCopyWithImpl<$Res, $Val extends StatEntry>
    implements $StatEntryCopyWith<$Res> {
  _$StatEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatRecord,
    ) as $Val);
  }

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatRecordCopyWith<$Res> get stat {
    return $StatRecordCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatEntryImplCopyWith<$Res>
    implements $StatEntryCopyWith<$Res> {
  factory _$$StatEntryImplCopyWith(
          _$StatEntryImpl value, $Res Function(_$StatEntryImpl) then) =
      __$$StatEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, StatRecord stat});

  @override
  $StatRecordCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatEntryImplCopyWithImpl<$Res>
    extends _$StatEntryCopyWithImpl<$Res, _$StatEntryImpl>
    implements _$$StatEntryImplCopyWith<$Res> {
  __$$StatEntryImplCopyWithImpl(
      _$StatEntryImpl _value, $Res Function(_$StatEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stat = null,
  }) {
    return _then(_$StatEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatRecord,
    ));
  }
}

/// @nodoc

class _$StatEntryImpl implements _StatEntry {
  _$StatEntryImpl({required this.id, required this.stat});

  @override
  final int id;
  @override
  final StatRecord stat;

  @override
  String toString() {
    return 'StatEntry(id: $id, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, stat);

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatEntryImplCopyWith<_$StatEntryImpl> get copyWith =>
      __$$StatEntryImplCopyWithImpl<_$StatEntryImpl>(this, _$identity);
}

abstract class _StatEntry implements StatEntry {
  factory _StatEntry({required final int id, required final StatRecord stat}) =
      _$StatEntryImpl;

  @override
  int get id;
  @override
  StatRecord get stat;

  /// Create a copy of StatEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatEntryImplCopyWith<_$StatEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatRecord {
  DateTime get dateTime => throw _privateConstructorUsedError;
  double get numericValue => throw _privateConstructorUsedError;

  /// Create a copy of StatRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatRecordCopyWith<StatRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatRecordCopyWith<$Res> {
  factory $StatRecordCopyWith(
          StatRecord value, $Res Function(StatRecord) then) =
      _$StatRecordCopyWithImpl<$Res, StatRecord>;
  @useResult
  $Res call({DateTime dateTime, double numericValue});
}

/// @nodoc
class _$StatRecordCopyWithImpl<$Res, $Val extends StatRecord>
    implements $StatRecordCopyWith<$Res> {
  _$StatRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? numericValue = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numericValue: null == numericValue
          ? _value.numericValue
          : numericValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatRecordImplCopyWith<$Res>
    implements $StatRecordCopyWith<$Res> {
  factory _$$StatRecordImplCopyWith(
          _$StatRecordImpl value, $Res Function(_$StatRecordImpl) then) =
      __$$StatRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, double numericValue});
}

/// @nodoc
class __$$StatRecordImplCopyWithImpl<$Res>
    extends _$StatRecordCopyWithImpl<$Res, _$StatRecordImpl>
    implements _$$StatRecordImplCopyWith<$Res> {
  __$$StatRecordImplCopyWithImpl(
      _$StatRecordImpl _value, $Res Function(_$StatRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? numericValue = null,
  }) {
    return _then(_$StatRecordImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numericValue: null == numericValue
          ? _value.numericValue
          : numericValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$StatRecordImpl extends _StatRecord {
  _$StatRecordImpl({required this.dateTime, required this.numericValue})
      : super._();

  @override
  final DateTime dateTime;
  @override
  final double numericValue;

  @override
  String toString() {
    return 'StatRecord(dateTime: $dateTime, numericValue: $numericValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatRecordImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.numericValue, numericValue) ||
                other.numericValue == numericValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime, numericValue);

  /// Create a copy of StatRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatRecordImplCopyWith<_$StatRecordImpl> get copyWith =>
      __$$StatRecordImplCopyWithImpl<_$StatRecordImpl>(this, _$identity);
}

abstract class _StatRecord extends StatRecord {
  factory _StatRecord(
      {required final DateTime dateTime,
      required final double numericValue}) = _$StatRecordImpl;
  _StatRecord._() : super._();

  @override
  DateTime get dateTime;
  @override
  double get numericValue;

  /// Create a copy of StatRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatRecordImplCopyWith<_$StatRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
