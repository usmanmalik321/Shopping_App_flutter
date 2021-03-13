import 'package:flutter/material.dart';

class ColorOptions extends StatefulWidget {
  @override
  _ColorOptionsState createState() => _ColorOptionsState();
}

class _ColorOptionsState extends State<ColorOptions> {
  int _value = 1;

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Colors",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (int i = 1; i <= 3; i++)
                Radio(
                  value: i,
                  groupValue: _value,
                  activeColor: i == 1
                      ? Colors.blue
                      : i == 2
                          ? Colors.green
                          : Colors.red,
                  onChanged: (int value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
            ],
          )
        ],
      ),
    );
  }
}
