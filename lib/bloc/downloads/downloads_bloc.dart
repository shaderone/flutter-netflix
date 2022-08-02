import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/downloads_service.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  //This object is created which is an abstract class to invoke the background service
  //to fetch data from the interenet, and we need to pass it to the bloc constructor
  final DownloadsService downloadsService;
  DownloadsBloc(this.downloadsService) : super(DownloadsState.initial()) {
    on<GetDownloadsPosters>(
      (event, emit) async {
        if (state.downloadsPosterList.isNotEmpty) {
          emit(
            //initial page load
            state.copyWith(
              isLoading: true,
              //since before api call there is and will not be an error or a valid response
              uiState: const None(),
            ),
          );
          return;
        }
        //calling the api via abstract class throught its object
        final Either<MainFailure, List<DownloadsModal>> downloadsApiResponse =
            await downloadsService.getDownloadsPosters();
        //log(downloadsApiResponse.toString());
        /*new-state*/
        emit(
          downloadsApiResponse.fold(
            (failure) {
              return state.copyWith(
                isLoading: false,
                uiState: Some(
                  Left(failure),
                ),
              );
            },
            (data) {
              return state.copyWith(
                isLoading: false,
                uiState: Some(Right(data)),
                downloadsPosterList: data,
              );
            },
          ),
        );
      },
    );
  }
}
