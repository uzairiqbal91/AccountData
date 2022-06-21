// ignore_for_file: non_constant_identifier_names
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../app_resources/app_constants.dart';
part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.FormatException({
    String? name,
    String? message,
  }) = _FormatException;

  const factory NetworkException.FetchDataException({
    String? name,
    String? message,
  }) = _FetchDataException;

  const factory NetworkException.ApiException({
    String? name,
    String? message,
  }) = _ApiException;

  const factory NetworkException.TokenExpiredException({
    String? name,
    String? message,
  }) = _TokenExpiredException;

  const factory NetworkException.UnrecognizedException({
    String? name,
    String? message,
  }) = _UnrecognizedException;

  const factory NetworkException.CancelException({
    String? name,
    String? message,
  }) = _CancelException;

  const factory NetworkException.ConnectTimeoutException({
    String? name,
    String? message,
  }) = _ConnectTimeoutException;

  const factory NetworkException.ReceiveTimeoutException({
    String? name,
    String? message,
  }) = _ReceiveTimeoutException;

  const factory NetworkException.SendTimeoutException({
    String? name,
    String? message,
  }) = _SendTimeoutException;


  const factory NetworkException.NoUserFound({
    String? name,
    String? message,
  }) = _SendTimeoutException;

  static NetworkException getDioException(Exception error) {
    try {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.cancel:
            return const NetworkException.CancelException(
              name: ExceptionConstants.CancelException,
              message: AppConstant.API_EXCEPTION_CANCEL,
            );


          case DioErrorType.connectTimeout:
            return const NetworkException.ConnectTimeoutException(
              name: ExceptionConstants.ConnectTimeoutException,
              message: AppConstant.API_EXCEPTION_CONNECTTIMEOUT,
            );
          case DioErrorType.sendTimeout:
            return const NetworkException.SendTimeoutException(
              name: ExceptionConstants.SendTimeoutException,
              message: AppConstant.API_EXCEPTION_SENDTIMEOUT,
            );
          case DioErrorType.receiveTimeout:
            return const NetworkException.ReceiveTimeoutException(
              name: ExceptionConstants.ReceiveTimeoutException,
              message:  AppConstant.API_EXCEPTION_RCVTIMEOUT,
            );


          case DioErrorType.response:



          case DioErrorType.other:
            if(error.message.contains(ExceptionConstants.SocketException)) {
              return const NetworkException.FetchDataException(
                name: ExceptionConstants.FetchDataException,
                message: 'No internet connectivity',
              );
            }

            // if(error.response?.statusCode == 422) {
            //
            // }

            final name = "Unknown Exception" ;
            // print("error is" + error.response.toString());
            final message = error.response.toString();
            switch (name) {
              case ExceptionConstants.TokenExpiredException:
                return NetworkException.TokenExpiredException(
                  name: name,
                  message: message,
                );
              default:
                return NetworkException.ApiException(
                  name: name,
                  message: message,
                );
            }
        }
      } else {
        return const NetworkException.UnrecognizedException(
          name: ExceptionConstants.UnrecognizedException,
          message: 'Error unrecognized',
        );
      }
    } on FormatException catch (e) {
      return NetworkException.FormatException(
        name: ExceptionConstants.FormatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return const NetworkException.UnrecognizedException(
        name: ExceptionConstants.UnrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }
}
