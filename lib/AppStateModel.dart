

class AppState{

  List cards_chosen = [true, false, false];
  int card_chosen_idx = 0;

  reset_cards_chosen(){
    cards_chosen = [false, false, false];
  }

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
      "last_four": "8989"
    }
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

}