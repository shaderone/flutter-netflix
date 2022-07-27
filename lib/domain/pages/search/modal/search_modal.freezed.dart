// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) {
  return _SearchResp.fromJson(json);
}

/// @nodoc
mixin _$SearchResp {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get mediaName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRespCopyWith<SearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRespCopyWith<$Res> {
  factory $SearchRespCopyWith(
          SearchResp value, $Res Function(SearchResp) then) =
      _$SearchRespCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? mediaName});
}

/// @nodoc
class _$SearchRespCopyWithImpl<$Res> implements $SearchRespCopyWith<$Res> {
  _$SearchRespCopyWithImpl(this._value, this._then);

  final SearchResp _value;
  // ignore: unused_field
  final $Res Function(SearchResp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? mediaName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaName: mediaName == freezed
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchRespCopyWith<$Res>
    implements $SearchRespCopyWith<$Res> {
  factory _$$_SearchRespCopyWith(
          _$_SearchResp value, $Res Function(_$_SearchResp) then) =
      __$$_SearchRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? mediaName});
}

/// @nodoc
class __$$_SearchRespCopyWithImpl<$Res> extends _$SearchRespCopyWithImpl<$Res>
    implements _$$_SearchRespCopyWith<$Res> {
  __$$_SearchRespCopyWithImpl(
      _$_SearchResp _value, $Res Function(_$_SearchResp) _then)
      : super(_value, (v) => _then(v as _$_SearchResp));

  @override
  _$_SearchResp get _value => super._value as _$_SearchResp;

  @override
  $Res call({
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? mediaName = freezed,
  }) {
    return _then(_$_SearchResp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaName: mediaName == freezed
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResp implements _SearchResp {
  const _$_SearchResp(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "title") required this.mediaName});

  factory _$_SearchResp.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRespFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "title")
  final String? mediaName;

  @override
  String toString() {
    return 'SearchResp(id: $id, posterPath: $posterPath, mediaName: $mediaName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResp &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.mediaName, mediaName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(mediaName));

  @JsonKey(ignore: true)
  @override
  _$$_SearchRespCopyWith<_$_SearchResp> get copyWith =>
      __$$_SearchRespCopyWithImpl<_$_SearchResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRespToJson(this);
  }
}

abstract class _SearchResp implements SearchResp {
  const factory _SearchResp(
          {@JsonKey(name: "id") required final int? id,
          @JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "title") required final String? mediaName}) =
      _$_SearchResp;

  factory _SearchResp.fromJson(Map<String, dynamic> json) =
      _$_SearchResp.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title")
  String? get mediaName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRespCopyWith<_$_SearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}
