import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_modal.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    on<GetComingSoonData>(
      (event, emit) async {
        emit(
          const NewAndHotState(
            comingSoonData: [],
            trendingMediaData: [],
            isLoading: true,
            isError: false,
          ),
        );
        final res = await _newAndHotService.getTrendingMediaData();
        //log(res.toString());
        final currentNewAndHotState = res.fold(
          (MainFailure failure) {
            return const NewAndHotState(
              comingSoonData: [],
              trendingMediaData: [],
              isLoading: false,
              isError: true,
            );
          },
          (List<NewAndHotModal> data) {
            return NewAndHotState(
              comingSoonData: data,
              trendingMediaData: [],
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(currentNewAndHotState);
      },
    );
    on<GetEveryonesWatchingData>((event, emit) {});
  }
}
