import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                // transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(
                      Icons.menu_outlined,
                      color: Colors.black, size: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              // SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                child:ClipOval(
                  child: Icon(Icons.shopping_cart_outlined, size: 35,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
