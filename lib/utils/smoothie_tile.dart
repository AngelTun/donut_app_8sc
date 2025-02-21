import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String imageName;

  // Valor fijo del borde circular
  final double borderRadius = 24;
  const SmoothieTile({super.key, required this.smoothieFlavor, required this.smoothiePrice, this.smoothieColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                    color: smoothieColor[100],
                    borderRadius: BorderRadius.circular(borderRadius)),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$smoothiePrice',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: smoothieColor[800]),
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
            smoothieFlavor,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // Nombre de la tienda
          const Text(
            'Smoothie Bar',
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
