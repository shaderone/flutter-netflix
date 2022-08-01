// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResp _$$_SearchRespFromJson(Map<String, dynamic> json) =>
    _$_SearchResp(
      id: json['id'] as int?,
      posterPath: json['poster_path'] as String?,
      mediaName: json['title'] as String?,
    );

Map<String, dynamic> _$$_SearchRespToJson(_$_SearchResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.mediaName,
    };
