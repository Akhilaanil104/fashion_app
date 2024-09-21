import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashion_app1/common/services/storage.dart';
import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/utils/kstrings.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/back_button.dart';
import 'package:fashion_app1/common/widgets/error_modal.dart';
import 'package:fashion_app1/common/widgets/login_bottom_sheet.dart';
import 'package:fashion_app1/common/widgets/reusable_text.dart';
import 'package:fashion_app1/const/constants.dart';
import 'package:fashion_app1/src/products/controllers/color_size_notifier.dart';
import 'package:fashion_app1/src/products/controllers/product_notifier.dart';
import 'package:fashion_app1/src/products/widgets/color_selection_widget.dart';
import 'package:fashion_app1/src/products/widgets/expandable_text.dart';
import 'package:fashion_app1/src/products/widgets/product_bottom_bar.dart';
import 'package:fashion_app1/src/products/widgets/product_size_widget.dart';
import 'package:fashion_app1/src/products/widgets/similar_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.productId});
  final String productId;

  @override
  Widget build(BuildContext context) {
    String? accessToken =Storage().getString('accessToken');
    print(context.read<ProductNotifier>().product!.title);
    return Consumer<ProductNotifier>(
        builder: (context, ProductNotifier, child) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 207, 198, 198),
              expandedHeight: 320.h,
              collapsedHeight: 65.h,
              floating: false,
              pinned: true,
              leading: AppBackButton(),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Kolors.kSecondaryLight,
                      child: Icon(
                        AntDesign.heart,
                        color: Kolors.kRed,
                        size: 18,
                      ),
                    ),
                  ),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: SizedBox(
                  height: 415.h,
                  child: ImageSlideshow(
                      indicatorColor: Kolors.kPrimaryLight,
                      autoPlayInterval: 15000,
                      isLoop: ProductNotifier.product!.imageUrls.length > 1
                          ? true
                          : false,
                      children: List.generate(
                          ProductNotifier.product!.imageUrls.length, (i) {
                        return CachedNetworkImage(
                          imageUrl: ProductNotifier.product!.imageUrls[i],
                          placeholder: placeholder,
                          errorWidget: errorWidget,
                          fit: BoxFit.cover,
                        );
                      })),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      text: ProductNotifier.product!.clothesType.toUpperCase(),
                      style: appStyle(13, Kolors.kGray, FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Icon(
                          AntDesign.star,
                          size: 14,
                          color: Kolors.kGold,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ReusableText(
                            text: ProductNotifier.product!.ratings
                                .toStringAsFixed(1),
                            style:
                                appStyle(13, Kolors.kGray, FontWeight.normal))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10.h),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: ReusableText(
                    text: ProductNotifier.product!.title,
                    style: appStyle(16, Kolors.kDark, FontWeight.normal)),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: ExpandableText(
                      text: ProductNotifier.product!.description)),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Divider(
                  thickness: .5.h,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: "Select Sizes",
                    style: appStyle(14, Kolors.kDark, FontWeight.w600)),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ProductSizeWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: "Select Colors",
                    style: appStyle(14, Kolors.kDark, FontWeight.w600)),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ColorSelectionWidget(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10.h,),),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SimilarProduct(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10.h,),)
          ],
        ),
        bottomNavigationBar: ProductBottomBar(
          onPressed: (){
            if(accessToken==null){
              loginBottomSheet(context);

            }else{
              if(context.read<ColorSizeNotifier>().color=="" || context.read<ColorSizeNotifier>().size==""){
                showErrorPopup(context, AppText.kCartErrorText,'error adding to cart',true);
              }else{
                //cartlogin
              }
            }
            print("Add to cart");
          },
          price: ProductNotifier.product!.price.toString()),
      );
    });
  }
}
