import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';

class DrinkTile extends StatelessWidget {
  final int index;
  const DrinkTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        color: white,
        boxShadow: const [
          BoxShadow(
            // offset: Offset(2, 2),
            color: altoGrey,
          ),
          BoxShadow(
            // offset: Offset(2, 2),
            spreadRadius: 1,
            color: altoGrey,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            index.isEven
                ? 'assets/images/whitedrink.png'
                : 'assets/images/blackdrink.png',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Smirnoff Lemon Vodka',
                style: textStyle14.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
              // const SizedBoxH5(),
              Text(
                '375ml can | 5%',
                style: textStyle10.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBoxH5(),
              const Text(
                '₹299',
                style: TextStyle(fontSize: 20, color: primary),
              )
            ],
          )
        ],
      ),
    );
  }
}
