import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_modal.freezed.dart';
part 'search_modal.g.dart';

@freezed
class SearchModal with _$SearchModal {
  const factory SearchModal({
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "poster_path") required String? posterPath,
    //@JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "title") required String? mediaName,
    //@JsonKey(name: "original_title") required String? mainMediaName,
  }) = _SearchModal;
  // what does this line do?
  factory SearchModal.fromJson(Map<String, dynamic> json) =>
      _$SearchModalFromJson(json);
}
