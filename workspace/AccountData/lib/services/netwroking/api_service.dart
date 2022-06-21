import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'api_interface.dart';

import 'dio_service.dart';
import 'mapper.dart';


//services




/// A service class implementing methods for basic API requests.
class ApiService implements ApiInterface{

  /// An instance of [DioService] for network requests
  late final DioService _dioService;

  /// A public constructor that is used to initialize the API service
  /// and setup the underlying [_dioService].
  ApiService(DioService dioService) : _dioService = dioService;






  @override
  void cancelRequests({CancelToken? cancelToken}){
    _dioService.cancelRequests(cancelToken: cancelToken);
  }

  @override
  Future<T> getDocumentData<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    bool requiresAuthToken = true,
  }) async {
    //Entire map of response
    final data = await _dioService.get(
      endpoint: endpoint,
      options: Options(headers: <String, Object?>{'requiresAuthToken': requiresAuthToken}),
    );

    //Returning the deserialized object
    return converter(data as JSON);
  }








}
