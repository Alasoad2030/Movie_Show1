import 'package:flutter/material.dart';
import 'package:movie_show/model/movies_data.dart';
import 'package:movie_show/widgets/custom_sliver_appBar_widget.dart';
import 'package:movie_show/widgets/date_rating_widget.dart';
import 'package:movie_show/widgets/overview_widget.dart';

class DetailsScreen extends StatelessWidget {
  final MoviesData moviesData;
  const DetailsScreen({super.key, required this.moviesData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(moviesData: moviesData),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  OverviewWidget(moviesData: moviesData),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DateRatingWidget(
                          textTitle: 'Released Date: ',
                          textValue: moviesData.releaseDate),
                      DateRatingWidget(
                          textTitle: 'Rating: ',
                          textValue: moviesData.voteAverage.toString()),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
