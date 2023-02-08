import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/creditcard_lvi.dart';



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
          })),

          Container(height: ss.height * .28,
              child:ListView.builder(
                  itemBuilder: (context, benef_idx){
                    return RecentBFS_LVI(
                      benef: benef_data[benef_idx], benef_idx);
                  }))

        ],)
      ),
    ));
  }
}

List<Map> benef_data = [
  {"name": "Alexa",
    "pp_path": "images/assets/user1_pp.png" },
  {"name": "Ben",
    "pp_path": "images/assets/user2_pp.png" },
  {"name": "Catherine",
    "pp_path": "images/assets/user3_pp.png" },
  {"name": "David",
    "pp_path": "images/assets/user4_pp.png"},
  {"name": "Elisa",
    "pp_path": "images/assets/user5_pp.png" },
];

class RecentBFS_LVI extends StatelessWidget {
  RecentBFS_LVI({Key? key, required this.benef,
                      required this.benef_idx}) : super(key: key);

  Map benef;
  int benef_idx;

  @override
  Widget build(BuildContext context) {
    if (benef_idx == 0){
      return
        Container(height: ss.height * .077,
          child:Column(children:[
        Container(
            height: ss.height * .07,
        decoration:
        BoxDecoration(
        border: Border.all(color:Colors.white, width: 1.0),),
        child: Center(child: Icon(Icons.arrow_forward_outlined))
      ),
            Container(height: ss.height * .012,
            child:Text("Send",
                        style: TextStyle(fontSize: ss.height * .01),))

          ]));
    }
    else{
      return
        Container(height: ss.height * .077,
            child:Column(children:[
              Container(
                  height: ss.height * .07,
                  decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(ss.height * .035)),
                  child: Center(child: Image.asset(benef["pp_path"],
                                                    width: ss.height * .07,
                                                    height: ss.height * .07,,))
              ),
              Container(height: ss.height * .012,
                  child:Text(benef["name"],
                    style: TextStyle(fontSize: ss.height * .01),))

            ]));
    }

  }
}




