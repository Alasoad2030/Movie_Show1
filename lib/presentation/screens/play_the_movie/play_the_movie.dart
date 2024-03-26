import 'package:flutter/material.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';
import 'package:movie_show/domain/usecases/play_the_movie/play_the_movie_usecase.dart';
import 'package:movie_show/presentation/screens/play_the_movie/provider/play_the_movie_provider.dart';
import 'package:movie_show/presentation/utils/constants.dart';
import 'package:movie_show/presentation/widgets(share_widgets)/custome_button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

import 'components/column_of_icon_and_text.dart';

class PlayTheMovie extends StatefulWidget {
  final HomeMoviesModel homeMoviesModel;
  const PlayTheMovie({super.key, required this.homeMoviesModel});

  @override
  State<PlayTheMovie> createState() => _PlayTheMovieState();
}

class _PlayTheMovieState extends State<PlayTheMovie> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<PlayTheMovieProvider>(context, listen: false)
          .initializeTheMovie();
    });
    super.initState();
  }

  @override
  void dispose() {
    Provider.of<PlayTheMovieProvider>(context).videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          FutureBuilder(
            future:
                Provider.of<PlayTheMovieProvider>(context).intializeMovieFuture,
            builder: (context, snapshot) => Container(
                width: 100.w,
                height: 25.h,
                color: Colors.amber,
                child: Provider.of<PlayTheMovieProvider>(context)
                        .videoPlayerController
                        .value
                        .isInitialized
                    ? VideoPlayer(Provider.of<PlayTheMovieProvider>(context)
                        .videoPlayerController)
                    : const Center(
                        child: Text('there is an error in the video'),
                      )),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Text(
                widget.homeMoviesModel.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'New ',
                    style: TextStyle(color: Colors.green),
                  ),
                  const Text('2024'),
                  Container(
                    color: Colors.grey,
                    child: const Text(' 3> '),
                  ),
                  const Text(' 8 Episodes'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    child: const Column(
                      children: [
                        Text(
                          ' TOP ',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' 10 ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    ' #1 in TV Shows Today',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              customeButton(
                  text: 'Play',
                  icon: Icons.play_arrow,
                  backColor: Colors.white,
                  textAndIconColor: Colors.black,
                  function: () {
                    playTheMovieUseCase(context);
                  }),
              customeButton(
                  text: 'Download',
                  icon: Icons.file_download_outlined,
                  backColor: backButtonGaryColor,
                  textAndIconColor: Colors.white,
                  function: () {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.homeMoviesModel.overview,
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  columnOfIconAndText(icon: Icons.add, text: 'My List'),
                  columnOfIconAndText(
                      icon: Icons.thumb_up_alt_outlined, text: 'Rate'),
                  columnOfIconAndText(icon: Icons.share, text: 'Share'),
                  SizedBox(
                    width: 20.w,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
