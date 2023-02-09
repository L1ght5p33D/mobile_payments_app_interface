import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';

class TransferSuccessScreen extends StatelessWidget {
   TransferSuccessScreen({Key? key,
     required this.benef,
     required this.amount}) : super(key: key);

  Map benef;
  int amount;

  Map send_account_data = {
    "last_four": "2323",
    "balance": "12345"
  };

  @override
  Widget build(BuildContext context) {

    String new_account_balance;

    new_account_balance = (int.parse(send_account_data["balance"]) - amount).toString();

    return SafeArea(child: Scaffold(
      body: Container(height: ss.height,
      child: Stack(children: [
        Image.asset(
          "assets/images/bm_bg_op.png",
          width:ss.width,
          height:ss.height,
          fit: BoxFit.cover,) ,

        Container(height: ss.height,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(onPressed: (){}, icon:Transform.rotate(
              angle: math.pi / 6,
              child: Icon(Icons.send)))],),

            Container(height: ss.height * .79,
            child:Stack(children: [
              Container(
                  height: ss.height * .16,
                  width: ss.height * .16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ss.height * .08),
                      border: Border.all(color: Colors.grey[400]!,
                          width: ss.height * .02)),
                  child:  ClipRRect(
                      borderRadius: BorderRadius.circular(ss.height * .08),
                      child:Image.asset(benef["pp_path"],
                        height: ss.height * .16,
                        width: ss.height * .16,
                        fit: BoxFit.contain,))
              ),

              Positioned(
                  bottom: 0.0,
                  child:
              Container(
                height: ss.height * .71,
                width: ss.width * .88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ss.width*.8),
                  color: Colors.grey[400]
                ),
                child:Column(children: [
                  Padding(padding: EdgeInsets.only(top:ss.height * .1),
                  child: Text(benef["name"]),
                  ),
                  Text("**** **** **** " + benef["last_four"]),

                  Padding(padding: EdgeInsets.only(top:ss.height * .1),
                    child: Text("Transfer Success"),
                  ),

                  Padding(padding: EdgeInsets.only(top:ss.height * .1, left:ss.width*.01, right:ss.width*.01),
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[

                  Padding(padding: EdgeInsets.only(top:ss.height * .1),
                    child:
                    Column(mainAxisSize: MainAxisSize.min,
                        children:[
                    Text("**** **** **** " + send_account_data["last_four"]),
                    Text(send_account_data["balance"])
                    ])
                  ),
                        Text("\$" + new_account_balance)

                    ])),

                  Text( "-\%" +amount.toString())
                ],)

              ))
            ],)
            ),

              Row(children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.read_more))
              ],)

          ],))

      ],),),
    ));
  }
}
