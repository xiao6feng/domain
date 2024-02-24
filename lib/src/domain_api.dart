import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'models/domain_name.dart';
import 'models/exclusive_domain.dart';
import 'params/domain_param.dart';
import 'params/domain_report_param.dart';

part 'domain_api.g.dart';

@RestApi(
  parser: Parser.JsonSerializable,
)
abstract class DomainApi {
  factory DomainApi(Dio dio, {String baseUrl}) = _DomainApi;

  @POST('/domainNameConfig/domainReport')
  Future<bool> domainReport(@Body() DomainReportParam param);

  @POST('/domainNameConfig/getActivitySharingDomainLink')
  Future<String> getActivitySharingDomainLink();

  @POST('/domainNameConfig/getFriendInvitationDomainLink')
  Future<String> getFriendInvitationDomainLink();

  @POST('/domainNameConfig/queryDomainList')
  Future<List<ExclusiveDomain>> queryDomainList(@Body() DomainParam param);

  @POST('/domainNameConfig/queryDownLoadList')
  Future<List<String>> queryDownLoadList(@Body() DomainParam param);

  @POST('/domainNameConfig/queryList')
  Future<List<DomainName>> queryList(@Body() DomainParam param);
}
