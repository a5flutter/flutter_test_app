import 'package:flutter/material.dart';
import 'package:flutter_test_app/api/app_service.dart';
import 'package:flutter_test_app/models/data_model.dart';

import '../theme/app_theme.dart';
import 'avatar_widget.dart';

class OperationListItemWidget extends StatelessWidget {
  const OperationListItemWidget({Key? key, this.listItems}) : super(key: key);
  final List<Map<String, dynamic>>? listItems;

  @override
  Widget build(BuildContext context) {
    final service = AppService();
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: listItems!.length,
        itemBuilder: (context, index) {
          final data = DataModel.fromJson(listItems![index]);
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey.shade200),
                )),
            child: ListTile(
              leading: AvatarWidget(
                image: data.image,
                sum: data.sum,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data.name!,
                        textAlign: TextAlign.left,
                        style: AppTheme.appTextTheme.headline3,
                      ),
                      Text(
                        service.getSum(data.sum!),
                        //'${data.sum} USD',
                        textAlign: TextAlign.center,
                        style: AppTheme.appTextTheme.headline3,
                      ),
                    ]),
              ),
              subtitle: Text(
                '${data.dateTime!.hour.toString()}:${data.dateTime!.minute.toString()}',
                textAlign: TextAlign.left,
                style: AppTheme.appTextTheme.headline4,
              ),
            ),
          );
        });
  }
}
