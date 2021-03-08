import 'package:flutter/material.dart';
import 'package:flutter_getxstudy/test/test_two/view.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

// ignore: must_be_immutable
class GankPage extends StatelessWidget {

  var page = 1;

  final GankLogic logic = Get.put(GankLogic());
  final GankState state = Get.find<GankLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('请求网络数据'),
        actions: [
          IconButton(icon: Icon(Icons.search), 
              onPressed: () => Get.to(TestTwoPage(), arguments: state.gankModel.value.data != null ? state.gankModel.value.data:null)
          )
        ],
      ),
      body: FutureBuilder(
        future: mockNetWorkData(context),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return Column(
                children: [
                  Obx(() => state.gankModel.value.data != null ? Text('得到网络数据 ${state.gankModel.value.data[0].title} 次'):Text("数据请求中..."),
                  ),
                  Text(Get.arguments != null ? Get.arguments : "还没有数据")
                ],
            );
          }else{
            return Text("加载中...");
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.getGank(page.toString()),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<String> mockNetWorkData(BuildContext context) async{
    await logic.getGank(page.toString());
    return "end";
  }

}
