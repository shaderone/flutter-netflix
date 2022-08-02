part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchModal> searchResponseData,
    required List<DownloadsModal> idleSearchData,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResponseData: [],
        idleSearchData: [],
        isLoading: false,
        isError: false,
      );
}
