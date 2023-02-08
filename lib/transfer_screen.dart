import 'package:flutter/material.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';
import 'package:cash_app_interface/ca_globals.dart';

class TransferScreen extends StatefulWidget {
   TransferScreen({Key? key, required this.benef}) : super(key: key);

  Map benef;

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {

  int entered_amount = 0;

  update_entered() {
    if (entered_amount == 0) {
      setState(() {
        entered_amount = g_numkey_val;
      });
    }
    else {
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
          height: ss.height * .25,
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

int g_numkey_val = 0;

class OnScreenNumericKeypad extends StatefulWidget {
  OnScreenNumericKeypad({Key? key, required this.refresh}) : super(key: key);

  Function refresh;
  @override
  _OnScreenNumericKeypadState createState() => _OnScreenNumericKeypadState();
}

class _OnScreenNumericKeypadState extends State<OnScreenNumericKeypad> {
  @override
  Widget build(BuildContext context) {
    return Container(height: ss.height * .5,
                    width: ss.width,
    child:Column(children: [
      Row(children: [
    GestureDetector(
    onTap: (){
        print("test");
        g_numkey_val = 1;
        widget.refresh();
        },
        child:Container(
            color:Colors.red,
            child:Text("1"))),
    GestureDetector(
        onTap: (){
          print("test");
          g_numkey_val = 1;
          widget.refresh();
        },
        child:Container(
            color:Colors.red,
            child:Text("3"))),
    GestureDetector(
        onTap: (){
          print("test");
          g_numkey_val = 1;
          widget.refresh();
        },
        child:Container(
            color:Colors.red,
            child:Text("3")))
      ],),
      Row(children: [],),
      Row(children: [],),
      Row(children: [],)
    ],));
  }
}
