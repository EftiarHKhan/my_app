import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/Controller/signup_controller.dart';

import '../Model/user_model.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset("images/Logo.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create an account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Column(
                      children: [
                        TextField(
                          controller: controller.name,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controller.email,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controller.phoneNo,
                          decoration: InputDecoration(
                            labelText: 'Phone No',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: controller.password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     labelText: 'Re-password',
                        //     labelStyle: const TextStyle(
                        //       color: Colors.grey,
                        //       fontSize: 15.0,
                        //     ),
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(10.0),
                        //       borderSide:
                        //       const BorderSide(width: 3, color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),

                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Email & password Authentication
                                  //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                                  final user = UserModel(
                                    email: controller.email.text.trim(),
                                    password: controller.password.text.trim(),
                                    name: controller.name.text.trim(),
                                    phoneNo: controller.phoneNo.text.trim(),
                                  );
                                  SignUpController.instance.createUser(user);

                                  // OTP authentication
                                  // SignUpController.instance.phoneAuthenticaton(user.phoneNo);

                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(8.0)),
                                  padding: const EdgeInsets.all(
                                      20) //content padding inside button
                                  ),
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                            TextButton(
                                onPressed: () =>
                                    Get.to(() => const LoginPage()),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
