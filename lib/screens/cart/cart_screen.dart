import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/screens/cart/components/body.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY CART",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w100, fontSize: 25),
        ),
        elevation: 0,
        // backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: null),
      ),
      body: Container(decoration: BoxDecoration(), child: Body()),
    );
  }
}
