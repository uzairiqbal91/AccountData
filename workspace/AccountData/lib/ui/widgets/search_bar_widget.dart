import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_constants.dart';
import '../../providers/account_provider.dart';
import '../views/dashboad_view.dart';

class SearchBarWidget extends ConsumerWidget {
  final void Function(String) onTextChange;

  const SearchBarWidget({required this.onTextChange});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarStateRead = ref.read(layoutBarStateProvider.state);
    String searchedText = "";
    return Container(
        height: 50,
        padding: EdgeInsets.all(8),
        child: TextField(
            onChanged: (text) {
              searchedText = text;
            },
            onEditingComplete: () {
              searchBarStateRead.state = searchedText;
              ref.refresh(accountStateNotifierProvider);
            },
            style: TextStyle(color: AppColors.TEXTCOLORGREY),
            decoration: InputDecoration(
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,

                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.SECONDARY_COLOR,
                ),
                hintText: AppConstant.SEARCHHINT,
                hintStyle: TextStyle(color: AppColors.SHIMMERGREYCOLOR),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: 10))));
  }
}