import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test_app/models/data_model.dart';

class AppService {
  Future<Map<dynamic, List<Map<String, dynamic>>>> getGroupData() async {
    final dataString =
        await _loadAsset('assets/sample_data/sample_operation.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    final data = <Map<String, dynamic>>[];
    json['data'].forEach((v) {
      data.add(Map<String, dynamic>.from(v));
    });
    final result = groupBy(
        List<Map<String, dynamic>>.generate(
            data.length,
            (index) =>
                Map<String, dynamic>.from(data[index] as Map<String, dynamic>)),
        (Map map) => DateFormat('EEE, MMM dd')
            .format(DateTime.parse(map['datetime_operation'])));

    return result;
  }

  String getSum(double sum) {
    return (sum > 0)
        ? '+ \$${sum.abs().toString()} USD'
        : '- \$${sum.abs().toString()} USD';
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
