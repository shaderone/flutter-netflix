import 'package:dio/dio.dart';
import 'package:netflix_clone/domain/api_endpoints.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/pages/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsPosters() async {
    try {
      final Response res = await Dio(BaseOptions()).get(ApiEndpoints.downloads);
      if (res.statusCode == 200 || res.statusCode == 201) {
        final List<Downloads> downloadsPosters = [];
        for (final item in res.data) {
          downloadsPosters.add(
            Downloads.fromJson(
              item as Map<String, dynamic>,
            ),
          );
        }
      } else {
        //for any other statuscode
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      //if statusCodes checks out
      return const Left(MainFailure.clientFailure());
    }
  }
}
