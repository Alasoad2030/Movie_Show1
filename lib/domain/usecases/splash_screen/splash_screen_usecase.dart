import 'dart:async';
import 'package:get/get.dart';
import 'package:movie_show/presentation/screens/who_is_watching/who_is_watching.dart';

startTimerSplashScreen() async {
  var duration = const Duration(seconds: 5);
  return Timer(duration, () => Get.off(const WhoIsWatching()));
}
