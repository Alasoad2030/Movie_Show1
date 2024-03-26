import 'package:flutter/material.dart';

Container tvAndMoviesButton({required String text}) {
  return Container(
    height: 40,
    padding: const EdgeInsets.fromLTRB(5, 1, 5, 2),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )),
  );
}
