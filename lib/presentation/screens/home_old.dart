// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomeOld extends StatelessWidget {
  const HomeOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/movie show.png',
          fit: BoxFit.fill,
          height: 90,
          width: 150,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
