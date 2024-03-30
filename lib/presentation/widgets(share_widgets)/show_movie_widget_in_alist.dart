import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../data/apis/api_endpoints.dart';
import '../../data/response_modle/home_models/home_movies_model.dart';

SizedBox showMovieWidgetInAlist(
    BuildContext context, List<HomeMoviesModel> listOfMovies) {
  return SizedBox(
    width: double.infinity,
    height: 25.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfMovies.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(
                'detailsScreen',
                arguments: listOfMovies[index],
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 30.w,
                height: 20.h,
                color: Colors.amber,
                child: listOfMovies.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Image.network(
                        '${ApiEndpoints.baseImageUrl}${listOfMovies[index].posterPath}',
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
