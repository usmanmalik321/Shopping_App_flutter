import 'package:flutter/material.dart';

class PlusMinusProduct extends StatefulWidget {
  @override
  _PlusMinusProductState createState() => _PlusMinusProductState();
}

class _PlusMinusProductState extends State<PlusMinusProduct> {
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
          style: TextStyle(fontSize: 20),
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
