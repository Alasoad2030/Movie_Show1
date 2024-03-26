import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_show/data/apis/api_endpoints.dart';
//import 'package:movie_show/data/apis/api_endpoints.dart';

import 'package:movie_show/data/response_modle/home_models/home_movies_model.dart';

class CustomSliverAppBar extends StatelessWidget {
  final HomeMoviesModel homeMoviesModel;

  const CustomSliverAppBar({super.key, required this.homeMoviesModel});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      backgroundColor: Colors.blueGrey[300],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          homeMoviesModel.title,
          style: GoogleFonts.abel(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        background: ClipRRect(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(12)),
          child: Image.network(
            '${ApiEndpoints.baseImageUrl}${homeMoviesModel.backdropPath}',
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
