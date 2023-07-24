import 'package:flutter/cupertino.dart';
import 'package:vitocars/domain/model/report.dart';

abstract class ReportRepository {
  Future<List<Report>> getReports({
    @required String driverId,
  });
}