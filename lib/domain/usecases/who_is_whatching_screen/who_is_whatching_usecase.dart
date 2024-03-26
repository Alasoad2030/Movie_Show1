import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../presentation/screens/who_is_watching/provider/who_is_watching_provider.dart';

void changeImageProfileSize(BuildContext context) async {
  var duration = const Duration(seconds: 0);
  Timer(duration,
      () => context.read<WhoIsWatchingProvider>().changeContainerSize());
}
