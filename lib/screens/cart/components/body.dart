import 'package:flutter/material.dart';
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
            child: Container(
        
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: [for (int i = 0; i < 10; i++) CartCard()],
                ),
              ),
            )),
        Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)))
                     ,
             child: CartTotal())
            )
      ],
    );
  }
}
