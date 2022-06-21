import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app_resources/app_colors.dart';
import '../../app_resources/app_images.dart';


class NoRecordFound extends StatelessWidget {

  NoRecordFound();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SvgPicture.asset(
              AppImages.NOPRODUCT  ,
              width: 240.0,
              height: 100.0,
              matchTextDirection: true,
            ),
            // Image.asset(image, width: 240.0, height: 100.0,),
            SizedBox(
              height: 20,
            ),
            Text(
               "No Record Found!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.SHIMMERGREYCOLOR
              ),
            )
          ],
        ),
      ),
    );
  }
}