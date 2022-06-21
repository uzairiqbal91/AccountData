import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled1/app_resources/app_colors.dart';
import 'package:untitled1/app_resources/app_constants.dart';
import 'package:untitled1/app_resources/app_images.dart';

import '../../models/accounts_model.dart';
import '../../providers/account_provider.dart';
import '../widgets/card_title_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_cached_network_image_widget.dart';
import '../widgets/errod_found_widget.dart';
import '../widgets/filter_widget.dart';
import '../widgets/layout_style_widget.dart';
import '../widgets/list_populate_widget.dart';
import '../widgets/no_record_found.dart';
import '../widgets/search_bar_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Container(
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchBarWidget(
                  onTextChange: (String) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [FilterWidget(), LayoutStyleWidget()],
                ),
              ],
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0), child: ListPopulateWidget()));
  }
}




















