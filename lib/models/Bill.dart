import 'package:restaurant_menu_app/models/FoodItem.dart';

class Bill {
  List<BillItem> items = [];

  addItem(BillItem item) => this.items.add(item);
}

class BillItem {
  late FoodItem item;
  late int count;

  BillItem({required FoodItem this.item});
}
