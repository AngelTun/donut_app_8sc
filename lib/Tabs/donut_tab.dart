import 'package:donut_app_8sc/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/donuts/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/donuts/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/donuts/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "lib/images/donuts/chocolate_donut.png"],
    ["Vainilla", "36", Colors.yellow, "lib/images/donuts/vainilla_donut.png"],
    ["Mordisko", "45", Colors.lightBlueAccent, "lib/images/donuts/mordisko_donut.png"],
    ["Caramelo", "84", Colors.brown, "lib/images/donuts/caramelo_donut.png"],
    ["Moka", "95", Colors.brown, "lib/images/donuts/moka_donut.png"]
  ];
  DonutTab ({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Como se va a distribuir
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, childAspectRatio: 1/1.5),
    //Que elementos tendra
    itemBuilder: (context, index) {
      return DonutTile (
      donutFlavor: donutsOnSale[index][0],
      donutPrice: donutsOnSale[index][1],
      donutColor: donutsOnSale[index][2],
      imageName: donutsOnSale[index][3]
    );
    },
    //Cuantos Elementos
    itemCount: donutsOnSale.length,
    );
  }
}