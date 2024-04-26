import 'package:cloth_shop/screens/auth_ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app_constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appMainColor,
          title: const Text(
            "Sign In Screen ",
            style: TextStyle(color: AppConstant.appTextColor),
          ),
          centerTitle: true,
        ),
        // ignore: avoid_unnecessary_containers
        body: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? const SizedBox.shrink()
                    : Column(
                        children: [
                          Container(
                            color: AppConstant.appMainColor,
                            child: Lottie.asset('assets/Animation (2).json'),
                          ),
                        ],
                      ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                      cursorColor: AppConstant.appScondaryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 12, 10, 12),
                          prefixIcon: const Icon(Icons.email),
                          hintText: 'Email ',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.visibility_off),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 12, 10, 12),
                        prefixIcon: const Icon(Icons.password),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forget Password ",
                    style: TextStyle(
                        fontSize: 20,
                        color: AppConstant.appMainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  child: Container(
                      width: Get.width / 3,
                      height: Get.height / 16,
                      decoration: BoxDecoration(
                          color: AppConstant.appMainColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "SIGN IN ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppConstant.appTextColor),
                          ))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have any account ? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppConstant.appMainColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => const SignUpScreen()),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppConstant.appMainColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
