import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class AgeCheckScreen extends StatefulWidget {
  const AgeCheckScreen({super.key});

  @override
  State<AgeCheckScreen> createState() => _AgeCheckScreenState();
}

class _AgeCheckScreenState extends State<AgeCheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        foregroundColor: black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you 21 or older ?',
                  style: textStyle18.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                  ),
                ),
                const SizedBoxH10(),
                Text(
                  'Please verfiy if you are above 21 or older. ',
                  style: textStyle14,
                ),
              ],
            ),
            Container(
              width: width(context),
              height: height(context) * .5,
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(
                  15.sp,
                ),
              ),
              child: Image.asset(
                'assets/images/scan.png',
              ),
            ),
            Column(
              children: [
                CustomButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.regSuccessful);
                  },
                  text: 'Continue',
                ),
                const SizedBoxH20(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
