part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadsModal> downloadsPosterList,
    required Option<Either<MainFailure, List<DownloadsModal>>> uiState,
  }) = _Initial;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      uiState: None(),
      downloadsPosterList: [],
    );
  }
}
