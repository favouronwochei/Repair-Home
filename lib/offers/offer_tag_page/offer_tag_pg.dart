import 'package:flutter/material.dart';

class OfferTagPg extends StatelessWidget {
  const OfferTagPg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Offers", style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0, height: 1
          ),
          )
        ],
      ),
    );
  }
}
