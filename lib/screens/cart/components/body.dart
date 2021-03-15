import 'package:flutter/material.dart';
import 'package:shopping_app/screens/cart/components/cartcard.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 7,
            child: Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [for (int i = 0; i < 10; i++) CartCard()],
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
            ))
      ],
    );
  }
}
