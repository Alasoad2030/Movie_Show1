import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_show/constant.dart';
import 'package:movie_show/model/movies_data.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.moviesData,
  });

  final MoviesData moviesData;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      backgroundColor: Colors.blueGrey[300],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          moviesData.title,
          style: GoogleFonts.abel(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        background: ClipRRect(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(12)),
          child: Image.network(
            '${Constants.imageUrl}${moviesData.backdropPath}',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
      ),
      expandedHeight: 400,
      leading: Container(
        margin: const EdgeInsets.all(8),
        height: 70,
        width: 70,
        color: Colors.black,
        child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
    );
  }
}
