import 'package:donut_app_8sc/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  // Lista de hamburguesas
  final List burgersOnSale = [
    //[burgerName, burgerPrice, burgerColor, imageName]
    ["Cheese Burger", "50", Colors.amber, "lib/images/burger/burger1.png"],
    ["BBQ Burger", "65", Colors.brown, "lib/images/burger/burger2.png"],
    ["Spicy Burger", "70", Colors.red, "lib/images/burger/burger3.png"],
    ["Veggie Burger", "55", Colors.green, "lib/images/burger/burger7.png"],
    ["Bacon Burger", "80", Colors.pink, "lib/images/burger/burger4.png"],
    ["Mushroom Burger", "75", Colors.grey, "lib/images/burger/burger5.png"],
    ["Double Burger", "90", Colors.orange, "lib/images/burger/burger6.png"],
    ["Classic Burger", "60", Colors.brown, "lib/images/burger/burger8.png"]
  ];
  
  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
      itemCount: burgersOnSale.length,
    );
  }
}
