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
        borderRadius: BorderRadius.circular(20),
        color: color,
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(2, 2),
            color: Colors.grey,
          )
        ],
      ),
      margin: const EdgeInsets.all(7),
      height: 50,
      width: 50,
      child: Column(
        children: [
          const SizedBox(height: 5),
          Text(itemName),
          const Spacer(),
          Text('Rs.$itemPrice'),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
