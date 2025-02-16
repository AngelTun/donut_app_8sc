import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;
  

  //Valor fijo del borde circular
  final  double borderRadius = 24;
  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius))
            ),
          child: Column(children: [
            //Precio
            Row(
            //Alinea el texto a la derecha
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Container(
              decoration: BoxDecoration(
                color:  donutColor[100],
                borderRadius: BorderRadius.circular(borderRadius)
              ),
              padding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
              child: Text('\$$donutPrice',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 18,
                color: donutColor[800] ),),
            )
            ],),
            //Imagen del producto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              //En esta parte le tuve que agregar el sizedBox, ya que la imagen era muy grande, 
              // y esto hacia que me saliera unas lineas de cebra diciendo que se paso del limite, y ya con esto ajuste sus tamaños verticales y horizontales
              child: SizedBox( 
                width: 400,
                height: 400,
                child: Image.asset(imageName),),),
            //Texto del  sabor del producto con la tienda
            // Texto del sabor del producto
            Text(
              donutFlavor,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            // Nombre de la tienda
            const Text(
              'Crispy Cream',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            //íconos de "Me encanta" y "agregar"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Ícono de corazón
                  Icon(
                    Icons.favorite_border,
                    size: 28,
                    color: Colors.black, 
                  ),
                  SizedBox(width: 4), // Espacio entre elementos
                  // Texto "Add"
                  Text(
                    "Agregar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

          ],),
      ),
    );
  }
}