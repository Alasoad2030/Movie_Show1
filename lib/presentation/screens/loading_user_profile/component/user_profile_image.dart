import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget loadingUserProfileImage({required String userImage}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Hero(
      tag: userImage,
      child: Image.asset(
        userImage,
        fit: BoxFit.cover,
        height: 25.h,
        width: 25.h,
      ),
    ),
  );
}
