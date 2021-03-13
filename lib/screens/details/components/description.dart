import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';

class ItemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Desciption",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 20,
        ),
        Text(dummyText)
      ],
    );
  }
}
