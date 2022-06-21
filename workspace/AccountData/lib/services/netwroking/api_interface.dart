import 'package:dio/dio.dart';

import 'mapper.dart';


/// A base class containing methods for basic API functionality.
///
/// Should be implemented by any service class that wishes to interact
/// with an API.
///
///


abstract class ApiInterface {
  /// Abstract const constructor. This constructor enables subclasses
  /// to provide const constructors so that they can be used in
  /// const expressions.
  const ApiInterface();



  /// Base method for requesting a document of data from the [endpoint].
  ///
  /// The response is deserialized into a single model objects of type [T],
  /// using the [converter] callback.
  ///
  /// [queryParams] holds any query parameters for the request.
  ///
  /// [cancelToken] is used to cancel the request pre-maturely. If null,
  /// the **default** [cancelToken] inside [DioService] is used.
  ///
  /// [requiresAuthToken] is used to decide if a token will be inserted
  /// in the **headers** of the request using an [ApiInterceptor]
  Future<T> getDocumentData<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
  });

  void cancelRequests();
}
