class CreditCardData {
  String numberCard;
  String typeCard;
  CreditCardData(this.typeCard, this.numberCard);
}

class ListCardData {
  List<CreditCardData> list;
  ListCardData(this.list);
}
