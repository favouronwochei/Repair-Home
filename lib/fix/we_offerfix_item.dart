import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/offers.dart';

class weOfferItem extends StatelessWidget {
  // const weOfferItem({Key? key}) : super(key: key);


  // final Offer offer;

  // OfferItem(this.offer);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      // height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: HexColor("#D6E3FF"),
      ),
    );
  }
}
