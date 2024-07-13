import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class PasswordResettedSuccessful extends StatelessWidget {
  const PasswordResettedSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern-full.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBoxH20(),
            Column(
              children: [
                Image.asset(
                  'assets/images/success.png',
                  width: width(context) * .6,
                  height: height(context) * .2,
                ),
                const SizedBoxH20(),
                Text(
                  'Congrats',
                  style: textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                    color: secondary,
                    fontSize: 25.sp,
                  ),
                ),
                const SizedBoxH15(),
                Text(
                  'Your Password has been Reset',
                  style: textStyle16.copyWith(
                    fontSize: 24.sp,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.sp,
                vertical: 30.sp,
              ),
              child: CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.mainHome);
                },
                text: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
