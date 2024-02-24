class ExclusiveDomain {
  final String bindProxy;
  final int bindingStatus;
  final String createdAt;
  final String createdBy;
  final String domainDesc;
  final int domainStatus;
  final String exclusiveDomainName;
  final String id;
  final String updatedAt;
  final String updatedBy;

  const ExclusiveDomain({
    required this.bindProxy,
    required this.bindingStatus,
    required this.createdAt,
    required this.createdBy,
    required this.domainDesc,
    required this.domainStatus,
    required this.exclusiveDomainName,
    required this.id,
    required this.updatedAt,
    required this.updatedBy,
  });

  Map<String, dynamic> toJson() {
    return {
      'bindProxy': this.bindProxy,
      'bindingStatus': this.bindingStatus,
      'createdAt': this.createdAt,
      'createdBy': this.createdBy,
      'domainDesc': this.domainDesc,
      'domainStatus': this.domainStatus,
      'exclusiveDomainName': this.exclusiveDomainName,
      'id': this.id,
      'updatedAt': this.updatedAt,
      'updatedBy': this.updatedBy,
    };
  }

  factory ExclusiveDomain.fromJson(Map<String, dynamic> map) {
    return ExclusiveDomain(
      bindProxy: map['bindProxy'] as String,
      bindingStatus: map['bindingStatus'] as int,
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      domainDesc: map['domainDesc'] as String,
      domainStatus: map['domainStatus'] as int,
      exclusiveDomainName: map['exclusiveDomainName'] as String,
      id: map['id'] as String,
      updatedAt: map['updatedAt'] as String,
      updatedBy: map['updatedBy'] as String,
    );
  }
}
