import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  var focusedBorderColor = primary;
  var borderColor = primary;
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 50,
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    decoration: BoxDecoration(
      color: altoGrey.withOpacity(.2),
      borderRadius: BorderRadius.circular(10),
      // border: Border.all(color: AppColors.whiteColor.withOpacity(0.10),),
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    // focusNode.nextFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern-edge.png'),
            alignment: Alignment.topRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.sp),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: primary,
                        ),
                      ),
                    ),
                    const SizedBoxH20(),
                    Text(
                      'Enter 4-digit Verification code',
                      style: textStyle18.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBoxH10(),
                    Text(
                      'Code send to +123456**** . \nThis code will expired in 01:30',
                      style: textStyle16,
                    ),
                    const SizedBoxH20(),
                    Center(
                      child: Pinput(
                        controller: pinController,
                        obscureText: false,
                        focusNode: focusNode,
                        keyboardType: TextInputType.none,
                        keyboardAppearance: Brightness.light,
                        listenForMultipleSmsOnAndroid: true,
                        defaultPinTheme: defaultPinTheme,
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        length: 4,
                        onCompleted: (pin) {
                          // Get.offAndToNamed(AppRoutes.mainHome);
                        },
                        onChanged: (value) {},
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: primary.withOpacity(0.10),
                            ),
                          ],
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: primary),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: primary,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: AppColors.whiteColor.withOpacity(0.10)),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.ageCheck);
                  },
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
