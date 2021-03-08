import 'package:flutter_getxstudy/model/gank_model.dart';
import 'package:flutter_getxstudy/utils/httputil.dart';
import 'package:get/get.dart';

import 'state.dart';

class GankLogic extends GetxController {

  final state = GankState();

  getGank(String page) async{
    HttpUtil.get(
        state.stateUrl+page+"/count/10",
        headers: state.headers,
        success: (resp){
          state.gankModel.value = GankModel.fromJson(resp);
          //加载成功
          //layoutState = LoadState.State_Success.obs;
        },
        error: (err){
          // 返回错误信息
          print("err:"+err);
          //errorMsg = err;
          //加载失败
          //layoutState = LoadState.State_Error.obs;
        }
    );
  }

}
