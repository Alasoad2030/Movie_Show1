import 'package:flutter/material.dart';
import 'package:movie_show/presentation/utils/constants.dart';
import 'package:movie_show/presentation/widgets(share_widgets)/custome_button.dart';
import '../../../../domain/usecases/home_screen/goto_play_movie_usecase.dart';

Row theRowButtonInTheStack(
    {required BuildContext context, required int index}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      customeButton(
        text: 'Play',
        icon: Icons.play_arrow_sharp,
        backColor: Colors.white,
        textAndIconColor: Colors.black,
        function: () {
          gotoPlayMovie(context, index);
        },
      ),
      customeButton(
        text: 'MY List',
        icon: Icons.add,
        backColor: backButtonGaryColor,
        textAndIconColor: Colors.white,
        function: () {},
      ),
    ],
  );
}
