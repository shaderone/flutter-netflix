import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_modal.freezed.dart';
part 'downloads_modal.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "title") required String? posterTitle,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
