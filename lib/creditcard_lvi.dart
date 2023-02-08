import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class CreditCardLVI extends StatelessWidget {
  CreditCardLVI({Key? key, required this.card_data,
    required this.card_idx}) : super(key: key);

  Map card_data;
  int card_idx;

  @override
  Widget build(BuildContext context) {
    String card_img_path = "";
    if (card_idx.remainder(3) == 2){
      card_img_path = "assets/images/cardbg_blue.png";
    }
    if (card_idx.remainder(3) == 1){
      card_img_path = "assets/images/cardbg_green.png";
    }
    if (card_idx.remainder(3) == 0){
      card_img_path = "assets/images/cardbg_red.png";
    }


    double card_height = ss.height * .27;
    double card_width = ss.width * .88;

    return Container(
        width: card_width,
        height: card_height,
        child: Stack(children:[
            Padding(padding: EdgeInsets.symmetric(horizontal:ss.width*.02),
          child:
                  Container(
                      width: card_width,
                      height: card_height,
                      padding: EdgeInsets.only(right:ss.width*.02),
                      child:
                      ClipRRect(borderRadius: BorderRadius.circular(ss.width*.09),
                          child:
              Image.asset(card_img_path,
                width: card_width,
                height: card_height,
                fit: BoxFit.cover,
              )))),

    Container(
      padding: EdgeInsets.symmetric(horizontal: ss.width * .08),
    child:
    Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance"),
                Padding(padding: EdgeInsets.symmetric(horizontal:ss.width*.02),
                  child:
                Image.asset(card_logo_image_data[card_data["brand"]],
                            width: ss.width * .1,
                            height: ss.width * .1))
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("\$" + card_data["balance"],
                      style:TextStyle(fontSize: ss.width*.1))
              ],),

            card_data.containsKey("last_four")?
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("**** **** **** " + card_data["last_four"]),
                Padding(padding: EdgeInsets.only(left:ss.width*.04),
                    child: Text(card_data["expire"]))
              ],): Container(child:Text("PayPal Credit",
            )                       )
          ]),),


        ])
    );
  }
}