import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_modal.freezed.dart';
part 'search_modal.g.dart';

@freezed
class SearchResp with _$SearchResp {
  const factory SearchResp({
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? mediaName,
  }) = _SearchResp;
  // what does this line do?
  factory SearchResp.fromJson(Map<String, dynamic> json) =>
      _$SearchRespFromJson(json);
}
