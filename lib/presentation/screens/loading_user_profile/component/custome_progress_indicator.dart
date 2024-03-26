import 'package:flutter/material.dart';

Widget customeProgressIndicator() {
  return const SizedBox(
    width: 90,
    height: 90,
    child: CircularProgressIndicator(
      color: Colors.red,
      strokeWidth: 9,
    ),
  );
}
