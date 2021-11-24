import 'package:flutter/cupertino.dart';
import 'package:restaurant_menu_app/models/Bill.dart';

List<BillItem> billItems = [];

ValueNotifier<List<BillItem>> billItemsNotifier = ValueNotifier(billItems);

addToBill(BillItem item) {
  billItems.add(item);
  billItemsNotifier.notifyListeners();
}
