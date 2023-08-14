import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              const Text(
                'Good morning',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Let's order fresh items for you",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 24),
              const Text(
                'Fresh Items',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: 'Avocado',
                      itemPrice: '48.00',
                      color: Colors.green.shade300,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
