import 'package:flutter/material.dart';
import 'package:seat_finder/COMMON_WIDGETS/common_widgets.dart';
import 'package:seat_finder/CONSTANTS/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seat_finder/SEAT_FINDER/repo/seat_finder_repo.dart';
import '../../CONSTANTS/constant.dart';
import 'components/cabin_widget.dart';

class SeatFinderPage extends StatelessWidget {
  const SeatFinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
     return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(h*0.08),child: CustomAppBar(
        txt: "Seat Finder",
      ),),
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: const Color(0xff126DCA),
      //   title: const Text("Select Your Seats"),
      // ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(height: 8),

            TextFormField(
              controller: RepositoryProvider.of<SeatFinderRepository>(context).searchContrller,
              keyboardType: TextInputType.number,
              decoration:  InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: "Search",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  suffixIcon: CustomButton(width:w*0.2,txt:AppString.find,)
              ),
            ),

            const   SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Builder(
                    builder: (context) => CabinWidget(
                      index: index,
                      searchBarText: RepositoryProvider.of<SeatFinderRepository>(context).searchContrller.text,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
