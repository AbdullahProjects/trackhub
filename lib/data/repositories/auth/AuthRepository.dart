import 'package:get/get.dart';
import '../../../features/auth/views/login/LoginScreen.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  @override
  void onReady() {
    screenRedirect();
  }

  void screenRedirect() async {
    final user = null;
    if(user == null){
      print("User is null, redirecting to login page...");
      Get.offAll(LoginScreen());
    }
  }
}