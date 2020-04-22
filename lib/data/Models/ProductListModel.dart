import 'package:smart_retail/data/Models/Data.dart';

class ProductListModel {
  Data data;
  bool success;
  int error;
  Null message;

  ProductListModel({this.data, this.success, this.error, this.message});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    success = json['success'];
    error = json['error'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['success'] = this.success;
    data['error'] = this.error;
    data['message'] = this.message;

    return data;
  }
}