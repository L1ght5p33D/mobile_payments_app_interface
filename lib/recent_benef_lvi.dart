import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class RecentBFS_LVI extends StatelessWidget {
  RecentBFS_LVI({Key? key, required this.benef,
    required this.benef_idx}) : super(key: key);

  Map benef;
  int benef_idx;

  @override
  Widget build(BuildContext context) {
    if (benef_idx == 0){
      return
        Container(height: ss.height * .077,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                      height: ss.height * .07,
                      decoration:
                      BoxDecoration(
                          border: Border.all(color:Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(ss.height * .035)),
                      child: Center(child: Icon(Icons.arrow_forward_outlined))
                  ),
                  Container(height: ss.height * .012,
                      child:Text("Send",
                        style: TextStyle(fontSize: ss.height * .01),))

                ]));
    }
    else{
      return
        Container(height: ss.height * .077,
            child:Column(children:[
              Container(
                  height: ss.height * .07,
                  decoration:
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(ss.height * .035)),
                  child: Center(child: Image.asset(benef["pp_path"],
                    width: ss.height * .07,
                    height: ss.height * .07,))
              ),
              Container(height: ss.height * .012,
                  child:Text(benef["name"],
                    style: TextStyle(fontSize: ss.height * .01),))

            ]));
    }
  }
}

