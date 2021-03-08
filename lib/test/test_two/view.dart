import 'package:flutter/material.dart';
import 'package:flutter_getxstudy/model/gank_model.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class TestTwoPage extends StatelessWidget {

  final TestTwoLogic logic = Get.put(TestTwoLogic());

  final TestTwoState state = Get.find<TestTwoLogic>().state;

  // 得到参数
  //final gets =  Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('计数器-响应式'),
        actions: [
          IconButton(icon: Icon(Icons.close),
              onPressed: () => Get.back(result: "success")
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('点击了 ${state.count.value} 次',
                  style: TextStyle(fontSize: 30.0),)
            ),
            Text(Get.arguments[0].title, style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.increase(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
