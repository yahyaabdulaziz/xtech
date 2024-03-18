import 'package:flutter/material.dart';
import 'package:xtech/data/model/order_data.dart';
import 'package:xtech/presentation/utils/app_assets.dart';
import 'package:xtech/presentation/utils/app_theme.dart';
import 'package:xtech/presentation/widgets/order_widget.dart';

class MyOrders extends StatelessWidget {
  static const String routeName = "MyOrders";

  MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          elevation: 4,
          centerTitle: true,
          title: Image.asset(AppAssets.logoHere),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
            color: Colors.deepPurple,
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.deepPurple,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .24,
                  ),
                  const Text(
                    "My Order",
                    style: AppTheme.appBarTextStyle,
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                OrderWidget(
                    model: OrderDataModel(
                        "326457",
                        "01144990454",
                        "fromCity",
                        "fromAddress",
                        "toCity",
                        "toAddress",
                        "toName",
                        "fromName")),
                OrderWidget(
                    model: OrderDataModel(
                        "326457",
                        "01144990454",
                        "fromCity",
                        "fromAddress",
                        "toCity",
                        "toAddress",
                        "toName",
                        "fromName")),
                OrderWidget(
                    model: OrderDataModel(
                        "326457",
                        "01144990454",
                        "fromCity",
                        "fromAddress",
                        "toCity",
                        "toAddress",
                        "toName",
                        "fromName")),
              ],
            ))
          ],
        ));
  }
}
