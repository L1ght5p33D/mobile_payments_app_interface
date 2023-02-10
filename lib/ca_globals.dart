import 'package:flutter/material.dart';

Size ss = Size(0,0);

int g_numkey_val = 0;

// does not work with decimals
String formatAmount(amount){
  String price = amount.toString();
  String priceInText = "";
  int counter = 0;
  for(int i = (price.length - 1);  i >= 0; i--){
    counter++;
    String str = price[i];
    if((counter % 3) != 0 && i !=0){
      priceInText = "$str$priceInText";
    }else if(i == 0 ){
      priceInText = "$str$priceInText";

    }else{
      priceInText = ",$str$priceInText";
    }
  }
  return priceInText;
}

Map card_logo_image_data = {
  "paypal": "assets/images/paypal_logo.png",
  "mastercard": "assets/images/mastercard_logo.png",
  "visa":  "assets/images/visa_logo.png"
};

List<Map> benef_data = [
  {"name": "Alexa",
    "pp_path": "assets/images/user2_pp.png",
    "last_four": "2345"},
  {"name": "Ben",
    "pp_path": "assets/images/user3_pp.png",
    "last_four": "2345"},
  {"name": "Catherine",
    "pp_path": "assets/images/user1_pp.png",
    "last_four": "2345"},
  {"name": "David",
    "pp_path": "assets/images/user4_pp.png",
    "last_four": "2345"},
  {"name": "Ellis",
    "pp_path": "assets/images/user5_pp.png",
    "last_four": "2345"},
];

List<String> months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];