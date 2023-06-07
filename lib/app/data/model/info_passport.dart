class InfoPassport {
  String passportId;
  String subscriptionDate;
  String expirationDate;
  String extraTokensEndDate;
  bool isActive;

  InfoPassport(
      {required this.passportId,
      required this.subscriptionDate,
      required this.expirationDate,
      required this.extraTokensEndDate,
      required this.isActive});

  factory InfoPassport.fromJson(Map<String, dynamic> json) {
    return InfoPassport(
      passportId: json['PassportId'],
      subscriptionDate: json['SubscriptionDate'],
      expirationDate: json['ExpirationDate'],
      extraTokensEndDate: json['ExtraTokensEndDate'],
      isActive: json['IsActive'],
    );
  }
}
