import 'package:fashion_app1/common/utils/kcolors.dart';
import 'package:fashion_app1/common/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class profileTitleWidget extends StatelessWidget {
  const profileTitleWidget({super.key, required this.title, this.ontap, required this.leading});
  final String title;
  final void Function()? ontap;
  final IconData leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      onTap: ontap,
      leading: Icon(leading,color: Kolors.kGray,),
      title: Text(title,style: appStyle(13, Kolors.kDark, FontWeight.normal),),
      trailing: const Icon(AntDesign.right,size: 16,color: Kolors.kDark,),
    );
  }
}