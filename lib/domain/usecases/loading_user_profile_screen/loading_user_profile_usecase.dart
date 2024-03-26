import 'dart:async';
import 'package:get/get.dart';
import 'package:movie_show/presentation/screens/navigation_bar/navigation_bar.dart';

startTimerLoadingUserProfile({
  required String userName,
  required String userImage,
}) async {
  var duration = const Duration(seconds: 6);
  return Timer(
      duration,
      () => Get.off(
            CustomeNavigationBar(
              titleName: userName,
              imageProfile: userImage,
            ),
          ));
}
