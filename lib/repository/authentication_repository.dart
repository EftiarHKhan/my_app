import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_app/View/login_page.dart';
import 'package:my_app/View/profile_page.dart';
import 'package:my_app/repository/exceptions/signup_email_password_failure.dart';

import '../View/home_page.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
  user == null ? Get.offAll(() => const LoginPage()) : Get.offAll(() => ProfileScreen());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const ProfileScreen()) : Get.to(() => const LoginPage());
    } on FirebaseAuthException catch(e){

      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("Firebase auth exception - ${ex.message}");
      throw ex;
    }
    catch(_){

      const ex = SignUpWithEmailAndPasswordFailure();
      print("Exception - ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print("Firebase auth exception - ${ex.message}");
      throw ex;

    }
    catch(_){
      const ex = SignUpWithEmailAndPasswordFailure();
      print("Exception - ${ex.message}");
      throw ex;

    }
  }

  Future<void> logout() async => await _auth.signOut();

}

