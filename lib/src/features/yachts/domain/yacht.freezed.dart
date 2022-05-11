// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'yacht.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Yacht {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YachtCopyWith<Yacht> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YachtCopyWith<$Res> {
  factory $YachtCopyWith(Yacht value, $Res Function(Yacht) then) =
      _$YachtCopyWithImpl<$Res>;
  $Res call({String? id, String name});
}

/// @nodoc
class _$YachtCopyWithImpl<$Res> implements $YachtCopyWith<$Res> {
  _$YachtCopyWithImpl(this._value, this._then);

  final Yacht _value;
  // ignore: unused_field
  final $Res Function(Yacht) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$YachtCopyWith<$Res> implements $YachtCopyWith<$Res> {
  factory _$YachtCopyWith(_Yacht value, $Res Function(_Yacht) then) =
      __$YachtCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String name});
}

/// @nodoc
class __$YachtCopyWithImpl<$Res> extends _$YachtCopyWithImpl<$Res>
    implements _$YachtCopyWith<$Res> {
  __$YachtCopyWithImpl(_Yacht _value, $Res Function(_Yacht) _then)
      : super(_value, (v) => _then(v as _Yacht));

  @override
  _Yacht get _value => super._value as _Yacht;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Yacht(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Yacht with DiagnosticableTreeMixin implements _Yacht {
  const _$_Yacht({this.id, required this.name});

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Yacht(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Yacht'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Yacht &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$YachtCopyWith<_Yacht> get copyWith =>
      __$YachtCopyWithImpl<_Yacht>(this, _$identity);
}

abstract class _Yacht implements Yacht {
  const factory _Yacht({final String? id, required final String name}) =
      _$_Yacht;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YachtCopyWith<_Yacht> get copyWith => throw _privateConstructorUsedError;
}
