import 'package:flutter/material.dart';
import 'package:tea_app/tab/burger_tab.dart';
import 'package:tea_app/tab/donut_tab.dart';
import 'package:tea_app/tab/pancake_tab.dart';
import 'package:tea_app/tab/pizza_tab.dart';
import 'package:tea_app/tab/smoothie_tab.dart';
import 'package:tea_app/tab/tea_tab.dart';
import 'package:tea_app/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my tabs
  List<Widget> myTabs = const [

    //tea tab
    MyTab(iconPath: 'lib/icons/coffee-cup.png'),
    //donut tab
    MyTab(iconPath: 'lib/icons/donut.png'),

    //burger tab
    MyTab(iconPath: 'lib/icons/burger.png'),

    //smoothie tab
    MyTab(iconPath: 'lib/icons/smoothie.png'),

    //pancake Tab
    MyTab(iconPath: 'lib/icons/pancakes.png'),

    //pizza tab
    MyTab(iconPath: 'lib/icons/pizza.png'),

  
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.grey.shade800, size: 36),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, color: Colors.grey.shade800, size: 36),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //i wANT to eat
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // tab bar with larger tabs
            Container(
              height: 80, // Fixed height for larger tabs
              child: TabBar(
                tabs: myTabs,
                isScrollable: false, // Make tabs fill the width
                indicatorPadding: EdgeInsets.symmetric(horizontal: 8),
                labelPadding: EdgeInsets.symmetric(horizontal: 4),
                tabAlignment: TabAlignment.fill, // Distribute tabs evenly
                dividerHeight: 0, // Remove divider line
              ),
            ),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //Tea tab
                  TeaTab(),
                  //Donut Tab page
                  DonutTab(),

                  // burger page
                  BurgerTab(),

                  // smoothie page .
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  //pizza page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}