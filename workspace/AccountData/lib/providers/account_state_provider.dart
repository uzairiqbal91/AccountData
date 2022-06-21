import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/app_resources/app_constants.dart';

import '../models/accounts_model.dart';
import '../models/list_state.dart';
import '../ui/views/dashboad_view.dart';
import 'account_provider.dart';
import 'all_providers.dart';

class AccountStateNotifier
    extends StateNotifier<ListState> {


  // Keep track of some variables
  int _page = 0;
  List<Value> values = [];
  final Ref ref;
  final ListState listState ;
  final bool isTesting ;


  AccountStateNotifier({required this.ref,this.listState = const ListState.data([], false, 0),this.isTesting = false})
      : super(listState) {
    init();
  }

  void init() {
    print("calling here");

    if(!this.isTesting){
      fetchPage();
    }

  }


  Future<void> fetchPage() async {

    try {
      state = ListState.dataLoading(values);


      final AccountsModel result = await callingApi();

      final searchBarStateRead = ref.read(layoutBarStateProvider.state);
      final selectedStateCodeStateState = ref.read(selectedStateCodeState.state);
      final selectedStateCodeOrProvinceStateState = ref.read(selectedStateCodeOrProvinceState.state);

      final searchedText =searchBarStateRead.state;


      values = result.value;


      // searching see when searched text is empty than it will not execute the given function ,
      // when not empty it will check that account number or account name container searched text or not

      if(searchedText.isNotEmpty){

        List<Value> searchedValues = values.where((element) =>
        element.name.toString().toLowerCase().contains(searchedText.toLowerCase())
            || element.accountnumber.toString().toLowerCase().contains(searchedText.toLowerCase())).toList();

        values = searchedValues;
      }


      // filtering by stateCode , checking  if equal to initial value which is "All" than get all records
      // if selected any option than match to that string to state code

      if(selectedStateCodeStateState.state != AppConstant.FILTER_INITIAL_WALUE){
        List<Value> searchedValues =  values.where((element) => element.statecode.toString() == selectedStateCodeStateState.state.toString()).toList();
        values = searchedValues;
      }

      // filtering by stateCodeOrProvince , checking  if equal to initial value which is "All" than get all records
      // if selected any option than match to that string to stateCodeOrProvince
      if(selectedStateCodeOrProvinceStateState.state != AppConstant.FILTER_INITIAL_WALUE){
        List<Value> searchedValues =  values.where((element) => element.address1_stateorprovince.toString() == selectedStateCodeOrProvinceStateState.state.toString()).toList();
        values = searchedValues;
      }


      // these extra values is helping when we have pagination
      state = ListState.data(
          values, false, 0);

    } catch (e) {
      state = ListState.error(e.toString());
    }

  }





  Future<AccountsModel> callingApi() async{
    final accountProvider = ref.watch(accountRepositoryProvider);
    return await accountProvider.getAccounts();
  }
}