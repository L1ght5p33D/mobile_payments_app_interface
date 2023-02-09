import 'package:flutter/material.dart';
import 'package:cash_app_interface/ca_globals.dart';

class CreditCardLVI extends StatefulWidget {
  CreditCardLVI({Key? key, required this.card_data,
    required this.card_idx,
    required this.scroll_controller,
    required this.card_chosen,
    required this.reset_cards_chosen }) : super(key: key);

  Map card_data;
  int card_idx;
  ScrollController scroll_controller;
  bool card_chosen;
  Function reset_cards_chosen;

  @override
  _CreditCardLVIState createState() => _CreditCardLVIState();
}

class _CreditCardLVIState extends State<CreditCardLVI> {



bool card_chosen = false;

@override
  void initState() {
  if (widget.card_idx == 0){
    card_chosen = true;
  }
    super.initState();
  }
@override
  Widget build(BuildContext context) {

  card_chosen = widget.card_chosen;

    String card_img_path = "";
    if (widget.card_idx.remainder(3) == 2){
      card_img_path = "assets/images/cardbg_blue.png";
    }
    if (widget.card_idx.remainder(3) == 1){
      card_img_path = "assets/images/cardbg_green.png";
    }
    if (widget.card_idx.remainder(3) == 0){
      card_img_path = "assets/images/cardbg_red.png";
    }


    double card_height = ss.height * .27;
    double card_width = ss.width * .88;

    return
      GestureDetector(
        onTap: (){
          widget.scroll_controller.animateTo( widget.card_idx * (card_width + ss.width*.02),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeOut);

              widget.reset_cards_chosen(widget.card_idx);
              setState(() {
                card_chosen = true;
              });
        },
    child:Container(
        width: card_width,
        height: card_height,
        child: Stack(children:[
            Padding(padding: EdgeInsets.symmetric(horizontal:ss.width*.02),
          child:
                  Container(
                      width: card_width,
                      height: card_height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(ss.width*.09),
                          border: Border.all(width: card_chosen? 3.0: 0.0,
                              color:widget.card_chosen? Colors.tealAccent[700]!: Colors.transparent)
                      ),
                      // padding: EdgeInsets.only(right:ss.width*.02),
                      child:
                      ClipRRect(borderRadius: BorderRadius.circular(ss.width*.09),
                          child:
              Image.asset(card_img_path,
                width: card_width,
                height: card_height,
                fit: BoxFit.cover,
              )))),

    Container(
      padding: EdgeInsets.symmetric(horizontal: ss.width * .08),
    child:
    Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balance"),
                Padding(padding: EdgeInsets.symmetric(horizontal:ss.width*.02),
                  child:
                Image.asset(card_logo_image_data[widget.card_data["brand"]],
                            width: ss.width * .1,
                            height: ss.width * .1))
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("\$" + widget.card_data["balance"],
                      style:TextStyle(fontSize: ss.width*.1))
              ],),

          widget.card_data.containsKey("last_four")?
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("**** **** **** " + widget.card_data["last_four"]),
                Padding(padding: EdgeInsets.only(left:ss.width*.04),
                    child: Text(widget.card_data["expire"]))
              ],): Container(child:Text("PayPal Credit",
            )                       )
          ]),),


        ])
    ));
  }
}