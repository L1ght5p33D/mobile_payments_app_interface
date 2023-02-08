import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';


class RecentTrans_LVI extends StatelessWidget {
  RecentTrans_LVI({Key? key, required this.trans,
    required this.trans_idx}) : super(key: key);

  // transaction data
  Map trans;
  int trans_idx;

  @override
  Widget build(BuildContext context) {
    String user_pp_path = "";

    benef_data.forEach((element) {
      if (element["name"] == trans["trans_user"]){
        user_pp_path = element["pp_path"];
      }
    });
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(ss.width*.025),
                  child:Image.asset(user_pp_path,
                    width: ss.height * .08,
                    height: ss.height * .08,)
              ),
              Column(children: [
                Container(width: ss.width*.66,
                    child: trans["trans_user"]),
                Container(width: ss.width*.66,
                    child: trans["date"])
              ],),

              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Text(trans["cod"] == "credit"? "+" : "-" + trans["amount"])
                        ])
                  ])
            ],)
        ),)
    );
  }
}