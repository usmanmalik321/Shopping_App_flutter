import "package:flutter/material.dart";
import 'package:from_css_color/from_css_color.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("3 items in cart",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Sub Total")
          ,Text("453432\$")
        ],),Divider(
          color: Colors.black,
          thickness: 0.1,
        ),Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Shipping")
          ,Text("453432\$")
        ]),Divider(
          color: Colors.black,
          thickness: 0.1,
        ),Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Total")
          ,Text("453432\$")
        ]),
        SizedBox(height: 20,),
       SizedBox(
         height: 40,
         width: double.infinity,
         child: ElevatedButton(style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            
            )
          
      ) ,backgroundColor: MaterialStateProperty.all<Color>(
                                 fromCssColor("#0A599D") )),onPressed: ()=>null, child: Text("Finalize Order",style: TextStyle(fontWeight: FontWeight.w300),),),
       )
      ],),
    );
  }

 
}
