import 'package:flutter/material.dart';
import 'package:flutter_test_app/widgets/account_widget.dart';
import 'package:flutter_test_app/widgets/history_widget.dart';

import '../widgets/appBarButton.dart';
import '../widgets/operation_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          AppBarButtons(),
          AccountWidget(),
          SizedBox(
            height: 50,
          ),
          HistoryWidget(),
          OperationListWidget(),
        ],
      ),
    );
  }
}
