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
            width: ss.width * .97,
            height: ss.height * .1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ss.width*.04),
              color: Colors.grey[900],
            ),
            child:Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(ss.width*.025),
                  child:Image.asset(user_pp_path,
                    width: ss.height * .08,
                    height: ss.height * .08,)
              ),
            Padding(
              padding:EdgeInsets.only(left:ss.width*.02, top: ss.width*.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(width: ss.width*.4,
                    child: Text(trans["trans_user"],
                        style: TextStyle(color: Colors.white))),
                Container(width: ss.width*.4,
                    child: Text(trans["date"],
                                style: TextStyle(
                                  color:Colors.white,
                                  fontSize: ss.width*.035,
                                  fontWeight: FontWeight.w300
                                ),))
              ],)),
            Expanded(
                // width: ss.width*.16,
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Padding(
                            padding:EdgeInsets.only(right:ss.width*.02),
                            child:
                          Text(trans["cod"] == "credit"? "+ \$" + trans["amount"] : "- \$" + trans["amount"],
                              style: TextStyle(color:Colors.white)))
                        ])
                  ]))
            ],)
        ),)
    );
  }
}