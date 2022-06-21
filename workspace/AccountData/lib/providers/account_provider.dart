

import 'package:riverpod/riverpod.dart';
import 'package:untitled1/providers/all_providers.dart';

import '../app_resources/app_constants.dart';
import '../models/list_state.dart';
import 'account_state_provider.dart';

final getAccountsProvider = FutureProvider.autoDispose((ref) async {
  final _constantProvider = ref.watch(accountRepositoryProvider);
  return await _constantProvider.getAccounts();
});



final accountProvider = Provider<AccountStateNotifier>(
      (ProviderReference ref) => AccountStateNotifier(
          ref: ref
      )
);
final accountStateNotifierProvider = StateNotifierProvider<AccountStateNotifier, ListState>((ref) {

  return AccountStateNotifier(
    ref: ref
  );

});

final layoutOptionStateProvider = StateProvider<bool>(
  // We return the default sort type, here name.
      (ref) => true,
);

final layoutBarStateProvider = StateProvider<String>(
  // We return the default sort type, here name.
      (ref) => "",
);

final selectedStateCodeState = StateProvider<String>(
  // We return the default sort type, here name.
      (ref) => AppConstant.FILTER_INITIAL_WALUE,
);


final selectedStateCodeOrProvinceState = StateProvider<String>(
  // We return the default sort type, here name.
      (ref) => AppConstant.FILTER_INITIAL_WALUE,
);
