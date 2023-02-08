import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/creditcard_lvi.dart';
import 'package:cash_app_interface/recent_benef_lvi.dart';


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
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,card_idx){
                    return CreditCardLVI(card_data: user_card_data[card_idx], card_idx: card_idx,);
          })),

          Container(height: ss.height * .12,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, benef_idx){
                    return RecentBFS_LVI(
                      benef: benef_data[benef_idx], benef_idx: benef_idx);
                  })),

          Container(height: ss.height * .05,
                      child: Text("Recent Transactions")),
          Container(height: ss.height * .47,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, trans_idx){
                        return RecentTrans_LVI(
                            benef: trans_data[trans_idx], trans_idx: trans_idx);
                      })),



        ],)
      ),
    ));
  }
}

List<Map> trans_data = [
  {"trans_user": "Ben",
    "date": "July 8, 2022",
    "amount": "34.56",
    "cod": "debit"
  },
  {"trans_user": "Alexa",
    "date": "August 2, 2022",
    "amount": "5.00",
    "cod": "credit"
  },
  {"trans_user": "Catherine",
    "date": "August 9, 2022",
    "amount": "50.00",
    "type": "debit"
  }
];

class RecentTrans_LVI extends StatelessWidget {
  const RecentTrans_LVI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ss.width,
      height: ss.height * .12,
      child:Center(child:
        Container(
          width: ss.width * .95,
          height: ss.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ss.width*.04),
                color: Colors.grey[800],
          ),
          child: Row(children: [
            
          ],)
        ),)
    );
  }
}



