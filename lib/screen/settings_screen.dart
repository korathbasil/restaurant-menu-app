import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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
              var box = await Hive.openBox('testBox');

              box.put('name', 'David');

              print('Name: ${box.get('name')}');
            },
            child: Text("add"))
      ],
    ));
  }
}
