import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/bloc/downloads/downloads_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

part 'downloads_event.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  late IDownloadsRepo iDownloadsRepo;
  DownloadsBloc() : super(DownloadsState.initial()) {
    on<_GetDownloadsPosters>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>>
          possibleApiResponseOnDownloadsPage =
          await iDownloadsRepo.getDownloadsPosters();
      emit(
        possibleApiResponseOnDownloadsPage.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSuccessOption: some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
          ),
        ),
      );
    });
  }
}
