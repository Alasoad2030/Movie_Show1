import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:movie_show/constant.dart';
import 'package:movie_show/model/movies_data.dart';

class MyController extends GetxController {
  // the List of the conveted json data of the Trending Movies
  List<MoviesData> trendingMoviesList = [];
// the List of the conveted json data of the Top Rated Movies
  List<MoviesData> topRatedMoviesList = [];
// the List of the conveted json data of the Upcoming Movies
  List<MoviesData> upcomingMoviesList = [];

  getDataTrendingMovies() async {
    var data = await http.get(Constants.urlTrendingMovies);
    try {
      if (data.statusCode == 200) {
        var decoded = json.decode(data.body)['results'] as List;
        trendingMoviesList =
            decoded.map((e) => MoviesData.fromjson(e)).toList();
        update();
      } else {}
    } catch (e) {
      throw Exception(e);
    }
  }

  getDataTopRatedMoviesList() async {
    var data = await http.get(Constants.urlTopRatedMovies);
    try {
      if (data.statusCode == 200) {
        var decoded = json.decode(data.body)['results'] as List;
        topRatedMoviesList =
            decoded.map((e) => MoviesData.fromjson(e)).toList();
        update();
      } else {}
    } catch (e) {
      throw Exception(e);
    }
  }

  getDataUpcomingMoviesList() async {
    var data = await http.get(Constants.urlUpcomingMovies);
    try {
      if (data.statusCode == 200) {
        var decoded = json.decode(data.body)['results'] as List;
        upcomingMoviesList =
            decoded.map((e) => MoviesData.fromjson(e)).toList();
        update();
      } else {}
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void onInit() {
    getDataTrendingMovies();
    getDataTopRatedMoviesList();
    getDataUpcomingMoviesList();
    //print('my list $upcomingMoviesList');
    super.onInit();
  }
}
