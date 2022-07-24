import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/api_endpoints.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/pages/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

//as - on calling the abstract class this class which has its actual implementation will be called
@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsPosters() async {
    try {
      final Response res = await Dio(BaseOptions()).get(ApiEndpoints.downloads);
      if (res.statusCode == 200 || res.statusCode == 201) {
        final downloadsPosters = (res.data['results'] as List)
            .map(
              (item) => Downloads.fromJson(item),
            )
            .toList();
        //print(downloadsPosters);
        return Right(downloadsPosters);
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
