import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox.shrink(),
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBoxH25(),
              Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 10.sp,
                          color: secondary,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        maxRadius: 60,
                        backgroundColor: secondary,
                        backgroundImage: AssetImage(
                          'assets/images/pegman.png',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 1,
                      child: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: secondary,
                        foregroundColor: white,
                        child: Icon(
                          Icons.edit,
                          color: white,
                          size: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBoxH15(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello',
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Arpit Chandak',
                    style: GoogleFonts.poppins(
                        fontSize: 24.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBoxH20(),
              profileLink(
                icon: 'myorder',
                title: "My Order",
                onPress: () {
                  Get.toNamed(AppRoutes.myorder);
                },
              ),
              const SizedBoxH10(),
              Text(
                'MANAGEMENT',
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff979797),
                ),
              ),
              const SizedBoxH10(),
              profileLink(
                icon: 'notify',
                title: "Notification",
                onPress: () {
                  // Get.toNamed(AppRoutes.myorder);
                },
              ),
              const SizedBoxH10(),
              profileLink(
                icon: 'myif',
                title: "My Information",
                onPress: () {
                  Get.toNamed(AppRoutes.myinformation);
                },
              ),
              const SizedBoxH10(),
              profileLink(
                icon: 'card',
                title: "Payment",
                onPress: () {
                  // Get.toNamed(AppRoutes.myinformation);
                },
              ),
              const SizedBoxH10(),
              Text(
                'SUPPORT',
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff979797),
                ),
              ),
              const SizedBoxH10(),
              profileLink(
                icon: 'help',
                title: "Help",
                onPress: () {
                  // Get.toNamed(AppRoutes.myinformation);
                },
              ),
              const SizedBoxH10(),
              profileLink(
                icon: 'redchart',
                title: "Support",
                onPress: () {
                  // Get.toNamed(AppRoutes.myinformation);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileLink(
      {required String icon,
      required String title,
      required Function() onPress}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.sp),
        color: white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 1),
            spreadRadius: .9,
            blurRadius: .9,
            color: altoGrey,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.sp,
        vertical: 10.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/$icon.svg'),
              const SizedBoxW10(),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20.sp,
          )
        ],
      ),
    );
  }
}
