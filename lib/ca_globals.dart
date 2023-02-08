import 'package:flutter/material.dart';

Size ss = Size(0,0);

List user_card_data = [
  {"brand": "visa",
    "card_type": "Debit Card",
    "balance": "2345",
    "last_four": "8989",
    "bank": "Bank of America",
    "expire": "7/12"
  },
  {"brand": "mastercard",
    "card_type": "Cashback Mastercard",
    "balance": "2345",
    "last_four": "8989",
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