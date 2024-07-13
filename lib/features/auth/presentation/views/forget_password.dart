import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class ChooseForgetPassword extends StatelessWidget {
  const ChooseForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFF),
      body: Container(
        width: width(context),
        padding: EdgeInsets.all(15.sp),
        decoration: const BoxDecoration(
          color: Color(0xffFEFEFF),
          image: DecorationImage(
            image: AssetImage('assets/images/pattern-edge.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Forgot password?',
                    style: textStyle18.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBoxH10(),
                  Text(
                    'Select which contact details should we use to reset your password',
                    style: textStyle16,
                  ),
                  const SizedBoxH20(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          spreadRadius: 15,
                          blurRadius: 30,
                          color: altoGrey,
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/sms.svg',
                      ),
                      title: Text(
                        'Via sms:',
                        style: textStyle16,
                      ),
                      subtitle: Text(
                        '*** *** *** 49',
                        style: textStyle16,
                      ),
                    ),
                  ),
                  const SizedBoxH20(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          spreadRadius: 10,
                          blurRadius: 30,
                          color: altoGrey,
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/sms.svg',
                      ),
                      title: Text(
                        'Via email:',
                        style: textStyle16,
                      ),
                      subtitle: Text(
                        '****** gmail.com',
                        style: textStyle16,
                      ),
                    ),
                  )
                ],
              ),
              CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.changePassword);
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
