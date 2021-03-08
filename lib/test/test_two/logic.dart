import 'package:get/get.dart';

import 'state.dart';

class TestTwoLogic extends GetxController {

  final state = TestTwoState();

  // 自增
  void increase() => ++state.count;

}
