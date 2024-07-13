import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Support',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 350,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffF3B6D0),
                borderRadius: BorderRadius.circular(13.38.sp),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: GoogleFonts.poppins(
                        fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Welcome to support! How can we',
                    style: GoogleFonts.poppins(
                        fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ' help you',
                    style: GoogleFonts.poppins(
                        fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '10:40 pm',
                  style: GoogleFonts.poppins(
                      fontSize: 10.7.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffF3B6D0),
                    borderRadius: BorderRadius.circular(13.38.sp),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.poppins(
                            fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'I had query regarding payment',
                        style: GoogleFonts.poppins(
                            fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'details of my last order.',
                        style: GoogleFonts.poppins(
                            fontSize: 13.38.sp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '10:42 pm',
                  style: GoogleFonts.poppins(
                      fontSize: 10.7.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBoxH20(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 1),
                    spreadRadius: 15,
                    blurRadius: 30,
                    color: altoGrey,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SvgPicture.asset('assets/icons/Send.svg')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
