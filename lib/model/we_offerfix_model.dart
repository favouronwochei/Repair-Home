import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferFix{
  String image;
  String fixItem;
  String fixTage;
  // Icon icon;

  OfferFix(this.image, this.fixItem, this.fixTage);

  static List<OfferFix> generateOfferFixs()
  {
    return[
      OfferFix ('assets/images/microwave.png','Fix Microwave','kitchen'),
      OfferFix('assets/images/tv.png','Fix TV set','Living room', ),
    ];
  }
}