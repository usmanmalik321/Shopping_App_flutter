import 'package:flutter/material.dart';
import 'package:shopping_app/models/CartModel.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/ProductAmount.dart';
import 'package:shopping_app/screens/details/components/description.dart';
import 'package:shopping_app/screens/details/components/options.dart';
import 'package:shopping_app/screens/details/components/titleandimage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     var cart = context.watch<CartModel>();
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 40, right: 40),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ColorOptions(),
                        SizedBox(width: 80),
                        Column(
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 13, bottom: 13),
                              child: Text(
                                product.size.toString() + "cm",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black45),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ItemDescription(),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20.0,
                        direction: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProductAmount(),
                          OutlinedButton.icon(
                              onPressed: () => cart.add(product),
                              icon: Icon(
                                Icons.add,
                                color: product.color,
                              ),
                              label: Text(
                                "Add to Cart",
                                style: TextStyle(color: product.color),
                              )),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  product.color)),
                          onPressed: () => print("pressed"),
                          child: Text("Checkout")),
                    )
                  ]),
                ),
                Column(
                  children: [TitleAndImage(product: product)],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
