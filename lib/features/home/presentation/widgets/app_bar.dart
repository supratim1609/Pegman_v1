import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

PreferredSize appBar({required BuildContext context}) {
  return PreferredSize(
    preferredSize: Size(
      width(context),
      height(context) * .08,
    ),
    child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 20.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: secondary,
                  size: 50.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Deliver to',
                          style: textStyle16,
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: secondary,
                          size: 24.sp,
                        ),
                      ],
                    ),
                    Text(
                      'Home - 15/4 Ballygunge Tirum...',
                      style: textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.profile);
              },
              child: Container(
                padding: EdgeInsets.all(6.sp),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      primary,
                      secondary,
                    ],
                  ),
                ),
                child: CircleAvatar(
                  radius: 20.r,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
