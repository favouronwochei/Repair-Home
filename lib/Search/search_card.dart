import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#F9F9F9"),
      margin: EdgeInsets.only(
        top: 20, left: 20, right: 20,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      width: double.maxFinite,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's broken?",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: HexColor("#1B1B1D").withOpacity(0.2)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search appliances',
                    style: TextStyle(color: Colors.grey,
                  fontSize: 18),),
                  Wrap(
                    children: [
                        Image.asset("assets/images/Vector.jpg")
                    ],
                  ),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
