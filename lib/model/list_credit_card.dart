class CreditCard {
  String numberCard;
  String typeCard;
  CreditCard(this.typeCard, this.numberCard);
}

class ListCard {
  List<CreditCard> list;
  ListCard(this.list);
}
