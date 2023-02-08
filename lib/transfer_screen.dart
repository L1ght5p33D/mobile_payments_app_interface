import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

int g_numkey_val = 0;

class OnScreenNumericKeypad extends StatefulWidget {
  OnScreenNumericKeypad({Key? key, required this.refresh}) : super(key: key);

  Function refresh;
  @override
  _OnScreenNumericKeypadState createState() => _OnScreenNumericKeypadState();
}

class _OnScreenNumericKeypadState extends State<OnScreenNumericKeypad> {

  Color key_color = Colors.transparent;
  double key_width = ss.width * .15;
  double key_height = ss.width * .15;
  double key_radius = ss.width * .04;
  TextStyle key_style = TextStyle(fontSize: ss.width*.05,
                                  fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
        padding: EdgeInsets.all(ss.width*.02),
        height: ss.height * .45,
        width: ss.width * .7,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    GestureDetector(
    onTap: (){
        g_numkey_val = 1;
        widget.refresh();
        },
        child:
        Container(
            decoration: BoxDecoration(
                color:key_color,
                borderRadius: BorderRadius.circular(key_radius)),
            width: key_width,
            height: key_height,
            child:Center(child:Text("1",
            style:key_style)))),
    GestureDetector(
        onTap: (){
          g_numkey_val = 2;
          widget.refresh();
        },
        child:Container(
            decoration: BoxDecoration(
                color:key_color,
                borderRadius: BorderRadius.circular(key_radius)),
            width: key_width,
            height: key_height,
            child:Center(child:Text("2",
                style:key_style)))),
    GestureDetector(
        onTap: (){
          g_numkey_val = 3;
          widget.refresh();
        },
        child:Container(
           decoration: BoxDecoration(
                color:key_color,
                borderRadius: BorderRadius.circular(key_radius)),
            width: key_width,
            height: key_height,
            child:Center(child:Text("3",
                style:key_style))))
      ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: (){
                  g_numkey_val = 4;
                  widget.refresh();
                },
                child:
                Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("4",
                        style:key_style)))),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 5;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("5",
                        style:key_style)))),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 6;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("6",
                        style:key_style))))
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: (){
                  g_numkey_val = 7;
                  widget.refresh();
                },
                child:
                Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("7",
                        style:key_style)))),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 8;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("8",
                        style:key_style)))),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 9;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("9",
                        style:key_style))))
          ],),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

                Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    ),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 0;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Text("0",
                        style:key_style)))),
            GestureDetector(
                onTap: (){
                  g_numkey_val = 100;
                  widget.refresh();
                },
                child:Container(
                    decoration: BoxDecoration(
                        color:key_color,
                        borderRadius: BorderRadius.circular(key_radius)),
                    width: key_width,
                    height: key_height,
                    child:Center(child:Icon(Icons.backspace_outlined,
                                            size:key_height/3)                 )))
          ],),
    ],));
  }
}
