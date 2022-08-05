import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/downloads_service.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

const videoUrl = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final DownloadsService _downloadsService;
  FastLaughBloc(this._downloadsService) : super(FastLaughState.initial()) {
    on<Initialize>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          isError: false,
          profileList: [],
        ));
        final res = await _downloadsService.getDownloadsPosters();
        final currentFastLaughState = res.fold(
          (MainFailure failure) {
            return state.copyWith(
                isLoading: false, profileList: [], isError: true);
          },
          (List<DownloadsModal> data) {
            log("from fastbloc - data - \n${res.toString()}");
            return state.copyWith(
                isLoading: false, profileList: data, isError: false);
          },
        );
        emit(currentFastLaughState);
      },
    );
  }
}