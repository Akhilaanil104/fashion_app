import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/utils/kstrings.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child:Stack(
        children: [
          Image.asset(R.ASSETS_IMAGES_EXPERIENCE_PNG,
          fit: BoxFit.cover,),
          Positioned(
            bottom: 200,
            left: 30,
            right: 30,
            child: Text(AppText.kOnboardHome,textAlign: TextAlign.center,
            style: appStyle(13, Kolors.kGray, FontWeight.normal),),)
        ],
      ) ,
    );
  }
}