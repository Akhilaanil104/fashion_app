import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/utils/kstrings.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/custom_button.dart';
import 'package:fashion_app1/common/widgets/reusable_text.dart';
import 'package:fashion_app1/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
                indicatorColor: Kolors.kPrimaryLight,
                onPageChanged: (p) {
                  print(p);
                },
                autoPlayInterval: 5000,
                isLoop: true,
                children: List.generate(images.length, (i) {
                  return CachedNetworkImage(
                    placeholder: placeholder,
                    errorWidget: errorWidget,
                    imageUrl: images[i],
                    fit: BoxFit.cover,
                  );
                })),
          ),
          Positioned(
              child: SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: AppText.kCollection,
                      style: appStyle(20, Kolors.kDark, FontWeight.w600)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Dicount 50% off \nthe first transaction",
                    style: appStyle(
                        14, Kolors.kDark.withOpacity(.6), FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(text: "Shop Now",
                  btnWidth: 150.w,
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

List<String> images = [
  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstudio63.in%2Ffashion-photography%2F&psig=AOvVaw0diKwRuvD15RHDLajfARYP&ust=1725395370787000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJi6y-KMpYgDFQAAAAAdAAAAABAE",
  "https://img.freepik.com/free-psd/fashion-model-banner-template_23-2148858371.jpg?w=996&t=st=1725312584~exp=1725313184~hmac=ac7d900cf033e7e73d6addd93418f6d8e70a7aad13dd661c37039cd87774c0e0"
  " data:image/jpeg;base64,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"

];

// thare kidakkunnaa address  mukalil kidakkunn list il idu ennu  
// data:image/jpeg;base64,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