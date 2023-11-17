import 'package:flutter/material.dart';
import 'package:flutter_test_application/comp/my_list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.trolley,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //shop_tile
            MyListTile(
              text: 'Shop',
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/shop_page');
              },
            ),
            //cart
            const SizedBox(
              height: 20,
            ),
            //shop_tile
            MyListTile(
              text: 'Cart',
              icon: Icons.shopping_cart,
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, '/cart_page');
              },
            ),
          ],
        ),
        //logo

        //exit
        const SizedBox(
          height: 20,
        ),
        //shop_tile
        Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: MyListTile(
            text: 'Exit',
            icon: Icons.exit_to_app,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/intro_page', (route) => false),
          ),
        ),
      ]),
    );
  }
}
