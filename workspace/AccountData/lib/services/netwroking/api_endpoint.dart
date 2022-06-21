


import 'package:flutter/cupertino.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  /// The base url of our REST API, to which all the requests will be sent.
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=BASE_URL=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=BASE_URL=www.some_url.com
  /// ```
  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    // defaultValue: 'https://dev-hcc.mynisum.com/api/v1',
    defaultValue: 'https://org40def2fa.api.crm4.dynamics.com/api/data/v9.2',
  );

  static String accounts(AccountRequestEndpoint endpoint) {
    var path = '/accounts';

    switch(endpoint){
      case AccountRequestEndpoint.GETACCOUNTS: return '$path';

      default :
        return '$path';
    }

  }

}

enum AccountRequestEndpoint {
  /// An endpoint for users' collection requests.
  GETACCOUNTS
}