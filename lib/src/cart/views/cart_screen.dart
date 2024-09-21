import 'package:fashion_app1/common/services/storage.dart';
import 'package:fashion_app1/src/auth/views/login_screen.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
     String? accessToken =Storage().getString('accessToken');

    

    if(accessToken==null){
      return const LoginPage();
    }
    return Scaffold(
      body: Center(
        child: Text("Cart Page"),
      ),
    );
  }
}