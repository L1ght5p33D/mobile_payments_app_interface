import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:cash_app_interface/ca_globals.dart';

class TransferScreen extends StatefulWidget {
   TransferScreen({Key? key, required this.benef}) : super(key: key);

  Map benef;

  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {

  int entered_amount = 0;

  _onKeyboardTap(String value) {
    setState(() {
      entered_amount = int.parse(value);
    });
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!,
                        width: ss.height * .02)),
                        child: Image.asset(widget.benef["pp_path"])
                  ),
                Container(
                  child:Text(widget.benef["name"])
                ),
                Container(
                  child: Text(widget.benef["**** **** ****" + widget.benef["last_four"]])
                ),

                Container(
                  child: Text("\$" + entered_amount.toString())
                ),

        NumericKeyboard(
        onKeyboardTap: _onKeyboardTap
    )


          ],)
        )

      ],)
      )
    ));
  }
}
