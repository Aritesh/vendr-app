import 'package:flutter/material.dart';

import 'my_vendors_widget.dart';

class MyVendors extends StatefulWidget {
  const MyVendors({Key? key}) : super(key: key);

  @override
  State<MyVendors> createState() => _MyVendorsState();
}

class _MyVendorsState extends State<MyVendors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5.8,
              color: const Color(0xffF4F4F4),
              child: Column(
                children: [appBarWidget(context), testFieldWidget(context)],
              ),
            ),
            Expanded(
              child: listViewWidget(),
            )
          ],
        ),
      ),
    );
  }
}
