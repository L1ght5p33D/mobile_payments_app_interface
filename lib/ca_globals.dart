import 'package:flutter/material.dart';

Size ss = Size(0,0);

int g_numkey_val = 0;

List user_card_data = [
  {"brand": "visa",
    "card_type": "Debit Card",
    "balance": "2,345",
    "last_four": "8989",
    "bank": "Bank of America",
    "expire": "7/12"
  },
  {"brand": "mastercard",
    "card_type": "Cashback Mastercard",
    "balance": "5,432",
    "last_four": "3434",
    "bank": "JPMorgan",
    "expire": "8/19"
  },
  {"brand": "paypal",
    "card_type": "PayPal Credit",
    "balance": "455.50",
    "bank": "Paypal",
    // "last_four": "8989"
  }
];

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

List<Map> trans_data = [
  {"trans_user": "Ben",
    "date": "September 8, 2022",
    "amount": "34.56",
    "cod": "debit"
  },
  {"trans_user": "Ellis",
    "date": "August 7, 2022",
    "amount": "5.00",
    "cod": "credit"
  },
  {"trans_user": "Catherine",
    "date": "August 3, 2022",
    "amount": "500.00",
    "cod": "debit"
  },
  {"trans_user": "Alexa",
    "date": "June 19, 2022",
    "amount": "1111.00",
    "cod": "credit"
  }
];