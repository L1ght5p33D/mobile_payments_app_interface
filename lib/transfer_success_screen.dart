import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/cash_app_home.dart';

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
          width: ss.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(height: ss.height * .66,
                      width: ss.width*.84,
            child:Stack(children: [
              Positioned(
                  bottom: 0.0,
                  child:
              Container(
                height: ss.height * .58,
                width: ss.width * .84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ss.width*.08),
                  color: Colors.grey[600]
                ),
                child:Column(children: [
                  Padding(padding: EdgeInsets.only(top:ss.height * .1),
                  child: Text(benef["name"]),
                  ),Padding(padding: EdgeInsets.only(top:ss.width * .02),
                  child:
                  Text("**** **** **** " + benef["last_four"],
                      style: TextStyle(fontSize: ss.width*.03,
                                        fontWeight: FontWeight.w300)   ,),),

                  Padding(padding: EdgeInsets.only(top:ss.height * .05),
                    child: Text("Transfer Success",
                        style: TextStyle(fontSize: ss.width*.05,
                            fontWeight: FontWeight.w500)),
                  ),

                  Padding(padding: EdgeInsets.only(top:ss.height * .07,
                      left:ss.width*.03, right:ss.width*.03),
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                    Column(mainAxisSize: MainAxisSize.min,
                        children:[
                    Text("**** **** **** " + send_account_data["last_four"],
                        style: TextStyle(fontSize: ss.width*.03,
                            fontWeight: FontWeight.w300)),
                    Text("\$"  + send_account_data["balance"],
                        style: TextStyle(fontSize: ss.width*.05,
                            fontWeight: FontWeight.w500))
                    ]),

                        Text("\$" + new_account_balance,
                            style: TextStyle(fontSize: ss.width*.05,
                                fontWeight: FontWeight.w400))

                    ])),

                  Padding(padding:EdgeInsets.only(top:ss.width*.05),
                  child: Expanded(child:
                      Container(
                          width: ss.width*.88,
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(width: 1.0, color: Colors.grey[200]!)),
                          ),
                          child:
                          Padding(padding:EdgeInsets.only(top:ss.width*.08),
                              child:
                              Center(child:Text( "-\$" +amount.toString(),
                                  style: TextStyle(fontSize: ss.width*.06,
                                      fontWeight: FontWeight.w500)))))))
                ],)

              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children:[
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
              )]),
            ],)
            ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                IconButton(onPressed: (){},
                    color: Colors.grey[900],
                    icon: Icon(Icons.read_more,
                    color: Colors.white,)),
                IconButton(onPressed: (){},
                    color: Colors.grey[900],
                    icon: Icon(Icons.send,
                      color: Colors.white,))
              ],),

          Padding(
          padding:EdgeInsets.all(ss.width*.02),
            child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return CashHomePage();
            }));
            },
            child:Container(
                width:ss.width*.6,
                height: ss.width*.18,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(ss.width*.08),
                  color: Colors.white,
                ),
                child:Center(child:Text("Done",
                  style: TextStyle(color:Colors.black),))))
            ]))

          ],))

      ],),),
    ));
  }
}
