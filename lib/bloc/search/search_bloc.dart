import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/downloads_service.dart';

import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';
import 'package:netflix_clone/domain/pages/search/modal/search_modal.dart';
import 'package:netflix_clone/domain/pages/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsService _downloadsService;
  final SearchService _searchService;
  // here we pass the intial state of the 'whole bloc' in super()
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    //To prevent calling api again after getting data
    //Idle state
    on<Initialize>(
      (event, emit) async {
        if (state.idleSearchData.isNotEmpty) {
          //it means api has already fetched the data
          emit(
            SearchState(
              searchResponseData: [],
              idleSearchData: state.idleSearchData,
              isLoading: false,
              isError: false,
            ),
          );
          return;
        }
        //this will work as the else block and notify the UI that api fetching is ongoing
        emit(
          const SearchState(
            searchResponseData: [],
            idleSearchData: [],
            isLoading: true,
            isError: false,
          ),
        );
        //get images of trending data
        final res = await _downloadsService.getDownloadsPosters();
        //res.fold((left) => , (right)) => left - failure-case and right - success-case
        final currentSearchState = res.fold(
          (MainFailure failure) {
            return const SearchState(
              searchResponseData: [],
              idleSearchData: [],
              isLoading: false,
              isError: true,
            );
          },
          (List<DownloadsModal> data) {
            return SearchState(
              searchResponseData: [],
              idleSearchData: data,
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(currentSearchState);
      },
    );
    //onSearchActive/SearchResult state
    on<SearchMedia>((event, emit) {
      _searchService.searchMedia(searchQuery: event.query);
    });
  }
}
