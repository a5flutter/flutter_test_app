class DataModel {
  DateTime? dateTime;
  String? name;
  String? image;
  double? sum;
  String? currency;

  DataModel({
    this.dateTime,
    this.name,
    this.image,
    this.sum,
    this.currency,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      dateTime: DateTime.parse(json['datetime_operation'] as String),
      //dateTime: json['datetime_operation'] as String,
      name: json['user_name'] as String,
      image: json['user_image'] as String,
      sum: json['sum'] as double,
      currency: json['currency'] as String,
    );
  }
}
