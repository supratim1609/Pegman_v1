import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/style.dart';

class OfferLabel extends StatelessWidget {
  final String name;
  final String img;
  const OfferLabel({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.black],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: Container(
        width: 166.w,
        height: 180.h,
        decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(15.r),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/$img',
            ),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: black.withOpacity(.5),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name.toUpperCase(),
                style: textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                margin: EdgeInsets.symmetric(vertical: 10.sp),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      primary,
                      primary,
                      secondary,
                      primary,
                      primary,
                    ],
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'offer label'.toUpperCase(),
                    style: textStyle16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
