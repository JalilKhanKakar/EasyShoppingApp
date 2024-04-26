import 'package:cloth_shop/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomScreen extends StatefulWidget {
  const WelcomScreen({super.key});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: const Text(
          "Welcome To Screen",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Container(
              color: AppConstant.appMainColor,
              child: Lottie.asset('assets/Animation (2).json'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Happy Shopping ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height / 90,
            ),
            Material(
              child: Container(
                width: Get.width / 1.4,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appMainColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                    label: const Text(
                      "Sign Up With Google ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appTextColor),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 80,
            ),
            Container(
              height: Get.height / 12,
              width: Get.width / 1.4,
              decoration: BoxDecoration(
                  color: AppConstant.appMainColor,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email_outlined),
                  label: const Text(
                    "Sign Up with Email",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppConstant.appTextColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
