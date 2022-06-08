import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderPage extends StatelessWidget {
  // const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#E8CCC9"),
        // F6DFD9"
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Fix Microwave",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: _OrderBody(),
    );
  }
}

class _OrderBody extends StatelessWidget {
  // const _OrderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
              top: 60,
              right: 20,
              left: 20,
              // bottom: 60,
              bottom:0,
            ),
            decoration: BoxDecoration(
              color: HexColor("#E8CCC9"),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(10.5,4.5),
                  child: Image.asset(
                    "assets/images/orderlogo.png",
                    color: HexColor("#1B1B1D").withOpacity(0.1),
                  ),
                ),
                Image.asset("assets/images/Rectangle.png"),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30,top: 20),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("#E8CCC9"),
                        ),
                        child: Center(
                          child: Text(
                            "Reviews",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Icon(Icons.message, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 0,
                        top: 0,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.1)
                          ),
                      ),
                      child: ListTile(
                        title: Text("Repair", style: TextStyle(fontWeight: FontWeight.bold,),),
                        trailing: Text("\$50", style: TextStyle(fontWeight: FontWeight.bold,)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      height: 60,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 0,
                        top: 0,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.1)
                        )
                      ),
                      child: ListTile(
                        title: Text("Setup", style: TextStyle(fontWeight: FontWeight.bold,)),
                        trailing: Text("\$12", style: TextStyle(fontWeight: FontWeight.bold,)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      // flex: 7,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            "Order repair",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Order setup",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
