import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "${baseURL}trending/all/day?api_key=$apiKey";
  static const search = "${baseURL}search/movie?api_key=$apiKey";
  //static const search = "${baseURL}search/movie?api_key=$apiKey&language=en-US&page=1&include_adult=false";

  static const newAndHotMovie = "${baseURL}discover/movie?api_key=$apiKey";
  static const newAndHotTv = "${baseURL}discover/tv?api_key=$apiKey";
}
