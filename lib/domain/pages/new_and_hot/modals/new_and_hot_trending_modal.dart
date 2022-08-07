// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_and_hot_trending_modal.freezed.dart';
part 'new_and_hot_trending_modal.g.dart';

@freezed
class NewAndHotTrendingModal with _$NewAndHotTrendingModal {
  const factory NewAndHotTrendingModal({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "backdrop_path") required String backdropPath,
    @JsonKey(name: "name") required String mediaName,
    @JsonKey(name: "original_name") required String mainMediaName,
    @JsonKey(name: "overview") required String overview,
  }) = _NewAndHotTrendingModal;

  factory NewAndHotTrendingModal.fromJson(Map<String, dynamic> json) =>
      _$NewAndHotTrendingModalFromJson(json);
}
