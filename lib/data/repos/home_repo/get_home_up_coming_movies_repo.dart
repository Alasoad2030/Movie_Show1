import 'dart:convert';

import 'package:movie_show/data/apis/network_helper.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class GetHomeUpComingMoviesRepo {
  NetworkHelper networkingHelper = NetworkHelper();
  List<HomeMoviesModel> homeUpComingMOviesList = [];

  Future<List<HomeMoviesModel>> gethomeUpComingMOviesList() async {
    var response = await NetworkHelper().fetchUpcomingMovies();
    try {
      if (response.statusCode == 200) {
        var decoded = json.decode(response.body)['results'] as List;
        homeUpComingMOviesList =
            decoded.map((e) => HomeMoviesModel.fromjson(e)).toList();

        return homeUpComingMOviesList;
      } else {
        return homeUpComingMOviesList;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
