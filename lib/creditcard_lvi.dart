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


    double card_height = 200.0;
    double card_width = 355.0;
    if( ss.height * .28 > 321){
      card_width = 555.0;
      card_height = 321.0;
    }
    else if( ss.height * .28 < 321 && ss.height * .28 > 288){
      card_width = 455.0;
      card_height = 278.0;
    }
    return Container(
        width: card_width,
        height: card_height,
        child: Stack(children:[
          ClipRRect(borderRadius: BorderRadius.circular(ss.width*.09),
              child:Image.asset(card_img_path,
                width: 555.0,
                height: 321.0,
                fit: BoxFit.cover,
              )),

          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance"),
                Image.asset(card_logo_image_data[card_data["brand"]],
                            width: ss.width * .08,
                            height: ss.width * .08)
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("\$" + card_data["balance"])
              ],)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("**** **** **** " + card_data["last_four"]),
              Padding(padding: EdgeInsets.only(left:ss.width*.04),
                  child: Text(card_data["expire"]))
            ],)

        ])
    );
  }
}