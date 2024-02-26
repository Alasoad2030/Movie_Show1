import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/constant.dart';
import 'package:movie_show/controller/my_controller.dart';
import 'package:movie_show/view/details_screen.dart';

class UpcomingMovies extends StatelessWidget {
  const UpcomingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyController>(
      init: MyController(),
      builder: (controller) => SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.upcomingMoviesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => DetailsScreen(
                      moviesData: controller.upcomingMoviesList[index]));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                    child: controller.upcomingMoviesList.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : Image.network(
                            '${Constants.imageUrl}${controller.upcomingMoviesList[index].posterPath}',
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
