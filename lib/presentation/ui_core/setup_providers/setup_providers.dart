import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/navigation_bar/provider/navigation_bar_provider.dart';
import 'package:provider/provider.dart';
import '../../screens/home/provider/home_provider.dart';
import '../../screens/play_the_movie/provider/play_the_movie_provider.dart';
import '../../screens/who_is_watching/provider/who_is_watching_provider.dart';

List<ChangeNotifierProvider> myProivders(BuildContext context) {
  return [
    ChangeNotifierProvider(create: (_) => WhoIsWatchingProvider()),
    ChangeNotifierProvider(create: (_) => NavigationBarProvider()),
    ChangeNotifierProvider(create: (_) => HomeProvider()),
    ChangeNotifierProvider(create: (_) => PlayTheMovieProvider()),
  ];
}
