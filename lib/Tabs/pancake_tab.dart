import 'package:donut_app_8sc/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {
  // Lista de pancakes
  final List pancakesOnSale = [
    //[pancakeFlavor, pancakePrice, pancakeColor, imageName]
    ["Blueberry", "40", Colors.blue, "lib/images/pancakes/pancakes1.png"],
    ["Strawberry", "50", Colors.red, "lib/images/pancakes/pancakes2.png"],
    ["Chocolate", "60", Colors.brown, "lib/images/pancakes/pancakes3.png"],
    ["Vanilla", "35", Colors.yellow, "lib/images/pancakes/pancakes4.png"],
    ["Maple Syrup", "55", Colors.orange, "lib/images/pancakes/pancakes5.png"],
    ["Nutella", "65", Colors.brown, "lib/images/pancakes/pancakes6.png"],
    ["Banana", "45", Colors.amber, "lib/images/pancakes/pancakes7.png"],
    ["Caramel", "70", Colors.brown, "lib/images/pancakes/pancakes8.png"]
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
      itemCount: pancakesOnSale.length,
    );
  }
}
