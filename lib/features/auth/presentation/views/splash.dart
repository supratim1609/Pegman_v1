import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // gettoken();
    super.initState();
    if (mounted) {
      Future.delayed(
        const Duration(seconds: 4),
        () {
          nextScreen();
        },
      );
    }
  }

  void nextScreen() async {
    Get.offAndToNamed(AppRoutes.welcome);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        height: height(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash-bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: width(context) * .7,
                ),
                const SizedBoxH15(),
                Text(
                  'Delivering Cheers to your Doorstep',
                  style: GoogleFonts.oregano(
                    color: white,
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
