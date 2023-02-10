

class AppState{

  List cards_chosen = [true, false, false];
  int card_chosen_idx = 0;

  reset_cards_chosen(int card_idx){
    cards_chosen = [false, false, false];
    cards_chosen[card_idx] = true;
  }

}