import 'package:flutter/material.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';
import 'package:movie_show/presentation/screens/details_screen/details_screen.dart';
import 'package:movie_show/presentation/screens/loading_user_profile/component/loading_user_profile_model.dart';
import 'package:movie_show/presentation/screens/splash_screen/splash_screen.dart';
import 'package:movie_show/presentation/screens/who_is_watching/who_is_watching.dart';

import '../../screens/loading_user_profile/loading_user_profile.dart';
import '../../screens/play_the_movie/play_the_movie.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case 'whoIsWatching':
      return MaterialPageRoute(builder: (_) => const WhoIsWatching());
    case 'detailsScreen':
      HomeMoviesModel homeMoviesModel = settings.arguments as HomeMoviesModel;
      return MaterialPageRoute(
        builder: (_) => DetailsScreen(homeMoviesModel: homeMoviesModel),
      );
    case 'playTheMovie':
      HomeMoviesModel homeMoviesModel = settings.arguments as HomeMoviesModel;
      return MaterialPageRoute(
        builder: (_) => PlayTheMovie(homeMoviesModel: homeMoviesModel),
      );
    case 'loadingUserProfile':
      LoadingUserProfileModel loadingUserProfileModel =
          settings.arguments as LoadingUserProfileModel;
      return MaterialPageRoute(
          builder: (_) => LoadingUserProfile(
                loadingUserProfileModel: loadingUserProfileModel,
              ));

    default:
      return null;
  }
}
