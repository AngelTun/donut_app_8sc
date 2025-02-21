import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;
  
  // Valor fijo del borde circular
  final double borderRadius = 24;
  const BurgerTile({super.key, required this.burgerName, required this.burgerPrice, this.burgerColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius))
            ),
          child: Column(children: [
            // Precio
            Row(
            // Alinea el texto a la derecha
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Container(
              decoration: BoxDecoration(
                color:  burgerColor[100],
                borderRadius: BorderRadius.circular(borderRadius)
              ),
              padding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
              child: Text('\$$burgerPrice',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 16,
                color: burgerColor[800] ),),
            )
            ],),
            // Imagen del producto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Image.asset(imageName),),
            // Texto del nombre del producto
            Text(
              burgerName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
           // Nombre de la tienda
            const Text(
              'Grill Master',
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
                  // Love icon
                  Icon(Icons.favorite, color: Colors.red[400],),
                  Text("Add", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline
                  ),)
                ],),
              ),
          ],),
      ),
    );
  }
}
