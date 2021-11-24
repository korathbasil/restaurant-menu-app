import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/models/FoodItem.dart';
import 'package:restaurant_menu_app/services/food_item.service.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key}) : super(key: key);

  final _menuItems = [
    {"name": "Biriyani", "price": 140},
    {"name": "Fried Rice", "price": 120},
    {"name": "Noodles", "price": 120},
    {"name": "Chicken 65", "price": 150},
    {"name": "Chicken Lollipop", "price": 180},
    {"name": "Tandooi Chicken", "price": 350},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ValueListenableBuilder(
            builder:
                (BuildContext context, List<FoodItem> items, Widget? child) {
              return ListView.separated(
                  itemBuilder: (ctx, n) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[n].name,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "₹" + items[n].price.toString(),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text("Add"))
                          // CupertinoButton.filled(
                          //   child: Text("Add"),
                          //   onPressed: () {},
                          // )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (ctx, n) => const Divider(),
                  itemCount: items.length);
            },
            valueListenable: foodItemNotifier,
          ))
        ],
      ),
    );
  }
}
