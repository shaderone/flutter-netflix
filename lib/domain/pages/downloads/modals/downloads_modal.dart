import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_modal.freezed.dart';
part 'downloads_modal.g.dart';

@freezed
class DownloadsModal with _$DownloadsModal {
  const factory DownloadsModal({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: "title") required String? mediaName,
    // ignore: invalid_annotation_target
    @JsonKey(name: "name") required String? mainMediaName,
  }) = _DownloadsModal;

  factory DownloadsModal.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModalFromJson(json);
}
