import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/models/CartModel.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/cart/cart_screen.dart';
import 'package:shopping_app/screens/details/components/body.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>();
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: null),
          SizedBox(
            width: 10,
          ),
          Badge(
            showBadge: cart.items.length==0?false:true,
            badgeColor: Colors.blue,
            elevation: 1,
            position: BadgePosition.topEnd(top: 0,end: 2),
            badgeContent: Text(cart.items.length.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
            child: IconButton(
                icon: SvgPicture.asset("assets/icons/cart.svg"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()))),
          )
        ],
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: product.color,
        elevation: 0,
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
