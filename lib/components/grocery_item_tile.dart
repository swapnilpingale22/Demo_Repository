import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String? imagePath;
  final color;
  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    this.imagePath,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      margin: const EdgeInsets.all(5),
      height: 50,
      width: 50,
      child: Column(
        children: [
          const SizedBox(height: 5),
          Text(itemName),
          Spacer(),
          Text('Rs.$itemPrice'),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
