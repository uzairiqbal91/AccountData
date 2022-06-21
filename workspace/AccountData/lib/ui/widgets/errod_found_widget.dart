import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_images.dart';
import 'custom_button_widget.dart';

class ErrorFound extends StatefulWidget {

  ErrorFound(this.error,this.buttonCallBack);

  String error;
  VoidCallback buttonCallBack;

  @override
  State<ErrorFound> createState() => _ErrorFoundState();
}

class _ErrorFoundState extends State<ErrorFound> {

  bool isNoInternet = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.error.contains("No internet")){
      setState(() {
        isNoInternet = true;
      });
    }
  }

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
              isNoInternet ?   AppImages.NO_INTERNET_IMAGE : AppImages.ERROR  ,
              width: 240.0,
              height: 100.0,
              matchTextDirection: true,
            ),
            // Image.asset(image, width: 240.0, height: 100.0,),
            SizedBox(
              height: 20,
            ),
            Text(
              isNoInternet ? "No Internet Found !" :widget.error,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.ERRORCOLOR
              ),
            ),
            SizedBox(height: 20,),
            CustomButton(
                text: "Try again ",
                color: AppColors.ERRORCOLOR,
                onTap: (){
                  widget.buttonCallBack.call();
                })
          ],
        ),
      ),
    );
  }
}