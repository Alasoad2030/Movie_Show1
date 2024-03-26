import 'package:flutter/material.dart';
import '../../../domain/usecases/who_is_whatching_screen/who_is_whatching_usecase.dart';
import 'components/build_custome_grid_view.dart';
import 'components/custome_appbar.dart';

class WhoIsWatching extends StatefulWidget {
  const WhoIsWatching({super.key});

  @override
  State<WhoIsWatching> createState() => _WhoIsWatchingState();
}

class _WhoIsWatchingState extends State<WhoIsWatching> {
  @override
  void initState() {
    super.initState();

    changeImageProfileSize(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(),
      backgroundColor: Colors.black,
      body: buildCustomeGrideView(context),
    );
  }
}
