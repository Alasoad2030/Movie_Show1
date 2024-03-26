import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayTheMovieProvider extends ChangeNotifier {
  late VideoPlayerController videoPlayerController;
  Future? intializeMovieFuture;

  initializeTheMovie() {
    videoPlayerController =
        VideoPlayerController.asset('asstes/video/hindi.mp4');
    intializeMovieFuture = videoPlayerController.initialize().then(
          (value) => notifyListeners(),
        );
  }

  playMovie() {
    videoPlayerController.play();
    notifyListeners();
  }
}
