part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResp> searchResponseData,
    required List<DownloadsModal> idleListData,
    required bool isSearchLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResponseData: [],
        idleListData: [],
        isSearchLoading: false,
        isError: false,
      );
}
