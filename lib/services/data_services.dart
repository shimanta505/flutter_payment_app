import 'dart:convert';

import 'package:flutter/semantics.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:flutter_payment_app/models/bill_model.dart';

class DataServices {
  Future<List<dynamic>> getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    var list = jsonDecode(await info);
    return Future.delayed(Duration(seconds: 1))
        .then((value) => list.map((e) => e).toList());
  }
}
