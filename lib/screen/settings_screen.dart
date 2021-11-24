import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:restaurant_menu_app/models/FoodItem.dart';

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
        ElevatedButton(
            onPressed: () async {
              //   var box = await Hive.openBox<FoodItem>('menu');

              //   final foodItem = FoodItem(name: "Pasta", price: 120);

              //   box.add(foodItem);

              //   final name = box.get

              //   print('Name: ${box.get('name')}');
            },
            child: Text("add"))
      ],
    ));
  }
}
