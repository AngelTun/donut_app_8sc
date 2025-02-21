import 'package:donut_app_8sc/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  // Lista de pizzas
  final List pizzasOnSale = [
    //[pizzaFlavor, pizzaPrice, pizzaColor, imageName]
    ["Pepperoni", "80", Colors.red, "lib/images/pizza/pepperoni_pizza.png"],
    ["Margarita", "75", Colors.orange, "lib/images/pizza/margherita_pizza.png"],
    ["Boneless", "90", Colors.brown, "lib/images/pizza/boneless_pizza.png"],
    ["Vegana", "70", Colors.green, "lib/images/pizza/veggie_pizza.png"],
    ["Hawaiana", "85", Colors.yellow, "lib/images/pizza/hawaiian_pizza.png"],
    ["Roma", "95", Colors.redAccent, "lib/images/pizza/roma_pizza.png"],
    ["Cuatro Quesos", "65", Colors.amber, "lib/images/pizza/quesos_pizza.png"],
    ["Suprema", "100", Colors.deepOrange, "lib/images/pizza/supreme_pizza.png"]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
      itemCount: pizzasOnSale.length,
    );
  }
}
