import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/api_endpoints.dart';
import 'package:netflix_clone/domain/pages/search/modal/search_modal.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/pages/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchRepository implements SearchService {
  @override
  Future<Either<MainFailure, List<SearchModal>>> searchMedia(
      {required String searchQuery}) async {
    try {
      //sending api request
      final Response res = await Dio(BaseOptions()).get(
        ApiEndpoints.search,
        queryParameters: {
          'query': searchQuery,
        },
      );
      //log(res.data.toString());
      //handling success api response
      if (res.statusCode == 200 || res.statusCode == 201) {
        final searchData = (res.data['results'] as List).map((item) {
          return SearchModal.fromJson(item);
        }).toList();
        //final searchData = SearchModal.fromJson(res.data);
        return Right(searchData);
      } else {
        //for any other statuscode
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      //if statusCodes checks out
      return const Left(MainFailure.clientFailure());
    }
  }
}
