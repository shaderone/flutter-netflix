import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "${baseURL}trending/all/day?api_key=$apiKey";
}
