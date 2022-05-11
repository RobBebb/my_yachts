// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'yacht_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$YachtState {
  List<Yacht>? get yachts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YachtStateCopyWith<YachtState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YachtStateCopyWith<$Res> {
  factory $YachtStateCopyWith(
          YachtState value, $Res Function(YachtState) then) =
      _$YachtStateCopyWithImpl<$Res>;
  $Res call({List<Yacht>? yachts});
}

/// @nodoc
class _$YachtStateCopyWithImpl<$Res> implements $YachtStateCopyWith<$Res> {
  _$YachtStateCopyWithImpl(this._value, this._then);

  final YachtState _value;
  // ignore: unused_field
  final $Res Function(YachtState) _then;

  @override
  $Res call({
    Object? yachts = freezed,
  }) {
    return _then(_value.copyWith(
      yachts: yachts == freezed
          ? _value.yachts
          : yachts // ignore: cast_nullable_to_non_nullable
              as List<Yacht>?,
    ));
  }
}

/// @nodoc
abstract class _$YachtStateCopyWith<$Res> implements $YachtStateCopyWith<$Res> {
  factory _$YachtStateCopyWith(
          _YachtState value, $Res Function(_YachtState) then) =
      __$YachtStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Yacht>? yachts});
}

/// @nodoc
class __$YachtStateCopyWithImpl<$Res> extends _$YachtStateCopyWithImpl<$Res>
    implements _$YachtStateCopyWith<$Res> {
  __$YachtStateCopyWithImpl(
      _YachtState _value, $Res Function(_YachtState) _then)
      : super(_value, (v) => _then(v as _YachtState));

  @override
  _YachtState get _value => super._value as _YachtState;

  @override
  $Res call({
    Object? yachts = freezed,
  }) {
    return _then(_YachtState(
      yachts: yachts == freezed
          ? _value.yachts
          : yachts // ignore: cast_nullable_to_non_nullable
              as List<Yacht>?,
    ));
  }
}

/// @nodoc

class _$_YachtState implements _YachtState {
  const _$_YachtState({final List<Yacht>? yachts}) : _yachts = yachts;

  final List<Yacht>? _yachts;
  @override
  List<Yacht>? get yachts {
    final value = _yachts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'YachtState(yachts: $yachts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YachtState &&
            const DeepCollectionEquality().equals(other.yachts, yachts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(yachts));

  @JsonKey(ignore: true)
  @override
  _$YachtStateCopyWith<_YachtState> get copyWith =>
      __$YachtStateCopyWithImpl<_YachtState>(this, _$identity);
}

abstract class _YachtState implements YachtState {
  const factory _YachtState({final List<Yacht>? yachts}) = _$_YachtState;

  @override
  List<Yacht>? get yachts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YachtStateCopyWith<_YachtState> get copyWith =>
      throw _privateConstructorUsedError;
}
