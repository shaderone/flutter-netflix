// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadsModal _$$_DownloadsModalFromJson(Map<String, dynamic> json) =>
    _$_DownloadsModal(
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      mediaName: json['title'] as String?,
      mainMediaName: json['name'] as String?,
    );

Map<String, dynamic> _$$_DownloadsModalToJson(_$_DownloadsModal instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.mediaName,
      'name': instance.mainMediaName,
    };
