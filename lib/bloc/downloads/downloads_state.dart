part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    //required Option<Either<MainFailure, List<Downloads>>>
    required bool isError,
    //    downloadsFailureOrSuccessOption,
  }) = _DownloadsState;

  //initial state of the downloadspage on app start
  factory DownloadsState.initial() => const DownloadsState(
        isLoading: false,
        //downloadsFailureOrSuccessOption: none(),
        isError: false,
        downloads: [],
      );
}
