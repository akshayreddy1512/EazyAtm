class CardContent {
  final String title;
  final String subtitle;
  final String description;
  final String imageAsset;

  CardContent({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imageAsset,
  });
}

class AppImage {
  static const String countryImage = 'assests/icon.png';
  static const String backgroundImage = 'assests/pf.JPG';
  static const String creditcardImage = 'assets/images/credit_cards_bill_icon.png';
  static const String electricityImage = 'assets/images/electricity_icon.png';
  static const String transactionHistoryImage='assets/images/transaction_history_icon.png';
}
