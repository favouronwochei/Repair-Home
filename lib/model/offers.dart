import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class Offer{
  String dueDate;
  String details;
  String image;
  Color colorTopContainer;
  Color colorMainContainer;

  Offer(this.dueDate, this.details, this.image, this.colorTopContainer, this.colorMainContainer);

  static List<Offer> generateOffers(){
    return[
      Offer('Valid until june 30th', 'Cashback 5%\nfrom each \nrepair!',
          'assets/images/ATTRAC.png', HexColor("#CAE8F2"), HexColor("#EEEDF3")),
      Offer('Valid until june 30th', 'Sale on \nappliances \nrepair!',
          'assets/images/washmachine.png',  HexColor("#EEEDF3"), HexColor("#D1D3FA")),
      Offer('Valid until june 30th', 'Sale on \nappliances \nrepair!',
          'assets/images/ATTRAC.png', HexColor("#CAE8F2"), HexColor("#EEEDF3")),
      Offer('Valid until june 30th', 'Sale on \nappliances \nrepair!',
          'assets/images/ATTRAC.png', HexColor("#EEEDF3"), HexColor("#D1D3FA")),
    ];
  }
}