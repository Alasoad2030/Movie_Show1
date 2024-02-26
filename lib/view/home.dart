// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:movie_show/widgets/title_widget.dart';
import 'package:movie_show/widgets/top_rating_movies_widget.dart';
import 'package:movie_show/widgets/upcoming_movies_widget.dart';
import 'package:movie_show/widgets/trending_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/movie show.png',
          fit: BoxFit.fill,
          height: 90,
          width: 150,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const TitleWidget(text: 'Trending Movies'),
            const SizedBox(
              height: 10,
            ),
            const TrendingWidget(),
            const TitleWidget(text: 'Top Rated Movies'),
            const TopRatingMovies(),
            const SizedBox(
              height: 10,
            ),
            const TitleWidget(text: 'Upcomming Movies'),
            const UpcomingMovies()
          ],
        ),
      ),
    );
  }
}
