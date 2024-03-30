import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayTheMovieProvider extends ChangeNotifier {
  bool isPlaying = true;
  late VideoPlayerController videoPlayerController;
  // ignore: unused_field
  late Future<void> intializeMovieFuture;

  initializeTheMovie() async {
    videoPlayerController =
        VideoPlayerController.asset('assets/video/hindi.mp4');
    intializeMovieFuture = videoPlayerController.initialize();
    // videoPlayerController.play();
    notifyListeners();
  }

  palyTheMovie() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
      isPlaying = true;
    } else {
      videoPlayerController.play();
      isPlaying = false;
    }
    notifyListeners();
  }
}
