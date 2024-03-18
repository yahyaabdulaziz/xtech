import 'package:flutter/material.dart';
import 'package:xtech/presentation/screens/home/tabs/delivery_order_tab/delivery_order_tab.dart';
import 'package:xtech/presentation/screens/home/tabs/my_orders_tab/myorders_tab.dart';
import 'package:xtech/presentation/screens/settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    MyOrders(),
    const DeliveryOrder(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: buildBottomNavBar(),
      body: tabs[currentTabIndex],
    );
  }

  buildBottomNavBar() {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
        ),
        child: BottomNavigationBar(
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            setState(() {});
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_crash_sharp), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ));
  }
}
