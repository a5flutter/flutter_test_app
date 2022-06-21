import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarButtons extends StatelessWidget {
  const AppBarButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/icons/long-arrow-left.png',
              color: Colors.white,
              width: 30,
              height: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/open-in-new-tab.jpg',
              color: Colors.white,
              width: 25,
              height: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
