// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_data_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchObject {
  String get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchObjectCopyWith<SearchObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchObjectCopyWith<$Res> {
  factory $SearchObjectCopyWith(
          SearchObject value, $Res Function(SearchObject) then) =
      _$SearchObjectCopyWithImpl<$Res, SearchObject>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$SearchObjectCopyWithImpl<$Res, $Val extends SearchObject>
    implements $SearchObjectCopyWith<$Res> {
  _$SearchObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchObjectCopyWith<$Res>
    implements $SearchObjectCopyWith<$Res> {
  factory _$$_SearchObjectCopyWith(
          _$_SearchObject value, $Res Function(_$_SearchObject) then) =
      __$$_SearchObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchObjectCopyWithImpl<$Res>
    extends _$SearchObjectCopyWithImpl<$Res, _$_SearchObject>
    implements _$$_SearchObjectCopyWith<$Res> {
  __$$_SearchObjectCopyWithImpl(
      _$_SearchObject _value, $Res Function(_$_SearchObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$_SearchObject(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchObject implements _SearchObject {
  _$_SearchObject(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchObject(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchObject &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchObjectCopyWith<_$_SearchObject> get copyWith =>
      __$$_SearchObjectCopyWithImpl<_$_SearchObject>(this, _$identity);
}

abstract class _SearchObject implements SearchObject {
  factory _SearchObject(final String search) = _$_SearchObject;

  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$_SearchObjectCopyWith<_$_SearchObject> get copyWith =>
      throw _privateConstructorUsedError;
}
