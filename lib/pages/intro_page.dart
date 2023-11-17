import 'package:flutter/material.dart';
import 'package:flutter_test_application/comp/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //LOGO

          Icon(
            Icons.trolley,
            size: 110,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(
            height: 10,
          ),

          //Title

          const Text(
            'Test Shop',
            style: TextStyle(
              color: Color.fromARGB(255, 90, 90, 90),
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),

          // Sub title
          const SizedBox(
            height: 20,
          ),
          Text(
            'Only to show products',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 18,
            ),
          ),

          //button
          const SizedBox(
            height: 90,
          ),
          MyButton(
            onTap: () => Navigator.pushNamed(context, '/shop_page'),
            child: const Icon(
              Icons.arrow_forward,
              size: 40,
            ),
          )
        ]),
      ),
    );
  }
}
