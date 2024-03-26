import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../presentation/screens/home/provider/home_provider.dart';
import '../../../presentation/screens/play_the_movie/play_the_movie.dart';

void gotoPlayMovie(BuildContext context, int index) {
  Get.to(PlayTheMovie(
    homeMoviesModel: Provider.of<HomeProvider>(context, listen: false)
        .finalTrendingMoviesDataList[index],
  ));
}
