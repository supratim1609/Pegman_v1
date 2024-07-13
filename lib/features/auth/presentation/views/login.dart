import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        height: height(context),
        padding: EdgeInsets.all(15.sp),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/auth-bgg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Create Account',
                    style: textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                      color: white,
                    ),
                  ),
                ),
                const SizedBoxH15(),
                Text(
                  'Email Address',
                  style: textStyle16.copyWith(
                    color: white,
                  ),
                ),
                const SizedBoxH5(),
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  fillColor: altoGrey.withOpacity(.2),
                  isFilled: true,
                ),
                const SizedBoxH15(),
                Text(
                  'Password',
                  style: textStyle16.copyWith(
                    color: white,
                  ),
                ),
                const SizedBoxH5(),
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  fillColor: altoGrey.withOpacity(.2),
                  isFilled: true,
                ),
                const SizedBoxH20(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password?  ',
                      style: textStyle16.copyWith(
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.chooseForgetPassword);
                      },
                      child: Text(
                        'Get OTP',
                        style: textStyle16.copyWith(
                          color: primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH20(),
                CustomButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.mainHome);
                  },
                  text: 'Sign In',
                ),
                const SizedBoxH20(),
                Center(
                  child: Text(
                    'Or Continue with',
                    style: textStyle16.copyWith(
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBoxH20(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      width: 90.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: white,
                        ),
                      ),
                      child: Image.asset('assets/icons/fb.png'),
                    ),
                    // const SizedBoxW10(),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      width: 90.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: white,
                        ),
                      ),
                      child: Image.asset('assets/icons/google.png'),
                    ),
                    // const SizedBoxW10(),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      width: 90.w,
                      height: 64.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: white,
                        ),
                      ),
                      child: Image.asset('assets/icons/twitter.png'),
                    ),
                  ],
                ),
                const SizedBoxH20(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Member?  ',
                      style: textStyle16.copyWith(
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.createAccount);
                      },
                      child: Text(
                        'Create Account',
                        style: textStyle16.copyWith(
                          color: primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
