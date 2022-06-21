import 'package:flutter/material.dart';
import 'package:flutter_test_app/api/app_service.dart';
import 'package:flutter_test_app/widgets/operation_list_item.dart';

import '../theme/app_theme.dart';

class OperationListWidget extends StatelessWidget {
  final service = AppService();

  OperationListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: service.getGroupData(),
        builder: (context,
            AsyncSnapshot<Map<dynamic, List<Map<String, dynamic>>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final data = snapshot.data;
            return Scrollbar(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: data!.length,
                itemBuilder: (context, index) => Column(children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade300,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 15, left: 15),
                        child: Text(
                          data.keys.toList()[index].toString(),
                          style: AppTheme.appTextTheme.headline3,
                        ),
                      )),
                  OperationListItemWidget(
                    listItems: data.values.toList()[index],
                  ),
                ]),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
