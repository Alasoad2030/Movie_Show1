import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/constant.dart';
import 'package:movie_show/controller/my_controller.dart';
import 'package:movie_show/view/details_screen.dart';

class TopRatingMovies extends StatelessWidget {
  const TopRatingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyController>(
      init: MyController(),
      builder: (controller) => SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.topRatedMoviesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => DetailsScreen(
                      moviesData: controller.topRatedMoviesList[index]));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                    child: controller.topRatedMoviesList.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : Image.network(
                            '${Constants.imageUrl}${controller.topRatedMoviesList[index].posterPath}',
                            fit: BoxFit.fill,
                            filterQuality: FilterQuality.high,
                          ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
