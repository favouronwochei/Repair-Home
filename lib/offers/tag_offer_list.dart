import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:repair_home/offers/widget/custom_text.dart';

class TagOfferList extends StatefulWidget {

  const TagOfferList({Key? key}) : super(key: key);

  @override
  State<TagOfferList> createState() => _TagOfferListState();
}

class _TagOfferListState extends State<TagOfferList> {
  final tagOfferList = ['Offers', 'Kitchen', 'Livingroom', 'Bathroom'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    color:
                        selected == index ? Colors.black
                      : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                  ),

                  child: CustomText(
                    text: tagOfferList[index],
                      tagTextColor: selected == index ? Colors.white
                      : HexColor("#1B1B1D").withOpacity(0.3),
                    size: 16, weight: FontWeight.w500,
                  ),

                  // Text(
                  //   tagOfferList[index],
                  //   CustomText(color: HexColor("#1B1B1D").withOpacity(0.3)),
                  // ),

                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 5,
              ),
          itemCount: tagOfferList.length),
    );
  }
}


