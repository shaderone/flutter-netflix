// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsPosters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsPosters value) getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsPosters value)? getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsPosters value)? getDownloadsPosters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;
}

/// @nodoc
abstract class _$$_GetDownloadsPostersCopyWith<$Res> {
  factory _$$_GetDownloadsPostersCopyWith(_$_GetDownloadsPosters value,
          $Res Function(_$_GetDownloadsPosters) then) =
      __$$_GetDownloadsPostersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadsPostersCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$$_GetDownloadsPostersCopyWith<$Res> {
  __$$_GetDownloadsPostersCopyWithImpl(_$_GetDownloadsPosters _value,
      $Res Function(_$_GetDownloadsPosters) _then)
      : super(_value, (v) => _then(v as _$_GetDownloadsPosters));

  @override
  _$_GetDownloadsPosters get _value => super._value as _$_GetDownloadsPosters;
}

/// @nodoc

class _$_GetDownloadsPosters implements _GetDownloadsPosters {
  const _$_GetDownloadsPosters();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsPosters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadsPosters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsPosters,
  }) {
    return getDownloadsPosters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsPosters,
  }) {
    return getDownloadsPosters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsPosters,
    required TResult orElse(),
  }) {
    if (getDownloadsPosters != null) {
      return getDownloadsPosters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsPosters value) getDownloadsPosters,
  }) {
    return getDownloadsPosters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsPosters value)? getDownloadsPosters,
  }) {
    return getDownloadsPosters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsPosters value)? getDownloadsPosters,
    required TResult orElse(),
  }) {
    if (getDownloadsPosters != null) {
      return getDownloadsPosters(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsPosters implements DownloadsEvent {
  const factory _GetDownloadsPosters() = _$_GetDownloadsPosters;
}
