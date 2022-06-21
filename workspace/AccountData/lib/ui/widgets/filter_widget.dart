import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_resources/app_constants.dart';
import '../../models/accounts_model.dart';
import '../../providers/account_provider.dart';
import '../views/dashboad_view.dart';

class FilterWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String _stateValue = "";
    String _stateOrProvinceValue = "";

    final values = ref.watch(getAccountsProvider);
    final selectedStateCodeStateState = ref.watch(selectedStateCodeState.state);
    final selectedStateCodeOrProvinceStateState =
    ref.watch(selectedStateCodeOrProvinceState.state);

    final Set<String> stateListSet = Set<String>();
    final Set<String> stateProvinceListSet = Set<String>();

    stateListSet.add(AppConstant.FILTER_INITIAL_WALUE);
    stateProvinceListSet.add(AppConstant.FILTER_INITIAL_WALUE);

    _stateValue = AppConstant.FILTER_INITIAL_WALUE;
    _stateOrProvinceValue = AppConstant.FILTER_INITIAL_WALUE;

    return values.when(data: (data) {
      data.value.forEach((element) {
        var value = element as Value;
        if (value.statecode != null) {
          stateListSet.add(value.statecode.toString());
        }
        if (value.address1_stateorprovince != null) {
          stateProvinceListSet.add(value.address1_stateorprovince.toString());
        }
      });

      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: <Widget>[

            Icon(Icons.filter_list_alt),
            SizedBox(
              width: 10,
            ),
            Center(
              child: DropdownButton(
                value: selectedStateCodeStateState.state,
                alignment: Alignment.center,

                onChanged: (String? value) {
                  selectedStateCodeStateState.state = value!;
                  ref.refresh(accountStateNotifierProvider);
                },
                items: stateListSet.map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: DropdownButton(


                value: selectedStateCodeOrProvinceStateState.state,
                alignment: Alignment.center,
                onChanged: (String? value) {
                  selectedStateCodeOrProvinceStateState.state = value!;
                  ref.refresh(accountStateNotifierProvider);
                },
                items: stateProvinceListSet.map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      );
    }, loading: () {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child:
        SizedBox(width: 20, height: 20, child: CircularProgressIndicator()),
      );
    }, error: (e, s) {
      return SizedBox();
    });
  }
}