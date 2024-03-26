import 'package:flutter/material.dart';
import 'package:movie_show/data/repos/home_repo/get_home_top_rating_movies_repo.dart';
import 'package:movie_show/data/repos/home_repo/get_home_trending_movies_repo.dart';
import 'package:movie_show/data/repos/home_repo/get_home_up_coming_movies_repo.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class HomeProvider extends ChangeNotifier {
  List<HomeMoviesModel> finalTrendingMoviesDataList = [];
  List<HomeMoviesModel> finalUpComingMoviesDataList = [];
  List<HomeMoviesModel> finalTopRatingMoviesDataList = [];

  Future<List<HomeMoviesModel>> getFinalTrendingMoviesDataList() async {
    GetHomeTrendingMoviesRepo getHomeTrendingMoviesRepo =
        GetHomeTrendingMoviesRepo();
    finalTrendingMoviesDataList =
        await getHomeTrendingMoviesRepo.getHomeTrendingMoviesList();
    notifyListeners();
    return finalTrendingMoviesDataList;
  }

  Future<List<HomeMoviesModel>> getfinalUpComingMoviesDataList() async {
    GetHomeUpComingMoviesRepo getHomeUpComingMoviesRepo =
        GetHomeUpComingMoviesRepo();
    finalUpComingMoviesDataList =
        await getHomeUpComingMoviesRepo.gethomeUpComingMOviesList();
    notifyListeners();
    return finalUpComingMoviesDataList;
  }

  Future<List<HomeMoviesModel>> getfinalTopRatingMoviesDataList() async {
    GetHomeTopRatingMoviesRepo getHomeTopRatingMoviesRepo =
        GetHomeTopRatingMoviesRepo();

    finalTopRatingMoviesDataList =
        await getHomeTopRatingMoviesRepo.gethomeTopRatingMOviesList();
    notifyListeners();
    return finalTopRatingMoviesDataList;
  }
}
