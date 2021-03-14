import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';

class TitleAndImage extends StatelessWidget {
  const TitleAndImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hand Bag",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Text(
              product.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Price: "),
                  TextSpan(
                      text: "\$" + product.price.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold))
                ])),
                SizedBox(
                  width: kDefaultPaddin,
                ),
                Expanded(
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(
                      product.image,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
