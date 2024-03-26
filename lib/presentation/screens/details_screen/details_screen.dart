import 'package:flutter/material.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';
import 'components/custom_sliver_appbar_widget.dart';
import 'components/date_rating_widget.dart';
import 'components/overview_widget.dart';

class DetailsScreen extends StatelessWidget {
  final HomeMoviesModel homeMoviesModel;

  const DetailsScreen({super.key, required this.homeMoviesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            homeMoviesModel: homeMoviesModel,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  OverviewWidget(homeMoviesModel: homeMoviesModel),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DateRatingWidget(
                          textTitle: 'Released Date: ',
                          textValue: homeMoviesModel.releaseDate),
                      DateRatingWidget(
                          textTitle: 'Rating: ',
                          textValue: homeMoviesModel.voteAverage.toString()),
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
