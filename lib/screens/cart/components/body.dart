import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:shopping_app/screens/cart/components/cartcard.dart';
import 'package:shopping_app/screens/cart/components/carttotal.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 6,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                itemCount: 5,
                itemBuilder: (context, index) => CartCard())),
        SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 4,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: CartTotal()))
      ],
    );
  }
}
