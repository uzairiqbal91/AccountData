


class AppConstant {
  //  constants

  static const double ASPECTRATIONLIST = 6 / 2.5;
  static const double ASPECTRATIONGRID = 2 / 2.9;
  static const double GRIDCROSSAXISSPACING = 10.0;
  static const double MAINAXISSPACING = 10.0;
  static const String SEARCHHINT = "'Search By Acc Name or Acc #'";
  static const String FILTER_INITIAL_WALUE = "All";


  static String APPURI =  "https://org40def2fa.api.crm4.dynamics.com";
  static String TOKEN =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL29yZzQwZGVmMmZhLmFwaS5jcm00LmR5bmFtaWNzLmNvbS8iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8wY2I4YjVkMS03OTk3LTQ5MGEtYTViNi0yYjI4M2IzZGRlYjEvIiwiaWF0IjoxNjU1ODEyMjYzLCJuYmYiOjE2NTU4MTIyNjMsImV4cCI6MTY1NTgxNzQ4MywiYWNyIjoiMSIsImFpbyI6IkFWUUFxLzhUQUFBQXhwbzJRcGk2NkpMWmp6ZFVNVXY1Q1JJaXV4RVc1NEppZDZrSUpyZk42aFBpUytSazJaRFdBWEVib3dIbkxXSC9EN0t4Q0w2UGhyVm9vanJYQzMwaUJtejJWSytyQko0dVdIVHlSYSt5NnJBPSIsImFtciI6WyJwd2QiLCJtZmEiXSwiYXBwaWQiOiI3Yzk2OTQyMS1jZWUzLTRiODgtYTk5Zi0wNmFkNDE2NWFjYjMiLCJhcHBpZGFjciI6IjAiLCJmYW1pbHlfbmFtZSI6ImlxYmFsIiwiZ2l2ZW5fbmFtZSI6Im11aGFtbWFkIiwiaXBhZGRyIjoiMjAyLjYxLjQ5LjYxIiwibmFtZSI6Im11aGFtbWFkICBpcWJhbCIsIm9pZCI6IjNlNTY4MGIzLWU2MzEtNDc2Yy1iOTE1LWNmNWE0ODhmYTBjMCIsInB1aWQiOiIxMDAzMjAwMjA0QTM0QjUwIiwicmgiOiIwLkFYa0EwYlc0REpkNUNrbWx0aXNvT3ozZXNRY0FBQUFBQUFBQXdBQUFBQUFBQUFDVUFGRS4iLCJzY3AiOiJ1c2VyX2ltcGVyc29uYXRpb24iLCJzdWIiOiJ4RDVrVzRDelZ5V0RRN0UyaEVJT0x4d1NSSUoxbU4yT19Ic3NyNmxjNGlZIiwidGlkIjoiMGNiOGI1ZDEtNzk5Ny00OTBhLWE1YjYtMmIyODNiM2RkZWIxIiwidW5pcXVlX25hbWUiOiJtdWhhbW1hZGlxYmFsQE5pc3VtODM1Lm9ubWljcm9zb2Z0LmNvbSIsInVwbiI6Im11aGFtbWFkaXFiYWxATmlzdW04MzUub25taWNyb3NvZnQuY29tIiwidXRpIjoiX0lqNXMzX1pSRW1SX0hiQTVMVVhBQSIsInZlciI6IjEuMCJ9.nOQPoA4BEiWTXAgIwdvTfQenHJZ-6kNJ48IZ0vDa-lIpk7nz0UV7lTaIARFrcLhCBUexqZZZD3gtIWcXdCDb8xlglq2ICY6qY6H49lGCP5EvFx6Ucw96YhUOBYRsw62Al64HOFGzVQdVl1jvljUcaf8TCHOt1IaBeFcYEjqJZ0Nf-gd1s8PHIanpnv0csDFNcHUP3HaG6Ue4gBfIg5UbmdVM2IIHt1y_RgBzlhNZFs4yWzcued1_Qb3ot9kKZ7iG_Vkd5J3vTEvHBqoUgIDP0O29scKi_8NSRZSJL6IqSlHBtiZySPKkyXvLzE3fKXte7eNSj0YJvSixpwxuxxJU7Q";

  static String IMAGE_URL =
      "https://e7.pngegg.com/pngimages/401/227/png-clipart-computer-icons-user-google-account-icon-design-microsoft-account-create-account-text-number.png";


  static const String API_EXCEPTION_CANCEL = "Request cancelled prematurely";
  static const String API_EXCEPTION_CONNECTTIMEOUT = "Connection not established";
  static const String API_EXCEPTION_SENDTIMEOUT = "Failed to send";
  static const String API_EXCEPTION_RCVTIMEOUT = "Failed to receive";

}



class ExceptionConstants {
  const ExceptionConstants._();

  /// The name of the exception for an expired bearer token.
  static const String TokenExpiredException = 'TokenExpiredException';

  /// The name of the exception for a prematurely cancelled request.
  static const String CancelException = 'CancelException';

  /// The name of the exception for a failed connection attempt.
  static const String ConnectTimeoutException = 'ConnectTimeoutException';

  /// The name of the exception for failing to send a request.
  static const String SendTimeoutException = 'SendTimeoutException';

  /// The name of the exception for failing to receive a response.
  static const String ReceiveTimeoutException = 'ReceiveTimeoutException';

  /// The name of the exception for no internet connectivity.
  static const String SocketException = 'SocketException';

  /// A better name for the socket exception.
  static const String FetchDataException = 'FetchDataException';

  /// The name of the exception for an incorrect parameter in a request/response.
  static const String FormatException = 'FormatException';

  /// The name of the exception for an unknown type of failure.
  static const String UnrecognizedException = 'UnrecognizedException';
}