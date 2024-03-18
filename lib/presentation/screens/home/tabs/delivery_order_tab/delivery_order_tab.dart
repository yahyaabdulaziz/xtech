import 'package:flutter/material.dart';
import 'package:xtech/presentation/utils/app_assets.dart';
import 'package:xtech/presentation/utils/app_theme.dart';

class DeliveryOrder extends StatefulWidget {
  static const String routeName = "DeliveryOrder";

  const DeliveryOrder({super.key});

  @override
  State<DeliveryOrder> createState() => _DeliveryOrderState();
}

class _DeliveryOrderState extends State<DeliveryOrder> {
  String dropdownValue = '20'; // Set the initial value to one of the items

// List of items in our dropdown menu
  var items = [
    '20',
    '30',
    '40',
    '50',
  ];

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
                  "Delivery Order",
                  style: AppTheme.appBarTextStyle,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8),
            margin: const EdgeInsets.all(14),
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
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple, width: 1),
                      color: Colors.white),
                  child: const Text(
                    "Sender Information",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Sender Name",
                    style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Sender Name'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Sender Phone",
                    style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Sender Phone'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.only(left: 8),
            margin: const EdgeInsets.all(14),
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
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple, width: 1),
                      color: Colors.white),
                  child: const Text(
                    "Receiver Information",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Receiver Name",
                    style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Receiver Name'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Receiver Phone",
                    style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Receiver Phone'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.only(left: 8),
            margin: const EdgeInsets.all(14),
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
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple, width: 1),
                      color: Colors.white),
                  child: const Text(
                    "Package Information",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Number of packages",
                            style:
                                AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
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
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(right: 6),
                                  child: const Icon(
                                      Icons.keyboard_arrow_up_sharp)),
                              const Text("0"),
                              Container(
                                  margin: const EdgeInsets.only(left: 6),
                                  child: const Icon(
                                      Icons.keyboard_arrow_down_sharp)),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Size",
                            style:
                                AppTheme.appBarTextStyle.copyWith(fontSize: 14),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            margin: const EdgeInsets.all(10),
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
                            child: DropdownButton(
                              value: dropdownValue,
                              // Down Arrow Icon
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.deepPurple,
                              ),
                              // Array list of items
                              items: items.map((String item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {},
                child: const Text('Submit',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
