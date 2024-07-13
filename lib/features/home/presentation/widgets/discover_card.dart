import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';

class DiscoverCard extends StatefulWidget {
  final String title;
  const DiscoverCard({
    super.key,
    required this.title,
  });

  @override
  State<DiscoverCard> createState() => _DiscoverCardState();
}

class _DiscoverCardState extends State<DiscoverCard> {
  int productCount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        border: Border.all(color: altoGrey),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/check-g.png'),
                  const SizedBoxW15(),
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    margin: EdgeInsets.only(right: 10.sp),
                    decoration: BoxDecoration(
                      color: primary.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Text(
                      'Pegman\'s Choice',
                      style: textStyle14,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    margin: EdgeInsets.only(right: 10.sp),
                    decoration: BoxDecoration(
                      color: primary.withOpacity(.2),
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Text(
                      'Server 2',
                      style: textStyle14,
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.favorite_border,
                color: primary,
              )
            ],
          ),
          const SizedBoxH10(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBoxH10(),
                  Text(
                    '2 pegs',
                    style: textStyle14,
                  ),
                  const SizedBoxH40(),
                  Text(
                    '₹299',
                    style: textStyle18.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    width: 90.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: primary,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Image.asset(
                      'assets/images/beer.png',
                    ),
                  ),
                  const SizedBoxH10(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (productCount == 1) {
                          } else {
                            setState(() {
                              productCount -= 1;
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: primary,
                              ),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.remove,
                            color: primary,
                          ),
                        ),
                      ),
                      const SizedBoxW10(),
                      Text(
                        '$productCount',
                        style: textStyle16.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBoxW10(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            productCount += 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5.sp),
                          decoration: const BoxDecoration(
                              color: primary, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
