import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class OnScreenNumericKeypad extends StatefulWidget {
  OnScreenNumericKeypad({Key? key, required this.refresh}) : super(key: key);

  Function refresh;
  @override
  _OnScreenNumericKeypadState createState() => _OnScreenNumericKeypadState();
}

class _OnScreenNumericKeypadState extends State<OnScreenNumericKeypad> {

  Color key_color = Colors.transparent;
  double key_width = ss.width * .7 / 3;
  double key_height = ss.width * .7 / 3;
  double key_radius = ss.width * .04;
  TextStyle key_style = TextStyle(fontSize: ss.width*.05,
      fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white12,
        // height: ss.height * .45,
        // width: ss.width * .7,
        child:Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 1;
                      widget.refresh();
                    },
                    child:
                    Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("1",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 2;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("2",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 3;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("3",
                            style:key_style)))))
              ],),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 4;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:
                    Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("4",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 5;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("5",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 6;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("6",
                            style:key_style)))))
              ],),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 7;
                      widget.refresh();
                    },
                    child:
                    Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("7",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 8;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("8",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 9;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("9",
                            style:key_style)))))
              ],),

            Row(
              mainAxisSize: MainAxisSize.min,
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
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Text("0",
                            style:key_style))))),
                GestureDetector(
                    onTap: (){
                      g_numkey_val = 100;
                      widget.refresh();
                    },
                    child: Material(
                        elevation: ss.width*.2,
                        child:Container(
                        decoration: BoxDecoration(
                            color:key_color,
                            borderRadius: BorderRadius.circular(key_radius)),
                        width: key_width,
                        height: key_height,
                        child:Center(child:Icon(Icons.backspace_outlined,
                            size:key_height/3)                 ))))
              ],),
          ],));
  }
}