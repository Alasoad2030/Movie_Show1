import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'build_custome_user.dart';

Widget buildCustomeGrideView(BuildContext context) {
  return Center(
    child: SizedBox(
      width: 90.w,
      height: 80.h,
      child: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          //  mainAxisSpacing: 0,
          //crossAxisSpacing: 10,
          shrinkWrap: true,
          children: [
            buildCustomeUser(
              context: context,
              userName: 'Eslam',
              imageProfile: 'assets/images/profile1.jpg',
            ),
            buildCustomeUser(
              context: context,
              userName: 'Noura',
              imageProfile: 'assets/images/profile2.jpg',
            ),
            buildCustomeUser(
              context: context,
              userName: 'Amar',
              imageProfile: 'assets/images/profile3.jpg',
            ),
            buildCustomeUser(
              context: context,
              userName: 'Ahmed',
              imageProfile: 'assets/images/profile4.jpg',
            ),
            buildCustomeUser(
              context: context,
              userName: 'Mohamed',
              imageProfile: 'assets/images/profile5.jpg',
            ),
          ]),
    ),
  );
}
