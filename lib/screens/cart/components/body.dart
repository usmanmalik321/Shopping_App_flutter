import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shopping_app/models/CartModel.dart';
import 'package:shopping_app/screens/cart/components/cartcard.dart';
import 'package:shopping_app/screens/cart/components/carttotal.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>();
    return Column(
      children: [
        Expanded(
            flex: 6,
            child: Slidable(
              actionPane: SlidableScrollActionPane(),
              actions: [
                IconSlideAction(
                  caption: "Delete",
                  color: Colors.blue,
                  icon: Icons.delete,
                  onTap: () => print("delte"),
                )
              ],
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) => CartCard(
                      cart.items[index], () => cart.remove(cart.items[index]))),
            )),
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
