import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/home/home.dart';
import 'package:movie_show/presentation/screens/my_profile/my_profile.dart';
import 'package:movie_show/presentation/screens/navigation_bar/provider/navigation_bar_provider.dart';
import 'package:movie_show/presentation/screens/news_and_hot/new_and_hot.dart';
import 'package:provider/provider.dart';

import '../../../domain/usecases/home_screen/search_movies_usecase.dart';

class CustomeNavigationBar extends StatelessWidget {
  final String imageProfile;
  final String titleName;

  const CustomeNavigationBar(
      {super.key, required this.imageProfile, required this.titleName});

  @override
  Widget build(BuildContext context) {
    // int currentIndex = 0;
    List<Widget> pagesList = [
      Home(titleName: titleName, imageProfile: imageProfile),
      const NewsAndHot(),
      const MyProfile()
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('For $titleName'),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.fullscreen)),
          IconButton(
              onPressed: () async {
                await showSearch(
                    context: context, delegate: SearchMoviesUsecase());
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 40,
              ),
              activeIcon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.play_lesson_outlined, size: 40),
              activeIcon: Icon(
                Icons.play_lesson_rounded,
                size: 40,
              ),
              label: 'News & Hot'),
          BottomNavigationBarItem(
              icon: Hero(
                  tag: imageProfile,
                  child: Image.asset(
                    imageProfile,
                    width: 40,
                    height: 40,
                  )),
              activeIcon: Image.asset(imageProfile, width: 40, height: 40),
              label: 'My Profile'),
        ],
        currentIndex: Provider.of<NavigationBarProvider>(context).currentIndex,
        onTap: Provider.of<NavigationBarProvider>(context, listen: false)
            .changeTheCurrentIndex,
      ),
      body: pagesList[Provider.of<NavigationBarProvider>(context).currentIndex],
    );
  }
}
