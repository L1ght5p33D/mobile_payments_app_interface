import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';
import 'dart:math' as math;

List user_card_data = [
{"brand": "visa",
  "card_type": "Debit Card",
  "balance": "2345",
  "last_four": "8989",
  "bank": "Bank of America",
  "expire": "7/12"
},
  {"brand": "mastercard",
    "card_type": "Cashback Mastercard",
    "balance": "2345",
    "last_four": "8989",
    "bank": "JPMorgan",
    "expire": "8/19"
  },
  {"brand": "paypal",
    "card_type": "PayPal Credit",
    "balance": "455.50",
    "bank": "Paypal",
    // "last_four": "8989"
  }
];

Map card_logo_image_data = {
  "paypal": "assets/images/"
}

class CashHomePage extends StatefulWidget {
  const CashHomePage({Key? key}) : super(key: key);

  @override
  _CashHomePageState createState() => _CashHomePageState();
}

class _CashHomePageState extends State<CashHomePage> {
  @override
  Widget build(BuildContext context) {
    ss = MediaQuery.of(context).size;

    return SafeArea(child: Scaffold(
      body: Container(
        height: ss.height,
        child:Column(children: [
          // toolbar
          Container(height: ss.height * .08,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          Transform.rotate(
            angle: -math.pi / 12.0,
            child:
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)))
          ],)),

          //card row
          Container(height: ss.height * .28,
          child:ListView.builder(
              itemBuilder: (context,card_idx){
                    return CreditCardLVI(card_data: user_card_data[card_idx], card_idx: card_idx,);
          }))


        ],)
      ),
    ));
  }
}


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

    return Container(width: ss.width * .89,
                    height: ss.width * .38,
        child: Stack(children:[
            ClipRRect(borderRadius: BorderRadius.circular(ss.width*.09),
          child:Image.asset(card_img_path,
            width: ss.width * .89,
            height: ss.width * .38,
            fit: BoxFit.cover,
          )),

            Column(children: [
              Row(children: [
                Text("Balance"),
                Image.asset(card_logo_image_data[card_data["brand"]])
              ],)
            ],)

    ])
      );
  }
}
