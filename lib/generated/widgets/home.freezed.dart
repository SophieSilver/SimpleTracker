// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../widgets/home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageDescription {
  IconData get activeIcon => throw _privateConstructorUsedError;
  IconData get inactiveIcon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Widget get child => throw _privateConstructorUsedError;

  /// Create a copy of PageDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageDescriptionCopyWith<PageDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDescriptionCopyWith<$Res> {
  factory $PageDescriptionCopyWith(
          PageDescription value, $Res Function(PageDescription) then) =
      _$PageDescriptionCopyWithImpl<$Res, PageDescription>;
  @useResult
  $Res call(
      {IconData activeIcon, IconData inactiveIcon, String title, Widget child});
}

/// @nodoc
class _$PageDescriptionCopyWithImpl<$Res, $Val extends PageDescription>
    implements $PageDescriptionCopyWith<$Res> {
  _$PageDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIcon = null,
    Object? inactiveIcon = null,
    Object? title = null,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      activeIcon: null == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      inactiveIcon: null == inactiveIcon
          ? _value.inactiveIcon
          : inactiveIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDescriptionImplCopyWith<$Res>
    implements $PageDescriptionCopyWith<$Res> {
  factory _$$PageDescriptionImplCopyWith(_$PageDescriptionImpl value,
          $Res Function(_$PageDescriptionImpl) then) =
      __$$PageDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IconData activeIcon, IconData inactiveIcon, String title, Widget child});
}

/// @nodoc
class __$$PageDescriptionImplCopyWithImpl<$Res>
    extends _$PageDescriptionCopyWithImpl<$Res, _$PageDescriptionImpl>
    implements _$$PageDescriptionImplCopyWith<$Res> {
  __$$PageDescriptionImplCopyWithImpl(
      _$PageDescriptionImpl _value, $Res Function(_$PageDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeIcon = null,
    Object? inactiveIcon = null,
    Object? title = null,
    Object? child = null,
  }) {
    return _then(_$PageDescriptionImpl(
      activeIcon: null == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      inactiveIcon: null == inactiveIcon
          ? _value.inactiveIcon
          : inactiveIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$PageDescriptionImpl implements _PageDescription {
  const _$PageDescriptionImpl(
      {required this.activeIcon,
      required this.inactiveIcon,
      required this.title,
      required this.child});

  @override
  final IconData activeIcon;
  @override
  final IconData inactiveIcon;
  @override
  final String title;
  @override
  final Widget child;

  @override
  String toString() {
    return 'PageDescription(activeIcon: $activeIcon, inactiveIcon: $inactiveIcon, title: $title, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDescriptionImpl &&
            (identical(other.activeIcon, activeIcon) ||
                other.activeIcon == activeIcon) &&
            (identical(other.inactiveIcon, inactiveIcon) ||
                other.inactiveIcon == inactiveIcon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, activeIcon, inactiveIcon, title, child);

  /// Create a copy of PageDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDescriptionImplCopyWith<_$PageDescriptionImpl> get copyWith =>
      __$$PageDescriptionImplCopyWithImpl<_$PageDescriptionImpl>(
          this, _$identity);
}

abstract class _PageDescription implements PageDescription {
  const factory _PageDescription(
      {required final IconData activeIcon,
      required final IconData inactiveIcon,
      required final String title,
      required final Widget child}) = _$PageDescriptionImpl;

  @override
  IconData get activeIcon;
  @override
  IconData get inactiveIcon;
  @override
  String get title;
  @override
  Widget get child;

  /// Create a copy of PageDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageDescriptionImplCopyWith<_$PageDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
