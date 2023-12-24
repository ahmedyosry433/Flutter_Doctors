import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constants.dart';
import 'package:doctor_appointment/features/login/data/models/login_request_body.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginRequestBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}