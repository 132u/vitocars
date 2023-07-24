import '../../domain/model/report.dart';
import '../../domain/model/repository/report_repository.dart';
import '../api/api_util.dart';

class ReportDataRepository extends ReportRepository {
  final ApiUtil _apiUtil;

  ReportDataRepository(this._apiUtil);
  
  @override
  Future<List<Report>> getReports({String? driverId}) {
    return _apiUtil.getReports(driverId!);
  }
}