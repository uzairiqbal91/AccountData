import 'dart:async';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

import 'mapper.dart';
import 'network_exception.dart';







/// A service class that wraps the [Dio] instance and provides methods for
/// basic network requests.
class DioService {
  /// An instance of [Dio] for executing network requests.
  late final Dio _dio;

  /// An instance of [CancelToken] used to pre-maturely cancel
  /// network requests.
  // late final CancelToken _cancelToken;

  /// A public constructor that is used to create a Dio service and initialize
  /// the underlying [Dio] client.
  ///
  /// Attaches any external [Interceptor]s to the underlying [_dio] client.
  DioService({required Dio dioClient, Iterable<Interceptor>? interceptors})
  : _dio = dioClient {



    // (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    // (HttpClient client) {
    // client.badCertificateCallback =
    // (X509Certificate cert, String host, int port) => true;
    // return client;
    // };
    if (interceptors != null) _dio.interceptors.addAll(interceptors);


  }

  /// This method invokes the [cancel()] method on either the input
  /// [cancelToken] or internal [_cancelToken] to pre-maturely end all
  /// requests attached to this token.
  void cancelRequests({CancelToken? cancelToken}) {
    if (cancelToken == null) {
      // _cancelToken.cancel('Cancelled');
    } else {
      cancelToken.cancel();
    }
  }

  /// This method sends a `GET` request to the [endpoint] and returns the
  /// **decoded** response.
  ///
  /// Any errors encountered during the request are caught and a custom
  /// [NetworkException] is thrown.
  ///
  /// [queryParams] holds any query parameters for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [options] are special instructions that can be merged with the request.
  Future<JSON> get({
    required String endpoint,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<JSON>(
        endpoint,
        options: options,
        // cancelToken: cancelToken ?? _cancelToken,
      );
      return response.data as JSON;
    } on Exception catch (ex) {
      throw NetworkException.getDioException(ex);
    }
  }


  Future<dynamic> getTest(String path) async {
    var responseJson;
    try {
      var response = await _dio.get(path);

      responseJson = returnResponse(response);
    }
    on SocketException {
      throw Exception();
    }
    return new Map<String, dynamic>.from(responseJson);
  }

@override
dynamic returnResponse(Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
    case 404:
      return response.data;
    case 400:
      throw Exception();
    case 401:
    case 403:
      throw Exception();
    case 500:
    default:
      throw Exception();
  }
}

}
