import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_resources/app_colors.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.child,
    this.color = AppColors.BLACK_COLOR,
  }) : super(key: key);

  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 10,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: this.child,
          ),
        ));
  }
}