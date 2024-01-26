import 'package:coffee_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottomnav_page.dart';
import '../constants.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // navigate bottom bar
        int _selectedIndex = 0;
        void navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
// pages
    final List<Widget>_pages=[
    ShopPage(),
    CartPage()
    ];
// shop page
    @override
    Widget build (BuildContext context) {
      return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: MyBottomNavBar(onTabChange: (index) => navigateBottomBar(index),),
        // MyBottomNavBar
        body: _pages[_selectedIndex],
      );

     //
  }
}



