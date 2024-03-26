import 'dart:convert';

import 'package:movie_show/data/apis/network_helper.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class GetHomeTopRatingMoviesRepo {
  NetworkHelper networkingHelper = NetworkHelper();
  List<HomeMoviesModel> homeTopRatingMOviesList = [];

  Future<List<HomeMoviesModel>> gethomeTopRatingMOviesList() async {
    var response = await NetworkHelper().fetchDataTopRatingMovies();
    try {
      if (response.statusCode == 200) {
        var decoded = json.decode(response.body)['results'] as List;
        homeTopRatingMOviesList =
            decoded.map((e) => HomeMoviesModel.fromjson(e)).toList();

        return homeTopRatingMOviesList;
      } else {
        return homeTopRatingMOviesList;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
