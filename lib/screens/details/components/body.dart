import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/screens/details/components/description.dart';
import 'package:shopping_app/screens/details/components/options.dart';
import 'package:shopping_app/screens/details/components/titleandimage.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                      top: size.height * 0.12, left: 40, right: 50),
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
                    ItemDescription()
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
