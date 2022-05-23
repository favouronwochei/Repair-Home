import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color tagTextColor;
  final String text;
  final FontWeight weight;
  final double size;

  CustomText({required this.text, required this.tagTextColor, required this.weight, required this.size});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: tagTextColor, fontSize: size, fontWeight: weight),
    );
  }
}
