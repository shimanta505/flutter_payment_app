class BillModel {
  String? brand;
  String? date;
  bool? status;
  String? due;
  String? more;

  BillModel({this.brand, this.date, this.status, this.due, this.more});

  BillModel.fromJson(Map<String, dynamic> json) {
    brand = json['brand'];
    date = json['date'];
    status = json['status'];
    due = json['due'];
    more = json['more'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brand'] = this.brand;
    data['date'] = this.date;
    data['status'] = this.status;
    data['due'] = this.due;
    data['more'] = this.more;
    return data;
  }
}
