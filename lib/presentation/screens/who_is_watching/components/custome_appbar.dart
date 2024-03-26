import 'package:flutter/material.dart';

PreferredSizeWidget customeAppBar() {
  return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: const Text(
        'who\'s watching?',
        style: TextStyle(fontSize: 20),
      ),
      actions: [
        TextButton(
          child: const Text(
            'Edit',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ]);
}
