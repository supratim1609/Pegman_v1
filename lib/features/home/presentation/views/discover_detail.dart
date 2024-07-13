import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/features/home/presentation/widgets/discover_card.dart';
import 'package:pegman/router.dart';

class DiscoverDetail extends StatefulWidget {
  const DiscoverDetail({super.key});

  @override
  State<DiscoverDetail> createState() => _DiscoverDetailState();
}

class _DiscoverDetailState extends State<DiscoverDetail> {
  String selectDrink = 'drinks and shots';
  String selectType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: primary,
        centerTitle: false,
        title: Text(
          'Pegman\'s Choice',
          style: GoogleFonts.cookie(
            color: primary,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              Container(
                width: width(context),
                height: height(context) * .2,
                margin: EdgeInsets.only(bottom: 15.sp),
                padding: EdgeInsets.all(15.sp),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            gradient: const LinearGradient(
                              colors: [
                                primary,
                                primary,
                                secondary,
                              ],
                            )),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/ice-cube.svg',
                            ),
                            const SizedBoxW5(),
                            Text(
                              'Ice Cubes Available',
                              style: textStyle12.copyWith(
                                color: white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Calcutta bar',
                          style: textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                        Text(
                          'Park Street Area, Kolkata',
                          style: textStyle16.copyWith(
                            fontWeight: FontWeight.normal,
                            color: white,
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
                                color: white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // const SizedBoxH15(),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Search for Brands',
                fillColor: const Color(0xfff5f5f5),
                isFilled: true,
                borderColor: Colors.transparent,
                prefixIcon: const Icon(Icons.search),
              ),
              const SizedBoxH15(),
              Row(
                children: [
                  // Container(decoration: BoxDecoration(),)
                  // Expanded(
                  //   child: CustomButton(
                  //     onPressed: () {},
                  //     text: 'Drinks and Shots',

                  //   ),
                  // ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectDrink = 'Drinks and Shots'.toLowerCase();
                      });
                    },
                    child: Container(
                      width: width(context) * .4,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: primary),
                        borderRadius: BorderRadius.circular(10),
                        gradient: selectDrink == 'drinks and shots'
                            ? const LinearGradient(
                                colors: [
                                  primary,
                                  secondary,
                                ],
                              )
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          'Drinks and Shots',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                            color: selectDrink == 'drinks and shots'
                                ? white
                                : primary,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBoxW15(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectDrink = 'Mocktails and Cocktails'.toLowerCase();
                      });
                    },
                    child: Container(
                      // width: width(context) * .4,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: primary),
                        gradient: selectDrink == 'mocktails and cocktails'
                            ? const LinearGradient(
                                colors: [
                                  primary,
                                  secondary,
                                ],
                              )
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          'Mocktails and Cocktails',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.barlow(
                            color: selectDrink == 'mocktails and cocktails'
                                ? white
                                : primary,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: CustomButtonOutline(
                  //     onPressed: () {},
                  //     text: 'Mocktails and Cocktails',
                  //     textColor: primary,
                  //   ),
                  // ),
                ],
              ),
              const SizedBoxH15(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      margin: EdgeInsets.only(right: 10.sp),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: altoGrey,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Image.asset('assets/icons/green-switch.png'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      margin: EdgeInsets.only(right: 10.sp),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: altoGrey,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Image.asset('assets/icons/red-switch.png'),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectType = 'Alcoholic';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.sp),
                        margin: EdgeInsets.only(right: 10.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                selectType == 'Alcoholic' ? primary : altoGrey,
                          ),
                          color: selectType == 'Alcoholic' ? primary : null,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Text(
                          'Alcoholic',
                          style: textStyle14.copyWith(
                              color: selectType == 'Alcoholic' ? white : black),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectType = 'Non-Alcoholic';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.sp),
                        margin: EdgeInsets.only(right: 10.sp),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectType == 'Non-Alcoholic'
                                ? primary
                                : altoGrey,
                          ),
                          color: selectType == 'Non-Alcoholic' ? primary : null,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Text(
                          'Non-Alcoholic',
                          style: textStyle14.copyWith(
                              color: selectType == 'Non-Alcoholic'
                                  ? white
                                  : black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBoxH15(),
              const DiscoverCard(
                title: 'Budweiser Beer Bucket\nwith Paneer Tikka',
              ),
              const SizedBoxH15(),
              const DiscoverCard(
                title: 'Captain Morgan \nwith chicken kebab',
              ),
              const SizedBoxH15(),
              const DiscoverCard(
                title: 'Bacardi Lemon \n with paneer tikka Kebab',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 50.h,
        width: width(context) * .4,
        child: CustomButton(
          borderRadius: 30.r,
          onPressed: () {
            Get.toNamed(AppRoutes.cart);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: white,
                child: SvgPicture.asset(
                  'assets/icons/cart-a.svg',
                ),
              ),
              const SizedBoxW5(),
              Text(
                'View Cart'.toUpperCase(),
                style: textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
