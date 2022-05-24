import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:repair_home/model/we_offerfix_model.dart';

import '../model/offers.dart';

class WeOfferItem extends StatelessWidget {
  final OfferFix offerfix;
  WeOfferItem(this.offerfix);

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.symmetric(horizontal: 20,),
        // width: 200,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HexColor("#D6E3FF"),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor("#C7D9FF"),
                ),
                child: Wrap(
                  children: [
                    Image.asset(offerfix.image),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
