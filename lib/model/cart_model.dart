import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "path0", Colors.green],
    ["Banana", "2.50", "path1", Colors.yellow],
    ["Chicken", "12.80", "path2", Colors.brown],
    ["Water", "1.00", "path3", Colors.blue],
  ];

  get shopItems => _shopItems;
}
