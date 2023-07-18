import 'package:flutter/material.dart';

import '../CONSTANTS/constant.dart';
import '../constants/constant.dart';


class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  double? height,width;
  Widget? suffix,preffix;
  String? hintTxt;
  bool? readOnly;

   CustomTextFormField({this.controller,this.width,this.height,this.preffix,this.suffix,this.hintTxt,this.readOnly}) : super();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: height ?? h*0.05,
      width: width ?? w*0.8,
      alignment: Alignment.center,


      decoration:  BoxDecoration(
        color:AppColors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: TextFormField(
        readOnly: readOnly == true ? true:false ,

        textAlign: TextAlign.start,
        controller: controller,
        decoration:  InputDecoration(
          hintText: hintTxt ?? "Type Here",
          suffixIcon: suffix,
          hintStyle: const TextStyle(
            fontSize: 15
          ),

          contentPadding: EdgeInsets.only(left: width!/15,bottom: height!/2),
          border: InputBorder.none)
        ),
    );
  }
}
