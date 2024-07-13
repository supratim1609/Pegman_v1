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

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                  'Full Name',
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
                const SizedBoxH15(),
                Text(
                  'Phone Number',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Age',
                          style: textStyle16.copyWith(
                            color: white,
                          ),
                        ),
                        const SizedBoxH5(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.sp,
                            vertical: 10.sp,
                          ),
                          decoration: BoxDecoration(
                            color: altoGrey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '21',
                                style: textStyle16.copyWith(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBoxW10(),
                              const Icon(
                                Icons.check_circle_outline,
                                color: white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Gender',
                          style: textStyle16.copyWith(
                            color: white,
                          ),
                        ),
                        const SizedBoxH5(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.sp,
                            vertical: 10.sp,
                          ),
                          decoration: BoxDecoration(
                            color: altoGrey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'M',
                                style: textStyle16.copyWith(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBoxW10(),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBoxH20(),
                CustomButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.ageCheck);
                  },
                  text: 'Sign Up',
                ),
                const SizedBoxH20(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a Member?  ',
                      style: textStyle16.copyWith(
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text(
                        'Login here',
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
