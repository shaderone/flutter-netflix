// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsModal _$DownloadsModalFromJson(Map<String, dynamic> json) {
  return _DownloadsModal.fromJson(json);
}

/// @nodoc
mixin _$DownloadsModal {
// ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsModalCopyWith<DownloadsModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsModalCopyWith<$Res> {
  factory $DownloadsModalCopyWith(
          DownloadsModal value, $Res Function(DownloadsModal) then) =
      _$DownloadsModalCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DownloadsModalCopyWithImpl<$Res>
    implements $DownloadsModalCopyWith<$Res> {
  _$DownloadsModalCopyWithImpl(this._value, this._then);

  final DownloadsModal _value;
  // ignore: unused_field
  final $Res Function(DownloadsModal) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadsModalCopyWith<$Res>
    implements $DownloadsModalCopyWith<$Res> {
  factory _$$_DownloadsModalCopyWith(
          _$_DownloadsModal value, $Res Function(_$_DownloadsModal) then) =
      __$$_DownloadsModalCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_DownloadsModalCopyWithImpl<$Res>
    extends _$DownloadsModalCopyWithImpl<$Res>
    implements _$$_DownloadsModalCopyWith<$Res> {
  __$$_DownloadsModalCopyWithImpl(
      _$_DownloadsModal _value, $Res Function(_$_DownloadsModal) _then)
      : super(_value, (v) => _then(v as _$_DownloadsModal));

  @override
  _$_DownloadsModal get _value => super._value as _$_DownloadsModal;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_DownloadsModal(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadsModal implements _DownloadsModal {
  const _$_DownloadsModal(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_DownloadsModal.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsModalFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadsModal(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsModal &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadsModalCopyWith<_$_DownloadsModal> get copyWith =>
      __$$_DownloadsModalCopyWithImpl<_$_DownloadsModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsModalToJson(this);
  }
}

abstract class _DownloadsModal implements DownloadsModal {
  const factory _DownloadsModal(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_DownloadsModal;

  factory _DownloadsModal.fromJson(Map<String, dynamic> json) =
      _$_DownloadsModal.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsModalCopyWith<_$_DownloadsModal> get copyWith =>
      throw _privateConstructorUsedError;
}
