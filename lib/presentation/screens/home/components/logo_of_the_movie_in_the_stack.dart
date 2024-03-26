import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/presentation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../data/apis/api_endpoints.dart';
import '../../details_screen/details_screen.dart';

GestureDetector logoOfTheMovieInTheStack(
    {required BuildContext context, required int index}) {
  return GestureDetector(
    onTap: () {
      Get.to(() => DetailsScreen(
            homeMoviesModel: Provider.of<HomeProvider>(context)
                .finalTrendingMoviesDataList[index],
          ));
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Provider.of<HomeProvider>(context)
                .finalTrendingMoviesDataList
                .isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Image.network(
                '${ApiEndpoints.baseImageUrl}${Provider.of<HomeProvider>(context).finalTrendingMoviesDataList[index].posterPath}',
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                width: 90.w,
              ),
      ),
    ),
  );
}
