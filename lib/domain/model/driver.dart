import 'package:vitocars/domain/model/prepayment.dart';
import 'package:vitocars/domain/model/report.dart';

class Driver{
  const Driver(this.lastName, this.firstName, this.middleName, this.reports, this.Reports, this.Prepayments);
  final String lastName;
  final String firstName;
  final String middleName;
  final List<Report> Reports;
  final List<Prepayment> Prepayments;
}