import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_modal.freezed.dart';
part 'downloads_modal.g.dart';

@freezed
class DownloadsModal with _$DownloadsModal {
  const factory DownloadsModal({
    // ignore: invalid_annotation_target
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _DownloadsModal;

  factory DownloadsModal.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModalFromJson(json);
}
