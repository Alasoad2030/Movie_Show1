import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    super.key,
    required this.homeMoviesModel,
  });

  final HomeMoviesModel homeMoviesModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Overview',
          style: GoogleFonts.anton(fontSize: 25),
        ),
        Text(
          homeMoviesModel.overview,
          style: GoogleFonts.aBeeZee(),
          maxLines: 5,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
