// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Downloads _$$_DownloadsFromJson(Map<String, dynamic> json) => _$_Downloads(
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      posterTitle: json['title'] as String?,
      posterName: json['original_name'] as String?,
    );

Map<String, dynamic> _$$_DownloadsToJson(_$_Downloads instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.posterTitle,
      'original_name': instance.posterName,
    };
