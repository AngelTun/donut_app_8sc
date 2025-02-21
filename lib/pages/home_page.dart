import 'package:donut_app_8sc/Tabs/burger_tab.dart';
import 'package:donut_app_8sc/Tabs/donut_tab.dart';
import 'package:donut_app_8sc/Tabs/pancake_tab.dart';
import 'package:donut_app_8sc/Tabs/pizza_tab.dart';
import 'package:donut_app_8sc/Tabs/smoothie_tab.dart';
import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<Widget> myTabs = [
  //Donut tab
  const MyTab(iconPath: 'lib/icons/donut.png', tabName: 'Donuts'),
  //Burguer tab
  const  MyTab(iconPath: 'lib/icons/burger.png', tabName: 'Burger'),
  //Smoothie
  const MyTab(iconPath: 'lib/icons/smoothie.png', tabName: 'Smoothie'),
  //Pancake tab
  const MyTab(iconPath: 'lib/icons/pancakes.png', tabName: 'Pancakes'),
  //Pizza tab
  const MyTab(iconPath: 'lib/icons/pizza.png', tabName: 'Pizza'),
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        leading: Icon(Icons.menu, color: 
        Colors.grey[800]),
        actions: [Padding(
          //Lo mueve a la derecha
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        )],
        ),
        body: Column(
          children: [
            //Texto "I want to Eat"
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32),),
                  Text("Eat", style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                    ),)
                ],
              ),
          ),
        //Tab bar
        TabBar(tabs: myTabs,
        //Color del texto seleccionado
        labelColor: Colors.pink,
        unselectedLabelColor: Colors.grey,),
        //Tap bar view
      Expanded(child: 
      TabBarView(children: [
      DonutTab(),
      BurgerTab(),
      SmoothieTab(),
      PancakeTab(),
      PizzaTab()
      ]
      )),
        //Carrito
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: Column(
                  //Alineado a la izquierda
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 Items | \$45",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Delivery Charges Included',
                    style: TextStyle(
                      fontSize: 12,
                    ),),
                  ],
                ),),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  child: Text("View Cart",
                  style: TextStyle(
                    color:  Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
            ],
          ),
        )
          ],
        ) ,
        ),
    );
  }
}