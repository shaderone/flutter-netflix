import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo iDownloadsRepo;
  DownloadsBloc(this.iDownloadsRepo) : super(DownloadsState.initial()) {
    on<GetDownloadsPosters>(
      (event, emit) async {
        emit(
          //state.copyWith(
          //  isLoading: true,
          //  downloadsFailureOrSuccessOption: none(),
          //),
          const DownloadsState(
            isLoading: true,
            downloads: [],
            //downloadsFailureOrSuccessOption: none(),
            isError: false,
          ),
        );
        final possibleApiResponseOnDownloadsPage =
            await iDownloadsRepo.getDownloadsPosters();
        //final Either<MainFailure, List<Downloads>>
        //    possibleApiResponseOnDownloadsPage =
        //    await iDownloadsRepo.getDownloadsPosters();
        //log(possibleApiResponseOnDownloadsPage.toString());
        final currentDownloadsState = possibleApiResponseOnDownloadsPage.fold(
          //(failure) {
          //  return DownloadsState(isLoading: false, downloads: [], downloadsFailureOrSuccessOption: some(Left(failure));)
          //}
          (MainFailure failure) {
            return const DownloadsState(
              isLoading: false,
              downloads: [],
              //downloadsFailureOrSuccessOption: some(Left(failure)),
              isError: true,
            );
          },
          (List<Downloads> data) {
            return DownloadsState(
              isLoading: false,
              downloads: data,
              //downloadsFailureOrSuccessOption: some(Right(data)),
              isError: false,
            );
          },
        );
        //log(currentDownloadsState.toString());
        emit(currentDownloadsState);
      },
    );
  }
}
