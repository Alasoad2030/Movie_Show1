import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../presentation/screens/home/provider/home_provider.dart';

void gotoPlayMovie(BuildContext context, int index) {
  Get.toNamed(
    'playTheMovie',
    arguments: Provider.of<HomeProvider>(context, listen: false)
        .finalTrendingMoviesDataList[index],
  );
}
