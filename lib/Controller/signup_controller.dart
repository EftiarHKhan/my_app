import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/Model/user_model.dart';
import 'package:my_app/View/home_page.dart';
import 'package:my_app/repository/authentication_repository.dart';
import 'package:my_app/repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Textfield controllers
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();
  final name = TextEditingController();

  final userRepo = Get.put(UserRepository());

//Call this function from design
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

// Get phoneNo from user and pass

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    //PhoneAuthentication(user.phoneNo);
    //Get.to(() => const OTPScreen());
    Get.to(() => const HomePage());
  }

// void phoneAuthentication(String phoneNo) {
//   AuthenticationRepository.instance.phoneAuthentication(phoneNo);
// }

}
