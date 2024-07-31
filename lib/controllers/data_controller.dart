import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var list = [].obs;
  final service = new DataServices();
  var loading = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    _loadData();
    super.onInit();
  }

  _loadData() async {
    loading.value = true;
    try {
      var info = await service.getUsers();
      list.value = info;
    } catch (e) {
      print("load data error >>>>> ${e.toString()}");
    } finally {
      loading.value = false;
    }
  }
}
