import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled1/app_resources/app_constants.dart';
import 'package:untitled1/models/accounts_model.dart';
import 'package:untitled1/models/list_state.dart';
import 'package:untitled1/providers/account_provider.dart';
import 'package:untitled1/providers/account_state_provider.dart';
import 'package:untitled1/services/netwroking/api_endpoint.dart';
import 'package:untitled1/services/netwroking/api_service.dart';
import 'package:untitled1/services/netwroking/dio_service.dart';
import 'package:untitled1/services/netwroking/interceptors/api_interceptor.dart';
import 'package:untitled1/services/netwroking/interceptors/logging_interceptor.dart';
import 'package:untitled1/services/netwroking/network_exception.dart';
import 'package:untitled1/services/repository/account_repository.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class MockAccount extends Mock implements AccountsModel {}
void main() async {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);

  dio.httpClientAdapter = dioAdapter;

  // EXCEPTION TESTING

  test('Exception Connection Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.connectTimeout);
    final exception = NetworkException.getDioException(error);
    expect(exception.message, AppConstant.API_EXCEPTION_CONNECTTIMEOUT);
  });

  test('Exception Connection Cancel', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""), type: DioErrorType.cancel);
    final exception = NetworkException.getDioException(error);
    expect(exception.message, AppConstant.API_EXCEPTION_CANCEL);
  });

  test('Exception Recieve Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.receiveTimeout);
    final exception = NetworkException.getDioException(error);
    expect(exception.message, AppConstant.API_EXCEPTION_RCVTIMEOUT);
  });

  test('Exception Send Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.sendTimeout);
    final exception = NetworkException.getDioException(error);
    expect(exception.message, AppConstant.API_EXCEPTION_SENDTIMEOUT);
  });

  test("Api Any Link", () async {
    // Arrange
    dioAdapter.onGet(
      'https://www.google.com',
      (request) {
        return request.reply(200, {'message': 'Success'});
      },
      data: null,
      queryParameters: {},
      headers: {},
    );

    DioService dioService = DioService(dioClient: dioAdapter.dio);

    final response = await dioService.getTest('https://www.google.com');
    expect(response, {'message': 'Success'});
  });


  test("Get Accounts", () async {


    final dio = Dio();
    dio.options.baseUrl = ApiEndpoint.baseUrl;
    dio.options.headers['Accept'] = "application/json";
    dio.options.headers['OData-MaxVersion'] = "4.0";
    dio.options.headers['OData-Version'] = "4.0";
    dio.options.headers.addAll(<String, Object?>{'Authorization': 'Bearer '+AppConstant.TOKEN});


    final dioService =  DioService(
      dioClient: dio,
    );

    ApiService apiService = ApiService(dioService);

    AccountRepository accountRepository = AccountRepository(apiService: apiService);

    final response = Response(
        requestOptions: RequestOptions(
            path: '',
            baseUrl: ""
        ),
        data: MockAccount()

    );
    
    final result = await accountRepository.getAccounts();
    expect(result, isA<AccountsModel>());
    
  });
}
