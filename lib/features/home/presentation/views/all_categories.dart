import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/features/home/presentation/widgets/category_tile.dart';
import 'package:pegman/features/home/presentation/widgets/drink_tile.dart';
import 'package:pegman/features/home/presentation/widgets/header_tile.dart';
import 'package:pegman/features/home/presentation/widgets/lined_text.dart';
import 'package:pegman/router.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/caer.png',
                      width: width(context) * .9,
                      fit: BoxFit.cover,
                    ),
                    const SizedBoxW15(),
                    Image.asset(
                      'assets/images/caer.png',
                      width: width(context) * .9,
                      fit: BoxFit.cover,
                    ),
                    const SizedBoxW15(),
                    Image.asset(
                      'assets/images/caer.png',
                      width: width(context) * .9,
                      fit: BoxFit.cover,
                    ),
                    const SizedBoxW15(),
                  ],
                ),
              ),
              const SizedBoxH15(),
              ViewAllHeaderText(
                title: 'EXPLORE CATEGORIES',
                onPress: () {
                  Get.toNamed(AppRoutes.flShop);
                },
              ),
              Wrap(
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 20,
                spacing: 10,
                children: [
                  CategoryTile(
                    icon: 'beer',
                    name: 'Beer',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'whiskey',
                    name: 'Whiskey',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'vodka',
                    name: 'Vodka',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {
                      Get.toNamed(AppRoutes.allDrinks);
                    },
                  ),
                ],
              ),
              const SizedBoxH15(),
              const LinedText(
                text: 'TRENDING',
              ),
              const SizedBoxH15(),
              const DrinkTile(
                index: 1,
              ),
              const SizedBoxH10(),
              const DrinkTile(
                index: 2,
              ),
              SizedBox(
                height: height(context) * .05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
