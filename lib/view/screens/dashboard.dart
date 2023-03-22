import 'package:flutter/material.dart';
import 'package:food_delivery/view/screens/cart_screen.dart';
import 'package:food_delivery/view/screens/home_screen.dart';

import 'accout_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var selectIndex=0;

  final List<Widget> _tab = const [
      HomeScreen(),
      CartScreen(),
      ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tab[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black54,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        currentIndex: selectIndex,
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (index){
          setState(() {
            selectIndex = index;
          });

        },
      ),

    );
  }
}
