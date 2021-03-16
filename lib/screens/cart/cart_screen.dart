import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/screens/cart/components/body.dart';
import 'package:from_css_color/from_css_color.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: fromCssColor("#EBEFF9"),
        title: Text(
          "MY CART",
          style: TextStyle(
              color: fromCssColor("#0A599D"),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        elevation: 0.0,
        // backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Stack(children: [
        Container(
            color: fromCssColor("#EBEFF9"),
            margin: EdgeInsets.only(top: 80),
            child: Body())
      ]),
    );
  }
}
