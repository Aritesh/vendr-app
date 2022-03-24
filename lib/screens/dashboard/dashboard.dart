import 'package:flutter/material.dart';

import '../my_vendors/my_vendors.dart';

class BottomNevi extends StatelessWidget {
  const BottomNevi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: menu(context),
          body: const TabBarView(
            children: [
              MyVendors(),
              MyVendors(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      color: const Color(0xFFF4F4F4),
      child: const TabBar(
        labelColor: Color(0xffFE9875),
        unselectedLabelColor: Color(0xff939393),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(2.0),
        indicatorColor: Colors.white,
        //unselectedLabelStyle: ,
        tabs: [
          Tab(
            text: "Vendore",
            icon: ImageIcon(
              AssetImage("assets/images/vendr icon coral filled20.png"),
              color: Colors.red,
              size: 23,
            ),
          ),
          Tab(
            text: "Showroom",
            icon: ImageIcon(
              AssetImage("assets/images/clarity_store-line20.png"),
              color: Color(0xFF3A5A98),
              size: 23,
            ),
          ),
        ],
      ),
    );
  }
}
