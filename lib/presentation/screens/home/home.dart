import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/home/components/tv_and_movies_button.dart';
import 'package:movie_show/presentation/widgets(share_widgets)/title_widget.dart';
import 'package:movie_show/presentation/screens/home/components/trending_widget.dart';
import 'package:movie_show/presentation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import '../../widgets(share_widgets)/show_movie_widget_in_alist.dart';
import 'components/categories_button.dart';

class Home extends StatefulWidget {
  final String titleName;
  final String imageProfile;
  const Home({super.key, required this.titleName, required this.imageProfile});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false)
        .getFinalTrendingMoviesDataList();
    Provider.of<HomeProvider>(context, listen: false)
        .getfinalTopRatingMoviesDataList();
    Provider.of<HomeProvider>(context, listen: false)
        .getfinalUpComingMoviesDataList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            tvAndMoviesButton(text: 'TV Shows'),
            const SizedBox(width: 10),
            tvAndMoviesButton(text: 'Movies'),
            const SizedBox(
              width: 10,
            ),
            categoriesButton()
          ],
        ),
        const SizedBox(height: 20),
        const TrendingWidget(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitleWidget(text: 'Upcoming'),
            Spacer(),
            TextButton(
                onPressed: null,
                child: Row(
                  children: [
                    Text(
                      'My List',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ),
        showMovieWidgetInAlist(context,
            Provider.of<HomeProvider>(context).finalUpComingMoviesDataList),
        //  const UpcomingMovies(),
        const TitleWidget(text: 'Top Rating'),
        showMovieWidgetInAlist(context,
            Provider.of<HomeProvider>(context).finalTopRatingMoviesDataList),
        // const TopRatingMovies()
      ],
    );
  }
}
