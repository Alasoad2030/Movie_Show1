import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customeButton(
    {required String text,
    required IconData icon,
    required void Function()? function,
    required Color backColor,
    required Color textAndIconColor}) {
  return Container(
    margin: const EdgeInsets.all(3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
    ),
    width: 40.w,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backColor),
        iconColor: const MaterialStatePropertyAll(Colors.black),
      ),
      onPressed: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: textAndIconColor,
          ),
          Text(
            text,
            style: TextStyle(
                color: textAndIconColor,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
