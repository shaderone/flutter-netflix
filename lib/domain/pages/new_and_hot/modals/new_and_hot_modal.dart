// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_and_hot_modal.freezed.dart';
part 'new_and_hot_modal.g.dart';

@freezed
class NewAndHotModal with _$NewAndHotModal {
  const factory NewAndHotModal({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "backdrop_path") required String backdropPath,
    @JsonKey(name: "title") required String mediaName,
    @JsonKey(name: "original_title") required String mainMediaName,
    @JsonKey(name: "overview") required String overview,
    @JsonKey(name: "release_date") required String date,
  }) = _NewAndHotModal;

  factory NewAndHotModal.fromJson(Map<String, dynamic> json) =>
      _$NewAndHotModalFromJson(json);
}
