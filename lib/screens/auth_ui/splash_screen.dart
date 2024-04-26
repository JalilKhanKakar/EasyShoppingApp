import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import '../../utils/app_constant.dart';
import 'welcom_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Call the method to start the timer when the widget is initialized
    startTimer();
  }

  void startTimer() async {
    // Wait for 4 seconds
    await Future.delayed(const Duration(seconds: 4));
    // Navigate to the desired route after 4 seconds
    Get.offAll(() => const WelcomScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(
          AppConstant.appMainName,
          style: const TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
      ),
      body: Expanded(
        child: Container(
          decoration: const BoxDecoration(color: AppConstant.appScondaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Lottie.asset('assets/Animation (2).json'),
              ),
              const SizedBox(
                height: 50,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  AppConstant.appPoweredBy,
                  style: const TextStyle(color: AppConstant.appTextColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
