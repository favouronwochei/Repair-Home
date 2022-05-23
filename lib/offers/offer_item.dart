import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/offers.dart';

class OfferItem extends StatelessWidget {
  // const OfferItem({Key? key}) : super(key: key);

  final Offer offer;

  OfferItem(this.offer);



  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      // padding: EdgeInsets.only(left: 10),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: offer.colorMainContainer,
      ),
      child: Stack(
        children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: offer.colorTopContainer,
                ),
                child: Center(
                  child: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(offer.dueDate, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20 ),)
                    ],
                  ),
                ),
              )
            ),
          Positioned(
            top: 70,
            left: 40,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                // Text(offer.dueDate),
                Text(offer.details, style: TextStyle(
                  height: 1.4,
                  fontSize: 20.0, fontWeight: FontWeight.w600
                ),),
                // Image.asset(offer.image),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 50,
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  height: 140,
                    child: Image.asset(offer.image)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
