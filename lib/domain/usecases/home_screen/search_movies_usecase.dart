import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';
import 'package:movie_show/presentation/screens/home/provider/home_provider.dart';
import 'package:movie_show/presentation/screens/play_the_movie/play_the_movie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../data/apis/api_endpoints.dart';
import '../../../presentation/screens/details_screen/details_screen.dart';
import '../../../presentation/widgets(share_widgets)/show_movie_widget_in_alist.dart';
import '../../../presentation/widgets(share_widgets)/title_widget.dart';

class SearchMoviesUsecase extends SearchDelegate {
  List dataToSearch = ['Mohamed', 'Amera', 'Eslam', 'Ahmed', 'Amar', 'Noura'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, query);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List with all the movies
    List<HomeMoviesModel> allMovies =
        Provider.of<HomeProvider>(context).finalTrendingMoviesDataList +
            Provider.of<HomeProvider>(context).finalTopRatingMoviesDataList +
            Provider.of<HomeProvider>(context).finalUpComingMoviesDataList;
// the result search in trending movies
    List<HomeMoviesModel> searchTrendingMovieResult =
        Provider.of<HomeProvider>(context)
            .finalTrendingMoviesDataList
            .where((element) => element.title.contains(query))
            .toList();
// the result search in top rating movies
    List<HomeMoviesModel> searchTopRatingMovieResult =
        Provider.of<HomeProvider>(context)
            .finalTopRatingMoviesDataList
            .where((element) => element.title.contains(query))
            .toList();
// the result search in up coming movies
    List<HomeMoviesModel> searchUpComingMovieResult =
        Provider.of<HomeProvider>(context)
            .finalUpComingMoviesDataList
            .where((element) => element.title.contains(query))
            .toList();

    // List searchResult =
    //     dataToSearch.where((element) => element.startsWith(query)).toList();
    return Container(
        color: Colors.black,
        child: query == ''
            ? ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Recomended Movies',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                    child: ListView.builder(
                        itemCount: allMovies.length,
                        itemBuilder: (context, index) => InkWell(
                            child: showAllMoviesList(allMovies[index]),
                            onTap: () {
                              Get.to(() => DetailsScreen(
                                    homeMoviesModel: allMovies[index],
                                  ));
                            })),
                  ),
                ],
              )
            : ListView(
                children: [
                  const TitleWidget(
                    text: 'Trending Movies',
                  ),
                  searchTrendingMovieResult.isEmpty
                      ? const Text('No Trending Movies match your search')
                      : showMovieWidgetInAlist(
                          context, searchTrendingMovieResult),
                  const TitleWidget(
                    text: 'Top Rating Movies',
                  ),
                  searchTopRatingMovieResult.isEmpty
                      ? const Text('No Top Rating Movies match your search')
                      : showMovieWidgetInAlist(
                          context, searchTopRatingMovieResult),
                  const TitleWidget(
                    text: 'UpComing Movies',
                  ),
                  searchUpComingMovieResult.isEmpty
                      ? const Text('No Upcoming Movies match your search')
                      : showMovieWidgetInAlist(
                          context, searchUpComingMovieResult),
                ],
              ));
  }
}

Widget showAllMoviesList(HomeMoviesModel homeMoviesModel) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(5),
        width: 40.w,
        height: 13.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            '${ApiEndpoints.baseImageUrl}${homeMoviesModel.posterPath}',
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      SizedBox(
        width: 40.w,
        child: Text(homeMoviesModel.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
            maxLines: 2,
            softWrap: true,
            overflow: TextOverflow.ellipsis),
      ),
      //  const Spacer(),
      IconButton(
        icon: const Icon(
          Icons.play_circle_outline,
          size: 40,
        ),
        onPressed: () {
          Get.to(PlayTheMovie(
            homeMoviesModel: homeMoviesModel,
          ));
        },
      ),
    ],
  );
}
