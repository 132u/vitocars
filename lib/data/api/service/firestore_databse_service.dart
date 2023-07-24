import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/api_report.dart';

class FirestoreDatabaseService{
    final FirebaseFirestore _db = FirebaseFirestore.instance;


   Future<List<ApiReport>?> getDrivers() async {
    await _db.collection("drivers").get().then(
      (querySnapshot) {
      },
    );
  }
}