import 'package:flutter/cupertino.dart';
import 'package:restaurant_menu_app/models/FoodItem.dart';

ValueNotifier<List<FoodItem>> foodItemNotifier = ValueNotifier(foodItems);

List<FoodItem> foodItems = [
  FoodItem(name: "Chicken Biriyani", price: 140),
  FoodItem(name: "Mutton Biriyani", price: 220),
  FoodItem(name: "Chicken Fried Rice", price: 140),
  FoodItem(name: "Tandoor Chicken", price: 350),
  FoodItem(name: "Chappathi", price: 15),
];

addFoodItem(FoodItem item) {
  foodItems.add(item);
}
