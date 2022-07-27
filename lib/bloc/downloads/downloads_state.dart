part of 'downloads_bloc.dart';

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
