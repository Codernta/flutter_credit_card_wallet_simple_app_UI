class CardModel {
  var user;
  var cardNumber;
  var cardExpired;
  var cardType;
  var cardBackground;
  var cardElementTop;
  var cardElementBottom;

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementTop, this.cardElementBottom);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['user'],
        item['cardNumber'],
        item['cardExpired'],
        item['cardType'],
        item['cardBackground'],
        item['cardElementTop'],
        item['cardElementBottom'],
      ),
    )
    .toList();

var cardData = [
  {
    "user": "Alex Peter",
    "cardNumber": "**** **** **** 1425",
    "cardExpired": "03-01-2023",
    "cardType": "images/mastercard_logo.png",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "svg/ellipse_top_pink.svg",
    "cardElementBottom": "svg/ellipse_bottom_pink.svg"
  },
  {
    "user": "Alex Peter",
    "cardNumber": "**** **** **** 8287",
    "cardExpired": "03-01-2025",
    "cardType": "images/visa_logo.png",
    "cardBackground": 0xFFFF70A3,
    "cardElementTop": "svg/ellipse_top_blue.svg",
    "cardElementBottom": "svg/ellipse_bottom_blue.svg"
  },
  {
    "user": "Alex Peter",
    "cardNumber": "**** **** **** 5237",
    "cardExpired": "03-01-2025",
    "cardType": "images/mastercard_logo.png",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "svg/ellipse_top_pink.svg",
    "cardElementBottom": "svg/ellipse_bottom_pink.svg"
  },
];
