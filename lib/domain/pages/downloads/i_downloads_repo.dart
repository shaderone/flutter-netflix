//This file is used to manage all the possible api calls that might occour

import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsPosters();
}
