import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:repair_home/fix/we_offerfix_item.dart';
import 'package:repair_home/model/we_offerfix_model.dart';

class OfferFixList extends StatelessWidget {
  // const OfferFixList({Key? key}) : super(key: key);

  final offerFixList = OfferFix.generateOfferFixs();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
    height: 100,
    margin: EdgeInsets.only(bottom: 40),
    child: ListView.separated(
      // physics: NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) => GestureDetector(
        onTap: (){},
        child: WeOfferItem(offerFixList[index]),
      ),
      separatorBuilder: (_, index) => SizedBox(height: 10,),
      itemCount: offerFixList.length),

      );

  }
}
