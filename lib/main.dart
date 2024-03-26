import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/presentation/screens/home/provider/home_provider.dart';
import 'package:movie_show/presentation/screens/play_the_movie/provider/play_the_movie_provider.dart';
import 'package:movie_show/presentation/screens/splash_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'presentation/screens/navigation_bar/provider/navigation_bar_provider.dart';
import 'presentation/screens/who_is_watching/provider/who_is_watching_provider.dart';

//import 'package:movie_show/presentation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WhoIsWatchingProvider()),
        ChangeNotifierProvider(create: (_) => NavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => PlayTheMovieProvider()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
                DeviceType deviceType) =>
            GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //  onGenerateRoute: generateRoute,
          title: 'Movie Show',
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: Colors.blueGrey[300]),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
