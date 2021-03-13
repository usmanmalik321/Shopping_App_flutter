import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          IconButton(
              icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: null)
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
