import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      color: Color(0xFF0C0C0C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaction History',
            style: AppTheme.appTextTheme.headline2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'USD Dollar',
                    textAlign: TextAlign.left,
                    style: AppTheme.appTextTheme.headline2,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ]),
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
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Flexible(
                flex: 8,
                child: Container(
                  //width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All',
                          textAlign: TextAlign.left,
                          style: AppTheme.appTextTheme.headline2,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ]),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey.shade700),
                      left: BorderSide(width: 1.0, color: Colors.grey.shade700),
                      right:
                          BorderSide(width: 1.0, color: Colors.grey.shade700),
                      bottom:
                          BorderSide(width: 1.0, color: Colors.grey.shade700),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                  size: 25.0,
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
            ],
          ),
        ],
      ),
    );
  }
}
