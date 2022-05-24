import 'package:flutter/material.dart';
import '../model/offers.dart';
import 'offer_item.dart';

class OfferList extends StatelessWidget {
  // const OfferList({Key? key}) : super(key: key);

  final offerList = Offer.generateOffers();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){},
            child: OfferItem(offerList[index]),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 15),
          itemCount: offerList.length),
    );
  }
}
