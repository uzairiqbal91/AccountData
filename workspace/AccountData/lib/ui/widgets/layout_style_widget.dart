import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_resources/app_colors.dart';
import '../../providers/account_provider.dart';
import '../views/dashboad_view.dart';

class LayoutStyleWidget extends ConsumerWidget {
  const LayoutStyleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optrionState = ref.read(layoutOptionStateProvider.state);
    final optrionValue = ref.watch(layoutOptionStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Container(
              child: Icon(
                Icons.grid_view,
                color: optrionValue ? AppColors.TEXTCOLORGREY : Colors.blue,
              )),
          onTap: () {
            optrionState.state = false;
          },
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          child: Container(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.line_weight_rounded,
                color: optrionValue ? Colors.blue : AppColors.TEXTCOLORGREY,
              )),
          onTap: () {
            optrionState.state = true;
          },
        )
      ],
    );
  }
}