import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';

class CategoryTile extends StatelessWidget {
  final String name;
  final Function() onPress;
  final String icon;
  const CategoryTile({
    super.key,
    required this.name,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.sp),
        width: 70.w,
        height: 130.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 10),
              // spreadRadius: 10,
              blurRadius: 10,
              color: altoGrey,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/$icon.png',
            ),
            const SizedBoxH10(),
            Text(
              name,
              style: textStyle14.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
