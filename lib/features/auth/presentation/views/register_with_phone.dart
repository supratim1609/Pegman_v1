import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/router.dart';

class RegisterWithPhone extends StatefulWidget {
  const RegisterWithPhone({super.key});

  @override
  State<RegisterWithPhone> createState() => _RegisterWithPhoneState();
}

class _RegisterWithPhoneState extends State<RegisterWithPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        title: Text(
          'Register with phone',
          style: textStyle16.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We have sent you an SMS with a code to number \n+91 0123456789.',
              style: textStyle14,
            ),
            const SizedBoxH10(),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone number',
                border: outlineInputBorder.copyWith(
                  borderSide: const BorderSide(
                    color: primary,
                  ),
                ),
                enabledBorder: outlineInputBorder.copyWith(
                  borderSide: const BorderSide(
                    color: altoGrey,
                  ),
                ),
              ),
            ),
            const SizedBoxH30(),
            CustomButton(
              onPressed: () {
                Get.toNamed(AppRoutes.otpScreen);
              },
              text: 'Continue',
            )
          ],
        ),
      ),
    );
  }
}
