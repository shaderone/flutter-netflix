import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/api_endpoints.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/pages/downloads/downloads_service.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

@LazySingleton(as: DownloadsService)
class DownloadsRepository implements DownloadsService {
  @override
  Future<Either<MainFailure, List<DownloadsModal>>>
      getDownloadsPosters() async {
    try {
      final apiResponse = await Dio(BaseOptions()).get(ApiEndpoints.downloads);
      //log(apiResponse.data.toString());
      if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
        //success case:
        final posterList = (apiResponse.data['results'] as List).map((item) {
          return DownloadsModal.fromJson(item);
        }).toList();
        //log(apiResponse.data.toString());
        return Right(posterList);
      } else {
        //statuscode errors comes from the server, meaning a response is obtained, therefore serverfailure is handled here
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
