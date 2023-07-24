import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/model/report.dart';
import '../model/api_report.dart';
import '../request/ger_report_body.dart';

class FirestoreDatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<ApiReport>?> getReport(GetReportBody body) async {

    var reports = await _db.collection("reports")
    .where('driverId', isEqualTo: body.driverId)
    .snapshots().toList();

    List<ApiReport> convertedReports = List.empty();
    for (var report in reports) {
      //convertedReports.add(report.fromApi(report));
    }
    return convertedReports;
  }

  Future<List<ApiReport>?> getReports(String driverId) async {
    var reports = await _db.collection("reports").where('driverId', isEqualTo: driverId).get().then(
          (querySnapshot) {},
        );

    List<ApiReport> convertedReports = List.empty();
    for (var report in reports) {
      convertedReports.add(report.fromApi(report));
    }
    return convertedReports;
  }
}
