import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/models/Bill.dart';
import 'package:restaurant_menu_app/services/bill.services.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  final menuItems = ["About", "Help", "Quit", "Add items"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Settings",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: menuItems
                .map((e) => Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        e,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                    ))
                .toList()),
        Expanded(
            child: ValueListenableBuilder(
          builder: (BuildContext ctx, List<BillItem> items, Widget? child) {
            return ListView.separated(
                itemBuilder: (ctx, n) {
                  return Text(items[n].item.name);
                },
                separatorBuilder: (ctx, n) {
                  return const Divider();
                },
                itemCount: billItems.length);
          },
          valueListenable: billItemsNotifier,
        ))
      ],
    ));
  }
}
