import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(50),
            child: Icon(
              Icons.fastfood_outlined,
              size: 180,
              shadows: [
                Shadow(
                  blurRadius: 6,
                  offset: Offset(3, 3),
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 4,
                    offset: Offset(2, 2),
                    color: Colors.grey,
                  )
                ],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          const Text(
            'Fresh items everyday',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(3, 3),
                    color: Colors.grey,
                  )
                ],
              ),
              padding: const EdgeInsets.all(24.0),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
