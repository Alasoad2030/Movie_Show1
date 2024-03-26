import 'package:http/http.dart' as http;
import 'package:movie_show/data/apis/api_endpoints.dart';

class NetworkHelper {
  Future<dynamic> fetchDataTrendingMovies() async {
    http.Response response = await http.get(ApiEndpoints.urlTrendingMovies);
    return response;
  }

  Future<dynamic> fetchDataTopRatingMovies() async {
    http.Response response = await http.get(ApiEndpoints.urlTopRatedMovies);
    return response;
  }

  Future<dynamic> fetchUpcomingMovies() async {
    http.Response response = await http.get(ApiEndpoints.urlUpcomingMovies);
    return response;
  }
}
