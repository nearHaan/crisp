import 'package:crisp/pages/home/home.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  void onLogin(){
    Get.to(HomePage());
  }
}