import 'package:flutter/material.dart';
import 'package:xtech/data/model/order_data.dart';
import 'package:xtech/presentation/utils/app_assets.dart';
import 'package:xtech/presentation/utils/app_theme.dart';
import 'package:xtech/presentation/widgets/detail_card.dart';
import 'package:xtech/presentation/widgets/order_widget.dart';

class OrderDetails extends StatelessWidget {
  static const String routeName = "OrderDetails";

  const OrderDetails({super.key});

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
      body: ListView(
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
                  "Order Details",
                  style: AppTheme.appBarTextStyle,
                )
              ],
            ),
          ),
          OrderWidget(
              model: OrderDataModel("326457", "01144990454", "fromCity",
                  "fromAddress", "toCity", "toAddress", "toName", "fromName")),
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Expanded(child: DetailCard()),
                    Expanded(child: DetailCard()),
                    Expanded(child: DetailCard()),
                    Expanded(child: DetailCard()),
                    Expanded(child: DetailCard()),
                  ],
                ),
                const Text("Description"),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(8),
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
                  child: const Text(
                      "efhuksdhfjhsdjkfhsdjkfhsdjkfbsdjkfbsdjbvhsdbvsdvsdjvsdvbdfhbvjhsdbhvbsdhbvsdhbvhsdbvhsdbvsdjhbvsdhbvhsdbvhsdbvhdsbhbsdhkvbsdhkvbsdhkbvsdhkbvsdhkbvhksdbvsdhkbvsdhkbvsdhkvbsdhkvb"),
                ),
                const Text("Notes"),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(8),
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
                  child: const Text(
                      "efhuksdhfjhsdjkfhsdjkfhsdjkfbsdjkfbsdjbvhsdbvsdvsdjvsdvbdfhbvjhsdbhvbsdhbvsdhbvhsdbvhsdbvsdjhbvsdhbvhsdbvhsdbvhdsbhbsdhkvbsdhkvbsdhkbvsdhkbvsdhkbvhksdbvsdhkbvsdhkbvsdhkvbsdhkvb"),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.print,
                            color: Colors.white,
                          ),
                          Text(' Print',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.save_outlined,
                            color: Colors.white,
                          ),
                          Text(' Save As PDF',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
