import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorSizeNotifier>(builder: (context,controller,child){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(context.read<ProductNotifier>().product!.sizes.length,(i){
          String s= context.read<ProductNotifier>().product!.sizes[i];
          return GestureDetector(
            onTap: (){
              controller.setSize(s);
            },
            child: Container(
              height: 30.h,
              width: 45.h,
              decoration: BoxDecoration(
                color: controller.size ==s
                ? Kolors.kPrimary
                :Kolors.kGrayLight,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Text(s,style: appStyle(20, Kolors.kWhite, FontWeight.bold),),),
            ),
          );

        }),
      );

  });
  }
}