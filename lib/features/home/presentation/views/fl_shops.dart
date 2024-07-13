import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/features/home/presentation/widgets/app_bar.dart';
import 'package:pegman/router.dart';

class FlShopScreen extends StatefulWidget {
  const FlShopScreen({super.key});

  @override
  State<FlShopScreen> createState() => _FlShopScreenState();
}

class _FlShopScreenState extends State<FlShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'What are you looking for?',
                fillColor: const Color(0xfff5f5f5),
                isFilled: true,
                borderColor: Colors.transparent,
                prefixIcon: const Icon(Icons.search),
              ),
              const SizedBoxH15(),
              Text(
                'Liquor Stores Near You'.toUpperCase(),
                style: textStyle18.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              const SizedBoxH15(),
              flItemLink(
                title: 'Diamond Harbour FL off shop',
                icon: 'diamond',
                subTitle: 'Garia | 2kms',
                rating: '4.5 (41+)',
                duration: '35-40 mins',
                range: 'not-far',
                onPress: () {
                  Get.toNamed(AppRoutes.allCategories);
                },
              ),
              flItemLink(
                title: 'Diamond Harbour FL off shop',
                icon: 'blue-lotus',
                subTitle: 'Garia | 2kms',
                rating: '4.5 (41+)',
                duration: '35-40 mins',
                range: 'not-far',
                onPress: () {
                  Get.toNamed(AppRoutes.allCategories);
                },
              ),
              Text(
                'Liquor Stores A LITTLE BIT AWAY'.toUpperCase(),
                style: textStyle18.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              const SizedBoxH15(),
              flItemLink(
                title: 'Diamond Harbour FL off shop',
                icon: 'tn',
                subTitle: 'Garia | 2kms',
                rating: '4.5 (41+)',
                duration: '35-40 mins',
                range: 'far',
                onPress: () {
                  Get.toNamed(AppRoutes.allCategories);
                },
              ),
              flItemLink(
                title: 'Diamond Harbour FL off shop',
                icon: 'blue-lot',
                subTitle: 'Garia | 2kms',
                rating: '4.5 (41+)',
                duration: '35-40 mins',
                range: 'very-far',
                onPress: () {
                  Get.toNamed(AppRoutes.allCategories);
                },
              ),
              // for (var i = 0; i < 5; i++)
            ],
          ),
        ),
      ),
    );
  }

  Widget flItemLink({
    required String title,
    required String icon,
    required String subTitle,
    required String rating,
    required String duration,
    required String range,
    required Function() onPress,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width(context),
        margin: EdgeInsets.only(bottom: 15.sp),
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              color: altoGrey,
            ),
          ],
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$icon.png'),
            const SizedBoxW10(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBoxH5(),
                  Text(
                    subTitle,
                    style: textStyle14,
                  ),
                  const SizedBoxH5(),
                  Row(
                    children: [
                      range == 'far'
                          ? Image.asset(
                              'assets/icons/protime-y.png',
                            )
                          : range == 'very-far'
                              ? Image.asset(
                                  'assets/icons/protime-r.png',
                                )
                              : Image.asset(
                                  'assets/icons/protime.png',
                                ),
                      const SizedBoxW5(),
                      Text(
                        duration,
                        style: textStyle14,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: yellow,
                        ),
                        Text(
                          rating,
                          style: textStyle14.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
