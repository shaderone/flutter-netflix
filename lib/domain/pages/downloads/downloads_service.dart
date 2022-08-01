import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

abstract class DownloadsService {
  Future<Either<MainFailure, List<DownloadsModal>>> getDownloadsPosters();
}
