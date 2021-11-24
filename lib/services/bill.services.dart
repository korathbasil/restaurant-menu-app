import 'package:flutter/cupertino.dart';
import 'package:restaurant_menu_app/models/Bill.dart';

List<BillItem> billItems = [];

ValueNotifier<List<BillItem>> billItemsNotifier = ValueNotifier(billItems);

addToBill(BillItem item) {
  bool _itemFound = false;
  billItems.forEach((billItem) {
    if (billItem.item.name == item.item.name) {
      billItem.count++;
      _itemFound = true;
      return;
    }
  });
  if (!_itemFound) {
    billItems.add(item);
  }

  billItemsNotifier.notifyListeners();
}
