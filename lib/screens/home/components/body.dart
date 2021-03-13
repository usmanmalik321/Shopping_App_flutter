import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/details/detail_screen.dart';
import 'package:shopping_app/screens/home/components/cards.dart';
import 'package:shopping_app/screens/home/components/categories.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var activeIndex = 0;
  void update(newIndex) {
    setState(() {
      activeIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10),
        child: Text(
          "Women",
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      Categories(
        update: (var newIndex) => update(newIndex),
      ),
      Expanded(
          child: GridView.builder(
        itemCount: activeIndex == 0 ? products.length : dresses.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.75, crossAxisCount: 2),
        itemBuilder: (context, index) => activeIndex == 0
            ? Cards(
                products[index].color,
                products[index].price,
                products[index].title,
                products[index].image,
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index]))))
            : Cards(
                dresses[index].color,
                dresses[index].price,
                dresses[index].title,
                dresses[index].image,
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: dresses[index])))),
      ))
    ]);
  }
}
