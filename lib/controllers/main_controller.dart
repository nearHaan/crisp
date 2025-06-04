import 'package:crisp/pages/home/home.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  bool _hidePass = true;
  bool get hidePass => _hidePass;

  void onEyeToggle(){
    _hidePass = !hidePass;
    update();
  }

  void onLogin(String phno, String pass){
    Get.to(HomePage());
  }
}