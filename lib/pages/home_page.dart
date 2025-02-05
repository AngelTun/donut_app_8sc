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
  const MyTab(iconPath: 'lib/icons/donut.png'),
  //Burguer tab
  const  MyTab(iconPath: 'lib/icons/burger.png'),
  //Smoothie
  const MyTab(iconPath: 'lib/icons/smoothie.png'),
  //Pancake tab
  const MyTab(iconPath: 'lib/icons/pancakes.png'),
  //Pizza tab
  const MyTab(iconPath: 'lib/icons/pizza.png'),
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
        TabBar(tabs: myTabs),
        //Tap bar view
      
        //Carrito
          ],
        ) ,
        ),
    );
  }
}