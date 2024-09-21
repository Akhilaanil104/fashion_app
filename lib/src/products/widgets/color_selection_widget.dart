// // // import 'package:fashion_app1/common/utils/kcolors.dart';
// // // import 'package:fashion_app1/common/widgets/app_style.dart';
// // // import 'package:fashion_app1/common/widgets/reusable_text.dart';
// // // import 'package:fashion_app1/const/constants.dart';
// // // import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
// // // import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // import 'package:provider/provider.dart';

// // // class ColorSelectionWidget extends StatelessWidget {
// // //   const ColorSelectionWidget({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Consumer<ColorSizeNotifier>(builder: (context,controller,child){
// // //       return Row(
// // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //         children: List.generate(context.read<ProductNotifier>().product!.colors.length,(i){
// // //           String c= context.read<ProductNotifier>().product!.colors[i];
// // //           return GestureDetector(
// // //             onTap: (){
// // //               controller.setColor(c);
// // //             },
// // //             child: Container(
// // //               padding: EdgeInsets.only(right: 20.w,left: 20.w),
// // //               margin: EdgeInsets.only(right: 20.w),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: kRadiusAll,
// // //                 color: controller.color==c
// // //                 ? Kolors.kPrimary
// // //                 :Kolors.kGrayLight,
                
// // //               ),
// // //               child: ReusableText(text: c, style: appStyle(12, Kolors.kWhite, FontWeight.normal))
// // //             ),
// // //           );

// // //         }),
// // //       );

// // //   });
// // //   }
// // }



// import 'package:fashion_app1/common/utils/kcolors.dart';
// import 'package:fashion_app1/common/widgets/app_style.dart';
// import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
// import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

// class ColorSelectionWidget extends StatelessWidget {
//   const ColorSelectionWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ColorSizeNotifier>(builder: (context,controller,child){
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: List.generate(context.read<ProductNotifier>().product!.colors.length,(i){
//           String s= context.read<ProductNotifier>().product!.colors[i];
//           return GestureDetector(
//             onTap: (){
//               controller.setColor(s);
//             },
//             child: Container(
//               height: 30.h,
//               width: 45.h,
//               decoration: BoxDecoration(
//                 color: controller.color ==s
//                 ? Kolors.kPrimary
//                 :Kolors.kGrayLight,
//                 borderRadius: BorderRadius.circular(5)
//               ),
//               child: Center(child: Text(s,style: appStyle(20, Kolors.kWhite, FontWeight.bold),),),
//             ),
//           );

//         }),
//       );

//   });
//   }
// }import 'package:fashion_app/common/utils/kcolors.dart';

import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/reusable_text.dart';
import 'package:fashion_app1/const/constants.dart';
import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ColorSelectionWidget extends StatelessWidget {
  const ColorSelectionWidget({super.key});

 @override
  Widget build(BuildContext context) {
    return Consumer<ColorSizeNotifier>(builder: (context, controller, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            context.read<ProductNotifier>().product!.colors.length, (i) {
          String c = context.read<ProductNotifier>().product!.colors[i];
          return GestureDetector(
            onTap: () {
              controller.setColor(c);
            },
            child: Container(
            padding: EdgeInsets.only(right: 20.w,left: 20.w),
            margin: EdgeInsets.only(right: 20.w),
            decoration: BoxDecoration(
              borderRadius: kRadiusAll,
              color: c== controller.color ? Kolors.kPrimary:Kolors.kGrayLight
            ),
            child: ReusableText(text: c, style: appStyle(12, Kolors.kWhite, FontWeight.normal),),

            ),
          );
        }),
      );
    });
  }
}
