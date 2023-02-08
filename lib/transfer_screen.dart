import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:cash_app_interface/ca_globals.dart';
import 'package:cash_app_interface/numkeypad.dart';

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
      body:Container(height: ss.height,
      child:Column(children: [
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
                    height: ss.height * .2,
                    width: ss.height * .2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ss.height * .1),
                      border: Border.all(color: Colors.grey[300]!,
                        width: ss.height * .02)),
                        child:  ClipRRect(
                            borderRadius: BorderRadius.circular(ss.height * .1),
                            child:Image.asset(widget.benef["pp_path"],
                          height: ss.height * .2,
                          width: ss.height * .2,
                        fit: BoxFit.contain,))
                  ),
                Container(
                  child:Text(widget.benef["name"])
                ),
                Container(
                  child: Text("**** **** ****" + widget.benef["last_four"])
                ),

                Container(
                  child: Text("\$" + entered_amount.toString())
                ),


          ],),

        ),
        OnScreenNumericKeypad(refresh: update_entered,)
      ],)
      )
    ));
  }
}




