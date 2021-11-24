import 'package:flutter/cupertino.dart';
import 'package:restaurant_menu_app/models/FoodItem.dart';

ValueNotifier<List<FoodItem>> foodItemNotifier = ValueNotifier(foodItems);

List<FoodItem> foodItems = [
  FoodItem(name: "Biriyani", price: 120),
  FoodItem(name: "Biriyani", price: 120),
  FoodItem(name: "Biriyani", price: 120),
  FoodItem(name: "Biriyani", price: 120),
  FoodItem(name: "Biriyani", price: 120),
];

addFoodItem(FoodItem item) {
  foodItems.add(item);
}
