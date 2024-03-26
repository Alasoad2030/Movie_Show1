import 'dart:convert';

import 'package:movie_show/data/apis/network_helper.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class GetHomeTrendingMoviesRepo {
  NetworkHelper networkingHelper = NetworkHelper();
  List<HomeMoviesModel> homeTrendingMOviesList = [];

  Future<List<HomeMoviesModel>> getHomeTrendingMoviesList() async {
    var response = await NetworkHelper().fetchDataTrendingMovies();
    try {
      if (response.statusCode == 200) {
        var decoded = json.decode(response.body)['results'] as List;
        homeTrendingMOviesList =
            decoded.map((e) => HomeMoviesModel.fromjson(e)).toList();

        return homeTrendingMOviesList;
      } else {
        return homeTrendingMOviesList;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
