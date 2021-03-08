import 'package:flutter_getxstudy/model/gank_model.dart';
import 'package:get/get.dart';

class GankState {

  final stateUrl = "https://gank.io/api/v2/data/category/Girl/type/Girl/page/";

  final headers = {
    "Content-Type":"application/json;charset=UTF-8"
  };

  final gankModel = GankModel().obs;

  GankState() {
    //gankModel = GankModel().obs;
  }
}
