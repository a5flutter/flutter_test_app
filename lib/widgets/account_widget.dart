import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 10),
        child: Image.asset(
          'assets/images/united-states.png',
          height: 70,
          width: 70,
        ),
      ),
      ListTile(
        leading: SizedBox(),
        title: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 15.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Expanded(child: SizedBox()),
            Text(
              'USD Account',
              style: AppTheme.appTextTheme.bodyText1,
            ),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Text(
                'Hide',
                textAlign: TextAlign.center,
                style: AppTheme.appTextTheme.bodyText2,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade700),
                  left: BorderSide(width: 1.0, color: Colors.grey.shade700),
                  right: BorderSide(width: 1.0, color: Colors.grey.shade700),
                  bottom: BorderSide(width: 1.0, color: Colors.grey.shade700),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ]),
        ),
        subtitle: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.attach_money,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          Text(
            '180,970.83',
            textAlign: TextAlign.center,
            style: AppTheme.appTextTheme.headline1,
          ),
        ]),
      ),
    ]);
  }
}
