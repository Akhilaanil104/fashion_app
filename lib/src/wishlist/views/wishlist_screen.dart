import 'package:fashion_app1/common/services/storage.dart';
import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/utils/kstrings.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/reusable_text.dart';
import 'package:fashion_app1/src/auth/views/login_screen.dart';
import 'package:fashion_app1/src/products/widgets/explore_products.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});
  

  @override
  Widget build(BuildContext context) {
     String? accessToken =Storage().getString('accessToken');

    

    if(accessToken==null){
      return const LoginPage();
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ReusableText(text: AppText.kWishlist, style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),
      ),
      body: Padding(padding: EdgeInsets.all(8.0),
      child: const ExploreProducts(),
      )
    );
  }
}