import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class FoodItem extends HiveObject {
  FoodItem({required String name, required double price});

  @HiveField(0)
  late int? id;

  @HiveField(1)
  late String name;

  @HiveField(3)
  late double price;
}
