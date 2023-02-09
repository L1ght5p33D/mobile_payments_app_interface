import 'package:cash_app_interface/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class RecentBFS_LVI extends StatelessWidget {
  RecentBFS_LVI({Key? key, required this.benef,
    required this.benef_idx, required this.card_chosen_idx}) : super(key: key);

  Map benef;
  int benef_idx;
  int card_chosen_idx;

  @override
  Widget build(BuildContext context) {

      return
      Padding(
          padding: EdgeInsets.symmetric(horizontal:ss.width*.04),
          child:
        Container(
            height: ss.height * .13,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return TransferScreen(benef:benef, user_card: user_card_data[card_chosen_idx]);
              }));
            },
            child:  Container(
              child:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(ss.height * .045),
                  child: Image.asset(benef["pp_path"],
                    width: ss.height * .09,
                    height: ss.height * .09,)
              ))),
              Container(
                  padding: EdgeInsets.only(top:ss.width*.01),
                  height: ss.height * .025,
                  child:Text(benef["name"],
                    style: TextStyle(fontSize: ss.height * .02),))

            ])));

  }
}

