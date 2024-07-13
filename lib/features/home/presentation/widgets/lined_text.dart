import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';

class LinedText extends StatelessWidget {
  final String text;
  const LinedText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: width(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primary.withOpacity(.5),
                  secondary,
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Text(
            text,
            style: textStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            width: width(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primary,
                  secondary.withOpacity(.5),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
