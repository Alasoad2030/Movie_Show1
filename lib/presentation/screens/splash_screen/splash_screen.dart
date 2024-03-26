import 'package:flutter/material.dart';
import 'package:movie_show/domain/usecases/splash_screen/splash_screen_usecase.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // var duration = Duration(seconds: 10);
    // Timer(duration, () => Get.off(WhoIsWatching()));
    startTimerSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/movie show.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
