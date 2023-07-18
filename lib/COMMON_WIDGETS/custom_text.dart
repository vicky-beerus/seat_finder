import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  String txt;
  double? size;
  FontWeight? fontWeight;
  Color? color;
   CustomText({Key? key,required this.txt,this.fontWeight,this.size,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      txt,style: TextStyle(fontSize:size,fontWeight:fontWeight,color:color ),overflow: TextOverflow.ellipsis,
    );
  }
}
