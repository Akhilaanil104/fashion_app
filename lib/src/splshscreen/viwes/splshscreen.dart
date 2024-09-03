import 'package:fashion_app1/common/services/storage.dart';
import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {

//     _navigator();
//     super.initState();
//   }

//   _navigator() async {
//     await Future.delayed(const Duration(microseconds: 3000), () {
//       if (Storage().getBool('firstOpen') == null) {
//         //  go to onboarding screen
//         // GoRoute.of(context).go('location');
//         GoRouter.of(context).go('/onboarding');
//       } else {
//         // go to the home page
//         // GoRoute.of(context).go('location);
//         GoRouter.of(context).go('/home');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Kolors.kWhite,
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_PNG))),
//       ),
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  _navigator() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      if (Storage().getBool('firstOpen') == null) {
        //Go to the onboarding screen
        GoRouter.of(context).go('/onboarding');
      } else {
        //Go to home page
        GoRouter.of(context).go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_PNG))),
      ),
    );
  }
}
