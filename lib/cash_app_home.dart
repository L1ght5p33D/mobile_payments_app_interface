import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/creditcard_lvi.dart';
import 'package:cash_app_interface/recent_benef_lvi.dart';
import 'package:cash_app_interface/recent_trans_lvi.dart';

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
            angle: math.pi / 4,
            child:
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)))
          ],)),

          //card row
          Container(height: ss.height * .28,
          child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: user_card_data.length,
              itemBuilder: (context,card_idx){
                    return CreditCardLVI(card_data: user_card_data[card_idx], card_idx: card_idx,);
          })),

          Container(height: ss.height * .11,
              child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: benef_data.length,
                  itemBuilder: (context, benef_idx){
                    if (benef_idx == 0){
                      return
                        Container(height: ss.height * .076,
                            child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Container(
                                      height: ss.height * .07,
                                      decoration:
                                      BoxDecoration(
                                          border: Border.all(color:Colors.white, width: 1.0),
                                          borderRadius: BorderRadius.circular(ss.height * .035)),
                                      child: Center(child: Icon(Icons.arrow_forward_outlined))
                                  ),
                                  Container(height: ss.height * .012,
                                      child:Text("Send",
                                        style: TextStyle(fontSize: ss.height * .01),))

                                ]));
                    }
                    return RecentBFS_LVI(
                      benef: benef_data[benef_idx - 1], benef_idx: benef_idx -1);
                  })),

          Container(height: ss.height * .045,
                      child: Text("Recent Transactions")),
          Container(height: ss.height * .44,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: trans_data.length,
                      itemBuilder: (context, trans_idx){
                        return RecentTrans_LVI(
                            trans: trans_data[trans_idx], trans_idx: trans_idx);
                      })),



        ],)
      ),
    ));
  }
}








