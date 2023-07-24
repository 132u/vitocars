import 'package:flutter/cupertino.dart';
import 'package:vitocars/data/api/request/ger_report_body.dart';
import 'package:vitocars/data/api/service/firestore_databse_service.dart';
import 'package:vitocars/data/mapper/report_mapper.dart';

import '../../domain/model/report.dart';

class ApiUtil {
  final FirestoreDatabaseService _firestoreDatabaseService;

  ApiUtil(this._firestoreDatabaseService);

  Future<List<Report>> getReports(String driverId) async {
    //final body = GetReportBody(driverId: driverId);
    final result = await _firestoreDatabaseService.getReports();
    List<Report> reports = List.empty();
    for(var r in result!){
      reports.add(ReportMapper.fromApi(r));
    }

    return reports;
  }
}