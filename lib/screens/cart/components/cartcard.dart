import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:shopping_app/screens/cart/components/plus.dart';

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 20,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ]),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset("assets/images/bag_1.png"),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1, color: Colors.black),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color:fromCssColor("#E9EEF7") ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                        child: Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color:fromCssColor("#0A599D"),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  Text(
                    "Hand Bag",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PlusMinusProduct(),
                      Container(
                        child: Text("\$200"),
                        margin: EdgeInsets.only(right: 30),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.white),
            ),
            flex: 7,
          ),
        ],
      ),
    );
  }
}
