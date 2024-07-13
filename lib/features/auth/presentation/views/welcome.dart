import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBoxH15(),
                    Image.asset(
                      'assets/images/logo.png',
                      width: width(context) * .7,
                    ),
                    const SizedBoxH15(),
                    Text(
                      'Order Now',
                      style: GoogleFonts.oregano(
                        color: white,
                        fontSize: 24.sp,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/wine-bottle.png',
                ),
                Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.onboarding);
                      },
                      text: 'Get Started',
                    ),
                    // const SizedBoxH15(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
