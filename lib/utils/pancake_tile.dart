import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final dynamic pancakeColor;
  final String imageName;

  // Valor fijo del borde circular
  final double borderRadius = 24;
  const PancakeTile({super.key, required this.pancakeFlavor, required this.pancakePrice, this.pancakeColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius)),
        ),
        child: Column(children: [
          // Precio
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: pancakeColor[100],
                    borderRadius: BorderRadius.circular(borderRadius)),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$pancakePrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: pancakeColor[800]),
                ),
              )
            ],
          ),
          // Imagen del producto
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            child: Image.asset(imageName),
          ),
          // Texto del sabor del producto
          Text(
            pancakeFlavor,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // Nombre de la tienda
          const Text(
            'Pancake House',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          // Íconos de "Me encanta" y "Agregar"
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink[400],
                ),
                Text(
                  "Add",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
