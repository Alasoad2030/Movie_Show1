//import 'package:video_player/video_player.dart';

import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/play_the_movie/provider/play_the_movie_provider.dart';
import 'package:provider/provider.dart';

playTheMovieUseCase(BuildContext context) {
  Provider.of<PlayTheMovieProvider>(context, listen: false).palyTheMovie();
}
