import 'package:vitocars/data/api/service/firestore_databse_service.dart';

import '../../data/api/api_util.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(FirestoreDatabaseService());
    }
    return _apiUtil!;
  }
}