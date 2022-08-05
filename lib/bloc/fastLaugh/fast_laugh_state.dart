part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<DownloadsModal> profileList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastLaughState.initial() {
    return const FastLaughState(
      profileList: [],
      isLoading: false,
      //true
      isError: false,
    );
  }
}
