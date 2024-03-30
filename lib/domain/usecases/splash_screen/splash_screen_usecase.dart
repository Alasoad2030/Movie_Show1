import 'dart:async';
import 'package:get/get.dart';

startTimerSplashScreen() async {
  var duration = const Duration(seconds: 5);
  return Timer(duration, () => Get.offNamed('whoIsWatching'));
}
