import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'logo_of_the_movie_in_the_stack.dart';
import 'the_row_button_in_the_stack.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount:
          Provider.of<HomeProvider>(context).finalTrendingMoviesDataList.length,
      options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: false,
          enlargeCenterPage: true,
          aspectRatio: 0.9),
      itemBuilder: (context, index, realIndex) {
        return Stack(
          alignment: Alignment.bottomLeft,
          children: [
            logoOfTheMovieInTheStack(context: context, index: index),
            theRowButtonInTheStack(context: context, index: index),
          ],
        );
      },
    );
  }
}
