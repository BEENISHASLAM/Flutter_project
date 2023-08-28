
import 'package:assignment_getapi/controller/home_controller.dart';
import 'package:assignment_getapi/views/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter/material.dart';
class homeScreen extends StatelessWidget {
  final homeController controller = Get.put(homeController());

  homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height:double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Obx(() =>
              controller.dataList.value?.data != null
                  ? Center(
                    child: Column(
                children: [
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.dataList.value!.data!.length,
                        itemBuilder: (ctx, index) {
                          final  data = controller.dataList.value!.data![index];
                          return
                              tile(data:data);
                 
                        },
                      ),
                    ),
                ],
              ),
                  )
                  : const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),

    );
  }
}




