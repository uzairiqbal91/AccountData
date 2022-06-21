import 'package:untitled1/models/accounts_model.dart';

import '../netwroking/api_endpoint.dart';
import '../netwroking/api_service.dart';

class AccountRepository {
  final ApiService _apiService;


  AccountRepository({
    required ApiService apiService,

  })  : _apiService = apiService;

  Future<AccountsModel> getAccounts() async {
    return await _apiService.getDocumentData<AccountsModel>(
      endpoint: ApiEndpoint.accounts(AccountRequestEndpoint.GETACCOUNTS),
        requiresAuthToken: true,
      converter: (responseBody) => AccountsModel.fromJson(responseBody)

    );
  }

}