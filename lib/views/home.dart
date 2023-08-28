
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
                          //   Column(
                          //   children: [
                          //     const SizedBox(
                          //       height: 10,
                          //     ),
                          //     Container(
                          //       margin:
                          //       const EdgeInsets.only(left: 20, right: 20),
                          //       padding: const EdgeInsets.only(left: 20),
                          //       height: 80,
                          //       width: MediaQuery
                          //           .of(context)
                          //           .size
                          //           .width,
                          //       decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius: BorderRadius.circular(20),
                          //       ),
                          //       child: Row(
                          //         children: [
                          //           CircleAvatar(
                          //             radius: 35,
                          //             backgroundImage: NetworkImage(data.avatar!),
                          //           ),
                          //           const SizedBox(
                          //             width: 30,
                          //           ),
                          //           Column(
                          //             crossAxisAlignment:
                          //             CrossAxisAlignment.start,
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             children: [
                          //               Text(
                          //                 data.firstName?.toUpperCase() ?? '',
                          //                 style: const TextStyle(
                          //                   color: Colors.blue,
                          //                   fontSize: 20,
                          //                   fontWeight: FontWeight.w700,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 data.lastName ?? '',
                          //                 style: const TextStyle(
                          //                   color: Colors.black,
                          //                   fontSize: 16,
                          //                 ),
                          //               ),
                          //               Text(
                          //                 data.email ?? '',
                          //                 style: const TextStyle(
                          //                   color: Colors.black87,
                          //                   fontSize: 15,
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //     const SizedBox(
                          //       height: 10,
                          //     )
                          //   ],
                          // );
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




