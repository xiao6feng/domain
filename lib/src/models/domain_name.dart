class DomainName {
  final String address;
  final int bizType;
  final String createdAt;
  final String createdBy;
  final String domainDesc;
  final int domainStatus;
  final String id;
  final String updatedAt;
  final String updatedBy;

  const DomainName({
    required this.address,
    required this.bizType,
    required this.createdAt,
    required this.createdBy,
    required this.domainDesc,
    required this.domainStatus,
    required this.id,
    required this.updatedAt,
    required this.updatedBy,
  });

  Map<String, dynamic> toJson() {
    return {
      'address': this.address,
      'bizType': this.bizType,
      'createdAt': this.createdAt,
      'createdBy': this.createdBy,
      'domainDesc': this.domainDesc,
      'domainStatus': this.domainStatus,
      'id': this.id,
      'updatedAt': this.updatedAt,
      'updatedBy': this.updatedBy,
    };
  }

  factory DomainName.fromJson(Map<String, dynamic> map) {
    return DomainName(
      address: map['address'] as String,
      bizType: map['bizType'] as int,
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      domainDesc: map['domainDesc'] as String,
      domainStatus: map['domainStatus'] as int,
      id: map['id'] as String,
      updatedAt: map['updatedAt'] as String,
      updatedBy: map['updatedBy'] as String,
    );
  }
}
