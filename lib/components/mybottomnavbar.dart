

import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding/3),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            color: kPrimaryColor.withOpacity(0.38),
            blurRadius: 35)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: kPrimaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: kPrimaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: kPrimaryColor,
              ))
        ],
      ),
    );
  }
}
