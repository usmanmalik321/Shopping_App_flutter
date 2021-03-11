import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hand Bag",
    "Jewlory",
    "footWear",
    "Dresses",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategory(index),
        itemCount: categories.length,
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? kTextColor : Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                height: 2,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.white,
              )
            ],
          ),
        ),
      );
}
