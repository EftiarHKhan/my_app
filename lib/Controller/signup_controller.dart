import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app/repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Textfield controllers
final email= TextEditingController();
final password = TextEditingController();
final phoneNo = TextEditingController();
final name = TextEditingController();

//Call this function from design & it will do the rest
void registerUser(String email, String password) {
  AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
}

}