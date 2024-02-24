class DomainParam {
  final int bigType;
  final int number;

  const DomainParam({
    required this.bigType,
    required this.number,
  });

  Map<String, dynamic> toJson() {
    return {
      'bigType': this.bigType,
      'number': this.number,
    };
  }

  factory DomainParam.fromJson(Map<String, dynamic> map) {
    return DomainParam(
      bigType: map['bigType'] as int,
      number: map['number'] as int,
    );
  }
}
