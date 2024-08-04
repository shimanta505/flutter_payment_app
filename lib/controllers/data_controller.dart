import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var list = [].obs;
  final service = new DataServices();
  var _loading = false.obs;

  bool get getLoading => _loading.value;

  List get newList =>
      list.where((element) => element["status"] == true).map((e) => e).toList();

  @override
  void onInit() {
    // TODO: implement onInit
    _loadData();
    super.onInit();
  }

  _loadData() async {
    _loading.value = true;
    try {
      var info = await service.getUsers();
      list.value = info;
    } catch (e) {
      print("load data error >>>>> ${e.toString()}");
    } finally {
      _loading.value = false;
    }
  }
}
