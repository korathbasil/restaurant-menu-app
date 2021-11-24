import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class FoodItem extends HiveObject {
  FoodItem({required String this.name, required double this.price});

  @HiveField(0)
  late String name;

  @HiveField(1)
  late double price;
}
