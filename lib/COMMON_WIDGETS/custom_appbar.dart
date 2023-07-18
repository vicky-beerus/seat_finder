import 'package:flutter/material.dart';


import '../CONSTANTS/constant.dart';
import '../constants/constant.dart';
import 'common_widgets.dart';




class CustomAppBar extends StatelessWidget {
  String? txt;
  List<Widget>? act;


  CustomAppBar({this.txt,this.act});





  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      centerTitle: false,


      backgroundColor: AppColors.white2,
      shape: Border(
        bottom: BorderSide(color: AppColors.grey.withOpacity(0.7))
      ),


      title: CustomText(txt:txt ?? "", color: AppColors.primaryColor,fontWeight: FontWeight.w600),



    );
  }



}
