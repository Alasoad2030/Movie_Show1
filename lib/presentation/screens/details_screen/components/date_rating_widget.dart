import 'package:flutter/material.dart';

class DateRatingWidget extends StatelessWidget {
  const DateRatingWidget(
      {super.key, required this.textTitle, required this.textValue});

  final String textValue;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [Text(textTitle), Text(textValue)],
      ),
    );
  }
}
