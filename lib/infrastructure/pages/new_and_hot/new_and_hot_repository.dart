import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/bloc/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/domain/api_endpoints.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_modal.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_trending_modal.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/new_and_hot_service.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotRepo extends NewAndHotService {
  @override
  Future<Either<MainFailure, List<NewAndHotModal>>> getComingSoonData() async {
    try {
      final res = await Dio(BaseOptions()).get(ApiEndpoints.newAndHotMovie);
      if (res.statusCode == 200 || res.statusCode == 201) {
        final searchData = (res.data['results'] as List).map((item) {
          return NewAndHotModal.fromJson(item);
        }).toList();
        //log("in repository - \n ${searchData.toString()}");
        return Right(searchData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log("in catch - \n ${e}");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<NewAndHotTrendingModal>>>
      getPopularShowsData() async {
    try {
      final res = await Dio(BaseOptions()).get(ApiEndpoints.newAndHotTv);
      if (res.statusCode == 200 || res.statusCode == 201) {
        final searchData = (res.data['results'] as List).map((item) {
          return NewAndHotTrendingModal.fromJson(item);
        }).toList();
        //log("in repository - \n ${searchData.toString()}");
        return Right(searchData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log("in catch - \n ${e}");
      return const Left(MainFailure.clientFailure());
    }
  }
}
