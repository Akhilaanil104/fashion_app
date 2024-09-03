// import 'package:fashion_app1/common/utils/kcolors.dart';
// import 'package:fashion_app1/const/constants.dart';

// import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// class HomeCategoriesList extends StatelessWidget {
//   const HomeCategoriesList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 3.w),
//       child: SizedBox(
//         height: 80.h,
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(categories.length, (i) {
//               final category = categories[i];
//               return GestureDetector(
//                 onTap: () {
//                   context
//                       .read<CategoryNotif>()
//                       .setCategory(category.title, category.id);
//                   context.push("/category");
//                 },
//                 child: SizedBox(
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: Kolors.kSecondaryLight,
//                         child: Padding(
//                           padding: EdgeInsets.all(4.h),
//                           child: SvgPicture.network(
//                             category.imageUrl,
//                             width: 40.w,
//                             height: 40.h,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             })),
//       ),
//     );
//   }
// }
