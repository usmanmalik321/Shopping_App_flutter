import 'package:flutter/material.dart';

class ProductAmount extends StatefulWidget {
  @override
  _ProductAmountState createState() => _ProductAmountState();
}

class _ProductAmountState extends State<ProductAmount> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            icon: Icon(Icons.add_circle_outline_outlined),
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
            }),
        Text(
          '$counter',
          style: TextStyle(fontSize: 30),
        ),
        IconButton(
            icon: Icon(Icons.remove_circle_outline_outlined),
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            })
      ],
    );
  }
}
