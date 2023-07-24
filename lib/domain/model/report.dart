class Report {
  Report(
      {required this.driverId,
      required this.name,
      required this.initialPrice,
      required this.createdAt,
      required this.startDateTime,
      required this.customer,
      required this.isMoneyWithMe,
      required this.paymentType,
      required this.startAddress,
      required this.endAddress,
      required this.onPlace,
      required this.isByHours,
      required this.hourPrice,
      required this.hourQuantity});

  final String driverId;
  final String name;
  final DateTime createdAt;
  final DateTime startDateTime;
  // final DateTime endDateTime;
  final String? startAddress;
  final String? endAddress;
  final bool onPlace; //работа на месте?
  final bool isByHours; //почасовка?
  final bool isMoneyWithMe; //деньги у меня?
  double? endPrice;
  double? initialPrice;
  final double? hourPrice;
  final double? hourQuantity;
  final String? paymentType;
  final String customer;
}
