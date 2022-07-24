import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_state.freezed.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccessOption,
  }) = _DownloadsState;

  //initial state of the downloadspage on app start
  factory DownloadsState.initial() {
    return DownloadsState(
      isLoading: false,
      downloadsFailureOrSuccessOption: none(),
      downloads: [],
    );
  }
}
