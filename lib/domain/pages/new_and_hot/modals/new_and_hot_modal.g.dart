// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewAndHotModal _$$_NewAndHotModalFromJson(Map<String, dynamic> json) =>
    _$_NewAndHotModal(
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String,
      mediaName: json['title'] as String,
      mainMediaName: json['original_title'] as String,
      overview: json['overview'] as String,
      date: json['release_date'] as String,
    );

Map<String, dynamic> _$$_NewAndHotModalToJson(_$_NewAndHotModal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'title': instance.mediaName,
      'original_title': instance.mainMediaName,
      'overview': instance.overview,
      'release_date': instance.date,
    };
