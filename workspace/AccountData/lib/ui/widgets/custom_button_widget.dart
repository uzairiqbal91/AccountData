import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_resources/app_colors.dart';

class CustomButton extends StatelessWidget {
final String text;
final bool isIgnoring;
final VoidCallback onTap;
final bool isLoading;
final Color color;
final double fontSize;

const CustomButton(
{required this.text,
this.isIgnoring = false,
required this.onTap,
this.isLoading = false,
this.color = AppColors.PRIMARY_COLOR,
this.fontSize = 11.0

});

@override
Widget build(BuildContext context) {
  return IgnorePointer(
    ignoring: isIgnoring,
    child: Container(
      width: MediaQuery.of(context).size.width/2.9,
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:  FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              this.text,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .merge(TextStyle(fontSize: fontSize)),
            ),
          ),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary:   isIgnoring
              ? color.withOpacity(0.7)
              : color,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    ),
  );
}
}