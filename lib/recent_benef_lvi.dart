import 'package:cash_app_interface/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/ca_state.dart';
import 'package:cash_app_interface/AppStateModel.dart';

class RecentBFS_LVI extends StatelessWidget {
  RecentBFS_LVI({Key? key, required this.benef}) : super(key: key);

  Map benef;
  AppStateContainerState? asc;
  AppState? state;

  @override
  Widget build(BuildContext context) {
    asc = AppStateContainer.of(context);
    state = asc!.state;

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
                return TransferScreen(benef:benef, user_card: user_card_data[state!.card_chosen_idx]);
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

