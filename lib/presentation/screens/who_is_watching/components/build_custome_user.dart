import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_show/presentation/screens/who_is_watching/provider/who_is_watching_provider.dart';
import 'package:provider/provider.dart';

import '../../loading_user_profile/loading_user_profile.dart';

@override
Widget buildCustomeUser(
    {required BuildContext context,
    required String userName,
    required String imageProfile}) {
  return InkWell(
    onTap: () {
      AudioPlayer player = AudioPlayer();
      player.play(AssetSource('1.mp3'));
      Get.off(
        () => LoadingUserProfile(
          userImage: imageProfile,
          userName: userName,
        ),
      );
    },
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.amber),
          width: context.watch<WhoIsWatchingProvider>().contaierWidth,
          height: context.watch<WhoIsWatchingProvider>().contaierHieght,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Hero(
              tag: imageProfile,
              child: Image.asset(
                imageProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userName,
          style: const TextStyle(fontSize: 17),
        )
      ],
    ),
  );
}
