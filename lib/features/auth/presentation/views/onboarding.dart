import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _tabController = TabController(length: 3, vsync: this);
      _tabController!.addListener(_handleTabSelection);
    });
  }

  void _handleTabSelection() {
    setState(() {
      currentIndex = _tabController!.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    onboardingItem(
                      image: 'onboarding1',
                      title: 'Click, Sip, Trip!',
                      desc:
                          'We\'ve crafted an effortless way for you to savour your favourite spirits with just a click',
                    ),
                    onboardingItem(
                      image: 'onboarding2',
                      title: 'Your Party, Our Priority',
                      desc:
                          'Elevate your experience with Pegman\'s exclusive peg-box, shots, mocktails and cocktails with delectable food pairings from your favourite dining place.',
                    ),
                    onboardingItem(
                      image: 'onboarding3',
                      title: 'Fast and Secure Delivery',
                      desc:
                          'Select your drinks, set the mood, and let us handle the rest. Welcome to hassle-free happiness',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Center(
                    child: TabPageSelector(
                      controller: _tabController,
                      borderStyle: BorderStyle.none,
                      color: altoGrey,
                      selectedColor: secondary,
                    ),
                  ),
                  SizedBox(
                    height: height(context) * .05,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (currentIndex == 2) {
                        Get.toNamed(AppRoutes.createAccount);
                      } else {
                        _tabController!.animateTo(currentIndex + 1,
                            duration: const Duration(milliseconds: 1));
                      }
                    },
                    text: 'Next',
                  ),
                  const SizedBoxH10(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget onboardingItem({
    required String image,
    required String title,
    required String desc,
  }) {
    return Column(
      children: [
        const SizedBoxH40(),
        Image.asset('assets/images/$image.png'),
        const SizedBoxH20(),
        Text(
          title,
          style: textStyle16.copyWith(
            fontSize: 28.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBoxH15(),
        SizedBox(
          width: width(context) * .7,
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: textStyle16.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
