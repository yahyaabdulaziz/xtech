import 'package:flutter/material.dart';
import 'package:xtech/presentation/screens/change_password/change_password.dart';
import 'package:xtech/presentation/screens/home/home_screen.dart';
import 'package:xtech/presentation/screens/home/tabs/delivery_order_tab/delivery_order_tab.dart';
import 'package:xtech/presentation/screens/home/tabs/my_orders_tab/myorders_tab.dart';
import 'package:xtech/presentation/screens/home/tabs/order_deatil_tab/order_details_tab.dart';
import 'package:xtech/presentation/screens/settings/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
        ChangePassword.routeName: (_) => const ChangePassword(),
        DeliveryOrder.routeName: (_) => const DeliveryOrder(),
        MyOrders.routeName: (_) =>  MyOrders(),
        OrderDetails.routeName: (_) => const OrderDetails()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
