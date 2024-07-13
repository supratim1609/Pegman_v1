import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
                Container(
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
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Search Restaurants',
                fillColor: const Color(0xfff5f5f5),
                isFilled: true,
                borderColor: Colors.transparent,
                prefixIcon: const Icon(Icons.search),
              ),
              const SizedBoxH15(),
              Text(
                'Restaurant and bars Near You',
                style: textStyle18.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              const SizedBoxH15(),
              for (var i = 0; i < 5; i++)
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.discoverDetail);
                  },
                  child: Container(
                    width: width(context),
                    height: height(context) * .3,
                    margin: EdgeInsets.only(bottom: 15.sp),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/offer.png',
                        ),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(7.sp),
                          child: Container(
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15.sp),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15.sp),
                                    ),
                                    gradient: const LinearGradient(
                                      colors: [
                                        primary,
                                        primary,
                                        secondary,
                                        primary,
                                        primary,
                                      ],
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pegman Combo Offers',
                                        style: textStyle12.copyWith(
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/ice-cube.svg',
                                          ),
                                          const SizedBoxW10(),
                                          Text(
                                            'Ice Cubes Available',
                                            style: textStyle12.copyWith(
                                              color: white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'The Calcutta bar',
                                            style: textStyle18.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: yellow,
                                              ),
                                              Text(
                                                '4.5 (41+)',
                                                style: textStyle14.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/protime.png',
                                              ),
                                              const SizedBoxW5(),
                                              Text(
                                                '35-40 mins | 4 km ',
                                                style: textStyle14,
                                              ),
                                            ],
                                          ),
                                          const SizedBoxH5(),
                                          Text(
                                            'Free Delivery',
                                            style: textStyle14.copyWith(
                                              color: primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
