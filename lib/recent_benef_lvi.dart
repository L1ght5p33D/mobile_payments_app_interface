import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class RecentBFS_LVI extends StatelessWidget {
  RecentBFS_LVI({Key? key, required this.benef,
    required this.benef_idx}) : super(key: key);

  Map benef;
  int benef_idx;

  @override
  Widget build(BuildContext context) {

      return
      Padding(
          padding: EdgeInsets.symmetric(horizontal:ss.width*.04),
          child:
        Container(
            height: ss.height * .13,
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Container(
              child:
                  ClipRRect(
                      borderRadius: BorderRadius.circular(ss.height * .045),
                  child: Image.asset(benef["pp_path"],
                    width: ss.height * .09,
                    height: ss.height * .09,)
              )),
              Container(
                  padding: EdgeInsets.only(top:ss.width*.01),
                  height: ss.height * .025,
                  child:Text(benef["name"],
                    style: TextStyle(fontSize: ss.height * .02),))

            ])));

  }
}

