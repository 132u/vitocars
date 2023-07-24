// из словаря, возвращаемого бэкендом, по нужным ключам присваивает значения полям модели.
class ApiReport {
 final String driverId;
  final String name;
  final DateTime createdAt;
  final DateTime startDateTime;
  // final DateTime endDateTime;
  final String? startAddress;
  final String? endAddress;
  final bool onPlace;//работа на месте?
  final bool isByHours;//почасовка?
  final bool isMoneyWithMe;//деньги у меня?
  //double? endPrice;
  int? initialPrice;
  final int? hourPrice;
  final int? hourQuantity;
  final String? paymentType;
  final String customer;

  ApiReport.fromApi(Map<String, dynamic> map)
      : name = map["name"],
        driverId = map["driverId"],
        //endPrice= map["endPrice"],
        initialPrice = map["initialPrice"],
        startDateTime = map["startDateTime"].toDate(),
        customer = map["customer"],
        createdAt = map["createdAt"].toDate(),
        paymentType= map["paymentType"],
        isByHours = map["isByHours"],
        startAddress = map["startAddress"],
        onPlace = map["onPlace"],
        endAddress = map["endAddress"],
        hourPrice = map["hourPrice"],
        hourQuantity = map["hourQuantity"],
        isMoneyWithMe= map["isMoneyWithMe"];   
}