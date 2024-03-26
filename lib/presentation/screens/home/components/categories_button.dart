import 'package:flutter/material.dart';

Container categoriesButton() {
  return Container(
      height: 40,
      //  width: 120,
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          items: const [
            DropdownMenuItem(
                child: Text('Categories',
                    style: TextStyle(color: Colors.white, fontSize: 13)))
          ],
          onChanged: (value) {},
        ),
      ));
}
