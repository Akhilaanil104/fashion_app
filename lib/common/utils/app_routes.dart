// ignore_for_file: unused_element

import 'package:fashion_app1/src/auth/views/login_screen.dart';
import 'package:fashion_app1/src/auth/views/registration_screen.dart';
import 'package:fashion_app1/src/categories/views/categories_screen.dart';
import 'package:fashion_app1/src/categories/views/category_page.dart';
import 'package:fashion_app1/src/entrypoint/views/entrypoint.dart';
import 'package:fashion_app1/src/notification/views/notification_screen.dart';
import 'package:fashion_app1/src/onboarding/views/onboarding_screen.dart';
import 'package:fashion_app1/src/products/views/product_screen.dart';
import 'package:fashion_app1/src/profile/views/orders_screen.dart';
import 'package:fashion_app1/src/profile/views/policy_screen.dart';
import 'package:fashion_app1/src/profile/views/shipping_address_screen.dart';
import 'package:fashion_app1/src/search/view/search_screen.dart';
import 'package:fashion_app1/src/splshscreen/viwes/splshscreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
   navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => AppEntryPoint(),
    ),
     GoRoute(path: '/onboarding',
    builder: (context, state) => const OnBoardingScreen(),),
    GoRoute(path: '/login',
    builder: (context,state)=> const LoginPage(),)
    // GoRoute(
    //   path: '/onboarding',
    //   builder: (context, state) => const OnBoardingScreen(),
    // ),
    // GoRoute(
    //   path: '/review',
    //   builder: (context, state) => const ReviewsPage(),
    // ),
    // GoRoute(
    //   path: '/policy',
    //   builder: (context, state) => const PolicyPage(),
    // ),
    // GoRoute(
    //   path: '/verification',
    //   builder: (context, state) => const VerificationPage(),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => const SearchPage(),
    // ),
    // GoRoute(
    //   path: '/help',
    //   builder: (context, state) => const HelpCenterPage(),
    // ),
    // GoRoute(
    //   path: '/orders',
    //   builder: (context, state) => const OrdersPage(),
    // ),
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) => const LoginPage(),
    // ),
    // GoRoute(
    //   path: '/register',
    //   builder: (context, state) => const RegistrationPage(),
    // ),
    // GoRoute(
    //   path: '/categories',
    //   builder: (context, state) => const CategoriesPage(),
    // ),
    //  GoRoute(
    //   path: '/category',
    //   builder: (context, state) => const CategoryPage(),
    // ),

    // GoRoute(
    //   path: '/addaddress',
    //   builder: (context, state) => const AddAddress(),
    // ),

    // GoRoute(
    //   path: '/addresses',
    //   builder: (context, state) => const AddressesListPage(),
    // ),

    //  GoRoute(
    //   path: '/notifications',
    //   builder: (context, state) => const NotificationPage(),
    // ),

    //  GoRoute(
    //   path: '/tracking',
    //   builder: (context, state) => const TrackOrderPage(),
    // ),

    // GoRoute(
    //   path: '/checkout',
    //   builder: (context, state) => const CheckoutPage(),
    // ),

    //   GoRoute(
    //   path: '/successful',
    //   builder: (context, state) => const SuccessfulPayment(),
    // ),

    //   GoRoute(
    //   path: '/failed',
    //   builder: (context, state) => const FailedPayment(),
    // ),

    // GoRoute(
    //   path: '/product/:id',
    //   builder: (BuildContext context, GoRouterState state) {
    //     final productId = state.pathParameters['id'];
    //     return ProductPage(productId: productId.toString());
    //   },
    // ),



    
    ,
    GoRoute(
      path: '/notification',
      builder: (context, state) => const NotificationScreen(),

    ),




    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),

    ),

    GoRoute(
      path: '/categories',
      builder: (context, state) => const CategoriesScreen(),

    ),

    GoRoute(
      path: '/category',
      builder: (context, state) => const CategoryPage(),

    ),


     GoRoute(
      path: '/product/:id',
      builder: (BuildContext context, GoRouterState state) {
        final productId = state.pathParameters['id'];
        return ProductScreen(productId: productId.toString());
      },
    ),

    GoRoute(
      path: '/orderscreen',
      builder: (context, state) => const OrdersScreen(),

    ),
    GoRoute(
      path: '/shippingaddressscreen',
      builder: (context, state) => const ShippingAddressScreen (),

    ),
    GoRoute(
      path: '/policyscreen',
      builder: (context, state) => const PolicyScreen(),

    ),
    GoRoute(
      path: '/registerscreen',
      builder: (context, state) => const RegistrationPage(),

    ),


















  ],
);

GoRouter get router => _router;


// import 'package:fashion_app1/src/auth/views/login_screen.dart';
// import 'package:fashion_app1/src/entrypoint/views/entrypoint.dart';
// import 'package:fashion_app1/src/onboarding/views/onboarding_screen.dart';
// import 'package:fashion_app1/src/splshscreen/viwes/splshscreen.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// final GoRouter _router = GoRouter(
//   navigatorKey: navigatorKey,
//   initialLocation: '/',
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SplashScreen(),
//     ),
//     GoRoute(
//       path: '/home',
    
//       builder: (context, state) => const AppEntryPoint(),
//     ),
//     GoRoute(path: '/onboarding',
//     builder: (context, state) => const OnBoardingScreen(),),
//     GoRoute(path: '/login',
//     builder: (context,state)=> const LoginPage(),)
//   ],
// );

// // get private router so used get 
// GoRouter get router => _router;
