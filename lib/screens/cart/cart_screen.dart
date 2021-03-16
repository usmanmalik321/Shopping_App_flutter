import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/screens/cart/components/body.dart';
import 'package:from_css_color/from_css_color.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fromCssColor("#0A599D"),
        title: Text(
          "MY CART",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18),
        ),

        // backgroundColor: Colors.transparent,

        leading: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Stack(
          children: [Container(color: fromCssColor("#EBEFF9"), child: Body())]),
    );
  }
}
