import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/common_widget.dart';

AppBar appBarWidget(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xffF4F4F4),
    elevation: 0.0,
    centerTitle: true,
    title: const Text(
      "My Vendors",
      style: TextStyle(
          color: Color(0xff161616),
          fontWeight: FontWeight.w800,
          fontSize: 17.0),
    ),
    leading: Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 25.0,
      ),
      child: SvgPicture.asset(
        'assets/images/Vector50 (1).svg',
        height: MediaQuery.of(context).size.height / 30,
      ),
    ),
    leadingWidth: 35.0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: SvgPicture.asset(
          'assets/images/Vector50.svg',
          height: MediaQuery.of(context).size.height / 30,
        ),
      ),
    ],
  );
}

Padding testFieldWidget(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: MediaQuery.of(context).size.width / 22.0,
      right: MediaQuery.of(context).size.width / 22.0,
    ),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 17,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xffE5E5E5)),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
              label: Text('Search',
                  style: TextStyle(color: Color(0xff88878A), fontSize: 15)),
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(Icons.search,
                    size: 20, color: Color(0xff88878A)), // icon is 48px widget.
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    ),
  );
}

ListView listViewWidget() {
  return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    imageWidget(),
                    wSize(20.0),
                    testColumnWidget(),
                  ],
                ),
                dividerWidget(context)
              ],
            ),
          ));
}

Container imageWidget() {
  return Container(
    height: 40.0,
    width: 40.0,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
    ),
    child: Image.asset(
      'assets/images/Ellipse 150.png',
      //fit: BoxFit.fill,
    ),
  );
}

Column testColumnWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text('Kolour Koncepts Lntl.',
          style: TextStyle(
              color: Color(0xff191919),
              fontWeight: FontWeight.w600,
              fontSize: 16)),
      Text('Bangalore, India',
          style: TextStyle(
              color: Color(0xff909090),
              fontWeight: FontWeight.w600,
              fontSize: 12)),
    ],
  );
}

Container dividerWidget(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(18.0, 10.0, 5.0, 10.0),
    height: 2,
    width: MediaQuery.of(context).size.width,
    color: const Color(0xffD6D6D6),
  );
}
