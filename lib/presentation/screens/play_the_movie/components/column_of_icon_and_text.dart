import 'package:flutter/material.dart';

Widget columnOfIconAndText({required String text, required IconData icon}) {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
            size: 35,
          )),
      Text(
        text,
        style: const TextStyle(color: Colors.grey),
      )
    ],
  );
}
