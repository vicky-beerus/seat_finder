import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seat_finder/COMMON_WIDGETS/common_widgets.dart';
import 'package:seat_finder/CONSTANTS/app_colors.dart';

import 'package:seat_finder/SEAT_FINDER/model/seat_finder_model.dart';
import 'package:seat_finder/SEAT_FINDER/repo/seat_finder_repo.dart';



class SeatWidget extends StatelessWidget {
String? searchBarText,seatType;
int? seatIndex;

SeatWidget({this.searchBarText, this.seatType, this.seatIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: (searchBarText == seatIndex.toString()) ? Colors.blue.withOpacity(0.5) : Colors.transparent,
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
          border: Border.all(
            color: (searchBarText == seatIndex.toString()) ? const Color(0xff126DCA) : Colors.transparent,
            width: 2,
          ),

    color: (searchBarText == seatIndex.toString()) ? AppColors.primaryColor : AppColors.secondaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(txt: seatIndex.toString(),size: 16,fontWeight: FontWeight.bold,color:(searchBarText == seatIndex.toString())?Colors.white: AppColors.primaryColor,),

            const SizedBox(height: 4),
            CustomText(txt: seatType.toString(),size: 12,color:(searchBarText == seatIndex.toString())?Colors.white: AppColors.primaryColor,)

          ],
        ),
      ),

);
  }
}

