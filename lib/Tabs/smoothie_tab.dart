import 'package:donut_app_8sc/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  // Lista de smoothies
  final List smoothiesOnSale = [
    //[smoothieFlavor, smoothiePrice, smoothieColor, imageName]
    ["Arándano", "50", Colors.purple, "lib/images/smoothie/smoothie_arandanos.png"],
    ["Arándano/frambuesa", "55", Colors.orange, "lib/images/smoothie/smoothie_arandanosframbuesa.png"],
    ["Chocolate", "60", Colors.green, "lib/images/smoothie/smoothie_chocolate.png"],
    ["Fresa/plátano", "45", Colors.red, "lib/images/smoothie/smoothie_fresaplatano.png"],
    ["Mora", "50", Colors.pink, "lib/images/smoothie/smoothie_moras.png"],
    ["Naranja", "65", Colors.brown, "lib/images/smoothie/smoothie_naranja.png"],
    ["Pera", "70", Colors.yellow, "lib/images/smoothie/smoothie_pera.png"],
    ["Plátano", "55", Colors.blue, "lib/images/smoothie/smoothie_platano.png"]
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
      itemCount: smoothiesOnSale.length,
    );
  }
}
