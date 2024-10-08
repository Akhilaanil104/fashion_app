import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:fashion_app1/common/widgets/back_button.dart';
import 'package:fashion_app1/common/widgets/custom_button.dart';
import 'package:fashion_app1/common/widgets/email_textfield.dart';
import 'package:fashion_app1/common/widgets/password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  late final TextEditingController _usernameController =
      TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();
  final FocusNode _passwordNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();

    _passwordNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading:  AppBackButton(
          onTap:(){
            context.go('/home');
          } ,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 160.h,
          ),
          Text(
            "FashionForMe",
            style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            textAlign: TextAlign.center,
            "Hi ! Welcome back.You 've been missed",
            style: appStyle(13, Kolors.kGray, FontWeight.normal),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                EmailTextField(
                    radius: 25,
                    focusNode: _passwordNode,
                    hintText: "Username",
                    controller: _usernameController,
                    prefixIcon: Icon(
                      CupertinoIcons.profile_circled,
                      size: 20,
                      color: Kolors.kGray,
                    ),
                    keyboardType: TextInputType.name,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus((_passwordNode));
                    }),
                SizedBox(
                  height: 25.h,
                ),
                PasswordField(
                  controller: _passwordController,
                  focusNode: _passwordNode,
                  radius: 25,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  onTap: (){},
                  text: "LOGIN",
                  btnWidth: ScreenUtil().screenWidth,
                  btnHieght: 40,
                  radius: 20,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 130.h,
        child: Center(child:Padding(padding: const EdgeInsets.only(bottom: 110.0),
        child: GestureDetector(
          onTap: (){
          context.push('/registerscreen');
          },
          child: Text("Do not have an account? Register a new one",style: appStyle(12, Colors.blue, FontWeight.normal),),
        ),),
        
        
        ),
      ),
    );
  }
}
