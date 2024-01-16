import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String img;
  const IconBtn({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("work");
        },
        icon: Image.asset(img));
  }
}
