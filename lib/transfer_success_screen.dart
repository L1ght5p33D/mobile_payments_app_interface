import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cash_app_interface/ca_globals.dart';

class TransferSuccessScreen extends StatelessWidget {
   TransferSuccessScreen({Key? key, required this.benef}) : super(key: key);

  Map benef;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(height: ss.height,
      child: Stack(children: [
        Image.asset(
          "assets/images/bm_bg_op.png",
          width:ss.width,
          height:ss.height,
          fit: BoxFit.cover,) ,

        Container(height: ss.height,
          child:Column(children: [

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
                  )
                ],)

              ))
            ],)
            )

          ],))

      ],),),
    ));
  }
}
