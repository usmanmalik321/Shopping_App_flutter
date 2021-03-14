import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  var id;
  var color;
  var price;
  var title;
  var image;
  Function press;
  Cards(this.id, this.color, this.price, this.title, this.image, this.press);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(9),
          height: 200,
          width: 160,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "\$" + price.toString(),
                    style:
                        TextStyle(color: Colors.black, fontSize: 15, shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 30.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ]),
                  )),
              Hero(
                tag: '$id',
                child: Image.asset(
                  image,
                  width: 100,
                  height: 190,
                ),
              ),
              Expanded(
                child: Text(
                  title.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            ],
          )),
    );
  }
}
