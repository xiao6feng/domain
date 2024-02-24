class DomainReportParam {
  final String successDomains;
  final String failDomains;

  DomainReportParam({
    required this.successDomains,
    required this.failDomains,
  });

  factory DomainReportParam.fromJson(Map<String, dynamic> json) =>
      DomainReportParam(
        successDomains: json["successDomains"],
        failDomains: json["failDomains"],
      );

  Map<String, dynamic> toJson() => {
        "successDomains": successDomains,
        "failDomains": failDomains,
      };
}
