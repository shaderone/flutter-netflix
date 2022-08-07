import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_modal.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_trending_modal.dart';

abstract class NewAndHotService {
  Future<Either<MainFailure, List<NewAndHotModal>>> getComingSoonData();
  Future<Either<MainFailure, List<NewAndHotTrendingModal>>>
      getPopularShowsData();
}
