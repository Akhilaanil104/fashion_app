import 'package:fashion_app1/common/services/storage.dart';
import 'package:fashion_app1/common/widgets/login_bottom_sheet.dart';
import 'package:fashion_app1/const/constants.dart';
import 'package:fashion_app1/src/products/widgets/staggered_tile_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    String? accesstoken=Storage().getString('accessToken');
    return Padding(padding: EdgeInsets.all(8.h),
    child: StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing: 4,crossAxisSpacing: 4,
    children: 
      List.generate(products.length,(i){
        final double mainAxisCellCount =(i % 2==0? 2.17:2.4);
        final product =products[i];
        return StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: mainAxisCellCount, child: StaggeredTileWidget(
          onTap: () {
            if(accesstoken==null){
              loginBottomSheet(context);
            }else{
              //hangle wishlist
            }
          },
          i:i
        , product: product));

      })
    ,),
    );
  }
}