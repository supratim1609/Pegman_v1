import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/features/home/presentation/widgets/app_bar.dart';
import 'package:pegman/features/home/presentation/widgets/category_tile.dart';
import 'package:pegman/features/home/presentation/widgets/header_tile.dart';
import 'package:pegman/features/home/presentation/widgets/lined_text.dart';
import 'package:pegman/features/home/presentation/widgets/offer_label.dart';
import 'package:pegman/router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context),
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
              // ViewAllHeaderText(
              //   title: 'SPECIAL COMBOS',
              //   onPress: () {},
              //   showViewAll: false,
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/ocard1.png',
                      width: width(context) * .9,
                      height: 120.h,
                      fit: BoxFit.fill,
                    ),
                    const SizedBoxW20(),
                    Image.asset(
                      'assets/images/ocard2.png',
                      width: width(context) * .9,
                      fit: BoxFit.fill,
                      height: 120.h,
                    ),
                    // Container(
                    //   width: width(context) * .9,
                    //   height: height(context) * .2,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15.r),
                    //     gradient: const LinearGradient(
                    //       colors: [
                    //         secondary,
                    //         secondary,
                    //         secondary,
                    //         primary,
                    //         primary,
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBoxH15(),
              ViewAllHeaderText(
                title: 'BOTTLE THROTTLE',
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
                    onPress: () {},
                  ),
                  CategoryTile(
                    icon: 'whiskey',
                    name: 'Whiskey',
                    onPress: () {},
                  ),
                  CategoryTile(
                    icon: 'vodka',
                    name: 'Vodka',
                    onPress: () {},
                  ),
                  CategoryTile(
                    icon: 'wine',
                    name: 'Wine',
                    onPress: () {},
                  ),
                ],
              ),
              const SizedBoxH15(),
              const LinedText(
                text: 'DISCOVER NEAR YOU',
              ),
              const SizedBoxH15(),
              ViewAllHeaderText(
                title: 'PEGMAN\'S HUB',
                onPress: () {
                  Get.toNamed(AppRoutes.discover);
                },
              ),
              const SizedBoxH10(),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OfferLabel(name: 'Carp Diem', img: 'bar1.jpg'),
                    SizedBoxW5(),
                    OfferLabel(
                      img: 'bar2.jpg',
                      name: 'Pegman hub',
                    ),
                    SizedBoxW5(),
                    OfferLabel(
                      img: 'bar3.jpg',
                      name: 'Tech men',
                    ),
                    SizedBoxW5(),
                    OfferLabel(
                      img: 'bar4.jpg',
                      name: 'Diamond',
                    ),
                  ],
                ),
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
