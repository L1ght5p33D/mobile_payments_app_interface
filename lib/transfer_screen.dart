import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class TransferScreen extends StatefulWidget {
   TransferScreen({Key? key, required this.benef}) : super(key: key);

  Map benef;

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
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
          height: 
        )

      ],)
      )
    ));
  }
}
