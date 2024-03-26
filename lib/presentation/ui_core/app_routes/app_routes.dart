import 'package:flutter/material.dart';
import 'package:movie_show/presentation/screens/splash_screen/splash_screen.dart';
import 'package:movie_show/presentation/screens/who_is_watching/who_is_watching.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case 'whoIsWatching':
      return MaterialPageRoute(builder: (_) => const WhoIsWatching());
    case 'loadingUserProfile':
    //  return MaterialPageRoute(builder: (_)=>LoadingUserProfile(userImage: userImage, userName: userName))
    default:
      return null;
  }
}
