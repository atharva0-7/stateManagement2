import 'package:flutter/material.dart';

class ShoppingProvider with ChangeNotifier{
  List<String> shoppingList  = ["bread"];


  void addItem(String item)
  {
    shoppingList.add(item);
    notifyListeners();
  }
}