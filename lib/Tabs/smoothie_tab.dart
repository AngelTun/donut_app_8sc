import 'package:donut_app_8sc/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double, String) onAddToCart;
  
  final List smoothiesOnSale = [
    ["Arándano", "50", Colors.purple, "lib/images/smoothie/smoothie_arandanos.png"],
    ["Arándano/frambuesa", "55", Colors.orange, "lib/images/smoothie/smoothie_arandanosframbuesa.png"],
    ["Chocolate", "60", Colors.green, "lib/images/smoothie/smoothie_chocolate.png"],
    ["Fresa/plátano", "45", Colors.red, "lib/images/smoothie/smoothie_fresaplatano.png"],
    ["Mora", "50", Colors.pink, "lib/images/smoothie/smoothie_moras.png"],
    ["Naranja", "65", Colors.brown, "lib/images/smoothie/smoothie_naranja.png"],
    ["Pera", "70", Colors.yellow, "lib/images/smoothie/smoothie_pera.png"],
    ["Plátano", "55", Colors.blue, "lib/images/smoothie/smoothie_platano.png"]
  ];

  SmoothieTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
          onTap: () => onAddToCart(
            double.parse(smoothiesOnSale[index][1]),
            smoothiesOnSale[index][0]
          ),
        );
      },
      itemCount: smoothiesOnSale.length,
    );
  }
}