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
    required TResult Function(GetDownloadsPosters value) getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDownloadsPosters value)? getDownloadsPosters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadsPosters value)? getDownloadsPosters,
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
abstract class _$$GetDownloadsPostersCopyWith<$Res> {
  factory _$$GetDownloadsPostersCopyWith(_$GetDownloadsPosters value,
          $Res Function(_$GetDownloadsPosters) then) =
      __$$GetDownloadsPostersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadsPostersCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$$GetDownloadsPostersCopyWith<$Res> {
  __$$GetDownloadsPostersCopyWithImpl(
      _$GetDownloadsPosters _value, $Res Function(_$GetDownloadsPosters) _then)
      : super(_value, (v) => _then(v as _$GetDownloadsPosters));

  @override
  _$GetDownloadsPosters get _value => super._value as _$GetDownloadsPosters;
}

/// @nodoc

class _$GetDownloadsPosters implements GetDownloadsPosters {
  const _$GetDownloadsPosters();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsPosters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadsPosters);
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
    required TResult Function(GetDownloadsPosters value) getDownloadsPosters,
  }) {
    return getDownloadsPosters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDownloadsPosters value)? getDownloadsPosters,
  }) {
    return getDownloadsPosters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDownloadsPosters value)? getDownloadsPosters,
    required TResult orElse(),
  }) {
    if (getDownloadsPosters != null) {
      return getDownloadsPosters(this);
    }
    return orElse();
  }
}

abstract class GetDownloadsPosters implements DownloadsEvent {
  const factory GetDownloadsPosters() = _$GetDownloadsPosters;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DownloadsModal> get downloadsPosterList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<DownloadsModal>>> get uiState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<DownloadsModal> downloadsPosterList,
      Option<Either<MainFailure, List<DownloadsModal>>> uiState});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  final DownloadsState _value;
  // ignore: unused_field
  final $Res Function(DownloadsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloadsPosterList = freezed,
    Object? uiState = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsPosterList: downloadsPosterList == freezed
          ? _value.downloadsPosterList
          : downloadsPosterList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModal>,
      uiState: uiState == freezed
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadsModal>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<DownloadsModal> downloadsPosterList,
      Option<Either<MainFailure, List<DownloadsModal>>> uiState});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$DownloadsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloadsPosterList = freezed,
    Object? uiState = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsPosterList: downloadsPosterList == freezed
          ? _value._downloadsPosterList
          : downloadsPosterList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModal>,
      uiState: uiState == freezed
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadsModal>>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required final List<DownloadsModal> downloadsPosterList,
      required this.uiState})
      : _downloadsPosterList = downloadsPosterList;

  @override
  final bool isLoading;
  final List<DownloadsModal> _downloadsPosterList;
  @override
  List<DownloadsModal> get downloadsPosterList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadsPosterList);
  }

  @override
  final Option<Either<MainFailure, List<DownloadsModal>>> uiState;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloadsPosterList: $downloadsPosterList, uiState: $uiState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloadsPosterList, _downloadsPosterList) &&
            const DeepCollectionEquality().equals(other.uiState, uiState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_downloadsPosterList),
      const DeepCollectionEquality().hash(uiState));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DownloadsState {
  const factory _Initial(
      {required final bool isLoading,
      required final List<DownloadsModal> downloadsPosterList,
      required final Option<Either<MainFailure, List<DownloadsModal>>>
          uiState}) = _$_Initial;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<DownloadsModal> get downloadsPosterList =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<MainFailure, List<DownloadsModal>>> get uiState =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
