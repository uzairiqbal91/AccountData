


import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:untitled1/services/repository/account_repository.dart';

import '../services/netwroking/api_endpoint.dart';
import '../services/netwroking/api_service.dart';
import '../services/netwroking/dio_service.dart';
import '../services/netwroking/interceptors/api_interceptor.dart';
import '../services/netwroking/interceptors/logging_interceptor.dart';


final _dioProvider = Provider<Dio>((ref) {
  final baseOptions = BaseOptions(
    baseUrl: ApiEndpoint.baseUrl,
  );
  return Dio(baseOptions);
});

final _dioServiceProvider = Provider<DioService>((ref) {
  final _dio = ref.watch(_dioProvider);

  // Order of interceptors very important
  return DioService(
    dioClient: _dio,
    interceptors: [
      ApiInterceptor(),
      if (kDebugMode) LoggingInterceptor(),
    ],
  );
});

final _apiServiceProvider = Provider<ApiService>((ref) {
  final _dioService = ref.watch(_dioServiceProvider);
  return ApiService(_dioService);
});


final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  final _apiService = ref.watch(_apiServiceProvider);
  return AccountRepository(apiService: _apiService);
});








