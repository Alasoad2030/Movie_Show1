import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_show/model/movies_data.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    super.key,
    required this.moviesData,
  });

  final MoviesData moviesData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Overview',
          style: GoogleFonts.anton(fontSize: 25),
        ),
        Text(
          moviesData.overview,
          style: GoogleFonts.aBeeZee(),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
