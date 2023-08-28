import 'package:assignment_getapi/model/model.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class homeController extends GetxController {
  RxString data = "" .obs;
  Rx<CheckingModel> dataList = CheckingModel().obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }
  Future<void> fetchData() async {
    try {
      var response = await http.get(
          Uri.parse('https://reqres.in/api/users?page=2'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        dataList(CheckingModel.fromJson(jsonData));
        data(jsonData.toString());
        print(dataList.value!.data![0].firstName);
      } else {
        data('Error: ${response.statusCode}');
      }
    } catch (error) {
      data('Error: $error');
    }

  }

}

