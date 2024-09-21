import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key,required this.price,this.onPressed});
  final String price;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  68.h,
      color: Colors.white.withOpacity(.6),
      child: Padding(padding: EdgeInsets.fromLTRB(16.w, 0, 12.w, 12.h,
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.h,
            width: 120.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top:4.0),
                child: ReusableText(text: 'Total price', style: appStyle(14, Kolors.kGray, FontWeight.w400)),),
                ReusableText(text: '\$ $price', style: appStyle(16, Kolors.kDark, FontWeight.w600))
              ],
            ),
          ),
          ElevatedButton(onPressed: onPressed, style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Kolors.kPrimary),),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(FontAwesome.shopping_bag,size:16 ,color: Kolors.kWhite,),
              SizedBox(width: 8.w),
              ReusableText(text: "checkout", style: appStyle(14, Kolors.kWhite, FontWeight.bold))
            ],

          ),)
        ],
      ) ,),
    );
  }
}