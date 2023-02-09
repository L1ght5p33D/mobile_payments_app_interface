import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/numkeypad.dart';
import 'package:cash_app_interface/transfer_success_screen.dart';

class TransferScreen extends StatefulWidget {
   TransferScreen({Key? key, required this.benef}) : super(key: key);

  Map benef;

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {

  int entered_amount = 0;

  update_entered() {
    if (entered_amount == 0 && g_numkey_val != 100) {
      setState(() {
        entered_amount = g_numkey_val;
      });
    }
    else if (g_numkey_val == 100){
      String ea_str = entered_amount.toString();
      if (ea_str.length >1) {
        setState(() {
          entered_amount =
              int.parse(ea_str.substring(0, ea_str.length - 1));
          // entered_amount = g_test;
        });
      }
      else{
        setState(() {
          entered_amount = 0;
        });
      }
    }
    else if (g_numkey_val != 100){
      setState(() {
        entered_amount =
            int.parse(entered_amount.toString() + g_numkey_val.toString());
        // entered_amount = g_test;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:
      Stack(children:[
        Image.asset(
        "assets/images/bm_bg_op.png",
        width:ss.width,
        height:ss.height,
        fit: BoxFit.cover,) ,
      Container(height: ss.height,
      // child:Column(children: [
        child:ListView(children:[
        Container(height: ss.height * .06,
        child:Stack(children:[
        Row(mainAxisAlignment: MainAxisAlignment.center,
        children:[Text("Transferring")] ,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children:[IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back))] ,)
        ])),

        Container(
          height: ss.height * .3,
              child:Column(children: [
                Container(
                    height: ss.height * .16,
                    width: ss.height * .16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ss.height * .08),
                      border: Border.all(color: Colors.grey[400]!,
                        width: ss.height * .02)),
                        child:  ClipRRect(
                            borderRadius: BorderRadius.circular(ss.height * .08),
                            child:Image.asset(widget.benef["pp_path"],
                          height: ss.height * .16,
                          width: ss.height * .16,
                        fit: BoxFit.contain,))
                  ),
                Container(
                      padding:EdgeInsets.only(top:ss.width*.02),
                    child:Text(widget.benef["name"])
                ),
                Container(
                  child: Text("**** **** ****" + widget.benef["last_four"],
                                style: TextStyle(fontSize: ss.width*.03,
                                )             ,)
                ),

                Container(
                  padding:EdgeInsets.only(top:ss.width*.02),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  border: Border(bottom:BorderSide(
                      color: Colors.white,width:1.0))
                  ),
                    child: Text("\$" + entered_amount.toString(),
                              style: TextStyle(fontSize: ss.width*.06),)
                ),


          ],),

        ),

        Expanded(child:
        Container(
                  width: ss.width*.7,
        // child:ListView(children:[
child: Column(children:[
        OnScreenNumericKeypad(refresh: update_entered,),

            Container(height: ss.width*.02,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Padding(
              padding:EdgeInsets.all(ss.width*.03),
          child:
          GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TransferSuccessScreen(benef:widget.benef, amount: entered_amount);
                }));
              },
              child:Container(
            width:ss.width*.6,
              height: ss.width*.18,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(ss.width*.08),
                color: Colors.white,
              ),
              child:Center(child:Text("Transfer",
                                      style: TextStyle(color:Colors.black),)))))])

        ])))

      ],)
      )])
    ));
  }
}




