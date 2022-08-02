import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/common_failures/main_failure.dart';
import 'package:netflix_clone/domain/pages/search/modal/search_modal.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchModal>> searchMedia({
    required String searchQuery,
  });
}
