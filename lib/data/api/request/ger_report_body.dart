class GetReportBody{
  final String driverId;
  GetReportBody({required this.driverId});

   Map<String, dynamic> toApi() {
    return {
      'driverId': driverId,
    };
  }
}