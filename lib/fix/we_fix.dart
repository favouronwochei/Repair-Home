import 'package:flutter/material.dart';

class WeFixIt extends StatelessWidget {
  const WeFixIt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "We Can Fix it", style: TextStyle(
            fontWeight: FontWeight.w500,
              fontSize: 20.0, height: 1,
          ),
          )
        ],
      ),
    );
  }
}
