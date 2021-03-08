import 'package:flutter_getxstudy/test/gank/view.dart';
import 'package:flutter_getxstudy/test/test_one/view.dart';
import 'package:flutter_getxstudy/test/test_two/view.dart';
import 'package:get/get.dart';


class RouteConfig{
  static final String main = "/";
  static final String test1 = "/test1";
  static final String test2 = "/test2";

  static final List<GetPage> getPages = [
    GetPage(name: main, page: () => GankPage()),
    GetPage(name: test1, page: () => TestOnePage()),
    GetPage(name: test2, page: () => TestTwoPage())
  ];

}