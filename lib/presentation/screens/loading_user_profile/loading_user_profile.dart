import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/usecases/loading_user_profile_screen/loading_user_profile_usecase.dart';
import 'component/custome_progress_indicator.dart';
import 'component/loading_user_profile_model.dart';
import 'component/user_profile_image.dart';

class LoadingUserProfile extends StatefulWidget {
  final LoadingUserProfileModel loadingUserProfileModel;

  const LoadingUserProfile({
    Key? key,
    required this.loadingUserProfileModel,
  }) : super(key: key);

  // LoadingUserProfile(
  //     {super.key, required this.userImage, required this.userName});

  @override
  State<LoadingUserProfile> createState() => _LoadingUserProfileState();
}

class _LoadingUserProfileState extends State<LoadingUserProfile> {
  @override
  void initState() {
    super.initState();

    startTimerLoadingUserProfile(
        userName: widget.loadingUserProfileModel.userName,
        userImage: widget.loadingUserProfileModel.userImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loadingUserProfileImage(
              userImage: widget.loadingUserProfileModel.userImage),
          SizedBox(
            height: 10.h,
          ),
          customeProgressIndicator(),
        ],
      )),
    );
  }
}
