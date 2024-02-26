import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Show',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.blueGrey[300]),
      home: const Home(),
    );
  }
}
