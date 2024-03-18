import 'package:flutter/material.dart';
import 'package:xtech/data/model/order_data.dart';
import 'package:xtech/presentation/screens/home/tabs/order_deatil_tab/order_details_tab.dart';
import 'package:xtech/presentation/utils/app_theme.dart';

class OrderWidget extends StatelessWidget {
  OrderDataModel model;

  OrderWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "no:${model.orderNumber}",
                style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
              ),
              const Icon(
                Icons.home_mini,
                color: Colors.yellow,
              ),
              Text(
                "on Hold",
                style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8))),
                child: Row(
                  children: [
                    const Icon(
                      size: 20,
                      Icons.date_range,
                      color: Colors.white,
                    ),
                    Text(
                      "7-3-2024   2:22AM",
                      style: AppTheme.appBarTextStyle.copyWith(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                buildCircularWidget("From", Colors.greenAccent, context),
                Expanded(
                  // Added Expanded widget
                  child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.fromName),
                        Text("Phone : ${model.phoneNumber}"),
                        Text("City : ${model.fromCity}"),
                        Text("Shipping Address : ${model.fromAddress}"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                buildCircularWidget("To", Colors.deepPurple, context),
                Expanded(
                  // Added Expanded widget
                  child: Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.toName),
                        Text("Phone : ${model.phoneNumber}"),
                        Text("City : ${model.toCity}"),
                        Text("Shipping Address : ${model.toAddress}"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Text(
                  "Deliver by : ",
                  style: TextStyle(fontSize: 10),
                ),
                const Text("23-4-2024  11:00 - 6:00PM",
                    style: TextStyle(fontSize: 10)),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, OrderDetails.routeName,
                            arguments: model);
                      },
                      child: const Text('Details',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCircularWidget(String dir, Color color, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .20,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: Text(
          dir,
          style: AppTheme.circularTextStyle,
        ),
      ),
    );
  }
}
