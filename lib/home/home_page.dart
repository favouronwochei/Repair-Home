import 'package:flutter/material.dart';
import 'package:repair_home/Search/search_card.dart';
import 'package:repair_home/fix/we_fix.dart';
import 'package:repair_home/fix/we_offerfix_item.dart';
import 'package:repair_home/home/widgets/home_app_bar.dart';
import '../fix/we_offerfix_list.dart';
import '../offers/offer_list.dart';
import '../offers/offer_tag_page/offer_tag_pg.dart';
import '../offers/tag_offer_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SingleChildScrollView
                (
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SearchCard(),
                        OfferTagPg(),
                        OfferList(),
                        WeFixIt(),
                        TagOfferList(),
                        OfferFixList(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
