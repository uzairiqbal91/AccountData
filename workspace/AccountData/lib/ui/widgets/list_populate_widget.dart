

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/ui/widgets/tile_skeleton_widget.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_constants.dart';
import '../../models/accounts_model.dart';
import '../../providers/account_provider.dart';
import '../views/dashboad_view.dart';
import 'card_title_widget.dart';
import 'custom_cached_network_image_widget.dart';
import 'custom_card_widget.dart';
import 'errod_found_widget.dart';
import 'no_record_found.dart';




class ListPopulateWidget extends ConsumerWidget {
  const ListPopulateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final values = ref.watch(accountStateNotifierProvider);


    final optrionValue = ref.watch(layoutOptionStateProvider);

    return values.when(data: (data, _, __) {
      return data.length == 0
          ? NoRecordFound()
          : RefreshIndicator(
        onRefresh: () async {
          ref.refresh(accountStateNotifierProvider);
        },
        child: GridView.count(
            crossAxisCount: optrionValue ? 1 : 2,
            crossAxisSpacing: AppConstant.GRIDCROSSAXISSPACING,
            childAspectRatio: optrionValue ? AppConstant.ASPECTRATIONLIST : AppConstant.ASPECTRATIONGRID,
            mainAxisSpacing: AppConstant.MAINAXISSPACING,
            children: List.generate(data.length, (index) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 600),
                switchOutCurve: Curves.easeInBack,
                child: CustomCardWidget(
                    color: AppColors.PRIMARY_COLOR,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: optrionValue
                            ?
                        TileWidget(
                          recrodView: data[index], isList: true,
                        )
                            : TileWidget(
                          recrodView: data[index], isList: false,
                        ))),
              );
            })),
      );
    }, error: (e) {
      return ErrorFound(e.toString(), () {
        ref.refresh(accountStateNotifierProvider);
      });
    }, dataLoading: (data) {
      return TileSkeletonWidget(

        isListView: optrionValue,
      );
    });
  }
}

class GridTileWidget extends StatelessWidget {
  String imageUrl ;
  String accountName ;
  String accountNumber ;
  String stateCode ;
  String stateOrProvince ;
  GridTileWidget({Key? key, required this.imageUrl,required this.accountName,required this.accountNumber,required this.stateCode,required this.stateOrProvince}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: CustomCachedNetwrokImagsWidget(imageUrl: imageUrl),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: TitleWidget(accountName: accountName),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 7,
                    child: AccountDetailWidget(accountNumber: accountNumber, stateCode: stateCode, stateOrProvince: stateOrProvince),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountDetailWidget extends StatelessWidget {
  const AccountDetailWidget({
    Key? key,
    required this.accountNumber,
    required this.stateCode,
    required this.stateOrProvince,
  }) : super(key: key);

  final String accountNumber;
  final String stateCode;
  final String stateOrProvince;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: SubTitleWidget(
                subtitle: "Acc# " + accountNumber)),
        SizedBox(
          height: 5,
        ),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SubTitleWidget(
                      subtitle: "State Code : " + stateCode),
                ),
                Expanded(
                  child: SubTitleWidget(
                    subtitle: "S/P : " + stateOrProvince,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}


class TileWidget extends StatefulWidget {
  Value recrodView;
  bool isList;
  TileWidget({Key? key, required this.recrodView,required this.isList}) : super(key: key);

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {

  String imageUrl = "";

  String accountName = "";
  String accountNumber = "";
  String stateCode = "";
  String stateOrProvince = "";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageUrl = widget.recrodView.entityimage_url != null
        ? AppConstant.APPURI +
        widget.recrodView.entityimage_url
        : AppConstant.IMAGE_URL;


    accountName = widget.recrodView.name ?? "-";
    accountNumber = widget.recrodView.accountnumber == null ? "-" : widget.recrodView.accountnumber;

    stateCode = widget.recrodView.statecode == null ? "-" : widget.recrodView.statecode.toString();
    stateOrProvince = widget.recrodView.address1_stateorprovince == null
        ? "-"
        : widget.recrodView.address1_stateorprovince.toString();

  }


  @override
  Widget build(BuildContext context) {
    return widget.recrodView != null ?
    widget.isList ?
    ListTileWidget(imageUrl: imageUrl, accountName: accountName, accountNumber: accountNumber, stateCode: stateCode, stateOrProvince: stateOrProvince) :
    GridTileWidget(imageUrl: imageUrl, accountName: accountName, accountNumber: accountNumber, stateCode: stateCode, stateOrProvince: stateOrProvince) : SizedBox() ;

  }
}


class ListTileWidget extends StatelessWidget {
  String imageUrl ;
  String accountName ;
  String accountNumber ;
  String stateCode ;
  String stateOrProvince ;
  ListTileWidget({Key? key, required this.imageUrl,required this.accountName,required this.accountNumber,required this.stateCode,required this.stateOrProvince}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return  Container(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: CustomCachedNetwrokImagsWidget(imageUrl: imageUrl),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: TitleWidget(accountName: accountName),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 7,
                    child: AccountDetailWidget(accountNumber: accountNumber, stateCode: stateCode, stateOrProvince: stateOrProvince),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}