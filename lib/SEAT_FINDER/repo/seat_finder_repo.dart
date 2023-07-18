import 'package:flutter/cupertino.dart';

import '../model/seat_finder_model.dart';

class SeatFinderRepository {


TextEditingController searchContrller = TextEditingController();

List<SeatFinderModel> seats = [];


selectSeat(val)=>seats.add(val);

removeSeat(val)=>seats.remove(val);
bool isSelected(val)=>seats.contains(val);


}