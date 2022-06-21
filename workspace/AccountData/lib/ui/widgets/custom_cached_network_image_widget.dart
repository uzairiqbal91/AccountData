import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_constants.dart';

class CustomCachedNetwrokImagsWidget extends StatelessWidget {
  const CustomCachedNetwrokImagsWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      httpHeaders: (<String, String>{
        'Authorization':
        'Bearer '+AppConstant.TOKEN
      }),
      imageUrl:
      imageUrl, // if url is null than static url image will be displayed as image
      imageBuilder: (context, imageProvider) => Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
        ),
      ),
      // placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(
        Icons.person,
        color: AppColors.PRIMARY_COLOR,
      ),
    );
  }
}