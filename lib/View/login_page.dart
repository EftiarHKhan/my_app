import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/View/signup_page.dart';

import '../Model/user_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //LoginController controller = Get.put(LoginController());

  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/Logo.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                  child: Column(
                    children: [
                      TextField(
                        //controller: controller.emailController.value,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(width: 3, color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        //controller: controller.passwordController.value,
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),

                          //helperText: "Password must contain at least 6 character",

                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(width: 3, color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),

                      // Obx((){
                      //   return controller.loading.value ? const CircularProgressIndicator():SizedBox(
                      //     height: 60,
                      //     width: 200,
                      //     child: ElevatedButton(
                      //       //onPressed: () => Get.to(()=>const HomePage()),
                      //
                      //         onPressed: (){
                      //           controller.LoginApi();
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.lightBlue,
                      //             side: const BorderSide(
                      //               //width: 3,
                      //                 color: Colors.brown), //border width and color
                      //             //elevation: 3, //elevation of button
                      //             shape: RoundedRectangleBorder( //to set border radius to button
                      //                 borderRadius: BorderRadius.circular(15.0)
                      //             ),
                      //             padding: const EdgeInsets.all(
                      //                 20) //content padding inside button
                      //         ),
                      //         child: const Text(
                      //           "Log in",
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 20.0,
                      //           ),
                      //         )),
                      //   );
                      // }),

                      // another way to create login button
                      InkWell(
                        onTap: () {
                          // if (_formKey.currentState!.validate()) {
                          //   // Email & password Authentication
                          //   LoginController.instance.registerUser(
                          //       controller.email.text.trim(),
                          //       controller.password.text.trim());

                          //   // OTP authentication
                          //   // SignUpController.instance.phoneAuthenticaton(user.phoneNo);

                          // }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.blueAccent
                            ),

                            child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18.0),)),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                          TextButton(
                              onPressed: () => Get.to(() => const SignupPage()),
                              child: const Text(
                                "Sign Up",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
