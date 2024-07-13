import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyinfoState();
}

class _MyinfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 15.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Information',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500)
                  .copyWith(color: black),
            ),
            const SizedBoxH20(),
            Text(
              'NAME',
              style: GoogleFonts.poppins(
                  fontSize: 13.55.sp,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            Text(
              'Arpit Chandak',
              style: GoogleFonts.poppins(
                  fontSize: 21.16.sp,
                  fontWeight: FontWeight.w500,
                  color: black),
            ),
            const SizedBoxH15(),
            Text(
              'EMAIL ID',
              style: GoogleFonts.poppins(
                  fontSize: 13.55.sp,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            Text(
              'arpit@thevectorindia.com',
              style: GoogleFonts.poppins(
                  fontSize: 21.16.sp,
                  fontWeight: FontWeight.w500,
                  color: black),
            ),
            const SizedBoxH15(),
            Text(
              'Mobile number',
              style: GoogleFonts.poppins(
                  fontSize: 13.55.sp,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            Text(
              '+1 484 463 4783',
              style: GoogleFonts.poppins(
                  fontSize: 21.16.sp,
                  fontWeight: FontWeight.w500,
                  color: black),
            ),
          ],
        ),
      ),
    );
  }
}
