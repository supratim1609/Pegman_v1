import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/utils/device.dart';
import 'package:pegman/features/home/presentation/views/message.dart';
import 'package:pegman/features/home/presentation/views/support.dart';

class MapScreen2 extends StatefulWidget {
  const MapScreen2({super.key});

  @override
  State<MapScreen2> createState() => _MapScreen2State();
}

class _MapScreen2State extends State<MapScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SvgPicture.asset(
                'assets/icons/Location.svg',
              ),
              title: const Text(
                'Deliver to',
                style: TextStyle(fontSize: 8),
              ),
              subtitle: const Text(
                'Home-15/4 Roawda...',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/map.png',
            fit: BoxFit.cover,
            width: width(context),
            height: height(context) * .88,
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: primary),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 111),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/location2.svg'),
                          const SizedBoxW10(),
                          Text(
                            'ETA 15 mins',
                            style: GoogleFonts.poppins(
                                fontSize: 24.4.sp,
                                fontWeight: FontWeight.w500,
                                color: white),
                          )
                        ],
                      ),
                      Text(
                        'Picking up Order',
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: white),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: white,
                  ),
                  width: width(context),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery Partner',
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          const SizedBoxH15(),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.sp),
                                  color: black,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text(
                                  'J',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w900,
                                      color: white),
                                ),
                              ),
                              const SizedBoxW10(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Jent',
                                    style: GoogleFonts.poppins(
                                        fontSize: 21.6.sp,
                                        fontWeight: FontWeight.w400,
                                        color: black),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset('assets/icons/Star.svg'),
                                      const SizedBoxW10(),
                                      Text(
                                        'Top rated',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10.8.sp,
                                            fontWeight: FontWeight.w400,
                                            color: black),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              SvgPicture.asset('assets/icons/Call.svg'),
                              const SizedBoxW30(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Message();
                                      },
                                    ),
                                  );
                                },
                                child:
                                    SvgPicture.asset('assets/icons/Chat.svg'),
                              )
                            ],
                          ),
                          const SizedBoxH20(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Support();
                                      },
                                    ),
                                  );
                                },
                                child: SvgPicture.asset(
                                    'assets/icons/blackchat.svg'),
                              ),
                              const SizedBoxW10(),
                              Text(
                                'Chat with Support',
                                style: GoogleFonts.poppins(
                                    fontSize: 13.65.sp,
                                    fontWeight: FontWeight.w500,
                                    color: black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
