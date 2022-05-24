import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_home/fix/we_offerfix_item.dart';
import 'package:repair_home/model/we_offerfix_model.dart';

class OfferFixList extends StatelessWidget {
  // const OfferFixList({Key? key}) : super(key: key);

  final offerFixList = OfferFix.generateOfferFixs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){},
          child: WeOfferItem(offerFixList[index]),
        ),
        separatorBuilder: (_, index) => SizedBox(height: 30,),
        itemCount: offerFixList.length),

    );
  }
}
