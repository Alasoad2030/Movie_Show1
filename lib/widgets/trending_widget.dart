import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/constant.dart';
import 'package:movie_show/controller/my_controller.dart';
import 'package:movie_show/view/details_screen.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyController>(
      init: MyController(),
      builder: (controller) => SizedBox(
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: controller.trendingMoviesList.length,
          options: CarouselOptions(
            viewportFraction: 0.50,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              onTap: () {
                Get.to(() => DetailsScreen(
                    moviesData: controller.trendingMoviesList[index]));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.amber,
                  height: 300,
                  width: 150,
                  child: controller.trendingMoviesList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : Image.network(
                          '${Constants.imageUrl}${controller.trendingMoviesList[index].posterPath}',
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
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
