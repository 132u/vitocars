//Принимает на входе объект ApiReport из БД и превращающий его в модель бизнес-слоя Report

import '../../domain/model/report.dart';
import '../api/model/api_report.dart';

class ReportMapper {
  static Report fromApi(ApiReport report) {
    return Report(
      driverId: report.driverId,
      name: report.name,
      initialPrice: report.initialPrice!.toDouble(),
      startDateTime: report.startDateTime,
      customer: report.customer,
      createdAt: report.createdAt,
      paymentType: report.paymentType,
      isByHours: report.isByHours,
      startAddress: report.startAddress,
      onPlace: report.onPlace,
      endAddress: report.endAddress,
      hourPrice: report.hourPrice!.toDouble(),
      hourQuantity: report.hourQuantity!.toDouble(),
      isMoneyWithMe: report.isMoneyWithMe,
    );
  }
}
