part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewAndHotModal> comingSoonData,
    required List<NewAndHotModal> trendingMediaData,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory NewAndHotState.initial() => const NewAndHotState(
        comingSoonData: [],
        trendingMediaData: [],
        isLoading: false,
        isError: false,
      );
}
