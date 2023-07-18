import 'package:flutter/material.dart';

import '../CONSTANTS/constant.dart';
import '../constants/constant.dart';
import 'common_widgets.dart';


class CustomButton extends StatelessWidget {
  double? height,width,txtSize;
  Function()?  tap;
  Color? bgColor,txtcolor;
  String? txt;
   CustomButton({Key? key,this.height,this.width,this.tap,this.bgColor,this.txt,this.txtcolor,this.txtSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: tap,
      child: Container(
        height: height ?? h*0.04,
        width:width ?? w*0.8,
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          color: bgColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5)
        ),
        child: CustomText(txt: txt ?? AppString.submit,color:txtcolor ??AppColors.white,fontWeight: FontWeight.w600,size:txtSize ?? 15,
        ),

      ),
    );
  }
}
