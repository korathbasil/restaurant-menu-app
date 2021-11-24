import 'package:restaurant_menu_app/models/Bill.dart';

createBill(BillItem item) {
  Bill _bill = Bill();
  _bill.addItem(item);
  return _bill;
}
